<?php

require 'partials/head.php';

?>

<?php

if(isset($_POST)) {
    if(isset($_POST['nom'])) {
        (new Etudiant())->create($_POST['nom'], $_POST['prenom'], $_POST['promo'], 1);
    }
}

$promo = new Promotion();

?>

<h2>Ajouter un etudiant</h2>
<form action="create.php" method="post">
    <div class="form-group">
        <label for="nom">Nom</label>
        <input class="form-control" id="nom" type="text" placeholder="Nom" name="nom">
        <label for="prenom">Prénom</label>
        <input class="form-control" id="prenom" type="text" placeholder="Prénom" name="prenom">
        <label for="promo">Promotion</label>
            <select class="custom-select" name="promo" id="promo">
                <option value="">--Choisissez une promotion--</option>
                <?php foreach ($promo->all() as $promo): ?>
                <option value="<?= $promo['id'] ?>"><?= $promo['libelle'] ?></option>
                <?php endforeach; ?>
            </select>
    </div>
    
    <div class="form-group">
        <button type="submit" class="btn btn-primary">Valider</button>
    </div>
</form>

</body>
</html>