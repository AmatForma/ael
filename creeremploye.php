<?php
include('menu.php');
?>   
<br>
<h1 style="text-align: center">Création d'un nouveau collaborateur</h1>
<br>
<div style="margin: auto; width: 70%">
    <form action="listeemployes.php" method="POST">
        <div class="form-group">
            <p>Nom de l'employé</p> <input class="form-control" type="text" name="nom" required="">
        </div>
        <div class="form-group">
           <p>Prénom de l'employé</p> <input class="form-control" type="text" name="prenom" required="">
        </div>
        <div class="form-group">
           <p>Nom du service</p> <input class="form-control" type="text" name="service" required="">
        </div>
        <div class="form-group">
           <p>Date d'entrée de l'employé dans l'entreprise</p> <input class="form-control" type="date" name="date" required="">
        </div>
        <div class="form-group">
           <p>Age de l'employé</p> <input class="form-control" type="number" name="age" min="0" required=""> 
        </div>
        <div class="form-group">
           <p>Salaire de l'employé</p> <input class="form-control" type="number" name="salaire" min="0" required=""> 
        </div>
        <input class="btn btn-primary btn-block" type="submit" value="Valider">
    </form>
</div>