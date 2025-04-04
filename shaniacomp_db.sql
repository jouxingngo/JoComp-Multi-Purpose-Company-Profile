-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 04, 2025 at 02:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jocompdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `meeting_at` date NOT NULL,
  `budget` bigint UNSIGNED NOT NULL,
  `brief` text NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `phone_number`, `email`, `meeting_at`, `budget`, `brief`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Budi Setiawan', '1289037', 'budi@example.com', '2025-03-29', 1000000, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquid maiores saepe molestias aspernatur totam quibusdam consectetur sunt sit, optio quaerat eveniet. Aliquam modi deserunt recusandae repellendus laboriosam eos odit possimus.\r\nQuibusdam sequi repudiandae tempora, impedit adipisci natus illum alias consequuntur omnis, culpa totam consequatur officia necessitatibus numquam cum accusantium et libero eveniet eum rerum eos itaque? Delectus voluptatem illo voluptatum.', 3, NULL, '2025-03-28 01:28:48', '2025-03-28 01:28:48'),
(2, 'John Doe', '1312312', 'john@example.com', '2025-03-10', 125000, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Officia ipsum aliquid quibusdam mollitia accusantium, voluptate dicta nisi debitis perferendis. Consectetur, veritatis in perferendis ex quo ab voluptatum sunt! Animi, necessitatibus?', 4, NULL, '2025-03-28 01:51:18', '2025-03-28 01:51:18'),
(3, 'Jane Doe', '0873124', 'jane@example.com', '2025-10-14', 542000, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Officia ipsum aliquid quibusdam mollitia accusantium, voluptate dicta nisi debitis perferendis. Consectetur, veritatis in perferendis ex quo ab voluptatum sunt! Animi, necessitatibus?', 4, NULL, '2025-03-28 01:52:00', '2025-03-28 01:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:9:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"manage statistics\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:15:\"manage products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:17:\"manage principles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:19:\"manage testimonials\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"manage clients\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"manage teams\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"manage abouts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:19:\"manage appointments\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:20:\"manage hero sections\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:16:\"designer_manager\";s:1:\"c\";s:3:\"web\";}}}', 1743239963);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_abouts`
--

CREATE TABLE `company_abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company_abouts`
--

INSERT INTO `company_abouts` (`id`, `name`, `thumbnail`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'Build Georgeous Buildings Yet Also Family Friendly', 'thumbnail/oBQpyQsFkm7AmzL09ybCpgM4XwjoiCiydKbppzn9.png', 'Visions', NULL, '2025-03-20 01:00:22', '2025-03-20 21:00:42'),
(9, 'Build Georgeous Buildings Yet Also Family Friendly', 'thumbnail/KnxeNoMRVucFEQDsomjUv1bxwuREQJwIqhOvgvRR.png', 'Missions', NULL, '2025-03-20 01:01:58', '2025-03-20 21:00:37'),
(12, 'asdf', 'thumbnail/OIPrPUeySShH01EHhvuk5zhEWRDqIuOkx4ZITQyw.png', 'Visions', '2025-03-20 21:05:20', '2025-03-20 21:05:12', '2025-03-20 21:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `company_keypoints`
--

CREATE TABLE `company_keypoints` (
  `id` bigint UNSIGNED NOT NULL,
  `keypoint` varchar(255) NOT NULL,
  `company_about_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company_keypoints`
--

INSERT INTO `company_keypoints` (`id`, `keypoint`, `company_about_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 'Embrance innovative construction methods and sustainable practices to minimize environment', 8, NULL, '2025-03-20 01:00:22', '2025-03-20 21:00:42'),
(15, 'Embrance innovative construction methods and sustainable practices to minimize environment', 8, NULL, '2025-03-20 01:00:22', '2025-03-20 21:00:42'),
(16, 'Embrance innovative construction methods and sustainable practices to minimize environment', 8, NULL, '2025-03-20 01:00:22', '2025-03-20 21:00:42'),
(17, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-20 21:09:25', '2025-03-20 01:01:58', '2025-03-20 21:09:25'),
(18, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-20 21:09:25', '2025-03-20 01:01:58', '2025-03-20 21:09:25'),
(19, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-20 21:09:25', '2025-03-20 01:01:58', '2025-03-20 21:09:25'),
(26, 'asdf', 12, '2025-03-20 21:05:20', '2025-03-20 21:05:12', '2025-03-20 21:05:20'),
(27, 'asdf', 12, '2025-03-20 21:05:20', '2025-03-20 21:05:12', '2025-03-20 21:05:20'),
(28, 'asdf', 12, '2025-03-20 21:05:20', '2025-03-20 21:05:12', '2025-03-20 21:05:20'),
(29, 'tesbrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-20 21:09:46', '2025-03-20 21:09:25', '2025-03-20 21:09:46'),
(30, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-20 21:09:46', '2025-03-20 21:09:25', '2025-03-20 21:09:46'),
(31, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-20 21:09:46', '2025-03-20 21:09:25', '2025-03-20 21:09:46'),
(32, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-26 01:57:25', '2025-03-20 21:09:46', '2025-03-26 01:57:25'),
(33, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-26 01:57:25', '2025-03-20 21:09:46', '2025-03-26 01:57:25'),
(34, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-26 01:57:25', '2025-03-20 21:09:46', '2025-03-26 01:57:25'),
(35, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-26 01:57:38', '2025-03-26 01:57:25', '2025-03-26 01:57:38'),
(36, 'Etesmbrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-26 01:57:38', '2025-03-26 01:57:25', '2025-03-26 01:57:38'),
(37, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, '2025-03-26 01:57:38', '2025-03-26 01:57:25', '2025-03-26 01:57:38'),
(38, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, NULL, '2025-03-26 01:57:38', '2025-03-26 01:57:38'),
(39, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, NULL, '2025-03-26 01:57:38', '2025-03-26 01:57:38'),
(40, 'Embrace innovative construction methods and sustainable practices to minimize environment', 9, NULL, '2025-03-26 01:57:38', '2025-03-26 01:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `company_statistics`
--

CREATE TABLE `company_statistics` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `goal` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company_statistics`
--

INSERT INTO `company_statistics` (`id`, `name`, `goal`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Award-winning Buildings', '180.409', 'icon/o2QcRY0eVJP0JPoxJb5aMmWYvrzG8nRJRgDMas5Q.png', NULL, '2025-03-19 22:47:42', '2025-03-25 01:06:42'),
(2, 'HQ Wordlwide', '198', 'icon/kX4IeILcluaS4d387LtKIDVTz1QQXlaexjAQyz8i.png', NULL, '2025-03-19 22:50:03', '2025-03-20 20:19:00'),
(3, 'Success Investments', '512bn', 'icon/1r1hLWgotFlcBpPUVyjQOpMiTtOuhQU4H7qum3aH.png', NULL, '2025-03-19 22:50:47', '2025-03-20 20:18:45'),
(4, 'Honest Reviews', '4.9/5', 'icon/NmEJGfyqKnWE8iD7D4VXy0RfGfj8olyzoXqgz0gc.png', NULL, '2025-03-19 22:51:18', '2025-03-20 20:18:38'),
(5, 'asdfasdf', 'njay', 'icon/2w2JxXSw8VOsukuNINmLLdInsymt5pnkVbKQLG3q.jpg', '2025-03-19 23:34:33', '2025-03-19 23:31:07', '2025-03-19 23:34:33'),
(6, 'tes', 'tes', 'icon/6mQp8pIs2E8B8u2NQNh6axm6vilZAAJHSylPeVZK.png', '2025-03-20 20:19:48', '2025-03-20 20:19:43', '2025-03-20 20:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `path_video` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `achievement`, `subheading`, `heading`, `path_video`, `banner`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'We reached 10,000 huge buildings in 2025', 'Shayna is an award-winning construction company with a team of skilled craftsmen and women who have over 100 years of combined experience.', 'Help Build Biggest Dream From Scratch', '13ARO0HDZsQ', 'banner/HqwXJK6akysj7i4DvjrGOVvz8vwJ3HG95xr8Zixj.png', NULL, '2025-03-20 00:43:30', '2025-03-25 02:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_18_041940_create_permission_tables', 1),
(5, '2025_03_18_045317_create_company_statistics_table', 1),
(6, '2025_03_18_045416_create_project_clients_table', 1),
(7, '2025_03_18_045513_create_products_table', 1),
(8, '2025_03_18_045514_create_appointments_table', 1),
(9, '2025_03_18_045514_create_testimonials_table', 1),
(10, '2025_03_18_045540_create_our_principles_table', 1),
(11, '2025_03_18_045552_create_hero_sections_table', 1),
(12, '2025_03_18_045613_create_our_teams_table', 1),
(13, '2025_03_18_045622_create_company_abouts_table', 1),
(14, '2025_03_18_045632_create_company_keypoints_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `our_principles`
--

CREATE TABLE `our_principles` (
  `id` bigint UNSIGNED NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `our_principles`
--

INSERT INTO `our_principles` (`id`, `subtitle`, `name`, `thumbnail`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes', 'thumbnail/fQXwdL11HuMpguuiiuFjbyNTC4tZTVxZ0PnCL2St.png', 'icon/qEmsI8mt8A5uSqZqdaOYPGFWwZgNGmztib8hG47Y.png', '2025-03-19 23:56:49', '2025-03-19 23:55:34', '2025-03-19 23:56:49'),
(2, 'asdf', 'asdf', 'thumbnail/0XoFn1FwguqH5H2L4loXElNQMASivE53F1PolpMN.png', 'icon/pqOfimw2xfwvdFEnTfo3IlvVOuN5O3uyJCFPWLpv.png', '2025-03-20 00:45:36', '2025-03-20 00:33:05', '2025-03-20 00:45:36'),
(3, 'Shayna is an award-winning ametia construction company with lorem', 'Prioritize Trust', 'thumbnail/06a3zGqXCJzmL80J12La9bs4nL19MiE1bXTPC5LU.png', 'icon/erCXaYjc6c4qPF0SjsCk21oOHHNT7Fc2UkijGBIt.png', NULL, '2025-03-20 00:46:58', '2025-03-20 20:22:56'),
(4, 'Shayna is an award-winning ametia construction company with lorem', 'Professional People', 'thumbnail/AtFyxMRl8tsq2FWb0cPYNVIgbgFJ5AChpRQBKfKX.png', 'icon/EnEdAV3QaIoPwxxbooag11c1C3ebzWRLGnFbHcX8.png', NULL, '2025-03-20 00:48:35', '2025-03-20 20:22:46'),
(5, 'Shayna is an award-winning ametia construction company with lorem', 'Eco Friendly Concept', 'thumbnail/dI0xJLIb5b1AzSw5qd2Wz3ikY4WMoSFoqs73rTO4.png', 'icon/BvmyEJ1jF5aj2OviBuqZQpv9ocsbF8F9MrBvtH5y.png', NULL, '2025-03-20 00:48:54', '2025-03-20 20:23:29'),
(6, 'tes', 'tes', 'thumbnail/dBhu5DuwNs6SIcZmX3d06ugjVfpmBIViuTl4B5aT.png', 'icon/LukcplwOlNOdRgMvTkAmuEcQodcABcugZe6DHKwU.png', '2025-03-20 20:23:45', '2025-03-20 20:23:36', '2025-03-20 20:23:45'),
(7, 'tes', 'tes', 'thumbnail/2BXcx5MHibI61HVyBPN1xNNg3fBKvromJIffV0qH.png', 'icon/KcAKcgAWgmToH9M2yMCWrzYelJGabAHLBsssx7ZW.png', '2025-03-20 20:24:22', '2025-03-20 20:24:13', '2025-03-20 20:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `our_teams`
--

CREATE TABLE `our_teams` (
  `id` bigint UNSIGNED NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `our_teams`
--

INSERT INTO `our_teams` (`id`, `occupation`, `name`, `avatar`, `location`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes', 'avatar/PmYFGPN95j4l95mXa7A4gYbWCjdg2TXA4b5l3xGO.png', 'tes', '2025-03-19 23:57:25', '2025-03-19 23:54:44', '2025-03-19 23:57:25'),
(3, 'Product Manager', 'Shayna Liza', 'avatar/vMWyqV1Z0zYVD3NlMeCz1p8Oo3dKoSEk9oLh8WIT.png', 'Bali, Indonesia', NULL, '2025-03-20 00:35:39', '2025-03-20 00:35:39'),
(4, 'Customer Relations', 'Bruno Oleo', 'avatar/CK8qGaWFchr7ttsgCChrKckBJODg0kplATHldfpV.png', 'Orchard, Singapore', NULL, '2025-03-20 00:36:04', '2025-03-20 00:36:04'),
(5, 'Senior 3D Designer', 'Sami Kimi', 'avatar/UGWLWhljK7Q6IOdFEOm5YtZa2e0BwC02X5bvt9ke.png', 'Ho Chi Min, Vietnam', NULL, '2025-03-20 00:36:22', '2025-03-20 00:36:22'),
(6, 'Chief Executive Officer', 'Putri Emily', 'avatar/Gzp8dOLUlob4pLD0cMe5UYuB2vgfC6NKzYoVpTdO.png', 'Sanghai, China', NULL, '2025-03-20 00:36:46', '2025-03-20 20:30:10'),
(7, 'Senior 3D Designer', 'Wibowo Putra', 'avatar/fH4SaXp2AnlNdKm22IhtBbqwUFXXIa7Toba7BQC4.png', 'Ho Chi Min, Vietnam', NULL, '2025-03-20 00:37:14', '2025-03-20 00:37:14'),
(8, 'Chief Executive Officer', 'Putri Emily', 'avatar/MKWRyZpgeEBZiaApWmQ7ujY4EsYPDqQjC56e8clg.png', 'Shanghai, China', NULL, '2025-03-20 00:37:38', '2025-03-20 00:37:38'),
(9, 'Product Manager', 'Yuyan Chin', 'avatar/YGL9IXPGE66f84AsQpU2ECTkAkfWGNnDzczm3hau.png', 'Bali, Indonesia', NULL, '2025-03-20 00:37:56', '2025-03-20 00:37:56'),
(10, 'Customer Relations', 'Bruno Oleo', 'avatar/N8emERTQCPzRCULExV85anybKSeFGpHYxpaCgG47.png', 'Orchard, Singapore', NULL, '2025-03-20 00:38:35', '2025-03-20 00:38:35'),
(11, 'Senior 3D Designer', 'Sami Kimi', 'avatar/lIQH0MdVLQ58X5IP23EYh93gusXsnVOPraihhcVB.png', 'Ho CHi Min, Vietnam', NULL, '2025-03-20 00:39:09', '2025-03-20 00:39:09'),
(12, 'Product Manager', 'Shayna Liza', 'avatar/S4hu71RxpJsUmqtF7CpMV6X9aph3WXeLFtZgAcej.png', 'Bali, Indonesia', NULL, '2025-03-20 00:39:29', '2025-03-20 00:39:29'),
(13, 'tes', 'tes', 'avatar/OurYGF2XLzvxQXyGrjjdOOVj1CZ3aXTYn4IS0qs4.png', 'tes', '2025-03-20 20:30:35', '2025-03-20 20:30:31', '2025-03-20 20:30:35'),
(14, 'Chef Executive Officer', 'Jouxing Ngo', 'avatar/jGCGF5CWRjECom60pf2NLRkI21fmCUMq9BLuId7W.png', 'Helsinki, Finlandia', NULL, '2025-03-20 20:34:33', '2025-03-25 01:30:19'),
(15, 'asdf', 'rtss', 'avatar/JIELsyLaBplE4axXyX7SljtUXNa1gL4Prn9Q8MNj.png', 'asdf', '2025-03-25 01:31:09', '2025-03-25 01:30:57', '2025-03-25 01:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage statistics', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(2, 'manage products', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(3, 'manage principles', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(4, 'manage testimonials', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(5, 'manage clients', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(6, 'manage teams', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(7, 'manage abouts', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(8, 'manage appointments', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(9, 'manage hero sections', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `about`, `thumbnail`, `tagline`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Lorem ipsum researching amet dolor metrics and performance burning rate random says.', 'thumbnail/7s2NPv4cbecsyiSXd3ZXS5R24cgFMOu41IZtmM50.png', 'WORLD TRADE CENTER', 'Office Integrated with Biggest Data Server Center', NULL, '2025-03-20 00:51:47', '2025-03-20 20:38:20'),
(3, 'Lorem ipsum researching amet dolor metrics and performance burning rate random says.', 'thumbnail/e9TL1IGhIUQcGff7Wnbi65qSbIp1UWsBTijXUx5l.png', 'FAMILY HARMONY', 'Beautiful Theme Park Family and Kids Friendly', NULL, '2025-03-20 00:53:24', '2025-03-20 20:38:11'),
(4, 'Lorem ipsum researching amet dolor metrics and performance burning rate random says.', 'thumbnail/ktmSRZ92ZDeSsj8K3a1XdOeMStd1i5RChzEgvQqs.png', 'ECO-FRIENDLY SPACE', 'Public City Center Park with Super Mall & Airport', NULL, '2025-03-20 00:55:20', '2025-03-28 01:19:29'),
(11, 'tes', 'thumbnail/Gr1yRZYnXuHahuHPjQTagyIJDQ21C1jRN7BhkNy2.png', 'tes', 'tes', '2025-03-20 20:47:50', '2025-03-20 20:46:21', '2025-03-20 20:47:50'),
(12, 'asdf', 'thumbnail/uxeorgnwqd26gfNeqMHDlWp1FNqM4mBBbojM7Hc3.png', 'asdf', 'asdffddf', '2025-03-20 20:47:49', '2025-03-20 20:47:18', '2025-03-20 20:47:49'),
(13, 'dfgh', 'thumbnail/YfrpddtcTJTZcGV5x22Ujvqcr1Gzt6ErYGyLQWJf.png', 'dfgh', 'dfgh', '2025-03-20 20:47:48', '2025-03-20 20:47:27', '2025-03-20 20:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `project_clients`
--

CREATE TABLE `project_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_clients`
--

INSERT INTO `project_clients` (`id`, `name`, `occupation`, `avatar`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'tes', 'avatar/HemmmWp9ydAbpXh3ODPcIkDInotqSsntovhNdEVW.png', 'logo/VG34SH1vuwHa8Vf5rpVP2pXyAeiT6pjyVp6rYtxt.png', '2025-03-20 00:04:00', '2025-03-19 23:58:28', '2025-03-20 00:04:00'),
(2, 'Sirania', 'CRO Kamikapan', 'avatar/ERO8KPTcuYLumQ6SV3bFjS3QFZ7x4vECm9JEyEkk.png', 'logo/qqWf8bVVhBMEnY2wuPRNToqm6WoqNT2WayNuo0P2.png', NULL, '2025-03-20 00:57:06', '2025-03-20 00:57:06'),
(3, 'Budi', 'PNS', 'avatar/Jd2K5N0J5iDfGHBWAVCJCeltdPUQ7h3H3FytWq6I.png', 'logo/ILa1pcUMFyDzJbCOLP6zm2WK0vAQAUTOELU0bh1C.png', '2025-03-20 20:51:12', '2025-03-20 03:34:52', '2025-03-20 20:51:12'),
(4, 'Budi Utomo', 'Designer', 'avatar/FtBiBUsBtkGhhq02qVATYnZljV3DqvSVy368qxTh.png', 'logo/PN8vyIWvQU3vQThxq3KhmKmjq5SZ8IFoKrPNPabG.png', '2025-03-25 01:37:15', '2025-03-20 20:51:55', '2025-03-25 01:37:15'),
(5, 'tes', 'tes', 'avatar/nW1La9lxbdHGkW0T7IqClWtjdOXoCXmSRE7t0p5F.png', 'logo/PYy491MmYhIwOOuPQYasSLdhh76u9R6ysYGaZD7t.png', '2025-03-20 20:52:18', '2025-03-20 20:52:14', '2025-03-20 20:52:18'),
(6, 'Sami Kimi', 'Senior 3D Designer', 'avatar/gD3ECsxoXxss275eFPWV2kf4uz9d1aEvVRPycebX.png', 'logo/BawkjFeS9En6CTW6uo2vTbMQLx6CxzexW9jpwEwn.svg', NULL, '2025-03-25 01:40:21', '2025-03-25 01:40:21'),
(7, 'Putri Emily', 'Chief Executive Officer', 'avatar/WemAAgSOs6Y8ADwHWFL9S9vqsY5fPs8y8HBp5VC1.png', 'logo/wV6qWHjJqTMZNrLif4hDD6aQon5v5YTMxjVVLCH1.svg', NULL, '2025-03-25 01:41:15', '2025-03-25 01:41:15'),
(8, 'Bruno Oleo', 'CRO Kamikapan', 'avatar/3iEmRGcsZTlTt7XzVnnOhzLtKqKuJXoFPnqZjg70.png', 'logo/3QvKl3hY39YBOOflSFvNUvCQFXALDBOF2Odftg3v.svg', NULL, '2025-03-25 01:41:48', '2025-03-25 01:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'designer_manager', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32'),
(2, 'super_admin', 'web', '2025-03-18 20:13:32', '2025-03-18 20:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bxr1u0krHbwjwG2TqcFakYlwF4gfRCb1A4JXoinl', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRlJEZHp0Skt0VHlrT0JlNzRKRWJSZmtoR3E0N244RGNUMXZZU21TYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1742983395),
('jRJIxPjgn9xJu2EjQ2SQyydWX91F9vbg6IrrPyV5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMU9JaUdpcTlLOEpVU2czeEJ1Y2lhcnlJbkVMeWI4bUs1M2IwMHk5MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi90ZXN0aW1vbmlhbHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1743155654);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `project_client_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `thumbnail`, `message`, `project_client_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'thumbnail/gW8ATFnPcli9BVjSWrkT7hLyZ09Vlu7deB6CgMKq.png', 'tes', 1, '2025-03-20 00:03:10', '2025-03-19 23:58:40', '2025-03-20 00:03:10'),
(2, 'thumbnail/U4JHqp7niPSuIo3Y1GNGHMf9izStyfICjLT7Bm28.png', 'Shayna is a leading construction company in Melbourne, building new homes and commercial projects that are durable, functional and beautiful.', 2, NULL, '2025-03-20 00:58:06', '2025-03-20 20:54:42'),
(3, 'thumbnail/0hcqPFEslgIKIiq61N54nygcF7dqUBanHugIR4xj.png', 'asdf', 4, '2025-03-20 20:55:24', '2025-03-20 20:55:15', '2025-03-20 20:55:24'),
(4, 'thumbnail/cyRjpG1BW0EV4n7YZ1o6cdtQ2NdzJm4pSszXl2P0.jpg', 'Shayna is a leading construction company in Melbourne, building new homes and commercial projects that are durable, functional and beautiful.', 8, NULL, '2025-03-25 01:42:47', '2025-03-25 01:42:47'),
(5, 'thumbnail/Giki3ox6427i9yjym4kAWIMBOHU11BnbyCKSeWJO.jpg', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam impedit perspiciatis sapiente, pariatur animi iure, molestias magnam illum alias officiis at iste corporis. Qui eius maiores aut aliquid possimus accusamus.', 6, NULL, '2025-03-25 01:43:41', '2025-03-25 01:43:41'),
(6, 'thumbnail/joMK1RBGVr3UpN3GirS4WlgKQrwImTBcDj916RXn.jpg', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam impedit perspiciatis sapiente,', 7, NULL, '2025-03-25 01:44:49', '2025-03-25 01:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JoComp', 'super@admin.com', NULL, '$2y$12$/qBpT4WGCI3UE15W9awahukOzVELR9TbW06t1oTN1j/XYmidauf1m', NULL, '2025-03-18 20:13:32', '2025-03-18 20:13:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_product_id_foreign` (`product_id`);

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
-- Indexes for table `company_abouts`
--
ALTER TABLE `company_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_keypoints`
--
ALTER TABLE `company_keypoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_keypoints_company_about_id_foreign` (`company_about_id`);

--
-- Indexes for table `company_statistics`
--
ALTER TABLE `company_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hero_sections`
--
ALTER TABLE `hero_sections`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `our_principles`
--
ALTER TABLE `our_principles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_teams`
--
ALTER TABLE `our_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `project_clients`
--
ALTER TABLE `project_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_project_client_id_foreign` (`project_client_id`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_abouts`
--
ALTER TABLE `company_abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `company_keypoints`
--
ALTER TABLE `company_keypoints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `company_statistics`
--
ALTER TABLE `company_statistics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `our_principles`
--
ALTER TABLE `our_principles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `our_teams`
--
ALTER TABLE `our_teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_clients`
--
ALTER TABLE `project_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_keypoints`
--
ALTER TABLE `company_keypoints`
  ADD CONSTRAINT `company_keypoints_company_about_id_foreign` FOREIGN KEY (`company_about_id`) REFERENCES `company_abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_project_client_id_foreign` FOREIGN KEY (`project_client_id`) REFERENCES `project_clients` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
