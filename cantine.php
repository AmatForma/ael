<body>
<?php
include("menu.php");

try {
    $bd = new PDO("mysql:host=localhost;dbname=entreprise;charset=utf8", "root", "");
} catch (Exception $e) {
    die("Erreur de votre faute".$e->getMessage());
}


    $result = $bd->query("SELECT * FROM cantine");

?>
<div class="ouf">
<br/>
<br/>
<h1 class="center">Menus de la semaine</h1>
<br/>

<table class="menu" border="1" style="margin: auto;width: 80%;background-image: linear-gradient(rgb(0, 110, 255), gray)">
    <tr>
        <th style="width: 5%;">Jour</th>
        <th style="width: 15%;">Menu</th>
        <th style="width: 15%;">MenuVégé</th>
        <th style="width: 5%;">Prix</th>
    </tr>
    <?php
        while ($recup = $result->fetch()) {
            echo "<tr><td>".$recup['Jour']."</td><td>".$recup['Menu']."</td><td>".$recup['MenuVégé']
            ."</td><td><strong>".$recup['Prix']."</strong></td></td>";
        }
    ?>
</table>
<br/>
<p style="text-align: center;font-size: x-large;"><a href="suggestion.php" title="Balance tes menus #onestgros">Faites une suggestion de menu</a></p>
</div>
</body>