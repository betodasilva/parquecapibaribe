<!DOCTYPE html>

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

Email: root@3ecologias.net -->

<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Parque Capibaribe</title>
  
    <!-- Bootstrap -->
    <link href="<?php bloginfo('stylesheet_directory')?>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php bloginfo('stylesheet_directory')?>/assets/css/carousel.css" rel="stylesheet">
    <link href="<?php bloginfo('stylesheet_directory')?>/bootstrap/css/bootstrap-social.css" rel="stylesheet">
    <link href="<?php bloginfo('stylesheet_directory')?>/bootstrap/css/font-awesome.css" rel="stylesheet">
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
      <div id="full-menu" class="pd-tp-40">
        <div id="menu">
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
        <div class="network-menu">
          <a href="http://facebook.com/incitiorg" class="fb" target="_blank"><span class="fb"></span></a>
          <a href="http://instagram.com/incitiorg" class="twitter" target="_blank"><span class="twitter"></span></a>
          <a href="http://twitter.com/incitiorg" class="insta" target="_blank"><span class="insta"></span></a>
        </div>
      </div>
    
      <div id="content"></div>
      
      
      <footer class="footer">
        <div class="text-center">
            <div class="row">
              <div class="col-xs-12 text-center">
                <img src="<?php bloginfo('stylesheet_directory')?>/assets/img/logo-dark.png" class="" alt="Logo">
                <a href="http://inciti.org/" target="_blank"><img class="inciti-logo" src="<?php bloginfo('stylesheet_directory')?>/assets/img/inciti-logo.png"></a>
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