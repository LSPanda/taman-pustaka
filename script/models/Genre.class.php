<?php

    class Genre extends Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function getAll()
        {
            $sql = 'SELECT * FROM genres';
            $pdost = $this -> dbConn -> query( $sql );

            return $pdost -> fetchAll();
        }
    }
