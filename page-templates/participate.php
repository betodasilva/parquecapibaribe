<section id="<?php echo bdq_hash_slug(get_permalink());?>">
  <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.css" />
  
    <div class="row">
      <div class="col-xs-12 col-sm-8 col-md-12">
        <h1><?php the_title();?></h1>

        <?php the_content();?>
      </div>
    </div>
  <div class="mapa">
    <iframe src="http://parquecapibaribe.org/mapa" frameborder="0"></iframe>
  </div>
</section>
