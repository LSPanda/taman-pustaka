<!DOCTYPE html><!--[if lt IE 7]><html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Accueil</title>
  <meta name="description" content="Write site description here">
  <meta name="viewport" content="width-device-width, initial-scale=1">
  <link rel="icon" type="image/png" href="">
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Esteban">
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="css/main-min.css">
  <script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
  <div class="wrapper">
    <header class="container">
      <?php include( 'partials/header.php' );  ?>
    </header>
    <div class="clearfix">
      <section class="main__content">
        <?php include( $data[ 'view' ] );  ?>
      </section>
      <section class="main__feature">
        <?php include( 'partials/conn.php' );  ?>
      </section>
    </div>
    <footer class="footer">
      <?php include( 'partials/footer.php' );  ?>
    </footer>
    <script src="js/vendor/jquery.js"></script>
    <script src="js/script-min.js"></script>
  </div>
</body>
