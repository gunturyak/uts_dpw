-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 09:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_dpw`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `id_user`, `judul`, `genre`, `penulis`, `deskripsi`, `created_at`, `updated_at`) VALUES
(17, 9, 'Pembuktian remaja Indonesia bisa naik ke level berikutnya', 'Musik', 'guntur', 'Dilansir dari unggahan video di akun Instagram @alffy_rev, proyek MV Wonderland Indonesia merupakan pembuktian bahwa remaja Indonesia saat ini mampu membawa negaranya naik ke level berikutnya. Pembuktian itu berupa karya-karya luar biasa yang kualitasnya bisa bersaing dengan negara lain.\r\n\r\nSeperti MV sebelumnya, Wonderland Indonesia memadukan lagu-lagu daerah Indonesia dengan nuansa Electronic Dance Music (EDM). Alffy Rev mampu mengolah serta mengemas musik tradisional dan EDM dengan apik menjadi karya yang epik.', '2022-09-04 23:55:41', '2022-09-04 23:55:41'),
(18, 9, 'Hadirkan berbagai kebudayaan Indonesia, dari lagu daerah hingga tarian tradisional', 'Musik', 'guntur', 'MV Wonderland Indonesia menonjolkan identitas kebudayaan daerah, setidaknya ada sembilan lagu yang ditampilkan. Lagu-lagu tersebut di antaranya Janger dari Bali, Paris Barantai dari Kalimantan, Si Patokan dari Sulawesi Utara, Sajojo dari Papua, Anak Kambing Saya dari NTT, Manuk Dadali dari Jawa Barat, Lelo Ledhung dari Jawa Tengah, Kampuang Nan Jauh di Mato dari Sumatera Barat, dan Soleram dari Riau.\r\n\r\nNovia Bachdim selama menyanyikan lagu-lagu tersebut, beberapa kali berganti pakaian daerah, disesuaikan dengan asal masing-masing lagu. Penampilan Novia Bachdim dipandang dapat mewakili kecantikan perempuan Indonesia.\r\n\r\nBerbagai tarian dan alat musik tradisional dari berbagai daerah juga ditampilkan. Misalnya Tari Janger yang diiringi gamelan Bali. Ada pula Tari Piring, Suara Sinden yang semuanya dipadukan dengan EDM.', '2022-09-04 23:57:50', '2022-09-04 23:57:50'),
(20, 9, 'Menampilkan animasi visual yang berkelas', 'Musik', 'guntur', 'Pada setiap MV garapan Alffy Rev, tidak hanya menyuguhkan materi seperti musik dan tarian. Namun setiap karyanya juga menonjolkan animasi visual berkelas. Seperti visual hutan, danau, laut, hingga gunung yang epik. Ia juga menghadirkan berbagai hewan seperti ubur-ubur, ikan pari, hingga berbagai makhluk mitologi.\r\n\r\nDalam garapannya kali ini, Rev Production berkolaborasi dengan Dewatlantis Studio dan Taru Production. Lokasi syuting atau pengambilan gambar MV Wonderland Indonesia sebagian besar dilakukan di Bali, di antaranya di Garuda Wisnu Kencana (GWK) Cultural Park, The Royal Pitamaha Ubud, Balerung Stage Ubud, Ubud Valley, dan Taman Nusa.', '2022-09-05 00:17:27', '2022-09-05 00:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `nama`, `isi`, `created_at`, `updated_at`) VALUES
(15, 'tur', 'cool', '2022-09-05 00:18:22', '2022-09-05 00:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'guntur', 'guntur123@gmail.com', 'guntur pamungkas', '$2y$10$Eivq8vMhgrXuJJqprC.XU.tLqomOYm89mK7bJEOdl.e/y5mvHBtbi', NULL, '2022-09-02 21:54:44', '2022-09-02 21:54:44'),
(10, 'yuu', 'bazz123@gmail.com', 'bayu', '$2y$10$65s9e79Y88k24ODw7mxeqe6M3aQt.eyvopNU4ZJDfRoGFVVSrc6gS', NULL, '2022-09-05 00:16:29', '2022-09-05 00:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 17, '+6289531231716', '2022-08-23 02:02:12', '2022-08-23 02:02:12'),
(2, 6, '+6289531231716', '2022-08-23 07:15:03', '2022-08-23 07:15:03'),
(3, 7, '+6289531238989', '2022-08-23 09:30:05', '2022-08-23 09:30:05'),
(4, 8, '+6289531238989', '2022-08-27 06:28:57', '2022-08-27 06:28:57'),
(5, 9, '089694456328', '2022-09-02 21:54:44', '2022-09-02 21:54:44'),
(6, 10, '089504763161', '2022-09-05 00:16:29', '2022-09-05 00:16:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
