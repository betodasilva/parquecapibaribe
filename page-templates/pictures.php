<?php 

    the_post();

    if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) && !strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        /* SE NÃO FOR AJAX REDIRECIONA */

        $redirect = get_bloginfo('url') . '/#' . bdq_hash_slug(get_permalink());
        header("Location: $redirect");
        die();
    }

?>

<?php /* Template Name: faq */ ?>

<section id="<?php echo bdq_hash_slug(get_permalink());?>">
  <h1><?php the_title();?></h1>

  <?php the_content();?>
  
  <div class="row">
   <div class="col-xs-8 col-sm-8 col-md-12">
      <h2>Fotos</h2>
      <h3>uma boa legenda</h3>
      <p>
        LoreMussum ipsum cacilds, vidis litro abertis. 
        Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. 
        Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, 
        in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga.
      </p>
   </div>
  </div>
  <div class="row">
    <div class="col-sm-5 col-md-6">
      <div class="img-wrapper">
        <img class="img-responsive" src="assets/img/slide2.jpg" alt="Primeiro">
      </div>
    </div>
    <div class="col-sm-5 col-md-6">
      <div class="img-wrapper">
        <img class="img-responsive" src="assets/img/slide2.jpg" alt="Primeiro">
      </div>
    </div>
    <div class="col-sm-5 col-md-6">
      <div class="img-wrapper">
        <img class="img-responsive" src="assets/img/slide2.jpg" alt="Primeiro">
      </div>
    </div>
    <div class="col-sm-5 col-md-6">
      <div class="img-wrapper">
        <img class="img-responsive" src="assets/img/slide2.jpg" alt="Primeiro">
      </div>
    </div>
    <div class="col-sm-5 col-md-6">
      <div class="img-wrapper">
        <img class="img-responsive" src="assets/img/slide2.jpg" alt="Primeiro">
      </div>
    </div>
    <div class="col-sm-5 col-md-6">
      <div class="img-wrapper">
        <img class="img-responsive" src="assets/img/slide2.jpg" alt="Primeiro">
      </div>
    </div>
  </div>
</section>