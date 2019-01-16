<?php
include("menu.php");
?>

<h1 class="center">Creation d'un succuleux commentaire</h1>

<div style="margin: auto; width: 25%">
    <form action="comment.php" method="POST">
        <div class="form-group">
        <label for="exampleDropdownFormEmail1">Pseudo :</label>
            <input class="form-control" id="exampleDropdownFormEmail1" type="text" name="nom" placeholder="Exemple : TOTO 38" required="">
        </div>
        <div class="dropdown show">
        <label for="exampleDropdownFormEmail1">Catégorie : </label>
  
  <select class="btn btn-secondary dropdown-toggle" name="categories_id">
    <option value="1">Politique</option>
    <option value="2">Economie</option>
    <option value="3">Fonctionnement interne</option>
    <option value="5">Nourriture</option>
    <option value="4">Autres</option>
</select>
    </div>
        <div class="form-group">
            <input class="form-control" type="text" name="titre" placeholder="Titre explicite" required="">
        </div>
      
        <div class="form-group">
            <textarea class="form-control" name="commentaire" placeholder="Tapez un texte ici !!!" required=""></textarea>
        </div>
        <input class="btn btn-primary btn-block" type="submit" value="valider">
    </form>
</div>