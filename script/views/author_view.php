<h2 class="hidden">Information sur Nom du livre</h2>
<div class="clearfix">
  <section class="container clearfix">
    <?php $myAuthor = $data[ 'data' ][ 0 ] ?>
    <h3 class="show__title gamma"><a href="<?php echo( $myAuthor -> wiki ) ?>"><?php echo( $myAuthor -> authorName ) ?>, <?php echo( $myAuthor -> authorFirstname ) ?></a></h3><img src="css/images/authors/<?php echo( $myAuthor -> photo ) ?>" alt="<?php echo( $myAuthor -> alt ) ?>" class="show__img">
    <p><?php echo( $myAuthor -> bio ) ?></p>
    <h3 class="gamma">Livre publié par cet auteur</h3>
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
