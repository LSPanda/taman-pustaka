<div class="header__heading">
  <div class="heading__title">
    <h1 class="title__main">Taman<span class="title__second">pustaka</span></h1>
  </div>
  <div class="heading__cite">
    <cite class="cite__main">Nourissez votre esprit mieux que nulle part ailleurs !</cite>
  </div>
</div>
<div class="header__navigation clearfix">
  <nav class="navigation__nav">
    <h2 class="hidden">Menu de navigation de la bibliothèque</h2><span class="inline-block nav__element"><a href="index.php" class="removeLink element__link">Accueil</a></span><span class="inline-block nav__element"><a href="?a=index&e=genre" class="removeLink element__link">Genres</a></span><span class="inline-block nav__element"><a href="?a=index&e=author" class="removeLink element__link">Auteurs</a></span><span class="inline-block nav__element"><a href="?a=index&e=editor" class="removeLink element__link">Éditeurs</a></span>
    <?php if( isset( $_SESSION[ 'connected' ] ) ): ?>
        <span class="inline-block nav__element"><a href="?a=admin&e=user">Ajout</a></span>
    <?php endif ?>
  </nav>
  <div class="navigation__search">
    <form action="#" method="post" class="form__search">
      <input type="text" list="books" placeholder="Rechercher" class="forms__input--pattern search__seek">
      <datalist id="books">
        <option value="Harry Potter">&nbsp;</option>
        <option value="Seigneur des anneaux">&nbsp;</option>
        <option value="Jean Petit">&nbsp;</option>
      </datalist>
      <input type="submit" class="search__validate">
    </form>
  </div>
</div>
