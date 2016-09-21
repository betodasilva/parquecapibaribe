<?php

	add_action('wp_head','bdq_base_url');
	function bdq_base_url(){
		echo "<script>";
		echo "window.baseUrl = '" . get_bloginfo('stylesheet_directory') . "';";
		echo "</script>";
	}

	function add_rsj_config( $tag, $handle) {

	    if ( 'rjs_config' !== $handle ) :

	        return $tag;

	    endif;

	    return str_replace( ' src', ' data-main="' . get_bloginfo('stylesheet_directory') . '/assets/js/rjs.config.js" src', $tag );

	}
	add_filter( 'script_loader_tag', 'add_rsj_config', 10, 2 );

/*
	add_filter( 'script_loader_tag', function ( $tag, $handle ) {

	if ( 'rjs_config' !== $handle )
	   return $tag;

	return str_replace( ' src', ' data-main="' . get_bloginfo('stylesheet_directory') . '/assets/js/rjs.config.js" src', $tag );
	}, 10, 2 );

*/

	add_action( 'wp_enqueue_scripts', 'wpb_adding_scripts' );
	function wpb_adding_scripts(){
		wp_enqueue_script('jquery');
		wp_enqueue_script('bootstrap', get_bloginfo('stylesheet_directory') . '/bootstrap/js/bootstrap.min.js', array('jquery'), false, true);
		wp_enqueue_script('velocity', get_bloginfo('stylesheet_directory') . '/assets/js/vendor/velocity.min.js', array('jquery'), false, true);
		wp_enqueue_script('menu', get_bloginfo('stylesheet_directory') . '/assets/js/menu.js', array('jquery', 'velocity'), false, true);
		wp_enqueue_script('project-slider', get_bloginfo('stylesheet_directory') . '/assets/js/project-slider.js', array('jquery'), false, true);
		wp_enqueue_script('cache-manager', get_bloginfo('stylesheet_directory') . '/assets/js/cache-manager.js', array('jquery'), false, true);
		wp_enqueue_script('router', get_bloginfo('stylesheet_directory') . '/assets/js/router.js', array('jquery', 'project-slider'), false, true);
		wp_enqueue_script('app', get_bloginfo('stylesheet_directory') . '/assets/js/app.js', array('jquery', 'bootstrap', 'menu', 'router', 'cache-manager'), false, true);
		wp_enqueue_script('main', get_bloginfo('stylesheet_directory') . '/assets/js/main.js', array('jquery', 'bootstrap', 'app'), false, true);
		wp_enqueue_script('ie10_viewport_bug_workaround', get_bloginfo('stylesheet_directory') . '/assets/js/ie10-viewport-bug-workaround.js', array('main'), time(), true);
		wp_enqueue_script('slider', get_bloginfo('stylesheet_directory') . '/assets/js/jssor.slider.mini.js', array('ie10_viewport_bug_workaround'), time(), true);
		wp_enqueue_script('request_regex', get_bloginfo('stylesheet_directory') . '/assets/js/request-regex.js', array('slider'), time(), true);
	}