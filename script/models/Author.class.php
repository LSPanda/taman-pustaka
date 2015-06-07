<?php

    class Author extends Model
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function getAll()
        {
            $sql = 'SELECT * FROM authors';
            $pdost = $this -> dbConn -> query( $sql );

            return $pdost -> fetchAll();
        }

        public function getByAuthorId( $id )
        {
            $sql = 'SELECT books.id as bookId, books.title, books.cover, books.alt, books.author_id as authorId, authors.id, authors.name as authorName, authors.firstname as authorFirstname, authors.wiki, authors.photo, authors.alt, authors.bio FROM books JOIN authors ON authors.id = books.author_id WHERE authors.id = :id';
            $pdost = $this -> dbConn -> prepare( $sql );
            $pdost -> execute( [ ':id' => $id ] );

            return $pdost -> fetchAll();
        }
    }
