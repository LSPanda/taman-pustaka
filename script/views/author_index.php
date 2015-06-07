<h2 class="hidden">Liste de genre disponible</h2>
<div class="filter clearfix">
    <?php foreach( $data[ 'data' ] as $author ): ?>
    <a href="?a=show&e=genre&id=<?php echo( $author -> id ) ?>">
        <section class="container filter__list">
            <h3 class="filter__title epsilon"><?php echo( $author -> name ) ?></h3>
        </section>
    </a>
    <?php endforeach; ?>
</div>
