<?php
use App\Model\DB;

require 'partials/head.php';

$promo = DB::get()->query('SELECT * FROM promotion WHERE id = ' . $_GET['id'])->fetch();
?>
<form action="update-promotion.php?id=<?= $promo['id'] ?>" method="post">
    <div class="form-group">
        <label for="libelle">Libellé</label>
        <input class="form-control" id="libelle" type="text" value="<?= $promo['libelle'] ?>" name="libelle">
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-primary">Valider</button>
    </div>
</form>
<?php

if(isset($_POST)) {
    if(isset($_POST['libelle'])) {
        (new Promotion())->update($_GET['id'], $_POST['libelle']);
    }
}

?>
</body>
</html>