-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 10:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `nis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `nama`, `kelas`, `foto`, `created_at`, `nis`) VALUES
(20, 'risa', 'Kelas 7 B', '66ba64a69f937.png', '2024-08-12 19:38:14', ''),
(21, 'risa', 'Kelas 7 B', '66ba7032224ec.png', '2024-08-12 20:27:30', '0132322188'),
(22, 'risa', 'Kelas 7 B', '66ba7211b1daa.png', '2024-08-12 20:35:29', '0132322188'),
(23, 'anggi', 'Kelas 7 B', '66ba724d63220.png', '2024-08-12 20:36:29', '0132322132'),
(24, 'Taufiq Alif Rahman', 'Kelas 7 B', '66ba72a7b2048.png', '2024-08-12 20:37:59', '312010289');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_siswa`
--

CREATE TABLE `daftar_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_siswa`
--

INSERT INTO `daftar_siswa` (`id_siswa`, `nis`, `nama`, `kelas`, `created_at`, `updated_at`) VALUES
(2, '0132322188', 'risa', 'Kelas 7 B', '2024-08-09 19:24:54', '2024-08-09 19:24:54'),
(3, '0132322132', 'anggi', 'Kelas 7 B', '2024-08-10 16:52:14', '2024-08-10 16:52:14'),
(4, '0089765432', 'IRMA PRNAMA', 'Kelas 9 A', '2024-08-10 17:23:47', '2024-08-10 17:23:47'),
(5, '312010289', 'Taufiq Alif Rahman', 'Kelas 7 B', '2024-08-12 20:37:46', '2024-08-12 20:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','siswa') NOT NULL DEFAULT 'siswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nisn`, `nama`, `kelas`, `email`, `password`, `role`) VALUES
(1, '987654321', 'Taufiq', 'Kelas 7 B', 'taufiq@gmail.com', '$2y$10$rDg9c/XMZQwpruku9Hn74.mRsBg6KnwHHc6VwJmtCS4KuoRHto6/G', 'siswa'),
(2, '123456789', 'alif', 'Kelas 7 B', 'alif@gmail.com', '$2y$10$trFIERlwaSpYiPkHa7jr4uD4WUxhKiwDuH43bX0AhfMKnFINLgJaK', 'siswa'),
(3, '000001', 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$vwRIA7HQCxwsvqUKFWTpf.i5qMrc8bVBEznPju2QmTO4bxciOee/W', 'admin'),
(4, '1234567899', 'nisa', 'Kelas 7 A', 'nisa@gmail.com', '$2y$10$aajTIyUE/85tTTv8oeOmx.xWUVCfviQ7/hfIRmpDqmyFpPLAT8pdq', 'siswa'),
(5, '0987654321', 'anggi', 'Kelas 7 A', 'anggi@gmail.com', '$2y$10$3YoxvoADlx/tHqJwoDOcE.k5mTc12tNHD7vjRtxWi4NWVaCFuACna', 'siswa'),
(6, '0987654321', 'coba', 'Kelas 7 B', 'coba@gmail.com', '$2y$10$TqDytxAs6zbk8iU2GTcxheu7URodoR7gRhONBoOs/QU0SJGDGpcf2', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_siswa`
--
ALTER TABLE `daftar_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nis` (`nis`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `daftar_siswa`
--
ALTER TABLE `daftar_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
