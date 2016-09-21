<?php 

    the_post();

    if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) && !strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        /* SE NÃO FOR AJAX REDIRECIONA */

        $redirect = get_bloginfo('url') . '/#' . bdq_hash_slug(get_permalink());
        header("Location: $redirect");
        die();
    }

?>

<?php /* Template Name: parceiros */ ?>

<section id="<?php echo bdq_hash_slug(get_permalink());?>">
  <h1><?php the_title();?></h1>

  <?php the_content();?>

    <h3>uma boa legenda</h3>
    <div class="row">
      <div class="col-xs-12 col-sm-4">
        <a href="http://#" class="thumbnail">
          <img src="<?php bloginfo('stylesheet_directory')?>/assets/img/parceiro1.png" alt="Prefeitura do Recife" class="imagem" style="height: 160px;">
        </a>
      </div>
      <div class="col-xs-12 col-sm-4">
        <a href="http://#" class="thumbnail">
          <img src="<?php bloginfo('stylesheet_directory')?>/assets/img/parceiro2.png" alt="parceiro 2" class="imagem" style="height: 160px;">
        </a>
      </div>
      <div class="col-xs-12 col-sm-4">
        <a href="http://#" class="thumbnail">
          <img src="<?php bloginfo('stylesheet_directory')?>/assets/img/parceiro3.png" alt="parceiro 3" class="imagem" style="height: 160px;">
        </a>
      </div>
    </div>
</section>