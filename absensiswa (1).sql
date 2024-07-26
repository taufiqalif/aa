-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2024 at 04:48 PM
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
  `name` varchar(255) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `name`, `kelas`, `foto`, `created_at`) VALUES
(7, 'taufiq', 'Kelas 7 A', '6686c9b18e283.png', '2024-07-04 09:11:29'),
(8, 'alif', 'Kelas 7 B', '6686c9c811b5f.png', '2024-07-04 09:11:52'),
(9, 'fajar', 'Kelas 7 C', '6686cd5c564b7.png', '2024-07-04 16:27:08'),
(10, 'taufiq', 'Kelas 8 A', '668729dda01b0.png', '2024-07-04 23:01:49'),
(11, 'fajar', 'Kelas 8 A', '66872b09dbf2a.png', '2024-07-04 23:06:49'),
(12, 'alif', 'Kelas 9 B', '668d00f553959.png', '2024-07-09 09:20:53'),
(13, 'taufiq', 'Kelas 9 C', '668d0238704e0.png', '2024-07-09 09:26:16'),
(14, 'taufiq', 'Kelas 9 A', '668d1870557ea.png', '2024-07-09 11:01:04'),
(15, 'wegi', 'Kelas 8 B', '668fc7df53fbb.png', '2024-07-11 11:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_siswa`
--

CREATE TABLE `daftar_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_siswa`
--

INSERT INTO `daftar_siswa` (`id_siswa`, `nis`, `foto`, `nama`, `kelas`) VALUES
(2, 89234783, '', 'Tiara', 'Kelas 7 B'),
(3, 81236549, '', 'Indah', 'Kelas 8 A');

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
(3, '000001', 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$vwRIA7HQCxwsvqUKFWTpf.i5qMrc8bVBEznPju2QmTO4bxciOee/W', 'admin');

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
  ADD PRIMARY KEY (`id_siswa`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `daftar_siswa`
--
ALTER TABLE `daftar_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
