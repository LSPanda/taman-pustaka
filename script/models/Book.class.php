<?php

    class Book extends Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function getAll()
        {
            $sql = 'SELECT * FROM books';
            $pdost = $this -> dbConn -> query( $sql );

            return $pdost -> fetchAll();
        }

        public function getLast()
        {
            $sql = 'SELECT * FROM books ORDER BY id DESC LIMIT 5';
            $pdost = $this -> dbConn -> query( $sql );

            return $pdost -> fetchAll();
        }

        public function getByGenreId( $id )
        {
            $sql = 'SELECT * FROM books WHERE genre_id = :id';
            $pdost = $this -> dbConn -> prepare( $sql );
            $pdost -> execute( [ ':id' => $id ] );

            return $pdost -> fetchAll();
        }

        public function getByClassificationId( $id )
        {
            $sql = 'SELECT * FROM books WHERE classification_id = :id';
            $pdost = $this -> dbConn -> prepare( $sql );
            $pdost -> execute( [ ':id' => $id ] );

            return $pdost -> fetchAll();
        }
    }
