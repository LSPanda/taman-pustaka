<?php

    class Category extends Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function getAll()
        {
            $sql = 'SELECT * FROM categories';
            $pdost = $this -> dbConn -> query( $sql );

            return $pdost -> fetchAll();
        }
    }
