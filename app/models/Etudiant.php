<?php

use App\Model\DB;

require_once 'DB.php';

class Etudiant {

    private $pdo;

    public function __construct()
    {
        $this->pdo = DB::get();
    }
    
    public function create($nom, $prenom, $idPromo, $idUser, $absence)
    {
        $req = $this->pdo->prepare('INSERT INTO student(nom, prenom, idPromo, idUser, absence) VALUES(?, ?, ?)');
        $req->bindParam(1, $idPromo);
        $req->bindParam(2, $idUser);
        $req->bindParam(3, $absence);
        $req->execute();

        header('Location: etudiants.php');
    }

    public function update($id, $nom, $prenom, $idPromo, $idUser, $absence)
    {
        $req = $this->pdo->prepare('UPDATE student SET nom = ?, prenom = ?, idPromo = ?, idUser = ?, absence = ? WHERE id = ?');
        $req->bindParam(1, $nom);
        $req->bindParam(2, $prenom);
        $req->bindParam(3, $idPromo);
        $req->bindParam(4, $idUser);
        $req->bindParam(5, $absence);
        $req->bindParam(6, $id);
        $req->execute();

        header('Location: etudiants.php');
    }

    public function delete($id)
    {
        $req = $this->pdo->prepare('DELETE FROM student WHERE id = ?');
        $req->bindParam(1, $id);
        $req->execute();

        header('Location: etudiants.php');
    }

    public function all()
    {
        return $promos = $this->pdo->query('SELECT * from student')->fetchAll();
    }
}

?>