<?php

    class User extends Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function createUser( $mail, $password )
        {
            $sql = 'INSERT INTO users( mail, password ) VALUES( :mail, :password )';
            $pdost = $this -> dbConn -> prepare( $sql );
            $pdost -> execute( [':mail' => $mail, ':password' => $password ] );
        }
    }
