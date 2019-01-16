
<?php
include("menu.php");


try {
    $bd = new PDO('mysql:host=localhost;dbname=entreprise;charset=utf8', 'root', '');
    //echo "Connexion OK";
} catch (Exception $e) {
    die('Erreur de ta faute '.$e->getMessage());
}


if (       (!empty($_POST['nom'])) 
        && (!empty($_POST['titre'])) 
        && (!empty($_POST['categories_id'])) 
        && (!empty($_POST['commentaire']))) {
    $nom = $_POST['nom'];
    $titre = $_POST['titre'];
    $categories_id = $_POST['categories_id'];
    $commentaire = $_POST['commentaire'];

    $sqlI = "INSERT INTO comment(nom, titre, categories_id, commentaire) VALUES(:nom, :titre, :categories_id, :commentaire)";

    $rec = $bd->prepare($sqlI);
    $rec->execute(array('nom' => $nom, 
                        'titre' => $titre, 
                        'categories_id' => $categories_id, 
                        'commentaire' => $commentaire));
}

$result = $bd->query('SELECT * FROM comment');
?>

<h1 class="center">Liste des commentaires</h1>
<table class="table" border="2" style="margin: auto;width: 70%">
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Date</th>
        <th>Titre</th>
        <th>Categories</th>
        <th>Commentaires</th>
    </tr>
    <?php
        while ($recup = $result->fetch()) {
            echo "<tr><td>".$recup['id']."</td><td>".$recup['nom']."</td><td>".$recup['date']."</td><td>".$recup['titre']."</td><td>".$recup['categories_id']."</td><td>".$recup['commentaire']."</td></tr>";
        }
    ?>
</table>
<p class="center">
<a href="newcomment.php">Rajouter des commentaires</a></p>