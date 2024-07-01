-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 01, 2024 at 09:16 AM
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
-- Database: `tema3`
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
(1, 'Pilihan Terbaik Make Up Artist Anda', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'https://www.youtube.com/embed/sEhS83z3XRM?si=x5izIReQ5NraJXHx', 'websidn/uploads/R1ITID4vIVTWGvbVuFcPQDa8EquGypHIG7M5aYMR.png', '2024-07-01 01:13:09', '2024-07-01 02:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `blogconsoles`
--

CREATE TABLE `blogconsoles` (
  `id` bigint UNSIGNED NOT NULL,
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

--
-- Dumping data for table `blogkategoris`
--

INSERT INTO `blogkategoris` (`id`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Kecantikan', 'kecantikan', '2024-07-01 01:15:40', '2024-07-01 01:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` bigint UNSIGNED DEFAULT NULL,
  `deskripsi_singkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `judul`, `slug`, `id_kategori`, `deskripsi_singkat`, `keyword`, `deskripsi`, `status`, `date`, `image`, `nama_penulis`, `created_at`, `updated_at`) VALUES
(1, 'Makeup Artis Terbaik Di Kota Ini', 'makeup-artis-terbaik-di-kota-ini', 1, 'Pilihan Makeup Artis di kota ini', 'MUA', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', '1', '2024-06-30', 'websidn/blogs/TRuIVjJ5VTsU6B9TsEweoArNuUTTBfs6BJgVVUmS.png', 'Maria Hill', '2024-07-01 01:18:11', '2024-07-01 01:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `blogtags`
--

CREATE TABLE `blogtags` (
  `id` bigint UNSIGNED NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogtags`
--

INSERT INTO `blogtags` (`id`, `tags`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Fashion', 'fashion', '2024-07-01 01:17:19', '2024-07-01 01:17:19'),
(2, 'Kecantikan', 'kecantikan', '2024-07-01 01:17:26', '2024-07-01 01:17:26');

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
(1, 'Layanan', 'Layanan 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/MCQ3rcteXWxjevUVIJGBr7mJQcFnrmjcbuVdExXO.png', '2024-07-01 01:19:35', '2024-07-01 01:19:35'),
(2, 'Layanan', 'Layanan 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/DVFfzpcJwwMyGVzwwLJpwDrtYclXvH0lXPNdz6e7.png', '2024-07-01 01:19:49', '2024-07-01 01:19:49'),
(3, 'Layanan', 'Layanan 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/gFurDw0tcbw4e2SfMGTA1Ah5UdJIxWkyfcgrhg8I.png', '2024-07-01 01:20:04', '2024-07-01 01:20:04'),
(4, 'Layanan', 'Layanan 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/rqXFmMQ1kB5tzRGDZ2TouemoqIkCx9Iyapo3krbX.png', '2024-07-01 01:20:22', '2024-07-01 01:20:22'),
(5, 'Pegawai', 'Charlotte Ross', 'Fashion Makeup', 'websidn/cards/RZ2yAkq3vGiqnHJCzby7jfz64wSbAQmAfDK3TzHH.png', '2024-07-01 01:20:59', '2024-07-01 01:20:59'),
(6, 'Pegawai', 'Orion Frost', 'Fashion Makeup', 'websidn/cards/o71ONF0Lk0l2LlrZTStw9cxLfMIqPBBA5FGU2wmE.png', '2024-07-01 01:21:20', '2024-07-01 01:21:20'),
(7, 'Pegawai', 'Maria Hill', 'Fashion Makeup', 'websidn/cards/fFmDAl5UbqZ5MazOApe7O2Cv83OUIAWT6HPPCkBI.png', '2024-07-01 01:21:36', '2024-07-01 01:21:36'),
(8, 'Pegawai', 'Mernanda Vacia', 'Fashion Makeup', 'websidn/cards/gf4H0zpoxQx1DturPhdyJ8d1DNGKB0aPa3V7v3Yd.png', '2024-07-01 01:21:53', '2024-07-01 01:21:53'),
(9, 'Portofolio', 'Project 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/XnqqilUg95HMvmG0sj04K5skGX91iVY85nxpOp1A.jpg', '2024-07-01 01:22:58', '2024-07-01 01:22:58'),
(10, 'Portofolio', 'Project 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/GHPxTNkrAh2r17auUQCS1y6QYzE4JFFRIoT9kSm8.jpg', '2024-07-01 01:23:16', '2024-07-01 01:23:16'),
(11, 'Portofolio', 'Project 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/m627y9r0vDGJNGrOC1XBBS0mo2O5tC0yLQBkbDIy.jpg', '2024-07-01 01:23:28', '2024-07-01 01:23:28'),
(12, 'Portofolio', 'Project 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy', 'websidn/cards/oyXAzX4qJZx466C2mjOFqU5gz2Jum0uh4CQywC2I.jpg', '2024-07-01 01:23:40', '2024-07-01 01:23:40');

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
(1, '082038491283', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7074.183936675103!2d-73.98354113874954!3d40.75243152133734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f7b6376d9b53%3A0xd27fd8e9d8b605d8!2sPerfect%20Wedding%20NYC!5e0!3m2!1sid!2sid!4v1719289912387!5m2!1sid!2sid', '2024-07-01 01:13:52', '2024-07-01 01:13:52');

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
(1, 'Landscape', 'websidn/corosels/QNeIyZ1eO1N4FsfPPVtZNpgPYTYWabb3HrplFWHT.jpg', '2024-07-01 01:02:58', '2024-07-01 01:02:58'),
(2, 'Landscape', 'websidn/corosels/lVurDsUhrSzBqoIsRvbVVHN7Sp0b0uFKAukJyKVz.jpg', '2024-07-01 01:03:21', '2024-07-01 01:03:21'),
(3, 'Landscape', 'websidn/corosels/vedkGkwPF7VSSIazWmdYY2h0x9BQLHvke6icdIbc.jpg', '2024-07-01 01:03:51', '2024-07-01 01:03:51');

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
(1, 'Brosur', 'websidn/uploads/files/YLMS7iXeqkYlCxHnDATYUna6AoFUfkUawHQMIYI8.pdf', '2024-07-01 01:09:19', '2024-07-01 01:09:19'),
(2, 'Pricelist', 'websidn/uploads/files/AT4UrRyPkOWazyg1QT3TUgL3poDr8oY9GqD8wjb6.pdf', '2024-07-01 01:10:10', '2024-07-01 01:10:10'),
(3, 'Portofolio', 'websidn/uploads/files/ZWcvS2xQnuhSkLCFRi5GrCADkaCHhg6RWu3pG0sd.pdf', '2024-07-01 01:11:59', '2024-07-01 01:11:59');

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
(1, 2, 2, '2024-07-01 01:04:05', '2024-07-01 01:04:05'),
(2, 3, 3, '2024-07-01 01:04:13', '2024-07-01 01:04:13'),
(3, 4, 4, '2024-07-01 01:04:21', '2024-07-01 01:04:21'),
(4, 5, 5, '2024-07-01 01:04:28', '2024-07-01 01:04:28'),
(5, 2, 2, '2024-07-01 01:04:43', '2024-07-01 01:04:43');

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
(1, 'Logo', 1, 1, '2024-07-01 01:02:24', '2024-07-01 01:02:24');

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
(1, 'Landscape', 'websidn/images/s4NWbRr2uHgmVY5n7L2V1kH8BtAnANcyvzTJOtZJ.png', '2024-07-01 00:59:52', '2024-07-01 00:59:52'),
(2, 'Landscape', 'websidn/images/3WWnV1z3aTo6P71oKsOScNqKnwkRRkqInsGPSQjT.png', '2024-07-01 01:00:21', '2024-07-01 01:00:21'),
(3, 'Landscape', 'websidn/images/f8LZYki8dLxEDEVhhzQHbJWAjCxa4V4Dbk7f71rV.png', '2024-07-01 01:00:33', '2024-07-01 01:00:33'),
(4, 'Landscape', 'websidn/images/GFWMl1ZGbtBJFTs3lll7WClEagPexrN8gjrb9CNj.png', '2024-07-01 01:00:49', '2024-07-01 01:00:49'),
(5, 'Landscape', 'websidn/images/Mdpp6NdX2S22NUOIiZYazEPa10Ijh9DqIwsGeWSq.png', '2024-07-01 01:01:00', '2024-07-01 01:01:00');

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
(10, '0001_01_01_000001_create_cache_table', 1),
(11, '0001_01_01_0000020_create_blog_table', 1),
(12, '0001_01_01_0000021_create_multitagblog_table', 1),
(13, '0001_01_01_000002_create_jobs_table', 1),
(14, '0001_01_01_000003_create_image_table', 1),
(15, '0001_01_01_000004_create_text_table', 1),
(16, '0001_01_01_000005_create_testimoni_table', 1),
(17, '0001_01_01_000006_create_home_table', 1),
(18, '0001_01_01_000007_create_layanan_table', 1),
(19, '0001_01_01_000008_create_galeri_table', 1),
(20, '0001_01_01_000009_create_about_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multitagblog`
--

CREATE TABLE `multitagblog` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `blogtag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multitagblog`
--

INSERT INTO `multitagblog` (`id`, `blog_id`, `blogtag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

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
(1, 'Basic', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/NjhN78DnEpspzx4Az8Mx0wbLz0tWcoibHqi6eDXJ.png', '2024-07-01 01:07:20', '2024-07-01 01:07:37'),
(2, 'Standard Package', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/jrJfP3FUG02HKxhERc4qoYMPlu7EWytvmeIMBJZg.png', '2024-07-01 01:07:59', '2024-07-01 01:07:59'),
(3, 'Premium Package', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/xZFmqA8ZqHkCI5VUXSAcwBuyqE4E30rMyw5oa9SF.png', '2024-07-01 01:08:27', '2024-07-01 01:08:27'),
(4, 'Platinum Package', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/PqDQuYqGYLC9dJqRVGB0V8zPeYbSglhesNiTfkWk.png', '2024-07-01 01:08:55', '2024-07-01 01:08:55');

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
('72j98E1Stnc0dNvBXyTh4EYsdvQ7fCedayAOISKd', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNnJRc095dkF5YkQxbk11OEhKZGFKWGJtRUJ2dlRYc1ZiWTRBZHdUWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rb250YWsta2FtaSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1719825304);

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
(1, 'Maria Hill', 'Entertainer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, in?', 'websidn/testimonis/Q3nyLn2QPJCc7buENtRv49wDVnZfzMRzBxPsEfK1.jpg', '2024-07-01 01:05:47', '2024-07-01 01:05:47'),
(2, 'Mernanda Vercy', 'Beauty Blogger', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, in?', 'websidn/testimonis/3ju1vkIY8jY6ROTQgwZjthQ6nzrr6Veeh8ffrkAz.jpg', '2024-07-01 01:06:01', '2024-07-01 01:06:01'),
(3, 'Salsa', 'Content Creator', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, in?', 'websidn/testimonis/4uNLQqjcRPxocrarZFd9SAY4qWIizrUdCJn9vgC1.jpg', '2024-07-01 01:06:21', '2024-07-01 01:06:21');

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
(1, 'Logo', 'Logo', 'Logo', 'Logo', '2024-07-01 01:01:25', '2024-07-01 01:01:25'),
(2, 'Bridal Makeup', 'Bridal Makeup', 'Bridal Makeup', 'Bridal Makeup', '2024-07-01 01:01:44', '2024-07-01 01:01:44'),
(3, 'Special Occasion', 'Special Occasion', 'Special Occasion', 'Special Occasion', '2024-07-01 01:01:54', '2024-07-01 01:01:54'),
(4, 'Photoshoot', 'Photoshoot', 'Photoshoot', 'Photoshoot', '2024-07-01 01:02:02', '2024-07-01 01:02:02'),
(5, 'Fashion Makeup', 'Fashion Makeup', 'Fashion Makeup', 'Fashion Makeup', '2024-07-01 01:02:12', '2024-07-01 01:02:12');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'superadmin@gmail.com', '2024-07-01 00:57:52', '$2y$12$7sm/o88qeGRManOiWk2jwe0s.0XAv2D9tTfrlWmwXX.gCX37MvpTi', 'JVUdojjsJ1', '2024-07-01 00:57:53', '2024-07-01 00:57:53'),
(2, 'Admin', 'admin@gmail.com', '2024-07-01 00:57:53', '$2y$12$Us3ZvTufljcUqLNh7GrFzuxF3UAEocCwfaJJU1cRYOeV681xvOkr.', 'tQLuJbGJh1', '2024-07-01 00:57:53', '2024-07-01 00:57:53');

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
  ADD KEY `blogs_id_kategori_foreign` (`id_kategori`);

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
-- Indexes for table `multitagblog`
--
ALTER TABLE `multitagblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multitagblog_blog_id_foreign` (`blog_id`),
  ADD KEY `multitagblog_blogtag_id_foreign` (`blogtag_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogtags`
--
ALTER TABLE `blogtags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multitagblog`
--
ALTER TABLE `multitagblog`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `blogkategoris` (`id`);

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

--
-- Constraints for table `multitagblog`
--
ALTER TABLE `multitagblog`
  ADD CONSTRAINT `multitagblog_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `multitagblog_blogtag_id_foreign` FOREIGN KEY (`blogtag_id`) REFERENCES `blogtags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
