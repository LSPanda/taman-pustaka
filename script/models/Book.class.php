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

        public function getByBookId( $id )
        {
            $sql = 'SELECT books.id, books.title, books.cover, books.alt, books.summary, books.author_id as authorId, books.editor_id as editorId, authors.id, authors.name as authorName, authors.wiki, editors.name as editorName, editors.website FROM books JOIN authors ON authors.id = books.author_id JOIN editors ON editors.id = books.editor_id WHERE books.id = :id';
            $pdost = $this -> dbConn -> prepare( $sql );
            $pdost -> execute( [ ':id' => $id ] );

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

        public function create( $title, $alt, $summary, $exerc, $genre, $editor, $author, $classification, $address )
        {
            $sql = 'INSERT INTO books ( title, alt, summary, exerc, genre_id, editor_id, author_id, classification_id, cover ) VALUES ( :title, :alt, :summary, :exerc, :genre, :editor, :author, :classification, :cover )';
            $pdost = $this -> dbConn -> prepare( $sql );
            $pdost -> execute( [ ':title' => $title, ':alt' => $alt, ':summary' => $summary, ':exerc' => $exerc, ':genre' => $genre, ':editor' => $editor, ':author' => $author, ':classification' => $classification, ':cover' => $address ] );
        }
    }
