-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 02:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesan_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_kamar_hotel` int(11) NOT NULL,
  `jenis_kamar_hotel` varchar(60) NOT NULL,
  `foto_hotel` varchar(60) NOT NULL,
  `video_hotel` longtext NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_kamar_hotel`, `jenis_kamar_hotel`, `foto_hotel`, `video_hotel`, `deskripsi`) VALUES
(1, 'Kamar Standar', 'kamar_standar', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uQdlGZFjegw?si=X3JvChUMlapnHMPr\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '<p>Kamar hotel standar adalah pilihan ekonomis yang menyediakan  kenyamanan dasar bagi para tamu. Meskipun ukurannya lebih kecil  dibandingkan jenis kamar lainnya, kamar ini dilengkapi dengan semua  fasilitas penting seperti tempat tidur yang nyaman, meja kerja, televisi,  dan kamar mandi pribadi. Kamar ini ideal bagi tamu yang mencari akomodasi  praktis dengan harga terjangkau tanpa mengorbankan kenyamanan.</p> Fasilitas: <ul> <li>Tempat tidur ukuran queen atau twin</li> <li>Televisi dengan saluran kabel</li> <li>Meja kerja</li> <li>Kamar mandi dengan shower</li> <li>Wi-Fi gratis</li> <li>AC atau kipas angin</li> </ul>'),
(2, 'Kamar Deluxe', 'kamar_deluxe', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gYvd9avO6gI?si=4o_i3suezVXWVneZ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '<p>Kamar hotel deluxe menawarkan ruang lebih luas dan fasilitas  yang lebih mewah dibandingkan kamar standar. Kamar ini didesain  dengan dekorasi yang elegan dan sering kali menawarkan pemandangan  yang lebih baik. Kamar deluxe cocok untuk tamu yang mencari sedikit  kemewahan tambahan selama menginap.</p>  Fasilitas: <ul> <li>Tempat tidur ukuran king atau queen</li> <li>Televisi layar datar dengan saluran premium</li> <li>Area duduk tambahan</li> <li>Kamar mandi dengan bathtub dan shower</li> <li>Jubah mandi dan sandal</li> <li>Wi-Fi gratis</li> <li>AC</li> </ul>'),
(3, 'Kamar Executive', 'kamar_executive', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wBWUFDZRVw8?si=KcSUSu6YrVXw4jiy\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '<p>Kamar hotel executive dirancang untuk tamu bisnis atau mereka \r\nyang menginginkan pengalaman menginap yang eksklusif. \r\nKamar ini biasanya terletak di lantai atas hotel dengan \r\nakses ke lounge khusus dan pemandangan kota yang indah. \r\nDengan desain yang canggih dan fasilitas lengkap, kamar executive \r\nmenawarkan kenyamanan maksimal dan layanan kelas atas.</p>\r\n\r\nFasilitas:\r\n<ul>\r\n<li>Tempat tidur ukuran king dengan linen mewah</li>\r\n<li>Televisi layar datar dengan pilihan hiburan premium</li>\r\n<li>Meja kerja besar dengan kursi ergonomis</li>\r\n<li>Kamar mandi marmer dengan bathtub, shower terpisah, dan fasilitas mandi premium</li>\r\n<li>Akses ke executive lounge (sarapan, camilan, dan minuman gratis)</li>\r\n<li>Wi-Fi gratis berkecepatan tinggi</li>\r\n<li>AC yang dapat disesuaikan</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nama_pemesan` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `nomor_identitas` varchar(20) NOT NULL,
  `tipe_kamar` enum('Standar','Deluxe','Executif') NOT NULL,
  `tgl_pesan` date NOT NULL,
  `durasi_menginap` int(11) NOT NULL,
  `breakfast` enum('Ya','Tidak') NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `nama_pemesan`, `jenis_kelamin`, `nomor_identitas`, `tipe_kamar`, `tgl_pesan`, `durasi_menginap`, `breakfast`, `total_bayar`) VALUES
(2, 'rendi', 'Laki-laki', '8723948172645193', 'Deluxe', '2024-07-31', 4, 'Ya', 792000),
(3, 'dani', 'Laki-laki', '6289174650281945', 'Executif', '2024-07-31', 5, 'Tidak', 1080000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_kamar_hotel`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_kamar_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
