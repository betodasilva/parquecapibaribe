<?php 

class TwitterDBCache {

    public static function create_table(){
        global $wpdb;
        $table_name = $wpdb->prefix . 'bdq_trs_tweet';

        $charset_collate = $wpdb->get_charset_collate();

        $sql = "CREATE TABLE IF NOT EXISTS $table_name (
            id varchar(144) NOT NULL,
            created_at datetime NOT NULL,
            tweet_text varchar(144) NOT NULL,
            user_name tinytext NOT NULL,
            user_screen_name tinytext NOT NULL,
            latitude decimal(23,20) NOT NULL,
            longitude decimal(23,20) NOT NULL,
            profile_image_url text,
            favorite_count mediumint(9) NOT NULL,
            retweet_count mediumint(9) NOT NULL,
            UNIQUE KEY id (id)
        ) $charset_collate;";

        require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
        dbDelta( $sql );
    }

    public static function drop_table(){
        global $wpdb;
        $table_name = $wpdb->prefix . 'bdq_trs_tweet';

        $wpdb->query("DROP TABLE IF EXISTS $table_name");
    }

    public static function save_tweets($tweets){
        global $wpdb;
        
        $table_name = $wpdb->prefix . 'bdq_trs_tweet';
        
        foreach($tweets as $tweet){
            $created_at = DateTime::createFromFormat('D M j G:i:s P Y', $tweet['created_at']);
            $created_at_str = $created_at->format(DateTime::ISO8601);

            $wpdb->insert( 
                $table_name, 
                array(
                    'id' => $tweet['id_str'], 
                    'created_at' => $created_at_str, 
                    'tweet_text' => $tweet['text'], 
                    'user_name' => $tweet['user']['name'], 
                    'user_screen_name' => $tweet['user']['screen_name'], 
                    'profile_image_url' => $tweet['user']['profile_image_url'],
                    'latitude' => $tweet['coordinates']['coordinates'][0], 
                    'longitude' => $tweet['coordinates']['coordinates'][1], 
                    'favorite_count' => $tweet['favorite_count'],
                    'retweet_count' => $tweet['retweet_count']
                )
            );
        }
    }

    public static function find_tweets_in($ids){
        // TODO: find tweets in database in which the id property matches one of the ids in $ids array;
        global $wpdb;
        $table_name = $wpdb->prefix . 'bdq_trs_tweet';

        $idsStr = '('.join(', ', $ids).')';

        $query = $wpdb->get_results("SELECT * FROM $table_name WHERE id IN $idsStr;", ARRAY_A);

        return $query;
    }

    public static function get_lastest_cached_tweet(){
        global $wpdb;
        $table_name = $wpdb->prefix . 'bdq_trs_tweet';

        $query = $wpdb->get_results("SELECT * FROM $table_name ORDER BY created_at DESC LIMIT 1 ;", ARRAY_A);

        $lastTweet = NULL;

        foreach($query as $tweet){
            $lastTweet = $tweet;
            break;
        }
        return $lastTweet;
    }

    public static function get_cached_tweets($len){
        global $wpdb;
        $table_name = $wpdb->prefix . 'bdq_trs_tweet';

        $query = $wpdb->get_results("SELECT * FROM $table_name ORDER BY created_at DESC LIMIT $len ;", ARRAY_A);

        return $query;
    }

    public static function clear_table(){
        global $wpdb;
        $table_name = $wpdb->prefix . 'bdq_trs_tweet';

        $delete = $wpdb->query("TRUNCATE TABLE `$table_name`;");

        return $delete;
    }
    
}