<h2 class="hidden">Information sur Nom du livre</h2>
<div class="clearfix">
  <section class="container clearfix">
  <?php foreach( $data[ 'data' ] as $book ): ?>
    <h3 class="show__title gamma"><?php echo( $book -> title ) ?></h3>
    <p class="show__information">Écrit par <a href="<?php echo( $book -> wiki ) ?>"><?php echo( $book -> authorName ) ?> </a>et éditer par <a href="<?php echo( $book -> website ) ?>"><?php echo( $book -> editorName ) ?></a>
    </p><img src="css/images/books/<?php echo( $book -> cover ) ?>" alt="<?php echo( $book -> alt ) ?>" class="show__img">
    <p><?php echo( $book -> summary ) ?></p>
  <?php endforeach; ?>
  </section>
</div>
