-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 02:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ardent_edguru`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `background_colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `logo`, `heading`, `description`, `created_at`, `updated_at`, `background_colour`) VALUES
(1, 'about\\February2021\\j3ycCxzzZ7K67UG3zpuz.JPG', 'Hello', '<p>History of creation.</p>\r\n<p>Description about the organisation.</p>', '2021-02-23 07:37:09', '2021-02-23 07:37:09', '#d68a8a');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `head` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `head`, `description`, `created_at`, `updated_at`) VALUES
(1, 'EMAIL ADDRESS', 'info@edguruindia.com', '2021-02-12 12:26:29', '2021-02-12 12:26:29'),
(2, 'MAILING ADDRESS', '123 Anywhere St. Any City, ST 12345', '2021-02-12 12:26:49', '2021-02-12 12:26:49'),
(3, 'PHONE NUMBER', '(123) 456-7890', '2021-02-12 12:27:07', '2021-02-12 12:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(56, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 9, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 9, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 0, '{}', 3),
(59, 9, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 0, '{}', 4),
(60, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 5),
(61, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(62, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 10, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 0, '{}', 2),
(64, 10, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 0, '{}', 3),
(65, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 4),
(66, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(67, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 11, 'head', 'text', 'Head', 0, 1, 1, 1, 1, 0, '{}', 2),
(69, 11, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 0, '{}', 3),
(70, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 4),
(71, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(72, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(73, 12, 'heading', 'text', 'Heading', 0, 1, 1, 1, 1, 0, '{}', 2),
(74, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 3),
(75, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(76, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 13, 'heading', 'text_area', 'Heading', 0, 1, 1, 1, 1, 0, '{}', 2),
(78, 13, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(79, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(80, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(81, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 14, 'heading', 'text_area', 'Heading', 0, 1, 1, 1, 1, 0, '{}', 2),
(83, 14, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(85, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(86, 15, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(87, 15, 'email_id', 'text', 'Email Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(88, 15, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(89, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(90, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(91, 9, 'background_colour', 'color', 'Background Colour', 0, 1, 1, 1, 1, 1, '{}', 7),
(92, 16, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 16, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 16, 'heading', 'text_area', 'Heading', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 16, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 5),
(97, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(98, 16, 'background_colour', 'color', 'Background Colour', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-02-12 10:52:18', '2021-02-12 10:52:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-02-12 10:52:18', '2021-02-12 10:52:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-02-12 10:52:18', '2021-02-12 10:52:18'),
(9, 'home', 'home', 'Home', 'Homes', 'voyager-anchor', 'App\\Models\\Home', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-12 11:36:32', '2021-02-23 02:33:45'),
(10, 'slider', 'slider', 'Slider', 'Sliders', 'voyager-dot-3', 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-12 12:09:26', '2021-02-12 12:11:06'),
(11, 'contact', 'contact', 'Contact', 'Contacts', 'voyager-telephone', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-12 12:24:29', '2021-02-12 12:25:56'),
(12, 'navbar', 'navbar', 'Navbar', 'Navbars', 'voyager-params', 'App\\Models\\Navbar', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-12 12:35:51', '2021-02-12 12:37:18'),
(13, 'privacy_policy', 'privacy-policy', 'Privacy Policy', 'Privacy Policies', 'voyager-rocket', 'App\\Models\\PrivacyPolicy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-23 01:00:30', '2021-02-23 06:31:00'),
(14, 'terms', 'terms', 'Term', 'Terms', NULL, 'App\\Models\\Term', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-02-23 01:56:22', '2021-02-23 01:56:22'),
(15, 'queries', 'queries', 'Query', 'Queries', NULL, 'App\\Models\\Queries', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-02-23 02:26:02', '2021-02-23 02:26:02'),
(16, 'about', 'about', 'About', 'Abouts', NULL, 'App\\Models\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-02-23 07:29:28', '2021-02-23 07:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `background_colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `logo`, `heading`, `description`, `created_at`, `updated_at`, `background_colour`) VALUES
(1, 'home\\February2021\\3n0wa5wfl7FdtCSXyZ0O.png', 'ONLINE LEARNING', 'Welcome to the gateway of online learning. Choose your class/tution and register to start a life altering journey bringing you closer to your goals.', '2021-02-12 11:42:00', '2021-02-23 04:56:56', '#ffffff'),
(2, 'home\\February2021\\ffB0SBfAiXPSVtFrqPWQ.jpg', 'Switch to EdGuru', 'Learn from the best gurus online from the comfort and safety of your home. <br>\r\n        Our panel of teachers are a few clicks away.', '2021-02-12 11:59:00', '2021-02-23 04:57:07', '#ffffff'),
(3, NULL, 'What we offer', 'We have empanelled vast of experienced school and private tutors,<br> who will now be available for online live tution classes. <br>Choose your class according to your board/grade and other options.', '2021-02-12 12:02:00', '2021-02-23 04:57:57', '#ffffff'),
(4, NULL, 'Register with us for free', 'You are a few clicks away from entering a new age of learning/teaching experience. <br>\r\n        Please register here.', '2021-02-12 12:02:00', '2021-02-23 04:57:22', '#ffffff'),
(5, NULL, 'Contact Us', NULL, '2021-02-12 12:31:00', '2021-02-23 04:57:32', '#ffffff'),
(6, NULL, 'Query form', NULL, '2021-02-12 12:31:00', '2021-02-23 04:57:46', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-02-12 10:52:19', '2021-02-12 10:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-02-12 10:52:19', '2021-02-12 10:52:19', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-02-12 10:52:19', '2021-02-12 10:52:19', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-02-12 10:52:27', '2021-02-12 10:52:27', 'voyager.hooks', NULL),
(16, 1, 'Homes', '', '_self', 'voyager-anchor', '#000000', NULL, 15, '2021-02-12 11:36:32', '2021-02-12 12:06:40', 'voyager.home.index', 'null'),
(17, 1, 'Sliders', '', '_self', 'voyager-dot-3', NULL, NULL, 16, '2021-02-12 12:09:26', '2021-02-12 12:09:26', 'voyager.slider.index', NULL),
(18, 1, 'Contacts', '', '_self', 'voyager-telephone', NULL, NULL, 17, '2021-02-12 12:24:29', '2021-02-12 12:24:29', 'voyager.contact.index', NULL),
(19, 1, 'Navbars', '', '_self', 'voyager-params', NULL, NULL, 18, '2021-02-12 12:35:51', '2021-02-12 12:35:51', 'voyager.navbar.index', NULL),
(20, 1, 'Privacy Policies', '', '_self', 'voyager-rocket', '#000000', NULL, 19, '2021-02-23 01:00:31', '2021-02-23 02:53:17', 'voyager.privacy-policy.index', 'null'),
(21, 1, 'Terms', '', '_self', 'voyager-lifebuoy', '#000000', NULL, 20, '2021-02-23 01:56:22', '2021-02-23 02:53:37', 'voyager.terms.index', 'null'),
(22, 1, 'Queries', '', '_self', 'voyager-question', '#000000', NULL, 21, '2021-02-23 02:26:02', '2021-02-23 02:54:25', 'voyager.queries.index', 'null'),
(23, 1, 'Abouts', '', '_self', NULL, NULL, NULL, 22, '2021-02-23 07:29:28', '2021-02-23 07:29:28', 'voyager.about.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `heading`, `created_at`, `updated_at`) VALUES
(1, 'Home', '2021-02-12 12:37:44', '2021-02-12 12:37:44'),
(2, 'About us', '2021-02-12 12:37:00', '2021-02-23 07:19:57'),
(3, 'Our classes', '2021-02-12 12:38:00', '2021-02-23 07:20:15'),
(4, 'Register', '2021-02-12 12:38:26', '2021-02-12 12:38:26'),
(5, 'Contact Us', '2021-02-12 12:38:00', '2021-02-23 07:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(2, 'browse_bread', NULL, '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(3, 'browse_database', NULL, '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(4, 'browse_media', NULL, '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(5, 'browse_compass', NULL, '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(6, 'browse_menus', 'menus', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(7, 'read_menus', 'menus', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(8, 'edit_menus', 'menus', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(9, 'add_menus', 'menus', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(10, 'delete_menus', 'menus', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(11, 'browse_roles', 'roles', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(12, 'read_roles', 'roles', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(13, 'edit_roles', 'roles', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(14, 'add_roles', 'roles', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(15, 'delete_roles', 'roles', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(16, 'browse_users', 'users', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(17, 'read_users', 'users', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(18, 'edit_users', 'users', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(19, 'add_users', 'users', '2021-02-12 10:52:21', '2021-02-12 10:52:21'),
(20, 'delete_users', 'users', '2021-02-12 10:52:21', '2021-02-12 10:52:21'),
(21, 'browse_settings', 'settings', '2021-02-12 10:52:21', '2021-02-12 10:52:21'),
(22, 'read_settings', 'settings', '2021-02-12 10:52:21', '2021-02-12 10:52:21'),
(23, 'edit_settings', 'settings', '2021-02-12 10:52:21', '2021-02-12 10:52:21'),
(24, 'add_settings', 'settings', '2021-02-12 10:52:21', '2021-02-12 10:52:21'),
(25, 'delete_settings', 'settings', '2021-02-12 10:52:21', '2021-02-12 10:52:21'),
(41, 'browse_hooks', NULL, '2021-02-12 10:52:28', '2021-02-12 10:52:28'),
(47, 'browse_home', 'home', '2021-02-12 11:36:32', '2021-02-12 11:36:32'),
(48, 'read_home', 'home', '2021-02-12 11:36:32', '2021-02-12 11:36:32'),
(49, 'edit_home', 'home', '2021-02-12 11:36:32', '2021-02-12 11:36:32'),
(50, 'add_home', 'home', '2021-02-12 11:36:32', '2021-02-12 11:36:32'),
(51, 'delete_home', 'home', '2021-02-12 11:36:32', '2021-02-12 11:36:32'),
(52, 'browse_slider', 'slider', '2021-02-12 12:09:26', '2021-02-12 12:09:26'),
(53, 'read_slider', 'slider', '2021-02-12 12:09:26', '2021-02-12 12:09:26'),
(54, 'edit_slider', 'slider', '2021-02-12 12:09:26', '2021-02-12 12:09:26'),
(55, 'add_slider', 'slider', '2021-02-12 12:09:26', '2021-02-12 12:09:26'),
(56, 'delete_slider', 'slider', '2021-02-12 12:09:26', '2021-02-12 12:09:26'),
(57, 'browse_contact', 'contact', '2021-02-12 12:24:29', '2021-02-12 12:24:29'),
(58, 'read_contact', 'contact', '2021-02-12 12:24:29', '2021-02-12 12:24:29'),
(59, 'edit_contact', 'contact', '2021-02-12 12:24:29', '2021-02-12 12:24:29'),
(60, 'add_contact', 'contact', '2021-02-12 12:24:29', '2021-02-12 12:24:29'),
(61, 'delete_contact', 'contact', '2021-02-12 12:24:29', '2021-02-12 12:24:29'),
(62, 'browse_navbar', 'navbar', '2021-02-12 12:35:51', '2021-02-12 12:35:51'),
(63, 'read_navbar', 'navbar', '2021-02-12 12:35:51', '2021-02-12 12:35:51'),
(64, 'edit_navbar', 'navbar', '2021-02-12 12:35:51', '2021-02-12 12:35:51'),
(65, 'add_navbar', 'navbar', '2021-02-12 12:35:51', '2021-02-12 12:35:51'),
(66, 'delete_navbar', 'navbar', '2021-02-12 12:35:51', '2021-02-12 12:35:51'),
(67, 'browse_privacy_policy', 'privacy_policy', '2021-02-23 01:00:31', '2021-02-23 01:00:31'),
(68, 'read_privacy_policy', 'privacy_policy', '2021-02-23 01:00:31', '2021-02-23 01:00:31'),
(69, 'edit_privacy_policy', 'privacy_policy', '2021-02-23 01:00:31', '2021-02-23 01:00:31'),
(70, 'add_privacy_policy', 'privacy_policy', '2021-02-23 01:00:31', '2021-02-23 01:00:31'),
(71, 'delete_privacy_policy', 'privacy_policy', '2021-02-23 01:00:31', '2021-02-23 01:00:31'),
(72, 'browse_terms', 'terms', '2021-02-23 01:56:22', '2021-02-23 01:56:22'),
(73, 'read_terms', 'terms', '2021-02-23 01:56:22', '2021-02-23 01:56:22'),
(74, 'edit_terms', 'terms', '2021-02-23 01:56:22', '2021-02-23 01:56:22'),
(75, 'add_terms', 'terms', '2021-02-23 01:56:22', '2021-02-23 01:56:22'),
(76, 'delete_terms', 'terms', '2021-02-23 01:56:22', '2021-02-23 01:56:22'),
(77, 'browse_queries', 'queries', '2021-02-23 02:26:02', '2021-02-23 02:26:02'),
(78, 'read_queries', 'queries', '2021-02-23 02:26:02', '2021-02-23 02:26:02'),
(79, 'edit_queries', 'queries', '2021-02-23 02:26:02', '2021-02-23 02:26:02'),
(80, 'add_queries', 'queries', '2021-02-23 02:26:02', '2021-02-23 02:26:02'),
(81, 'delete_queries', 'queries', '2021-02-23 02:26:02', '2021-02-23 02:26:02'),
(82, 'browse_about', 'about', '2021-02-23 07:29:28', '2021-02-23 07:29:28'),
(83, 'read_about', 'about', '2021-02-23 07:29:28', '2021-02-23 07:29:28'),
(84, 'edit_about', 'about', '2021-02-23 07:29:28', '2021-02-23 07:29:28'),
(85, 'add_about', 'about', '2021-02-23 07:29:28', '2021-02-23 07:29:28'),
(86, 'delete_about', 'about', '2021-02-23 07:29:28', '2021-02-23 07:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `heading`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy for EdGuru', '<p>At EdGuru India, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by EdGuru India and how we use it.</p>\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in EdGuru India. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Free Privacy Policy Generator.</p>', '2021-02-23 01:05:00', '2021-02-23 01:42:20'),
(2, 'Consent', '<p>By using our website, you hereby consent to our Privacy Policy and agree to our terms.&nbsp;</p>', '2021-02-23 01:43:00', '2021-02-23 01:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `email_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'abc@v.v', 'qwerty', NULL, NULL),
(3, 'anisha@gmail.com', 'hello', NULL, NULL),
(4, 'anisha@gmail.com', 'hello', NULL, NULL),
(5, 'anisha@gmail.com', 'hello', NULL, NULL),
(6, 'anisha1@g.c', 'hi', NULL, NULL),
(7, 'a@a.a', 'query', NULL, NULL),
(8, 'b@b.com', 'qwe', NULL, NULL),
(9, 'q@q.com', 'abcd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-02-12 10:52:20', '2021-02-12 10:52:20'),
(2, 'user', 'Normal User', '2021-02-12 10:52:20', '2021-02-12 10:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `logo`, `description`, `created_at`, `updated_at`) VALUES
(1, 'slider\\February2021\\I8xUocUGPukEIOI5eqar.png', 'Easy to register for free. Pay once you choose.', '2021-02-12 12:15:09', '2021-02-12 12:15:09'),
(2, 'slider\\February2021\\eOctKknd8sbe2JIMVd1h.png', 'Panel of experienced teachers at your fingertips.', '2021-02-12 12:15:35', '2021-02-12 12:15:35'),
(3, 'slider\\February2021\\baTP3O0SUDjEkxkkJU1A.png', 'Flexible slot selection based on your timing.', '2021-02-12 12:15:58', '2021-02-12 12:15:58'),
(4, 'slider\\February2021\\UpneA97W7xu7KNPJ70I5.jpeg', 'ICSE BOARD', '2021-02-12 12:16:00', '2021-02-23 02:50:04'),
(5, 'slider\\February2021\\D1lfRGfQB7EzGsqkqJNF.png', 'WB BOARD', '2021-02-12 12:16:00', '2021-02-23 02:02:56'),
(6, 'slider\\February2021\\dRJ0KwlNKZBibHoUi36U.png', 'CBSE BOARD', '2021-02-12 12:17:00', '2021-02-23 02:02:35'),
(7, 'slider\\February2021\\OTYeO3tKAGMnCaRyL5tk.jpg', 'As a student', '2021-02-12 12:17:32', '2021-02-12 12:17:32'),
(8, 'slider\\February2021\\VLzZ9Kr2qyXfFaQ0JLb8.jpg', 'As a teacher', '2021-02-12 12:17:54', '2021-02-12 12:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `heading`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Terms and Conditions', '<p><span style=\"color: #212529; font-family: Gayathri; font-size: 20px; text-align: justify;\">Welcome to EdGuru India These terms and conditions outline the rules and regulations for the use of EdGuru Indias Website, located at edguru.ardentsoftware.co.in By accessing this website we assume you accept these terms and conditions. Do not continue to use EdGuru India if you do not agree to take all of the terms and conditions stated on this page. The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</span></p>', '2021-02-23 02:00:02', '2021-02-23 02:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-02-12 10:52:26', '2021-02-12 10:52:26'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-02-12 10:52:27', '2021-02-12 10:52:27'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-02-12 10:52:27', '2021-02-12 10:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$9DnaIMetT0OwrD5NzMJoVOPrrYUy/2ThdF6wqNxM/tgNGe3JeL2vm', 'phpCRvFav1u9i7eYHdtNboT12HZbA4R8bduAfQp1JPo07PSJgP9NmzPaAP25', NULL, '2021-02-12 10:52:23', '2021-02-12 10:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
