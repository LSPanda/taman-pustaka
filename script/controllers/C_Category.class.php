<?php

    class C_Category extends C_Base
    {
        // Prepare my private variable
        private $modelCategory = null;
        //-private $modelCategory = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelCategory = new Category();
            //-$this -> modelCategory = new Categorie();
        }

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelCategory -> getAll();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }

    }
