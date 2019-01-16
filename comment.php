
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

    $sqlI = "INSERT INTO comment(pseudo, titre, categories_id, commentaire) VALUES(:nom, :titre, :categories_id, :commentaire)";

    $rec = $bd->prepare($sqlI);
    $rec->execute(array('nom' => $nom, 
                        'titre' => $titre, 
                        'categories_id' => $categories_id, 
                        'commentaire' => $commentaire));
}

$result = $bd->query('SELECT co.pseudo, co.date, co.commentaire, co.titre, c.nom FROM comment co INNER JOIN categories c ON co.categories_id = c.id');
?>

<h1 class="center">Liste des commentaires</h1>

    <?php
        while ($recup = $result->fetch()) {
            echo "<table class='table table-bordered' style='margin: auto;width: 80%'><tr class='table-active'><td style='font-size: 20px;width: 80%'>"."Sujet : ".$recup['titre']
            ."</td><td style='width: 20%'>".$recup['nom']
            ."</td></tr><tr><td colspan='2' class='table-light'>".$recup['commentaire']
            ."</td></tr><tr class='table-info'><td>".$recup['pseudo']
            ."</td><td>".$recup['date']."</td></tr></table>"."<p></p>";
        }
    ?>
<p class="center">
<a href="newcomment.php">Rajouter des commentaires</a></p>