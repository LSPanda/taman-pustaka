<?php

    class C_Genre extends C_Base
    {
        // Prepare my private variable
        private $modelGenre = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelGenre = new Genre();
        }

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelGenre -> getAll();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }

    }
