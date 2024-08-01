<?php
include "function.php";

$data_hotel = ambil_data("SELECT * FROM hotel");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produk - Hotel Booking</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php include('header.php'); ?>
    <div class="container my-3">
        <h2>Produk</h2>
        <div class="row">
            <?php foreach ($data_hotel as $dh) { ?>
                <a href="./kamar_hotel.php?<?= implode("_", explode(" ", strtolower($dh["jenis_kamar_hotel"]))); ?>" class="col-md-4">
                <div class="card">
                    <img width="300" src="./src/images/<?= $dh["foto_hotel"]."1.png"; ?>"  alt="Kamar Standar" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title"><?= $dh["jenis_kamar_hotel"]; ?></h5>
                        <p class="card-text">Kamar dengan fasilitas <?= explode(" ", $dh["jenis_kamar_hotel"])[1]; ?>.</p>
                    </div>
                </div>
                </a>
            <?php } ?>
        </div>
    </div>
</body>
</html>
