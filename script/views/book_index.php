<h2 class="hidden">Lister notre bibliothèque par...</h2>
<div class="content__short clearfix">
  <a href="?a=index&e=genre">
    <section class="container content__genre">
      <h3 class="hidden">Genre</h3>
      <p class="gamma category">Genre</p>
    </section>
  </a>
  <a href="?a=index&e=author">
    <section class="container content__author">
      <h3 class="hidden">Auteur</h3>
      <p class="gamma category">Auteur</p>
    </section>
  </a>
  <a href="?a=index&e=editor">
    <section class="container content__editor">
      <h3 class="hidden">Éditeur</h3>
      <p class="gamma category">Éditeur</p>
    </section>
  </a>
</div>

<div class="container content__random">
    <h3 class="gamma">Derniers livres ajoutés à la bibliothèque</h3>
    <?php
        // Take last five book and showing it random
        $dataBooks = $data[ 'data' ];
        $countData = count( $dataBooks );
        $shuffleData = array_slice( $dataBooks, $countData - 5, $countData );
        shuffle( $shuffleData );

        foreach( $shuffleData as $book ): ?>
    <a href="?a=view&e=book&id=<?php echo( $book -> id ); ?>">
        <div class="random__block">
            <img src="css/images/books/<?php echo( $book -> cover ); ?>" alt="<?php echo( $book -> title ); ?>">
            <h4 class="zeta random__title"><?php echo( $book -> title ); ?></h4>
        </div>
    </a>
    <?php endforeach; ?>
</div>
