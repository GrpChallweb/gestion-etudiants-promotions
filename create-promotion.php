<?php

require 'partials/head.php';

?>

<?php

if(isset($_POST)) {
    if(isset($_POST['libelle'])) {
        (new Promotion())->create($_POST['libelle']);
    }
}

?>

<h2>Ajouter une promotion</h2>
<form action="create-promotion.php" method="post">
    <div class="form-group">
        <label for="libelle">Libellé</label>
        <input class="form-control" id="libelle" type="text" placeholder="Libellé du module" name="libelle">
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-primary">Valider</button>
    </div>
</form>
</body>
</html>