<h3 class="gamma">Inscrivez-vous !</h3>
<form class="forms" action="<?php echo( $_SERVER[ 'PHP_SELF' ] ) ?>" method="post">
    <label for="mail">Votre e-mail&nbsp;:</label>
    <input type="email" name="mail">
    <label for="pwd">Votre mot de passe&nbsp;:</label>
    <input type="password" name="pwd">
    <input type="hidden" name="a" value="signin">
    <input type="hidden" name="e" value="user">
    <input type="submit" value="Identifiez-vous">
</form>
