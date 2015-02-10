<?php
    // Show errors for dev
    error_reporting( E_ALL );
    ini_set( 'display_errors', 1 );

    // Include configuration database
    include( 'data/database.php' );

    // Include my config
    include( 'configs/config.php' );

    // Include my controllers
    include( 'controllers/controller.php' );

    // Include my models
    include( 'models/model.php' );

    // Include my views
    include( 'views/layout.php' );
