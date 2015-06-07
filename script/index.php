<?php
    // Show errors for dev - Change to 0 for prod
    error_reporting( E_ALL );
    ini_set( 'display_errors', 1 );

    // Include my configurations files
    include( 'configs/config.php' );
    include( CONFIG_DIR . 'routes.php' );

    // Start my session
    session_start();

    // Load my class
    set_include_path( 'controllers' . ':' . 'models' . ':' . get_include_path() );
    spl_autoload_register( function( $class ) {
        include $class . '.class.php';
    } );

    // Init default root
    $rtsParts = explode( ROUTE_DELIMITER, $routes[ 'default' ] );
    $a = $rtsParts[ 0 ];
    $e = $rtsParts[ 1 ];

    // Check if a root is call
    if ( isset( $_REQUEST[ 'a' ] ) && isset( $_REQUEST[ 'e' ] ) )
    {
        // Take url content
        $a = $_REQUEST[ 'a' ];
        $e = $_REQUEST[ 'e' ];
        // Check the root
        $route = $a . ROUTE_DELIMITER . $e;
        if ( !in_array( $route, $routes ) )
        {
            die( 'Ola... Tu ne chercherais pas à aller dans un coin interdit ?!' );
        }
    }

    // Init control name + Call the request class
    $controllerName = 'C_' . ucfirst( $e );
    $controller = new $controllerName;

    // Stock my view + needed data
    $data = call_user_func( [ $controller, $a ] );

    // Include my views
    include( 'views/layout.php' );
