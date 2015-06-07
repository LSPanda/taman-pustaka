<h2 class="hidden">Liste de genre disponible</h2>
<div class="filter clearfix">
    <?php foreach( $data[ 'data' ] as $genre ): ?>
    <a href="?a=index&e=book&genre_id=<?php echo( $genre -> id ) ?>">
        <section class="container filter__list">
            <h3 class="filter__title epsilon"><?php echo( $genre -> name ) ?></h3>
        </section>
    </a>
    <?php endforeach; ?>
</div>
