<?php 

require_once plugin_dir_path( __FILE__ ) . 'class-twitter-db-cache.php';

class TwitterRestSearch{
    private $TWITTER_API_KEY;
    private $TWITTER_API_SECRET;
    private $TWITTER_TOKEN_URL = 'https://api.twitter.com/oauth2/token';
    private $TWITTER_SEARCH_URL = 'https://api.twitter.com/1.1/search/tweets.json';

    function __construct(){
        $bdqtrs_settings = get_option('bdqtrs_settings');
        $this->TWITTER_API_KEY = $bdqtrs_settings['bdqtrs_twitter_app_api_key'];
        $this->TWITTER_API_SECRET = $bdqtrs_settings['bdqtrs_twitter_app_api_secret'];
    }

    private function get_bearer_token(){
        /* get the oauth token */

        $request = curl_init();
        $url_encoded_api_key = rawurlencode($this->TWITTER_API_KEY);
        $url_encoded_api_secret = rawurlencode($this->TWITTER_API_SECRET);
        $bearer_token_credentials = $url_encoded_api_key.':'.$url_encoded_api_secret;
        $b64_bearer_token_credentials = base64_encode($bearer_token_credentials);

        curl_setopt($request, CURLOPT_HTTPHEADER, array(
            'Authorization: Basic '.$b64_bearer_token_credentials,
            'Content-Type: application/x-www-form-urlencoded;charset=UTF-8.'
        ));

        curl_setopt($request, CURLOPT_URL, $this->TWITTER_TOKEN_URL);
        curl_setopt($request, CURLOPT_POST, true);
        curl_setopt($request, CURLOPT_POSTFIELDS, 'grant_type=client_credentials');

        curl_setopt($request, CURLOPT_RETURNTRANSFER, TRUE);
        $response = curl_exec($request);

        return json_decode($response, true)['access_token'];
    }

    private function make_query_string($search_params){
        /* convert an array to a query string */
        $search_params_str = '';
        $i=0;
        foreach($search_params as $key => $value){
            $search_params_str .= $key.'='.rawurlencode($value);
            if($i < count($search_params) - 1){
                $search_params_str .= '&';
            }
            $i++;
        }

        return $search_params_str;
    }

    private function filter_localized($tweets){
        /* filter the tweets that have coordinates */
        $localized = array();

        foreach ($tweets as $tweet) {
            if(!is_null($tweet['coordinates'])){
                array_push($localized, $tweet);
            }
        }

        return $localized;
    }

    private function check_new_in_db_tweets($dbTweets, $tweets){
        /* filter the $tweets the are not in $dbTweets (here we are sure that there's at least one tweet in db) */
        $newTweets = array();
        
        if(count($dbTweets) === count($tweets)){
            return array(
                'data' => array(),
                "is_last_page_added" => TRUE
            );
        } elseif(count($dbTweets) === 0){
            return array(
                "data" => $tweets,
                "is_last_page_added" => FALSE
            );
        } else {
            foreach ($tweets as $tweet) {
                $is_new = TRUE;
                foreach($dbTweets as $dbTweet){
                    if($tweet['id'] == $dbTweet['id']){
                        $is_new = FALSE;
                    }
                }
                if($is_new){
                    array_push($newTweets, $tweet);
                }
            }
            return array(
                'data' => $newTweets, 
                "is_last_page_added" => TRUE
            );
        }
    }

    private function filter_new($tweets){
        /* filter the new tweets matching with the database. Also returns a boolean that says if the last tweet in database was found in the array; */
        if(count($tweets) > 1){
            $tweetsIds = array();

            foreach ($tweets as $tweet) {
                array_push($tweetsIds, $tweet['id']);
            }

            $latest = TwitterDBCache::get_lastest_cached_tweet();
            if(!is_null($latest) && !in_array($latest['id'], $tweetsIds)){
                return array('data' => $tweets, "is_last_page_added" => FALSE);
            } else {
                $dbTweets = TwitterDBCache::find_tweets_in($tweetsIds);
                return $this->check_new_in_db_tweets($dbTweets, $tweets);
            }
        } else {
            return array('data' => $tweets, "is_last_page_added" => FALSE);
        }

    }

    private function get_tweets_page($params, $page){
        /* fetch a page in twitter search api endpoint */
        $request = curl_init();
        $token = $this->get_bearer_token();
        
        if($page != 1){
            $params .= '&page='.$page;
        }
        
        $search_url = sprintf("%s?%s", $this->TWITTER_SEARCH_URL, $params);

        curl_setopt($request, CURLOPT_HTTPHEADER, array(
            'Authorization: Bearer '.$token
        ));

        curl_setopt($request, CURLOPT_URL, $search_url);
        
        curl_setopt($request, CURLOPT_RETURNTRANSFER, TRUE);
        $response = curl_exec($request);

        return json_decode($response, true);
    }

    private function get_queryset_params(){
        /* return the options set in wordpress settings formatted as twitter api querystring params*/
        $bdqtrs_settings = get_option('bdqtrs_settings');
        $geocode = $bdqtrs_settings['bdqtrs_latitude'].','.$bdqtrs_settings['bdqtrs_longitude'].','.$bdqtrs_settings['bdqtrs_radius'];

        $query_params = array(
            'q' => $bdqtrs_settings['bdqtrs_terms'],
            'geocode' => $geocode
        );

        return $query_params;
    }

    public function refresh_tweets(){
        /* refresh the tweets in database making queries in twitter search API. Adds the new tweets to the database; */
        
        $params = $this->make_query_string($this->get_queryset_params());

        $newLocalizedTweets = array();

        $i = 1;
        do {
            $tweets = $this->get_tweets_page($params, $i)['statuses'];

            $localizedTweetsInPage = $this->filter_localized($tweets);
            $newLocalizedTweetsInPage = $this->filter_new($localizedTweetsInPage);

            $newLocalizedTweets = array_merge($newLocalizedTweets, $newLocalizedTweetsInPage['data']);
            
            $i++;
        } while ($newLocalizedTweetsInPage['is_last_page_added'] !== FALSE && $i <= 10);

        if(count($newLocalizedTweets) > 0)
            TwitterDBCache::save_tweets($newLocalizedTweets);

        return $newLocalizedTweets;
    }

    
}