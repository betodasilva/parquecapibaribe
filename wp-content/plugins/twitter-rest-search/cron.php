<?php 

add_action('bdqtrs_fetch_tweets', 'bdqtrs_fetch_tweets_every_fifteen_minutes');

function bdqtrs_fetch_tweets_every_fifteen_minutes() {
    require_once plugin_dir_path( __FILE__ ) . 'includes/class-twitter-rest-search.php';
    $twitter_rest_search = new TwitterRESTSearch();
    $twitter_rest_search->refresh_tweets();
}

function tweets_fetch_activation() {
    bdqtrs_fetch_tweets_every_fifteen_minutes();
    if (! wp_next_scheduled ( 'bdqtrs_fetch_tweets' )) {
        wp_schedule_event(time(), 'fifteen_minutes', 'bdqtrs_fetch_tweets');
    }
}
