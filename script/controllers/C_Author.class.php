<?php

    class C_Author extends C_Base
    {
        // Prepare my private variable
        private $modelAuthor = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelAuthor = new Author();
        }

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelAuthor -> getAll();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }

        public function view()
        {
            //Take my variable to global scope
            global $a, $e;

            //Take the selected book.
            if( isset( $_GET[ 'author_id' ] ) )
            {
                $data = $this -> modelAuthor -> getByAuthorId( $_GET[ 'author_id' ] );
                $view = $e . VIEW_DELIMITER . $a . '.php';

                return [ 'view' => $view, 'data' => $data ];
            }
        }

    }
