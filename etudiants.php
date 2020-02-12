<?php

require 'partials/head.php';

$etu = new Etudiant();
?>

<h1>Les etudiants<a href="create-etudiant" class="badge badge-primary p-1 ml-1">+</a></h1>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Nom</th>
        <th scope="col">Prénom</th>
        <th scope="col">idPromo</th>
        <th scope="col">idUser</th>
        <th scope="col">Absence</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($etu->all() as $etu): ?>
        <tr>
            <td><?= $etu['id'] ?></td>
            <td><?= $etu['nom'] ?></td>
            <td><?= $etu['prenom'] ?></td>
            <td><?= $etu['nom'] ?></td>
            <td><?= $etu['nom'] ?></td>
            <td><?= $etu['nom'] ?></td>
            <td>
                <a href="update-promotion.php?id=<?= $etu['id'] ?>">Modifier</a>
                <a class="text-danger" href="delete-promotion.php?id=<?= $etu['id'] ?>">Supprimer</a>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>

</div>
</body>
</html>