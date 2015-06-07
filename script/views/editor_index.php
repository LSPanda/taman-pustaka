<h2 class="hidden">Liste de genre disponible</h2>
<div class="filter clearfix">
    <?php foreach( $data[ 'data' ] as $editor ): ?>
    <a href="?a=view&e=editor&editor_id=<?php echo( $editor -> id ) ?>">
        <section class="container filter__list">
            <h3 class="filter__title epsilon"><?php echo( $editor -> name ) ?></h3>
        </section>
    </a>
    <?php endforeach; ?>
</div>
