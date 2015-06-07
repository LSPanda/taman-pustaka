<?php

    class C_User extends C_Base
    {
        // Prepare my private variable
        private $modelUser = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelUser = new User();
        }

        private function create( $mail, $password )
        {
            $this -> modelUser -> createUser( $mail, $password );
            $user = [ 'mail' => $mail ];
            $this -> connect( $user );
        }

        private function connect( $user )
        {
            $_SESSION[ 'user' ] = $user[ 'mail' ];
            $_SESSION[ 'connected' ] = '1';
            header( 'Location:index.php' );
        }

        public function signin()
        {
            // Verifier l'état de la requêtake
            if( $_SERVER[ 'REQUEST_METHOD' ] == 'GET' )
            {
                return[ 'data' => null, 'view' => 'user_signin.php' ];
            }

            // Verifier les données de la requête
            if( empty( $_REQUEST[ 'mail' ] ) || empty( $_REQUEST[ 'pwd' ] ) )
            {
                header( 'Location: index.php?a=signin&e=user' );
            }
            else
            {
                $this -> create( $_REQUEST[ 'mail' ], sha1( $_REQUEST[ 'pwd' ] ) );
            }
        }

        public function disconnect()
        {
            session_destroy();
            unset( $_SESSION[ 'user' ] );
            unset( $_SESSION[ 'connected' ] );
            header( 'Location:index.php' );
        }

    }
