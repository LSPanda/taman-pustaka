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

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelBook -> getAll();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }

    }
