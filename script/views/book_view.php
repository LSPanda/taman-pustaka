<h2 class="hidden">Information sur Nom du livre</h2>
<div class="clearfix">
  <section class="container clearfix">
  <?php foreach( $data[ 'data' ] as $book ): ?>
    <h3 class="show__title gamma"><?php echo( $book -> title ) ?></h3>
    <p class="show__information">Écrit par <a href="?a=view&e=author&author_id=<?php echo( $book -> authorId ) ?>"><?php echo( $book -> authorName ) ?> </a>et éditer par <a href="?a=view&e=editor&editor_id=<?php echo( $book -> editorId ) ?>"><?php echo( $book -> editorName ) ?></a>
    </p><img src="css/images/books/<?php echo( $book -> cover ) ?>" alt="<?php echo( $book -> alt ) ?>" class="show__img">
    <p><?php echo( $book -> summary ) ?></p>
    <?php if( isset( $_SESSION[ 'connected' ] ) ): ?>
        <a href="?a=update&e=book&book_id=<?php echo( $book -> id ) ?>">Modifier les informations du livre</a>
    <?php endif ?>
  <?php endforeach; ?>
  </section>
</div>
