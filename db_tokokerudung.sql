-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 07, 2023 at 02:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokokerudung`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` int(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `bahan` varchar(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `finishing` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `jenis`, `bahan`, `ukuran`, `finishing`, `created_at`, `updated_at`) VALUES
(2, 'Hijab Bergo Khimar', 20000, 'segi empat', 'katun', '110 x 90', 'nici', NULL, NULL),
(16, 'Hijab Sport', 10000, 'segiempat', 'katun', '70x50', 'nici', '2023-04-07 11:17:24', '2023-04-07 11:17:24'),
(17, 'Hijab Voal', 30000, 'segiempat', 'katun', '100x70', 'jahit', '2023-04-07 11:18:53', '2023-04-07 11:18:53'),
(18, 'Hijab Oval', 35000, 'pashmina', 'katun', '100x70', 'nici', '2023-04-07 11:19:46', '2023-04-07 11:19:46'),
(20, 'Hijab Bella Square', 20000, 'segi empat', 'Polycotton', '115x115', 'neci', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `update_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `alamat`, `created_at`, `update_at`) VALUES
(0, 'Risalatul Husna', '2110131120008', 'Jalan Awang', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nim`, `email`, `password`, `remember_token`, `updated_at`, `created_at`, `is_admin`) VALUES
(3, 'Risa', '2110131120010', 'risalatul.husna.brb@gmail.com', '$2y$10$HFJ39en2M0cJ5.PoTlKOk.3ad54xZErPVWtA5F7Rm72V2waFh7Zky', 'ghv9cxwhgGSkWd1HdBxKUbVMCNEDBekor4o2AQ54AZKN7XlHequUFzdfFO5y', '2023-04-06 19:47:55', '2023-04-06 19:47:55', 0),
(5, 'Husna', '2110131120008', 'husna@gmail.com', '$2y$10$Toj1h1T.bpr/A61K0HBqEuRyAA2RtcyKMYYv2PY.ZoSw2qznPpwFC', 'RA55vrwyy4Hktwg0xz6bDGDiAA7RvZzJJE2PaCwPa67C3kpIlrQ4AueT92G2', '2023-04-06 19:53:36', '2023-04-06 19:53:36', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
