<?php

use App\Model\DB;

require_once 'DB.php';

class Promotion {

    private $pdo;

    public function __construct()
    {
        $this->pdo = DB::get();
    }

    public function create($libelle)
    {
        $req = $this->pdo->prepare('INSERT INTO promotion(libelle) VALUES(?)');
        $req->bindParam(1, $libelle);
        $req->execute();

        header('Location: promotions.php');
    }

    public function update($id, $libelle)
    {
        $req = $this->pdo->prepare('UPDATE promotion SET libelle = ? WHERE id = ?');
        $req->bindParam(1, $libelle);
        $req->bindParam(2, $id);
        $req->execute();

        header('Location: promotions.php');
    }

    public function delete($id)
    {
        $req = $this->pdo->prepare('DELETE FROM promotion WHERE id = ?');
        $req->bindParam(1, $id);
        $req->execute();

        header('Location: promotions.php');
    }

    public function all()
    {
        return $promos = $this->pdo->query('SELECT * from promotion')->fetchAll();
    }

}