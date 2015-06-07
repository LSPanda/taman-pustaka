<h2 class="hidden">Votre compte personnel</h2>
<section class="feature__account container">
  <?php if( isset( $_SESSION[ 'connected' ] ) ): ?>
    <h3 class="hidden">Accès à votre compte</h3>
    <div class="account__profil">
      <div class="block"><img src="css/images/links/profil.gif" alt="" class="profil__img"></div>
      <p>Bienvenue, <?php echo( $_SESSION['user'] ); ?></p>
      <a href="?a=disconnect&e=user">(déconnexion)</a>
  </div>
  <?php else: ?>
     <h3 class="hidden">Connectez-vous</h3>
     <div class="account__profil">
       <div class="block"><img src="css/images/links/profil.gif" alt="" class="profil__img"></div><a href="?a=connect&e=user">Connectez-vous</a>
       <p>Pas encore inscrit&nbsp;? <a href="?a=signin&e=user">Inscivez-vous&nbsp;!</a></p>
     </div>
  <?php endif; ?>
</section>
