<?php
include("menu.php")
?>
<br/>
<h1 class="center">Suggestion de menu</h1>
<br/>
<br/>
<div style="margin: auto;width: 70%">
    <form action="creermenu.php" method="POST">
            <div class="form-group">
                <input type="text" name="Menu" placeholder="Description de votre menu de chef" class="form-control" required="">
            </div>
            <div class="form-group">
                <input type="text" name="MenuVege" placeholder="Votre alternative végétarienne" class="form-control" required="">
            </div>
            <input type="submit" name="" value="Soumettre à Mr BOCUSE !" class="btn btn-outline-primary btn-block">
    </form>
</div>