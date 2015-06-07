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

        public function getByEditorId( $id )
        {
            $sql = 'SELECT books.id as bookId, books.title, books.cover, books.alt, books.editor_id as editorId, editors.id, editors.name as editorName, editors.website, editors.logo, editors.bio FROM books JOIN editors ON editors.id = books.editor_id WHERE editors.id = :id';

            $pdost = $this -> dbConn -> prepare( $sql );
            $pdost -> execute( [ ':id' => $id ] );

            return $pdost -> fetchAll();
        }
    }
