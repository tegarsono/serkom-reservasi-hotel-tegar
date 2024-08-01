<?php

// Koneksi ke database
$db = mysqli_connect("localhost", "root", "", "pesan_hotel");

// fungsi untuk mengambil data dari database
function ambil_data($query) {
    global $db;

    $db_arr = [];
    $sql_query = mysqli_query($db, $query);
    while ($sql = mysqli_fetch_assoc($sql_query)) {
        array_push($db_arr, $sql);
    }
    return $db_arr;
}

// fungsi untuk menambah pesanan kamar hotel
function tambah_pesan() {
    global $db;

    $nama_pemesan = htmlspecialchars($_POST["nama_pemesan"]);
    $jenis_kelamin = htmlspecialchars($_POST["jenis_kelamin"]);
    $nomor_identitas = htmlspecialchars($_POST["nomor_identitas"]);
    $jenis_kamar = htmlspecialchars($_POST["jenis_kamar"]);
    $tgl_pesan = htmlspecialchars($_POST["tgl_pesan"]);
    $durasi_menginap = htmlspecialchars($_POST["durasi_menginap"]);
    $breakfast = isset($_POST["breakfast"]);

    // hitung total bayar
    if ($jenis_kamar == "Standar") $harga = 500000;
    else if ($jenis_kamar == "Deluxe") $harga = 800000;
    else if ($jenis_kamar == "Executif") $harga = 1200000;

    $harga_awal = $harga;
    $total_bayar = 0;
    $total_bayar += $harga_awal * intval($durasi_menginap);
    if ($breakfast == true) {
        $total_bayar += 80000;
        $harga_awal += 80000;
    }
    if (intval($durasi_menginap) > 3) {
        $diskon = $total_bayar * 0.10;
        $total_bayar -= $diskon;
    }

    $breakfast == true ? $br = "Ya" : $br = "Tidak";
    $ttl = abs($total_bayar);
    mysqli_query($db, "INSERT INTO pesanan VALUES (
        '', '$nama_pemesan', '$jenis_kelamin', '$nomor_identitas', '$jenis_kamar', '$tgl_pesan', $durasi_menginap, '$br', $ttl
    )");

    return mysqli_affected_rows($db);
}

// fungsi untuk memformat angka rupiah
function format_rupiah($angka){
    setlocale(LC_MONETARY, 'id_ID');
    return 'Rp ' . number_format($angka, 0, ',', '.');
}