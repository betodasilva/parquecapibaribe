<?php
/**
 * @package Twitter REST Search
 * @version 0.1
 */
/*
Plugin Name: Twitter REST Search
Plugin URI: http://wordpress.org/plugins/twitter-rest-search/
Description: Query tweets from the Twitter REST API using configurable credentials and all the flexibility of parameter allowed by Twitter API Always return JSON.
Author: Badoque
Version: 0.1
Author URI: http://badoque.com
*/

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
    die;
}

require_once plugin_dir_path( __FILE__ ) . 'options.php';
require_once plugin_dir_path( __FILE__ ) . 'includes/class-twitter-db-cache.php';

function activate_bdq_trs() {
    TwitterDBCache::create_table();
}
/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-plugin-name-deactivator.php
 */
function deactivate_bdq_trs() {
    wp_clear_scheduled_hook('fetch_tweets');
}

register_activation_hook( __FILE__, 'activate_bdq_trs' );
register_deactivation_hook( __FILE__, 'deactivate_bdq_trs' );

function bdq_trs_query( $len ) {
    return TwitterDBCache::get_cached_tweets($len);
}

function bdqtrs_activation_redirect( $plugin ) {
    if( $plugin == plugin_basename( __FILE__ ) ) {
        exit( wp_redirect( admin_url( 'options-general.php?page=twitterrestsearch' ) ) );
    }
}
add_action( 'activated_plugin', 'bdqtrs_activation_redirect' );

function add_fifteen_minutes_cron_interval( $schedules ) {
    $schedules['fifteen_minutes'] = array(
        'interval' => 15*60,
        'display'  => __( 'Every Fifteen minutes' ),
    );
 
    return $schedules;
}
add_filter( 'cron_schedules', 'add_fifteen_minutes_cron_interval' );