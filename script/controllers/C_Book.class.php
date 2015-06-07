<?php

    class C_Book extends C_Base
    {
        // Prepare my private variable
        private $modelBook = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelBook = new Book();
        }

        public function last()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelBook -> getLast();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take my book where genre active
            if( isset( $_GET[ 'genre_id' ] ) )
            {
                $data = $this -> modelBook -> getByGenreId( $_GET[ 'genre_id' ] );
                $view = $e . VIEW_DELIMITER . $a . '.php';

                return [ 'view' => $view, 'data' => $data ];
            }

            // Take my book where classification active
            if( isset( $_GET[ 'classification_id' ] ) )
            {
                $data = $this -> modelBook -> getByClassificationId( $_GET[ 'classification_id' ] );
                $view = $e . VIEW_DELIMITER . $a . '.php';

                return [ 'view' => $view, 'data' => $data ];
            }

            // Take data + construct view
            //$data = $this -> modelBook -> getAll();
            //$view = $e . VIEW_DELIMITER . $a . '.php';

            //return [ 'view' => $view, 'data' => $data ];
        }

    }
