<?php 
	include("menu.php");
	session_start();

	if (!empty($_POST['categories_id'])) {
		$_SESSION['choix'] = $_POST['categories_id'];
	}
	else{
		$_SESSION['choix'] = 1;
	}
 ?>

 <br>

    <form method="POST" action="commenttri.php">
        <div style="margin: auto;width:30%">
        <div>
            <select class="btn btn-secondary dropdown-toggle" name="categories_id">
            <option value="1" <?php if($_SESSION['choix'] == 1){echo "selected";} ?>>Politique</option>
            <option value="2" <?php if($_SESSION['choix'] == 2){echo "selected";} ?>>Economie</option>
            <option value="3" <?php if($_SESSION['choix'] == 3){echo "selected";} ?>>Fonctionnement interne</option>
            <option value="5" <?php if($_SESSION['choix'] == 5){echo "selected";} ?>>Nourriture</option>
            <option value="4" <?php if($_SESSION['choix'] == 4){echo "selected";} ?>>Autres</option>
        </select>
        </div>
        <br>
        <input style="margin-left: 20%" class="btn btn-primary" type="submit" value="valider">

    </div>

    </form>
<br>

<?php 

	try {
    $bd = new PDO('mysql:host=localhost;dbname=entreprise;charset=utf8', 'root', '');
    //echo "Connexion OK";
} catch (Exception $e) {
    die('Erreur de ta faute '.$e->getMessage());
}
$choix = 1;


	if (!empty($_POST['categories_id'])) {
		$choix = $_POST['categories_id'];
	}

	//echo "$choix";

$result = $bd->query("SELECT co.pseudo, co.date, co.commentaire, co.titre, c.nom FROM comment co INNER JOIN categories c ON co.categories_id = c.id WHERE c.id='$choix'");


while ($recup = $result->fetch()) {
            echo "<table class='table table-bordered' style='margin: auto;width: 80%'><tr class='table-active'><td style='font-size: 20px;width: 80%'>"."Sujet : ".$recup['titre']
            ."</td><td style='width: 20%'>".$recup['nom']
            ."</td></tr><tr><td colspan='2' class='table-light'> Commentaire : ".$recup['commentaire']
            ."</td></tr><tr class='table-info'><td> Pseudo : ".$recup['pseudo']
            ."</td><td>".$recup['date']."</td></tr></table>"."<br><p><input style='margin-left: 10%' type='text' name='rep' placeholder='repondre au commentaire'></p>";
        }

	

 ?>