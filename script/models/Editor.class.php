<?php

    class Editor extends Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function getAll()
        {
            $sql = 'SELECT * FROM editors';
            $pdost = $this -> dbConn -> query( $sql );

            return $pdost -> fetchAll();
        }
    }
