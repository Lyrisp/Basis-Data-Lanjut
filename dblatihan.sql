-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 10:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(11) UNSIGNED NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `Aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) DEFAULT 'Noimage.jpg',
  `hits` int(11) DEFAULT 0,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `status` enum('publish','draft') NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `slug`, `user_id`, `content`, `image`, `hits`, `aktif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Artikel Teknologi 1', 'artikel-teknologi-1', 1, 'Konten tentang teknologi.', 'tech1.jpg', 100, 'Y', 'publish', '2025-01-07 09:28:49', '2025-01-07 09:28:49'),
(2, 'Artikel Teknologi 2', 'artikel-teknologi-2', 1, 'Konten lanjutan teknologi.', 'tech2.jpg', 200, 'Y', 'publish', '2025-01-07 09:28:49', '2025-01-07 09:28:49'),
(3, 'Artikel Olahraga 1', 'artikel-olahraga-1', 2, 'Konten tentang olahraga.', 'sports1.jpg', 50, 'Y', 'draft', '2025-01-07 09:28:49', '2025-01-07 09:28:49'),
(4, 'Artikel Kuliner 1', 'artikel-kuliner-1', 3, 'Konten tentang kuliner.', 'food1.jpg', 30, 'Y', 'publish', '2025-01-07 09:28:49', '2025-01-07 09:28:49'),
(5, 'Artikel Kuliner 2', 'artikel-kuliner-2', 3, 'Konten lanjutan kuliner.', 'food2.jpg', 10, 'N', 'publish', '2025-01-07 09:28:49', '2025-01-07 09:28:49'),
(6, 'Artikel Olahraga 2', 'artikel-olahraga-2', 2, 'Konten olahraga lanjutan.', 'sports2.jpg', 70, 'Y', 'publish', '2025-01-07 09:28:49', '2025-01-07 09:28:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
