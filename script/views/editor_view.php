<h2 class="hidden">Information sur Nom du livre</h2>
<div class="clearfix">
  <section class="container clearfix">
    <?php $myEditor = $data[ 'data' ][ 0 ] ?>
    <h3 class="show__title gamma"><a href="<?php echo( $myEditor -> website ) ?>"><?php echo( $myEditor -> editorName ) ?></a></h3><img src="css/images/editors/<?php echo( $myEditor -> logo ) ?>" alt="<?php echo( $myEditor -> alt ) ?>" class="show__img">
    <p><?php echo( $myEditor -> bio ) ?></p>
    <h3 class="gamma">Livre publié par cette maison d'édition</h3>
  <?php foreach( $data[ 'data' ] as $book ): ?>
  <a href="?a=view&e=book&book_id=<?php echo( $book -> bookId ); ?>">
      <div class="random__block">
          <img src="css/images/books/<?php echo( $book -> cover ); ?>" alt="<?php echo( $book -> title ); ?>">
          <h4 class="zeta random__title"><?php echo( $book -> title ); ?></h4>
      </div>
  </a>
  <?php endforeach; ?>
  </section>
</div>
