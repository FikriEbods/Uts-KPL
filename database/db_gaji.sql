-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 08:54 AM
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
-- Database: `db_gaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hire_date` date NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `allowance` int(11) NOT NULL,
  `salary_cut` int(11) NOT NULL,
  `total_salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `nik`, `name`, `gender_id`, `address`, `email`, `phone_number`, `hire_date`, `group_id`, `allowance`, `salary_cut`, `total_salary`, `created_at`, `updated_at`) VALUES
(1, 16582232, 'Tressie Dickens', 2, '347 Johnson Rapids\r\nSouth Joel, NE 97362-1096', 'jjaskolski@example.org', '+1-929-248-5494', '1983-12-28', 1, 812960, 187633, 3125327, '2022-03-22 00:26:33', '2022-03-22 00:26:40'),
(2, 43477952, 'Alexandrea Kuhn V', 1, '409 Lilian Motorway Suite 414\r\nWest Jackelineville, TN 48453-9072', 'jerde.larue@example.com', '847-931-9591', '1970-03-29', 1, 630447, 598799, 2531648, '2022-03-22 00:26:33', '2022-03-22 00:26:43'),
(3, 76228112, 'Everette Wilkinson', 1, '97848 Herman Inlet\r\nGrimesmouth, AR 19158', 'kris.yessenia@example.net', '929-694-2044', '1986-03-06', 3, 741175, 891383, 3349792, '2022-03-22 00:26:33', '2022-03-22 00:26:46'),
(4, 95974739, 'Dr. Aurore Marvin', 2, '555 Albina Alley Apt. 188\r\nPort Alvis, ME 10011', 'pwisoky@example.org', '+1 (662) 495-3574', '1996-11-03', 4, 996029, 391316, 4604713, '2022-03-22 00:26:33', '2022-03-22 00:26:52'),
(5, 77243126, 'Zack Schmidt Jr.', 2, '3935 Dovie Extensions Suite 215\r\nNorth Wilhelmine, TN 87469', 'aniya.greenfelder@example.org', '+1-678-203-3647', '1973-03-15', 3, 419903, 813386, 3106517, '2022-03-22 00:26:33', '2022-03-22 00:26:55'),
(6, 100, 'Haviva Randolph', 2, 'Esse quasi minim co', 'gyhimegu@mailinator.com', '+1 (425) 181-3815', '2006-01-26', 3, 100000, 600000, 3000000, '2022-03-22 00:52:43', '2022-03-22 00:53:19');

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
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', '2022-03-21 17:57:10', '2022-03-21 17:57:10'),
(2, 'Perempuan', '2022-03-21 17:57:10', '2022-03-21 17:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_category`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'Golongan I', 2500000, '2022-03-21 17:58:11', '2022-03-21 17:58:11'),
(2, 'Golongan II', 3000000, '2022-03-21 17:58:11', '2022-03-21 17:58:11'),
(3, 'Golongan III', 3500000, '2022-03-21 17:58:11', '2022-03-21 17:58:11'),
(4, 'Golongan VI', 4000000, '2022-03-21 17:58:11', '2022-03-21 17:58:11');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_20_074333_create_employees_table', 1),
(6, '2022_03_20_080537_create_groups_table', 1),
(7, '2022_03_20_080611_create_genders_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Rebecca Breitenberg', 'letha18@example.com', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nsGqE1tvNA', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(2, 'Mr. Rory Kohler', 'melyna.stracke@example.org', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FUtTA5FYhy', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(3, 'Vita Frami', 'green.frederick@example.org', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DnJSShU8V2', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(4, 'Prof. Tyreek Bauch', 'hammes.ahmad@example.com', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MJNCkymJpY', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(5, 'Karl Tremblay V', 'cleveland73@example.com', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4yZJVsxN95', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(6, 'Rolando Schowalter PhD', 'bailee.morar@example.com', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AEI0QFeiVC', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(7, 'Prof. Aileen Feil', 'bfeest@example.org', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1nhwqcoR2q', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(8, 'Itzel Fritsch MD', 'ankunding.gwen@example.org', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'shpg1MQKQF', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(9, 'Ruben Walter', 'branson30@example.org', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bi34QTvTNi', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(10, 'Laurianne Medhurst', 'hane.corbin@example.net', '2022-03-21 10:55:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jJvbG6C6Sc', '2022-03-21 10:55:47', '2022-03-21 10:55:47'),
(11, 'Fikri Habib Ramadhan', 'fikrihabib@upi.edu', NULL, '$2y$10$T1nJ3qajXXTuBSauo73xfOHD7RU6y9qv3BiDiIw2MaHByRIGsIyde', NULL, '2022-03-21 10:56:06', '2022-03-21 10:56:06'),
(12, 'Stacy King', 'hirthe.adrian@example.net', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kVF9K43Fjn', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(13, 'Miss Kaela Koss PhD', 'uriah.stiedemann@example.net', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wxvtdhUFZ9', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(14, 'Raymond Bradtke PhD', 'ehowe@example.com', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gA6g0ae7zj', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(15, 'Kenna Jones', 'terrell.shields@example.com', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8JJbjMDqYT', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(16, 'Ayden Morissette', 'dax08@example.com', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BvMzVJ966E', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(17, 'Cornell Bode', 'ashton29@example.com', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bUarGm6I1u', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(18, 'Astrid Eichmann', 'dnicolas@example.com', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cvKhmW9jSU', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(19, 'Christa Ortiz III', 'von.davin@example.net', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3nULB5VpEi', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(20, 'Dr. Lavern Wolff', 'judd34@example.com', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OJFua4dMke', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(21, 'Mr. Nikko Hessel II', 'melvin26@example.net', '2022-03-21 12:05:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eKui0BrGM4', '2022-03-21 12:05:09', '2022-03-21 12:05:09'),
(22, 'Dr. Jessie Abbott', 'jammie31@example.org', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eeLAT2DMxr', '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(23, 'Khalid O\'Connell', 'reuben.bednar@example.com', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T4yxvvTpLK', '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(24, 'Abbey Lynch', 'bveum@example.org', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OJNnkoCiAU', '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(25, 'Jamal Schmitt', 'kutch.perry@example.com', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xqA8AosbCO', '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(26, 'Kristy Bauch', 'zgoyette@example.org', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n9AflO3DXC', '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(27, 'Prof. Kristin Kunde MD', 'itillman@example.net', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SGXbyxksKW', '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(28, 'Mariela Ritchie', 'claud24@example.com', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nPER7sqddh', '2022-03-21 12:05:16', '2022-03-21 12:05:16'),
(29, 'Dr. Arnold Davis', 'brent85@example.com', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't1Kh95Wm1B', '2022-03-21 12:05:17', '2022-03-21 12:05:17'),
(30, 'Darrin Senger', 'darby70@example.net', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lRNEcPtYoh', '2022-03-21 12:05:17', '2022-03-21 12:05:17'),
(31, 'Dr. Perry Christiansen', 'angel78@example.org', '2022-03-21 12:05:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hbr8YP4JbB', '2022-03-21 12:05:17', '2022-03-21 12:05:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
