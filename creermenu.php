<?php

include("menu.php");


try {
    $bd = new PDO("mysql:host=localhost;dbname=entreprise;charset=utf8", "root", "");
} catch (Exception $e) {
    die("Erreur de votre faute".$e->getMessage());
}

    if ( (!empty($_POST['Menu']))
&& (!empty($_POST['MenuVege']))) {
    
    $Menu = $_POST['Menu'];
    $MenuVege = $_POST['MenuVege'];

    $sql = "INSERT INTO suggestion(Menu, MenuVege) VALUES(:Menu, :MenuVege)";
    $rec = $bd->prepare($sql);
    $rec->execute(array('Menu' => $Menu,
                        'MenuVege' => $MenuVege));
}

    $result= $bd->query("SELECT * FROM suggestion");

?>

<br/>
<br/>
<h1 class="center">Suggestions de la semaine</h1>

<br/>
<table class="menu" border="1" style="margin: auto;width: 70%;background-image: linear-gradient(rgb(0, 110, 255), gray)">
    <tr>
        <th style="width: 15%">Menu</th>
        <th style="width: 15%">MenuVege</th>
    </tr>
    <?php
        while ($recup = $result->fetch()) {
            echo "<tr><td>".$recup['Menu']."</td><td>".$recup['MenuVege']."</td></tr>";
        }
    ?>
</table>