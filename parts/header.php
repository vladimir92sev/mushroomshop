<?php

require_once __DIR__.'/../db/db.php';

$cats = $connect->query("SELECT * FROM cats");
$cats = $cats->fetchAll(PDO::FETCH_ASSOC);

?>
<!doctype html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Shop</title>
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,600&amp;subset=cyrillic" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <nav>
    <ul>
      <li><a href="index.php">Главная</a></li>
      <?php foreach ($cats as $cat): ?>
        <li><a href="index.php?cat=<?php echo $cat['name']; ?>"><?php echo $cat['rus_name']; ?></a></li>
      <?php endforeach; ?>
      <li><a href="cart.php">Корзина (Товаров: 15 на сумму 9955 руб)</a></li>
    </ul>
  </nav>
  <hr>
