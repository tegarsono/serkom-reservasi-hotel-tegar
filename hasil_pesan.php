<?php 

include "function.php";
$id_pesan = $_GET["id_pesan"];
$data_berhasil_pesan = ambil_data("SELECT * FROM pesanan WHERE id_pesanan = $id_pesan")[0];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <?php include "header.php"; ?>
<div class="container my-3">
    <!-- <div class="card border-secondary"> -->
    <h4 class="card-header text-light bg-secondary text-center">Hasil Pesanan</h4>
    <table class="table table-bordered">
        <tr>
            <td><label for="nama_pemesan">Nama Pemesan</label></td>
            <td>:</td>
            <td><?= $data_berhasil_pesan["nama_pemesan"]; ?></td>
        </tr>
        <tr>
            <td><label for="nomor_identitas">Nomor Identitas</label></td>
            <td>:</td>
            <td><?= $data_berhasil_pesan["nomor_identitas"]; ?></td>
        </tr>
        <tr>
            <td><label for="jenis_kelamin">Jenis Kelamin</label></td>
            <td>:</td>
            <td><?= $data_berhasil_pesan["jenis_kelamin"]; ?></td>
        </tr>
        <tr>
            <td><label for="jenis_kamar">Tipe Kamar</label></td>
            <td>:</td>
            <td><?= $data_berhasil_pesan["tipe_kamar"]; ?></td>
        </tr>
        <tr>
            <td><label for="durasi_menginap">Durasi Menginap</label></td>
            <td>:</td>
            <td><?= $data_berhasil_pesan["durasi_menginap"]; ?> Hari</td>
        </tr>
        <tr>
            <td><label for="discount">Discount</label></td>
            <td>:</td>
            <td><?= $data_berhasil_pesan["breakfast"] == "Ya" ?"10%" :"0%"; ?></td>
        </tr>
        <tr>
            <td><label for="total_bayar">Total Bayar</label></td>
            <td>:</td>
            <td><?= format_rupiah($data_berhasil_pesan["total_bayar"]); ?></td>
        </tr>
    </table>
    </div>
</body>

</html>