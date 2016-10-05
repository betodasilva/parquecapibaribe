<!--                     Theme for wordpress temaplate.
    Copyright (C) 2016  Universidade Federal de Pernambuco/INCITI


  This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Email: root@3ecologias.net
 -->

<?php

	add_theme_support( 'post-thumbnails' );
	add_image_size ( 'slider', 1000, 706, true );
	add_image_size ( 'action-list', 750, 450, true );
	add_image_size ('logo', 200, 100, false);

	add_filter('image_size_names_choose', 'my_image_sizes');
	function my_image_sizes($sizes) {
		$addsizes = array(
			"logo" => __( "Logo")
		);
		$newsizes = array_merge($sizes, $addsizes);
		return $newsizes;
	}	
	
	if (!function_exists("pretty_dump")) {
	   function pretty_dump($s, $return=false) {
	       $x = "<pre>";
	       $x .= print_r($s, 1);
	       $x .= "</pre>";
	       if ($return) return $x;
	       else print $x;
	   }
	}

	/**
	 * Find the position of the Xth occurrence of a substring in a string
	 * @param $haystack
	 * @param $needle
	 * @param $number integer > 0
	 * @return int
	 */
	function strposX($haystack, $needle, $number){
	    if($number == '1'){
	        return strpos($haystack, $needle);
	    }elseif($number > '1'){
	        return strpos($haystack, $needle, strposX($haystack, $needle, $number - 1) + strlen($needle));
	    }else{
	        return error_log('Error: Value for parameter $number is out of range');
	    }
	}


	function bdq_remove_url_slash($url) {

		$url_len = strlen($raw_url);

		if (substr($url, $url_len - 1, 1) == "/"):

			$raw_slug = substr($url, 0,  $url_len - 1);

		else:

			$raw_slug = $url;

		endif;

		return $raw_slug;

	}

	function bdq_hash_slug($raw_url){
		$raw_url = str_replace(get_site_url(), '', $raw_url);
		$raw_slug = bdq_remove_url_slash($raw_url);
		$slash_pos = strposX($raw_slug, "/", 3);
		$slug = substr($raw_slug, $slash_pos + 1);
		$slug = str_replace("/", "-", $slug);

		return $slug;

	}

	function curPageURL() {

		$pageURL = 'http';

		if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}

		$pageURL .= "://";

		if ($_SERVER["SERVER_PORT"] != "80") {

			$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];

		} else {

			$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];

		}

		return $pageURL;
	}

	function bdq_show_only_with_thumbs( $query ) {
	    if ( $query->is_category() ) {
	        $query->set( 'meta_key', '_thumbnail_id' );
	    }
	}
	add_action( 'pre_get_posts', 'bdq_show_only_with_thumbs' );			

	include('func/scripts.php');
	include('func/menus.php');
	include('func/category-metabox.php');
	include('func/post-metabox.php');
	include('func/redirect.php');
	include('func/ws-rio-capibaribe-tweets.php');
	include('func/ws-test-tweets.php');

?>

<?php
	add_action('init', 'type_post_noticias');
 
	function type_post_noticias() { 
		$labels = array(
			'name' => _x('Notícias', 'post type general name'),
			'singular_name' => _x('Notícia', 'post type singular name'),
			'add_new' => _x('Adicionar Novo', 'Novo item'),
			'add_new_item' => __('Novo Item'),
			'edit_item' => __('Editar Item'),
			'new_item' => __('Novo Item'),
			'view_item' => __('Ver Item'),
			'search_items' => __('Procurar Itens'),
			'not_found' =>  __('Nenhum registro encontrado'),
			'not_found_in_trash' => __('Nenhum registro encontrado na lixeira'),
			'parent_item_colon' => '',
			'menu_name' => 'Notícias'
		);
 
		$args = array(
			'labels' => $labels,
			'public' => true,
			'public_queryable' => true,
			'show_ui' => true,			
			'query_var' => true,
			'rewrite' => true,
			'capability_type' => 'post',
			'has_archive' => true,
			'hierarchical' => false,
			'menu_position' => null,
'register_meta_box_cb' => 'noticias_meta_box',		
			'supports' => array('title','editor','thumbnail','comments', 'excerpt', 'custom-fields', 'revisions', 'trackbacks')
		  );
 
register_post_type( 'noticias' , $args );
flush_rewrite_rules();
}
?>

<?php
register_taxonomy(
"categorias", 
	  "noticias", 
	  array(            
		"label" => "Categorias", 
			"singular_label" => "Categoria", 
			"rewrite" => true,
			"hierarchical" => true
)
);
?>

<?php
function noticias_meta_box(){        
		add_meta_box('meta_box_test', __('Meta Box'), 'meta_box_meta_test', 'noticias', 'side', 'high');
}
?>

<?php
function meta_box_meta_test(){
	  global $post;
	  $metaBoxValor = get_post_meta($post->ID, 'valor_meta', true); 
?>        
	<label for="inputValorMeta">Valor: </label>
	<input type="text" name="valor_meta" id="inputValorMeta" value="<?php echo $metaBoxValor; ?>" />
<?php
	}
?>

<?php
	add_action('save_post', 'save_noticias_post');
	
	function save_noticias_post(){
		global $post;        
			update_post_meta($post->ID, 'valor_meta', $_POST['valor_meta']);
	}
?> 
