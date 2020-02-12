<?php

require 'partials/head.php';

$promo = new Promotion();
?>

<h1>Les promotions<a href="create-promotion" class="badge badge-primary p-1 ml-1">+</a></h1>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Libelle</th>
        <th scope="col">Actions</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($promo->all() as $promo): ?>
        <tr>
            <td><?= $promo['id'] ?></td>
            <td><?= $promo['libelle'] ?></td>
            <td>
                <a href="update-promotion.php?id=<?= $promo['id'] ?>">Modifier</a>
                <a class="text-danger" href="delete-promotion.php?id=<?= $promo['id'] ?>">Supprimer</a>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>

</div>
</body>
</html>