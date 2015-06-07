<?php

    class C_Classification extends C_Base
    {
        // Prepare my private variable
        private $modelClassification = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelClassification = new Classification();
        }

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelClassification -> getAll();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }
    }
