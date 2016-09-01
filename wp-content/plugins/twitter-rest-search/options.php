<?php
add_action( 'admin_menu', 'bdqtrs_add_admin_menu' );
add_action( 'admin_init', 'bdqtrs_settings_init' );


function bdqtrs_add_admin_menu(  ) { 
    
    add_options_page( 'TwitterRESTSearch', 'Twitter REST Search', 'manage_options', 'twitterrestsearch', 'bdqtrs_options_page' );

}


function bdqtrs_settings_init(  ) { 

    register_setting( 'pluginPage', 'bdqtrs_settings', 'bdqtrs_settings_update');

    add_settings_section(
        'bdqtrs_api_pluginPage_section', 
        __( 'Define your twitter application credentials to start making queries', 'Twitter REST Search' ), 
        'bdqtrs_api_settings_section_callback', 
        'pluginPage'
    );

    add_settings_field( 
        'bdqtrs_twitter_app_api_key', 
        __( 'Your Twitter application API key', 'Twitter REST Search' ), 
        'bdqtrs_twitter_app_api_key_render', 
        'pluginPage', 
        'bdqtrs_api_pluginPage_section' 
    );

    add_settings_field( 
        'bdqtrs_twitter_app_api_secret', 
        __( 'Your Twitter application API secret', 'Twitter REST Search' ), 
        'bdqtrs_twitter_app_api_secret_render', 
        'pluginPage', 
        'bdqtrs_api_pluginPage_section' 
    );

    add_settings_section(
        'bdqtrs_query_pluginPage_section', 
        __( 'Define your query options', 'Twitter REST Search' ), 
        'bdqtrs_query_settings_section_callback', 
        'pluginPage'
    );

    add_settings_field( 
        'bdqtrs_terms', 
        __( 'Query terms', 'Twitter REST Search' ), 
        'bdqtrs_terms_render', 
        'pluginPage', 
        'bdqtrs_query_pluginPage_section' 
    );

    add_settings_field( 
        'bdqtrs_latitude', 
        __( 'Query geocode latitudde', 'Twitter REST Search' ), 
        'bdqtrs_latitude_render', 
        'pluginPage', 
        'bdqtrs_query_pluginPage_section' 
    );

    add_settings_field( 
        'bdqtrs_longitude', 
        __( 'Query geocode longitude', 'Twitter REST Search' ), 
        'bdqtrs_longitude_render', 
        'pluginPage', 
        'bdqtrs_query_pluginPage_section' 
    );

    add_settings_field( 
        'bdqtrs_radius', 
        __( 'Query geocode radius', 'Twitter REST Search' ), 
        'bdqtrs_radius_render', 
        'pluginPage', 
        'bdqtrs_query_pluginPage_section' 
    );



}


function bdqtrs_twitter_app_api_key_render(  ) { 

    $options = get_option( 'bdqtrs_settings' );
    ?>
    <input type='text' name='bdqtrs_settings[bdqtrs_twitter_app_api_key]' value='<?php echo $options['bdqtrs_twitter_app_api_key']; ?>'>
    <?php

}


function bdqtrs_twitter_app_api_secret_render(  ) { 

    $options = get_option( 'bdqtrs_settings' );
    ?>
    <input type='text' name='bdqtrs_settings[bdqtrs_twitter_app_api_secret]' value='<?php echo $options['bdqtrs_twitter_app_api_secret']; ?>'>
    <?php

}

function bdqtrs_terms_render(  ) { 

    $options = get_option( 'bdqtrs_settings' );
    ?>
    <input type='text' name='bdqtrs_settings[bdqtrs_terms]' value='<?php echo $options['bdqtrs_terms']; ?>'>
    <?php

}

function bdqtrs_latitude_render(  ) { 

    $options = get_option( 'bdqtrs_settings' );
    ?>
    <input type='text' name='bdqtrs_settings[bdqtrs_latitude]' value='<?php echo $options['bdqtrs_latitude']; ?>'>
    <?php

}

function bdqtrs_longitude_render(  ) { 

    $options = get_option( 'bdqtrs_settings' );
    ?>
    <input type='text' name='bdqtrs_settings[bdqtrs_longitude]' value='<?php echo $options['bdqtrs_longitude']; ?>'>
    <?php

}

function bdqtrs_radius_render(  ) { 

    $options = get_option( 'bdqtrs_settings' );
    ?>
    <input type='text' name='bdqtrs_settings[bdqtrs_radius]' value='<?php echo $options['bdqtrs_radius']; ?>'>
    <?php

}

function bdqtrs_query_frequency_render(  ) { 

    $options = get_option( 'bdqtrs_settings' );
    ?>
    <input type='text' name='bdqtrs_settings[bdqtrs_query_frequency]' value='<?php echo $options['bdqtrs_query_frequency']; ?>'>
    <?php

}



function bdqtrs_api_settings_section_callback(  ) { 

    echo __( 'First you have to create one application in your twitter account in <a target="_blank" href="http://apps.twitter.com/">http://apps.twitter.com/</a>', 'Authentication options' );

}


function bdqtrs_query_settings_section_callback(  ) { 

    echo __( "Here you'll choose which params the Twitter Rest Search will use to query twitter api.", 'Query options' );

}


function bdqtrs_options_page(  ) { 

    ?>
    <form action='options.php' method='post'>

        <h2>Twitter REST Search</h2>

        <?php
        settings_fields( 'pluginPage' );
        do_settings_sections( 'pluginPage' );
        submit_button();
        ?>

    </form>
    <?php

}


function bdqtrs_settings_update($options){
    if(isset($options['bdqtrs_twitter_app_api_key']) &&
        isset($options['bdqtrs_twitter_app_api_secret']) &&
        isset($options['bdqtrs_terms']) &&
        isset($options['bdqtrs_latitude']) &&
        isset($options['bdqtrs_longitude']) &&
        isset($options['bdqtrs_radius'])){
        require_once plugin_dir_path( __FILE__ ) . 'cron.php';
        require_once plugin_dir_path( __FILE__ ) . 'includes/class-twitter-db-cache.php';
        TwitterDBCache::clear_table();
        tweets_fetch_activation();
    }

    return $options;
}

?>