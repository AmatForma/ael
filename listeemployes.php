<?php
include('menu.php');

try{$bd = new PDO('mysql:host=localhost;dbname=entreprise;charset=utf8', 'root', '');
    //echo "connexion ok";
} catch(Exception $e){
    die("Vous n'êtes pas authorisé à vous connecter ".$e->getMessage());
}

if((!empty($_POST['nom'])) 
    && (!empty($_POST['prenom'])) 
    && (!empty($_POST['service'])) 
    && (!empty($_POST['date']))
    && (!empty($_POST['age']))
    && (!empty($_POST['salaire']))) {
        $nom = $_POST['nom'] ;       
        $prenom = $_POST['prenom'];
        $service = $_POST['service'];
        $date = $_POST['date'];
        $age = $_POST['age'];
        $salaire = $_POST['salaire'];

        $sqlI = "INSERT INTO employes(nom, prenom, service, date, age, salaire) VALUES(:nom, :prenom, :service, :date, :age, :salaire)";

        $rec = $bd->prepare($sqlI);
        $rec->execute(array('nom' => $nom,
                            'prenom' => $prenom,
                            'service' => $service,
                            'date' => $date,
                            'age' => $age,
                            'salaire' => $salaire));
    }

$result = $bd->query('SELECT * FROM employes');

?>

<br>
<h1 style="text-align: center">Liste des collaborateurs de Entreprise</h1>
<br>
<table class="table table-striped table-bordered"  style="margin: auto;width: 70%">
    <thead class="thead-dark">
    <tr>
    <th scope="col" style='text-align:center'>ID</th>
    <th scope="col" style='text-align:center'>Nom</th>
    <th scope="col" style='text-align:center'>Prénom</th>
    <th scope="col" style='text-align:center'>Service</th>
    <th scope="col" style='text-align:center'>Date d'entrée dans Entreprise</th>
    <th scope="col" style='text-align:center'>Age</th>
    <th scope="col" style='text-align:center'>Salaire</th>
    </tr>
    </thead>
    <?php
        while ($recup = $result->fetch()){
            echo "<tr><th scope='row' style='text-align:center'>".$recup['id']."</th><td>"
            .$recup['nom']."</td><td>".$recup['prenom']."</td><td>"
            .$recup['service']."</td><td style='text-align:center'>".$recup['date']."</td><td style='text-align:center'>".$recup['age']
            ."</td><td style='text-align:center'>".$recup['salaire']." €"."</td></tr>";
        }
    ?>
</table>

<hr>

<button type="button" class="btn btn-info btn-lg" style="margin-left: 40%"><a href="creeremploye.php" style="color:white">Ajouter un collaborateur</a></button>