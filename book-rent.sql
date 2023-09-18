-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 12:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book-rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_code`, `title`, `cover`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A0001 - 01', 'Belajar Laravel', 'cover3.jpg', 'laravel-for-newbie', 'in stock', NULL, '2022-12-13 03:35:49', NULL),
(4, 'A0002 - 02', 'Javascript Fun', 'cover4.jpg', 'javascript-fun', 'in stock', '2022-11-26 23:22:08', '2022-11-26 23:22:08', NULL),
(5, 'A0002 - 03', 'Belajar PHP Dasar', 'cover5.jpg', 'belajar-php-dasar', 'in stock', '2022-11-26 23:23:02', '2022-11-29 07:58:07', NULL),
(6, 'A0002 - 04', 'Laravel Http', 'cover5.jpg', 'laravel-http', 'not avaible', '2022-11-26 23:35:08', '2022-11-27 19:39:53', '2022-11-27 19:39:53'),
(7, 'A0001 - 02', 'Laravel Artisan', 'cover3.jpg', 'laravel-artisan', 'in stock', '2022-11-26 23:52:21', '2022-11-26 23:52:21', NULL),
(9, 'A0001 - 04', 'HTML From Zero', 'cover4.jpg', 'html-from-zero', 'not avaible', '2022-11-27 02:50:21', '2022-11-27 02:50:21', NULL),
(12, 'A0001 - 06', 'CSS 2', 'cover5.jpg', 'css-2', 'in stock', '2022-11-27 02:59:21', '2022-11-27 02:59:21', NULL),
(13, 'A0001 - 07', 'German Books', 'cover3.jpg', 'german-books', 'not avaible', '2022-11-27 03:44:49', '2022-12-13 03:35:34', NULL),
(14, 'A0001 - 08', 'English Week', 'cover4.jpg', 'english-week', 'in stock', '2022-11-27 03:50:24', '2022-11-27 03:50:24', NULL),
(15, 'A0001 - 08C', 'Progammer Newbie', NULL, 'progammer-newbie', 'not avaible', '2022-11-28 22:38:40', '2022-11-28 22:38:40', NULL),
(16, 'B0001 - 08A', 'Programmer Arab', NULL, 'programmer-arab', 'in stock', '2022-11-28 23:36:33', '2022-11-28 23:36:33', NULL),
(17, 'B0002 - 03', 'Home English', '', 'home-english', 'not avaible', '2022-11-28 23:42:59', '2022-11-28 23:42:59', NULL),
(18, 'C0002 - 07', 'Belajar Bahasa Jerman', '', 'belajar-bahasa-jerman', 'in stock', '2022-11-29 07:57:24', '2022-12-13 03:41:00', '2022-12-13 03:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 14, 7, NULL, NULL),
(2, 14, 10, NULL, NULL),
(3, 14, 15, NULL, NULL),
(4, 15, 6, NULL, NULL),
(5, 15, 18, NULL, NULL),
(6, 16, 6, NULL, NULL),
(7, 16, 10, NULL, NULL),
(8, 17, 10, NULL, NULL),
(9, 17, 18, NULL, NULL),
(10, 18, 8, NULL, NULL),
(11, 18, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'mysteri', 'mysteri', NULL, '2022-11-29 07:58:45', NULL),
(5, 'fiction', 'fiction', NULL, NULL, NULL),
(6, 'romance', 'romance', NULL, NULL, NULL),
(7, 'western', 'western', NULL, NULL, NULL),
(8, 'novel', 'novel', NULL, NULL, NULL),
(10, 'sport', 'sport', '2022-11-21 23:55:09', '2022-11-22 16:35:27', NULL),
(12, 'hoax', 'hoax', '2022-11-22 23:25:47', '2022-11-23 02:32:33', '2022-11-23 02:32:33'),
(15, 'fantacy', 'fantacy', '2022-11-22 23:28:38', '2022-11-22 23:28:38', NULL),
(16, 'horror', 'horror', '2022-11-22 23:28:45', '2022-11-22 23:28:45', NULL),
(17, 'sports', 'sports', '2022-11-22 23:28:56', '2022-11-23 02:32:17', '2022-11-23 02:32:17'),
(18, 'game', 'game', '2022-11-22 23:47:38', '2022-11-23 02:32:25', NULL),
(19, 'games', 'games', '2022-11-23 01:00:48', '2022-11-28 23:16:29', '2022-11-28 23:16:29'),
(20, 'Opini', 'opini', '2022-11-29 07:58:58', '2022-11-29 07:58:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_11_13_163621_create_roles_table', 1),
(17, '2022_11_13_165849_add_role_id_column_to_users_table', 1),
(18, '2022_11_13_171529_create_categories_table', 2),
(19, '2022_11_13_171756_create_books_table', 2),
(20, '2022_11_13_172338_create_book_category_table', 2),
(21, '2022_11_14_042715_create_rent_log_table', 2),
(22, '2022_11_20_144045_add_slug_column_to_categories_table', 2),
(23, '2022_11_22_063226_add_slug_column_to_categories_table', 3),
(24, '2022_11_23_030054_add_soft_delete_column_to_categories_table', 4),
(25, '2022_11_27_031119_add_slug_cover_column_to_books_table', 5),
(26, '2022_11_28_022143_add_soft_delete_column_to_books_table', 6),
(27, '2022_11_28_112550_add_slug_to_users_table', 7),
(28, '2022_11_28_152100_add_soft_delete_column_to_users_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_log`
--

