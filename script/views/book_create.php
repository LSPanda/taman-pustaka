<div class="clearfix">
<section class="container clearfix">
    <h3 class="gamma">Ajouter un livre à la bibliothèque</h3>
    <form class="forms" action="<?php echo( $_SERVER[ 'PHP_SELF' ] ) ?>" method="post" enctype="multipart/form-data">
        <label class="forms__input--label" for="title">Titre&nbsp;:</label>
        <input class="forms__input--pattern" type="text" name="title">
        <label class="forms__input--label" for="cover">Couverture du livre&nbsp;:</label>
        <input class="forms__input--pattern" type="file" name="cover">
        <label class="forms__input--label" for="alt">Description de l'image&nbsp;:</label>
        <input class="forms__input--pattern" type="text" name="alt">
        <label class="forms__input--label" for="summary">Synopsis&nbsp;:</label>
        <textarea class="forms__input--pattern" name="summary"></textarea>
        <label class="forms__input--label" for="exerc">Résumé&nbsp;:</label>
        <textarea class="forms__input--pattern" name="exerc"></textarea>
        <!-- Liste des catégories -->
        <label class="forms__input--label" for="genre">Genre du livre&nbsp;:</label>
        <select class="form__select" name="genre">
        <?php foreach( $data[ 'genre' ] as $genre ): ?>
            <option value="<?php echo( $genre -> id) ;?>"><?php echo ( $genre -> name );?></option>
        <?php endforeach;?>
        </select>
        <label class="forms__input--label" for="editor">Editeur du livre&nbsp;:</label>
        <select class="form__select" name="editor">
        <?php foreach( $data[ 'editor' ] as $editor ): ?>
            <option value="<?php echo( $editor -> id) ;?>"><?php echo ( $editor -> name );?></option>
        <?php endforeach;?>
        </select>
        <label class="forms__input--label" for="author">Auteur du livre&nbsp;:</label>
        <select class="form__select" name="author">
        <?php foreach( $data[ 'author' ] as $author ): ?>
            <option value="<?php echo( $author -> id) ;?>"><?php echo ( $author -> name );?></option>
        <?php endforeach;?>
        </select>
        <label class="forms__input--label" for="classification">Classification du livre&nbsp;:</label>
        <select class="form__select" name="classification">
        <?php foreach( $data[ 'classification' ] as $classification ): ?>
            <option value="<?php echo( $classification -> id) ;?>"><?php echo ( $classification -> name );?></option>
        <?php endforeach;?>
        </select>

        <input type="hidden" name="a" value="create">
        <input type="hidden" name="e" value="book">
        <input class="forms__input--submit" type="submit" value="Ajouter un livre à la bibliothèque !">
    </form>
</section>
</div>
