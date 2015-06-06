<?php

    class Classification extends Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function getAll()
        {
            $sql = 'SELECT * FROM classifications';
            $pdost = $this -> dbConn -> query( $sql );

            return $pdost -> fetchAll();
        }
    }
