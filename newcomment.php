<?php
include("menu.php");
?>

<h1 class="center">Creation d'un succuleux commentaire</h1>

<div style="margin: auto; width: 15%">
    <form action="comment.php" method="POST">
        <div class="form-group">
            <input class="form-control" type="text" name="nom" placeholder="Indentifiez-vous" required="">
        </div>
        <div class="form-group">
            <input class="form-control" type="text" name="titre" placeholder="Titre de votre commentaire" required="">
        </div>
        <div class="form-group">

            <select name="categories_id">
                <option value="1">Politique</option>
                <option value="2">Economie</option>
                <option value="3">Fonctionnement interne</option>
                <option value="5">Nourriture</option>
                <option value="4">Autre</option>
            </select>
        </div>
        <div class="form-group">
            <input class="form-control" type="text" name="commentaire" placeholder="Rediger votre commentaire" required="">
        </div>
        <input class="btn btn-primary btn-block" type="submit" value="valider">
    </form>
</div>