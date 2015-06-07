<?php

    class C_Editor extends C_Base
    {
        // Prepare my private variable
        private $modelEditor = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelEditor = new Editor();
        }

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelEditor -> getAll();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }

        public function view()
        {
            //Take my variable to global scope
            global $a, $e;

            //Take the selected book.
            if( isset( $_GET[ 'editor_id' ] ) )
            {
                $data = $this -> modelEditor -> getByEditorId( $_GET[ 'editor_id' ] );
                $view = $e . VIEW_DELIMITER . $a . '.php';

                return [ 'view' => $view, 'data' => $data ];
            }
        }

    }
