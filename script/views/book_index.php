<h2 class="hidden">Liste de livre par filtre</h2>
<div class="clearfix">
    <?php if( empty( $data[ 'data' ] ) ): ?>
        <section class="container filter__content">
          <p class="filter__extrait">Navré, nous ne possèdons pas de livre dans le genre que vous recherchez.</p>
        </section>
    <?php endif; ?>
    <?php foreach( $data[ 'data' ] as $bookByFilter ): ?>
    <a href="?a=view&e=book&book_id=<?php echo( $bookByFilter -> id ) ?>">
        <section class="container filter__content">
          <h3 class="filter__title epsilon"><?php echo( $bookByFilter -> title ) ?></h3>
          <p class="filter__extrait"><?php echo( $bookByFilter -> exerc ) ?></p>
        </section>
    </a>
    <?php endforeach; ?>
</div>
