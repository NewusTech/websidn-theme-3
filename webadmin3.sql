-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2024 at 02:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webadmin3`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `judul`, `text`, `video`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Pilihan Terbaik Make Up Artist Anda', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'https://www.youtube.com/embed/sEhS83z3XRM?si=x5izIReQ5NraJXHx', 'uploads/aigktNSdAbxTGTPG0AtBrbtzIznXvTyS2YXz0miZ.png', '2024-06-26 07:28:55', '2024-06-26 07:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `blogconsoles`
--

CREATE TABLE `blogconsoles` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogkategoris`
--

CREATE TABLE `blogkategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_singkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` bigint UNSIGNED DEFAULT NULL,
  `id_tags` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogtags`
--

CREATE TABLE `blogtags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `kategori`, `judul`, `detail`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Layanan', 'Bridal Makeup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'cards/cGhpdoU71fcHW5ALolrczVnru4Fjgfs1dlBSfYHL.png', '2024-06-26 07:17:06', '2024-06-26 07:17:06'),
(2, 'Layanan', 'Special Occasion Makeup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'cards/wTvMMffMpuNQUGSwrZoCvbuOUgfrlGItwhTUDqaG.png', '2024-06-26 07:19:35', '2024-06-26 07:19:35'),
(4, 'Layanan', 'Fashion Makeup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'cards/5AnfHYrJMg1lU0jLKqVQ7MJ3wo74LTQrmf26O1Px.png', '2024-06-26 07:20:09', '2024-06-26 07:20:09'),
(5, 'Layanan', 'Photoshoot Makeup', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'cards/MTnHjf3OKjP5boyFhxkqc1mHS0BEDr3ZPFC1fRmv.png', '2024-06-26 07:20:28', '2024-06-26 07:20:28'),
(6, 'Pegawai', 'Charlotte Ross', 'Makeup Instructor', 'cards/zQvNwA3HnZkukux32xruZBI7TaquLjLxpLDyu5mQ.png', '2024-06-26 07:23:17', '2024-06-26 07:23:17'),
(7, 'Pegawai', 'Amelia Luna', 'Bridal Makeup Artist', 'cards/FQIGoNVgDSP6zbh3XahCGtKB2vfCNAWO29oEYodU.png', '2024-06-26 07:23:41', '2024-06-26 07:23:41'),
(8, 'Pegawai', 'Isabella Evelyn', 'Makeup Consultant', 'cards/9fJUi69MzI0OkukDgXmLGcZqoEkOeHKoKLzEkTMh.png', '2024-06-26 07:24:03', '2024-06-26 07:24:03'),
(9, 'Pegawai', 'Oliva Mia', 'Fashion Makeup Artist', 'cards/iVU722NOuAkwYmFllZm3MDl7nDrWSdoKji6sKPEN.png', '2024-06-26 07:24:33', '2024-06-26 07:24:33'),
(10, 'Portofolio', 'Project 1', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/USbrzYUkPDwIeIRDAaXmXa52Au7rMfz9jU5D807h.jpg', '2024-06-26 07:25:26', '2024-06-26 07:25:26'),
(11, 'Portofolio', 'Project 2', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/rzsdKg0blcnsb7o59KVIpnnalRcxLPA9E2bbfspN.jpg', '2024-06-26 07:25:41', '2024-06-26 07:25:41'),
(12, 'Portofolio', 'Project 3', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/e2XxrMo5M5tJi0kiFhGzR8kSXM9aICszeXYaHqMf.jpg', '2024-06-26 07:25:55', '2024-06-26 07:25:55'),
(13, 'Portofolio', 'Project 4', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/ymgaFg8ljZL3bzfgCWhLeKxtrnrVxFhIqUzob91J.jpg', '2024-06-26 07:26:10', '2024-06-26 07:26:10'),
(14, 'Portofolio', 'Project 5', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/maO8ytI5wjcfjctZBWBdsRK8h4kXG6i1hYG8sCAl.jpg', '2024-06-26 07:26:22', '2024-06-26 07:26:22'),
(15, 'Portofolio', 'Project 6', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/ne6CwZ2tkbGO9uaUmhmhFS14znxYGUZBKZgSuDjm.jpg', '2024-06-26 07:26:34', '2024-06-26 07:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `whatsapp`, `facebook`, `instagram`, `tiktok`, `youtube`, `linkedin`, `map`, `created_at`, `updated_at`) VALUES
(1, '082038491283', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7074.183936675103!2d-73.98354113874954!3d40.75243152133734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f7b6376d9b53%3A0xd27fd8e9d8b605d8!2sPerfect%20Wedding%20NYC!5e0!3m2!1sid!2sid!4v1719289912387!5m2!1sid!2sid', '2024-06-26 07:42:15', '2024-06-26 07:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `corosels`
--

CREATE TABLE `corosels` (
  `id` bigint UNSIGNED NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corosels`
--

INSERT INTO `corosels` (`id`, `resolusi`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Landscape', 'corosels/exjgkOLpfgBHjJodkIOniZaqVcYO9DjpV6DSOEoZ.jpg', '2024-06-26 07:14:27', '2024-06-26 07:14:27'),
(2, 'Landscape', 'corosels/rW964CfqAswvldCCShCAmi8oB4hcG47m5xsrSC1k.jpg', '2024-06-26 07:14:40', '2024-06-26 07:14:40'),
(3, 'Landscape', 'corosels/gSkzO7tlDbKvo5izEkjjAuqSUu56SkCE4hKSfPj3.jpg', '2024-06-26 07:14:54', '2024-06-26 07:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `kategori`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Brosur', 'uploads/files/ehhXNnBX58lFFBzTeKQL7180Br3Me7JIjTdXNML3.pdf', '2024-06-27 00:53:11', '2024-06-27 00:53:11'),
(2, 'Pricelist', 'uploads/files/p3DcAvlDT1h9i98XKtioPAvIcei8cVBVbq1sJg3Z.pdf', '2024-06-27 00:53:27', '2024-06-27 00:53:27'),
(3, 'Portofolio', 'uploads/files/3jIfDv9fG1LhhBU2q5pC5mhDDiuxPECek9mYEBae.pdf', '2024-06-27 00:54:04', '2024-06-27 00:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint UNSIGNED NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `id_image`, `id_text`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2024-06-26 20:32:24', '2024-06-26 20:32:24'),
(2, 5, 4, '2024-06-26 20:32:46', '2024-06-26 20:32:46'),
(3, 4, 5, '2024-06-26 20:32:55', '2024-06-26 20:32:55'),
(4, 3, 3, '2024-06-26 20:33:04', '2024-06-26 20:33:04'),
(5, 2, 2, '2024-06-27 01:13:06', '2024-06-27 01:13:06'),
(6, 5, 4, '2024-06-27 01:13:24', '2024-06-27 01:13:24'),
(7, 4, 5, '2024-06-27 01:13:37', '2024-06-27 01:13:55'),
(8, 3, 3, '2024-06-27 01:14:06', '2024-06-27 01:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `kategori`, `id_image`, `id_text`, `created_at`, `updated_at`) VALUES
(1, 'Logo', 1, 1, '2024-06-26 07:13:43', '2024-06-26 07:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `resolusi`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Landscape', 'images/o0pq5r6WwetSFcHoT289sFLnvz6wVy0bF1IpZkbW.png', '2024-06-26 07:12:46', '2024-06-26 07:12:46'),
(2, 'Potrait', 'images/jejNGXa0o7owhY5mle7A6kiorLRL55NxxGQxDgaK.png', '2024-06-26 07:31:17', '2024-06-26 07:31:58'),
(3, 'Potrait', 'images/TrATUxHAz62nMKZNh1SIQLwqGA4vAvYhJhbPVXXR.png', '2024-06-26 07:31:29', '2024-06-26 07:31:52'),
(4, 'Potrait', 'images/OauPoMgv3wOkrpNXejRPEZ08ikma5JFJXzKbm9UC.png', '2024-06-26 07:31:39', '2024-06-26 07:31:39'),
(5, 'Potrait', 'images/iG5pARSlrFX4u7cYtmPeDr6HLNlZronGtOaEfpdb.png', '2024-06-26 07:31:46', '2024-06-26 07:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint UNSIGNED NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `insertfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_0000010_create_contact_table', 1),
(3, '0001_01_01_0000012_create_card_table', 1),
(4, '0001_01_01_0000013_create_corosel_table', 1),
(5, '0001_01_01_0000014_create_price_table', 1),
(6, '0001_01_01_0000015_create_file_table', 1),
(7, '0001_01_01_0000016_create_blogkategori_table', 1),
(8, '0001_01_01_0000017_create_blogtag_table', 1),
(9, '0001_01_01_0000018_create_blogconsole_table', 1),
(10, '0001_01_01_0000019_create_blog_table', 1),
(11, '0001_01_01_000001_create_cache_table', 1),
(12, '0001_01_01_000002_create_jobs_table', 1),
(13, '0001_01_01_000003_create_image_table', 1),
(14, '0001_01_01_000004_create_text_table', 1),
(15, '0001_01_01_000005_create_testimoni_table', 1),
(16, '0001_01_01_000006_create_home_table', 1),
(17, '0001_01_01_000007_create_layanan_table', 1),
(18, '0001_01_01_000008_create_galeri_table', 1),
(19, '0001_01_01_000009_create_about_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `judul`, `item1`, `item2`, `item3`, `item4`, `item5`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Basic Package', 'Konsultasi Makeup', 'Tata Rias Rambut', 'Perawatan Wajah', 'Perawatan Kulit', 'Riasan Percobaan', 'prices/hVlrhEEjs1bVLks4R696PbpnYPH77oAT6r4YBCpV.png', '2024-06-26 07:49:44', '2024-06-26 07:49:44'),
(2, 'Family Package', 'Konsultasi Makeup', 'Tata Rias Rambut', 'Perawatan Wajah', 'Perawatan Kulit', 'Riasan Percobaan', 'prices/HRdqmTwnOaDRGMCkD7bJU9nhxyM7TnwXBpptLxAF.png', '2024-06-26 07:51:24', '2024-06-26 07:51:24'),
(3, 'VIP Package', 'Konsultasi Makeup', 'Tata Rias Rambut', 'Perawatan Wajah', 'Perawatan Kulit', 'Riasan Percobaan', 'prices/AGbgt44tNtLBfLcqpwwU6kIuXebbzqhO8Q9iUKwV.png', '2024-06-26 07:52:48', '2024-06-26 07:52:48'),
(4, 'Most Package', 'Konsultasi Makeup', 'Tata Rias Rambut', 'Perawatan Wajah', 'Perawatan Kulit', 'Riasan Percobaan', 'prices/kkQBPzXJZgfuwU7vN20AM3FRmmOCXyOfi7JM4gsw.png', '2024-06-26 07:53:28', '2024-06-26 07:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Mtl1QeCrNFata50qu5kKWWxgGzTrAuh0e8u7NYSQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUxmRmpHbElpZ1ZMQXV0bDFTRTNsVHhjZjFvT1hhYWR3R1RrSVBQNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kb2N1bWVudC1icm9zdXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719482748);

-- --------------------------------------------------------

--
-- Table structure for table `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonis`
--

INSERT INTO `testimonis` (`id`, `name`, `job`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Riana', 'Entertainer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'testimonis/u9dpA2zq4mn3iiFJ3eqBHF0QcMQLO6jCFkkTDbPd.jpg', '2024-06-26 07:38:54', '2024-06-26 07:38:54'),
(2, 'Sanas', 'Pengusaha', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'testimonis/zpkDIjVsdh9Q3PJm80H8zpXNMFF50DLcM4C1hLup.jpg', '2024-06-26 07:39:18', '2024-06-26 07:39:18'),
(3, 'Salsa', 'Beauty Blogger', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'testimonis/HIsg3ywptuBi1eijZsb6MJUYuzbKkVLLzt0gK7QM.jpg', '2024-06-26 07:39:50', '2024-06-26 07:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraph` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `title`, `heading`, `subheading`, `paragraph`, `created_at`, `updated_at`) VALUES
(1, 'Logo', 'Logo', 'Logo', 'Dolor amet sit justo amet elitr clita ipsum elitr est.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in tempor dui, non consectetur enim.', '2024-06-26 07:13:29', '2024-06-26 07:13:29'),
(2, 'Bridal Makeup', 'Bridal Makeup', 'Bridal Makeup', 'Bridal Makeup', '2024-06-26 07:30:23', '2024-06-27 01:15:49'),
(3, 'Special Occasion', 'Special Occasion', 'Special Occasion', 'Special Occasion', '2024-06-26 07:30:36', '2024-06-27 01:15:35'),
(4, 'Photoshoot', 'Photoshoot', 'Photoshoot', 'Photoshoot', '2024-06-26 07:30:48', '2024-06-27 01:15:16'),
(5, 'Fashion Makeup', 'Fashion Makeup', 'Fashion Makeup', 'Fashion Makeup', '2024-06-26 07:31:02', '2024-06-26 07:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogconsoles`
--
ALTER TABLE `blogconsoles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogkategoris`
--
ALTER TABLE `blogkategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_kategori_foreign` (`id_kategori`),
  ADD KEY `blogs_id_tags_foreign` (`id_tags`);

--
-- Indexes for table `blogtags`
--
ALTER TABLE `blogtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corosels`
--
ALTER TABLE `corosels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeris_id_image_foreign` (`id_image`),
  ADD KEY `galeris_id_text_foreign` (`id_text`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homes_id_image_foreign` (`id_image`),
  ADD KEY `homes_id_text_foreign` (`id_text`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `layanans_id_image_foreign` (`id_image`),
  ADD KEY `layanans_id_text_foreign` (`id_text`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogconsoles`
--
ALTER TABLE `blogconsoles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogkategoris`
--
ALTER TABLE `blogkategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogtags`
--
ALTER TABLE `blogtags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `corosels`
--
ALTER TABLE `corosels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `blogkategoris` (`id`),
  ADD CONSTRAINT `blogs_id_tags_foreign` FOREIGN KEY (`id_tags`) REFERENCES `blogtags` (`id`);

--
-- Constraints for table `galeris`
--
ALTER TABLE `galeris`
  ADD CONSTRAINT `galeris_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `galeris_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);

--
-- Constraints for table `homes`
--
ALTER TABLE `homes`
  ADD CONSTRAINT `homes_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `homes_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);

--
-- Constraints for table `layanans`
--
ALTER TABLE `layanans`
  ADD CONSTRAINT `layanans_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `layanans_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
