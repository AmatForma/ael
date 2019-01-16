<body style="background: black">
<?php
include("menu.php");
try {
    $bd = new PDO('mysql:host=localhost;dbname=entreprise;charset=utf8','root','');
   
   // echo "connexion OK";
} catch (Exception $e) {
    die('Erreur de ta faute'.$e->getMessage());
}
if ((!empty($_POST['categorie']))  
&& (!empty($_POST['resume']))) {

    $categorie = $_POST['categorie'];
    $resume = $_POST['resume'];
   

$sqlI = "INSERT INTO annonces(categorie, resume) VALUES(:categorie, :resume)";
$rec = $bd->prepare($sqlI);
$rec->execute(array('categorie' => $categorie,
                    'resume' => $resume));
}

$result = $bd->query("SELECT * FROM annonces");
    ?>
   
    <h1 style="background: black;
 font-family: Open Sans, Impact;
  text-align: center;
  font-size: 6.5em;
  color: #fff;
  letter-spacing: -7px;
  font-weight: 700;
  text-transform: uppercase;
  animation: blur .75s ease-out infinite;
  text-shadow: 0px 0px 5px #fff, 0px 0px 7px #fff;
    text-shadow:0px 0px 10px #fff,
      0px 0px 10px #fff, 
      0px 0px 25px #fff,
      0px 0px 25px #fff,
      0px 0px 25px #fff,
      0px 0px 25px #fff,
      0px 0px 25px #fff,
      0px 0px 25px #fff,
      0px 0px 50px #fff,
      0px 0px 50px #fff,
      0px 0px 50px #7B96B8,
      0px 0px 150px #7B96B8,
      0px 10px 100px #7B96B8,
      0px 10px 100px #7B96B8,
      0px 10px 100px #7B96B8,
      0px 10px 100px #7B96B8,
      0px -10px 100px #7B96B8,
      0px -10px 100px #7B96B8;">La liste des annonces </h1>
    <table border="3" style=" text-align:center; color: yellow; background-color: black; margin: auto;width: 80%">
    <tr>
    <th style=""> categorie </th>
    <th> date</th>
    <th> resume </th>
    </tr>
    <?php
    while ($recup = $result->fetch()) {
    echo "<tr><td>".$recup['categorie']."</td><td>".$recup['date']."</td><td>".$recup['resume']."</td></tr>";
    }
    ?>

<br>
<br>
        <p style="font-size: 30px;
        text-shadow: 0 1px 0 #eee,
             0 2px 0 #e5e5e5,
             -1px 3px 0 #C8C8C8,
             -1px 4px 0 #C1C1C1,
             -2px 5px 0 #B9B9B9,
             -2px 6px 0 #B2B2B2,
             -2px 7px 2px rgba(0,0,0, 0.6),
             -2px 7px 8px rgba(0,0,0, 0.2),
             -2px 7px 45px rgba(0,0,0, 0.4);text-align: center"> <a  href="creertonannonce.php">Rajoutez votre annonce </a> </p>    
</body>  