<div class="clearfix">
<section class="container clearfix">
    <h3 class="gamma">Connectez-vous !</h3>
    <form class="forms" action="<?php echo( $_SERVER[ 'PHP_SELF' ] ) ?>" method="post">
        <label class="forms__input--label" for="mail">Votre e-mail&nbsp;:</label>
        <input class="forms__input--pattern" type="email" name="mail">
        <label class="forms__input--label" for="pwd">Votre mot de passe&nbsp;:</label>
        <input class="forms__input--pattern" type="password" name="pwd">
        <input type="hidden" name="a" value="connect">
        <input type="hidden" name="e" value="user">
        <input class="forms__input--submit" type="submit" value="Identifiez-vous">
    </form>
</section>
</div>