CREATE TABLE `rent_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_date` date NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'client', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `password`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`, `role_id`) VALUES
(12, 'fulan', 'fulan', '$2y$10$SrtFDeH20.hKReadxQ2TYe1VC4nFr6OhZl5sjCjP3VchTflzSrqxO', NULL, 'fulan', 'active', NULL, NULL, NULL, 1),
(13, 'adit', 'adit', '$2y$10$SrtFDeH20.hKReadxQ2TYe1VC4nFr6OhZl5sjCjP3VchTflzSrqxO', '123123', 'toko', 'active', NULL, '2022-11-28 09:10:54', '2022-11-28 09:10:54', 2),
(14, 'adin', 'adin', '$2y$10$SrtFDeH20.hKReadxQ2TYe1VC4nFr6OhZl5sjCjP3VchTflzSrqxO', NULL, 'adin', 'active', NULL, '2022-11-29 07:59:38', '2022-11-29 07:59:38', 2),
(15, 'admin', 'admin', '$2y$10$SrtFDeH20.hKReadxQ2TYe1VC4nFr6OhZl5sjCjP3VchTflzSrqxO', NULL, 'kali', 'active', '2022-11-21 07:18:18', '2022-11-21 07:18:18', NULL, 1),
(16, 'mhs', 'mhs', '$2y$10$e65xRxkBtzyXe5izoDOfG.4QjpzBNARDTldK5ClPfiUepWS.79kWW', NULL, 'fulan', 'inactive', '2022-11-22 19:46:43', '2022-11-22 19:46:43', NULL, 1),
(17, 'adib', 'adib', '$2y$10$SrtFDeH20.hKReadxQ2TYe1VC4nFr6OhZl5sjCjP3VchTflzSrqxO', '08574666', 'home', 'active', NULL, '2022-11-29 07:59:27', NULL, 2),
(18, 'andy', 'andy', '$2y$10$SrtFDeH20.hKReadxQ2TYe1VC4nFr6OhZl5sjCjP3VchTflzSrqxO', NULL, 'sala', 'inactive', NULL, '2022-11-28 07:59:02', NULL, 2),
(20, 'aldo', 'aldo', '$2y$10$SrtFDeH20.hKReadxQ2TYe1VC4nFr6OhZl5sjCjP3VchTflzSrqxO', '567576', 'jumans', 'active', '2022-11-28 04:37:20', '2022-11-28 09:12:52', NULL, 2),
(22, 'adi', 'adi', '$2y$10$XZVzC5mmtZPCTL3302E6UOut37iC6PqKcyPlLMMq6IMfOXIXRwrGG', NULL, 'adika', 'inactive', '2022-11-28 09:13:40', '2022-11-28 09:13:40', NULL, 2),
(23, 'asta', 'asta', '$2y$10$qwYf8G31FVt46cWisX3E/OTrAVbTHYJrA5OGpy4hebKpOWBthBzqS', '123123', 'home', 'active', '2022-11-29 08:01:23', '2022-11-29 08:01:23', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rent_log`
--
ALTER TABLE `rent_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_log_user_id_foreign` (`user_id`),
  ADD KEY `rent_log_book_id_foreign` (`book_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_log`
--
ALTER TABLE `rent_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `rent_log`
--
ALTER TABLE `rent_log`
  ADD CONSTRAINT `rent_log_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rent_log_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
