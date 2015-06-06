<?php

    class Model
    {
        protected $dbConn = null;
        // Config for my DB connection
        const DSN = 'mysql:dbname=taman;host=localhost';
        const USERNAME = 'root';
        const PASSWORD = 'root';
        private $db_options = [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ];

        public function __construct()
        {
            // Connect to my DB every time I call this Class, so every function of my model
            try
            {
                $this -> dbConn = new PDO(
                    self::DSN,
                    self::USERNAME,
                    self::PASSWORD,
                    $this -> db_options
                );
                $this -> dbConn -> query( 'SET CHARACTER SET UTF8' );
                $this -> dbConn -> query( 'SET NAMES UTF8' );
            }
            catch( PDOException $e )
            {
                die( 'Euh... Tu es sûre d’être connecté à la Base de Donnée ?!' );
            }
        }
    }
