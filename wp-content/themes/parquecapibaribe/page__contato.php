<?php 

    the_post();

    if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) && !strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
        /* SE NÃO FOR AJAX REDIRECIONA */

        $redirect = get_bloginfo('url') . '/#' . bdq_hash_slug(get_permalink());
        header("Location: $redirect");
        die();
    }

?>

<?php /* Template Name: contato */ ?>

<section id="<?php echo bdq_hash_slug(get_permalink());?>">
	<h1><?php the_title();?></h1>

	<?php the_content();?>

	<div class="row">
		<div class="col-sm-6 all-info" style="margin-top: 20px;">
			<div class="info">
				<span class="glyphicon glyphicon-phone-alt"></span> Telefone
				<span class="data">(81)3333-3333</span>
			</div>
			<div class="info">
				<span class="glyphicon glyphicon-envelope"></span> Email
				<span class="data">contato@inciti.com</span>
			</div>
			<div class="info">
				<span class="glyphicon glyphicon-map-marker"></span> Endereço
				<span class="data">R. do Bom Jesus, 191</span>
			</div>
		</div>
		<div class="col-sm-6" style="margin-top: 20px;">
			<div class="network">
				<span class="network-icon"></span>Redes Sociais
			</div>
			<ul>
				<li><a href=""><span class="fb"></span>Facebook</a></li>
				<li><a href=""><span class="twitter"></span>Twitter</a></li>
				<li><a href=""><span class="insta"></span>Instagram</a></li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-12">
			<div class="contato__mapa">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3950.3884763759233!2d-34.873263924455046!3d-8.06179801700259!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab18a37b316a9b%3A0x9c510c27776f5209!2sR.+do+Bom+Jesus%2C+191+-+Recife%2C+PE%2C+50030-170!5e0!3m2!1spt-BR!2sbr!4v1473766973061" id="mapa-contato" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		</div>
	</div>
</section>