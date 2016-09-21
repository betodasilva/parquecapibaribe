<?php

/*
Template Name: noticias
*/

    the_post();

    if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) && !strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        /* SE NÃO FOR AJAX REDIRECIONA */

        $redirect = get_bloginfo('url') . '/#' . bdq_hash_slug(get_permalink());
        header("Location: $redirect");
        die();
    }

?>

<?php 
$newsArgs = array( 'post_type' => 'noticias', 'posts_per_page' => 6);                   
						
	  $newsLoop = new WP_Query( $newsArgs );                  
						
	  while ( $newsLoop->have_posts() ) : $newsLoop->the_post();              ?>
<div class="news">                                
		<h1><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h1>
			<p><strong><?php the_time('F jS, Y') ?></strong> by <?php the_author_posts_link() ?></p>
			<p><?php the_content(); ?></p>
<p><?php echo get_the_term_list( $post->ID, 'categorias', 'Categorias: ', ' '); ?></p>
			<?php echo get_post_meta($post->ID, 'valor_meta', true); ?>
</div>
<?php endwhile; ?>
