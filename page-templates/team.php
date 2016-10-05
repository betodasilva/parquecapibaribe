<?php 

    the_post();

    if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) && !strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        /* SE NÃO FOR AJAX REDIRECIONA */

        $redirect = get_bloginfo('url') . '/#' . bdq_hash_slug(get_permalink());
        header("Location: $redirect");
        die();
    }

?>

<?php /* Template Name: time */ ?>

<section id="<?php echo bdq_hash_slug(get_permalink());?>">
  <h1><?php the_title();?></h1>

  <?php the_content();?>
<section id="team">
  <div class="row">
    <div class="col-xs-8 col-sm-8 col-md-12">
      <h2>Equipe</h2>
      <h3>aquela listinha, passa e cima curriculo</h3>
      <ul>
        <li>
            <li>Paulo Roberto Parreir</li>
            <li>Marta Rocha</li>
            <li>Maradona</li>
            <li>Madona</li>
            <li>Carlos Reiaerto Parreir</li>
            <li>Marta Rocha</li>
            <li>Maradona</li>
            <li>Madona</li>
            <li>Calos Rei</li>
        </li>
      </ul>
    </div>
  </div>
</section>