<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Parque Capibaribe</title>
  
    <!-- Bootstrap -->
    <link href="<?php bloginfo('stylesheet_directory')?>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php bloginfo('stylesheet_directory')?>/assets/css/carousel.css" rel="stylesheet">
    <link href="<?php bloginfo('stylesheet_url')?>" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php wp_head();?>
  </head>
  <body>
    <header>
      <div class="hero" style="background-image: url(<?php bloginfo('stylesheet_directory')?>/assets/img/capa.jpg);" id="img-capa">
        <div class="header-overlay visible-lg visible-md"></div>
        <div class="bar">
          <button id="mobile-menu-btn" class="c-hamburger c-hamburger--htx visible-xs visible-sm">
            <span>toggle menu</span>
          </button>

          <img class="visible-md visible-lg" src="<?php bloginfo('stylesheet_directory')?>/assets/img/logo.png">
          <img class="visible-xs visible-sm" src="<?php bloginfo('stylesheet_directory')?>/assets/img/logo-dark.png">
        </div>
      </div>
    </header>
    <div class="wrapper container-fluid">
      <div id="menu" class="pd-tp-40">
        <nav class="vertical">
          <?php

            wp_nav_menu(
              array(
                'menu' => 'menu-principal',
                'menu_class' => false,
                'menu_id' => false,
                'container' => false
              )
            );

          ?>
        </nav>
      </div>
    <div id="content-noticias">
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
	</div>

      
      <footer class="footer">
        <div class="text-center">
            <div class="row">
              <div class="col-xs-12 text-center">
                <img src="<?php bloginfo('stylesheet_directory')?>/assets/img/logo-dark.png" class="" alt="Logo">
              </div>
            </div>
            <div class="row copyright">
                <div class="col-xs-12">
                    <p class="small">&copy; 2016 ...</p>
                </div>
            </div>
        </div>
      </footer>
      
    </div>
    <script type="text/javascript">
      window.baseUrl = '<?php echo bloginfo("stylesheet_directory"); ?>';
    </script>
  <?php wp_footer(); ?>
  </body>
</html>
