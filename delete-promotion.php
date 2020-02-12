<?php
use App\Model\DB;

require 'partials/head.php';

$promo = new Promotion();
$promo->delete($_GET['id']);

header('Location: promotions.php');