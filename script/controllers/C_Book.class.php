<?php

    class C_Book extends C_Base
    {
        // Prepare my private variable
        private $modelBook = null;

        public function __construct()
        {
            // Init my class Article for take data from DB
            $this -> modelBook = new Book();
        }

        public function last()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take data + construct view
            $data = $this -> modelBook -> getLast();
            $view = $e . VIEW_DELIMITER . $a . '.php';

            return [ 'view' => $view, 'data' => $data ];
        }

        public function index()
        {
            // Take my variable on global scope
            global $a, $e;

            // Take my book where genre active
            if( isset( $_GET[ 'genre_id' ] ) )
            {
                $data = $this -> modelBook -> getByGenreId( $_GET[ 'genre_id' ] );
                $view = $e . VIEW_DELIMITER . $a . '.php';

                return [ 'view' => $view, 'data' => $data ];
            }

            // Take my book where classification active
            if( isset( $_GET[ 'classification_id' ] ) )
            {
                $data = $this -> modelBook -> getByClassificationId( $_GET[ 'classification_id' ] );
                $view = $e . VIEW_DELIMITER . $a . '.php';

                return [ 'view' => $view, 'data' => $data ];
            }

        }

        public function view()
        {
            //Take my variable to global scope
            global $a, $e;

            //Take the selected book.
            if( isset( $_GET[ 'book_id' ] ) )
            {
                $data = $this -> modelBook -> getByBookId( $_GET[ 'book_id' ] );
                $view = $e . VIEW_DELIMITER . $a . '.php';

                return [ 'view' => $view, 'data' => $data ];
            }
        }

        public function create()
        {
            //Take my variable to global scope
            global $a, $e;

            //Test method
            if( $_SERVER[ 'REQUEST_METHOD' ] == "POST" )
            {
                $request = $_POST;
                $title = $request[ 'title' ];
                $alt = $request[ 'alt' ];
                $summary = $request[ 'summary' ];
                $exerc = $request[ 'exerc' ];
                $genre = $request[ 'genre' ];
                $editor = $request[ 'editor' ];
                $author = $request[ 'author' ];
                $classification = $request[ 'classification' ];

                $address = false;

                if( !$_FILES[ 'cover' ][ 'error' ] )
                {
                    $nameparts = explode( '.', $_FILES[ 'cover' ][ 'name' ] );
                    $newname= 'b'. time() . '.' .end( $nameparts );
                    if( !@move_uploaded_file( $_FILES[ 'cover' ][ 'tmp_name' ], './css/images/books/' . $newname ) )
                    {
                      die( 'Il y a eu un problème' );
                    }

                    $address = $newname;
                }
                $this -> modelBook -> create( $title, $alt, $summary, $exerc, $genre, $editor, $author, $classification, $address );

                header( 'Location:index.php?a=admin&e=user' );
            }
            else
            {
                $view = $e .VIEW_DELIMITER . $a . '.php';
                $genre = new Genre();
                $genre = $genre -> getAll();
                $editor = new Editor();
                $editor = $editor -> getAll();
                $author = new Author();
                $author = $author -> getAll();
                $classification = new Classification();
                $classification = $classification -> getAll();

                return [ 'view' => $view, 'genre' => $genre, 'editor' => $editor, 'author' => $author, 'classification' => $classification ];
            }
        }
        public function update()
        {
            //Take my variable to global scope
            global $a, $e;

            //Test method
            if( $_SERVER[ 'REQUEST_METHOD' ] == "POST" )
            {
                $request = $_POST;
                $title = $request[ 'title' ];
                $alt = $request[ 'alt' ];
                $summary = $request[ 'summary' ];
                $id = $request['id'];
                $exerc = $request[ 'exerc' ];
                $genre = $request[ 'genre' ];
                $editor = $request[ 'editor' ];
                $author = $request[ 'author' ];
                $classification = $request[ 'classification' ];

                $address = false;

                if( !$_FILES[ 'cover' ][ 'error' ] )
                {
                    $nameparts = explode( '.', $_FILES[ 'cover' ][ 'name' ] );
                    $newname= 'b'. time() . '.' .end( $nameparts );
                    if( !@move_uploaded_file( $_FILES[ 'cover' ][ 'tmp_name' ], './css/images/books' . $newname ) )
                    {
                      die( 'Il y a eu un problème' );
                    }

                    $address = './css/images/books' . $newname;
                }
                $this -> modelBook -> update( $id,$title, $alt, $summary, $exerc, $genre, $editor, $author, $classification, $address );

                header( 'Location:index.php?a=admin&e=user' );
            }
            else
            {
                $view = $e .VIEW_DELIMITER . $a . '.php';
                $genre = new Genre();
                $genre = $genre -> getAll();
                $editor = new Editor();
                $editor = $editor -> getAll();
                $author = new Author();
                $author = $author -> getAll();
                $classification = new Classification();
                $classification = $classification -> getAll();
                $id=$_GET['book_id'];
                $data = $this -> modelBook -> getByBookId( $id );

                return [ 'view' => $view, 'data' => $data, 'genre' => $genre, 'editor' => $editor, 'author' => $author, 'classification' => $classification ];
            }
        }
    }
