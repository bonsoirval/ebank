-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2024 at 06:26 PM
-- Server version: 10.11.6-MariaDB-0+deb12u1
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebank`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(2, 2, 'admin', '2024-08-26 01:03:45'),
(15, 15, 'user', '2024-09-02 01:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 2, 'email_password', NULL, 'admin@admin.admin', '$2y$12$B0YEA4bq8VEJhMTClIbAQO2kxNePDqRSmN6sPPMcIGsx2pWZmcyWy', NULL, NULL, 0, '2024-08-29 18:04:15', '2024-08-26 01:03:44', '2024-08-29 18:04:15'),
(16, 15, 'email_password', NULL, 'bonsoirval@gmail.com', '$2y$12$ur25Ha8eKaHVnW8cygNJDemXCnH59fRkKTpV6rAxqGEVQr7kMCpWG', NULL, NULL, 0, '2024-09-04 18:19:03', '2024-09-02 01:33:36', '2024-09-04 18:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'test@test.test', NULL, '2024-08-25 16:22:38', 0),
(2, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 1, '2024-08-25 16:23:09', 1),
(3, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 1, '2024-08-26 00:51:54', 1),
(4, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', NULL, '2024-08-26 01:06:35', 0),
(5, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 01:07:00', 1),
(6, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 01:08:59', 1),
(7, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 01:09:21', 1),
(8, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 01:20:16', 1),
(9, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 01:20:39', 1),
(10, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 02:35:37', 1),
(11, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 13:12:19', 1),
(12, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 13:17:19', 1),
(13, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'test@test.test', NULL, '2024-08-26 13:17:39', 0),
(14, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'user@user.user', NULL, '2024-08-26 13:17:44', 0),
(15, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 1, '2024-08-26 13:20:32', 1),
(16, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-26 13:23:10', 1),
(17, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-29 17:00:02', 1),
(18, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'admin@admin.admin', 2, '2024-08-29 18:04:15', 1),
(19, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-08-30 16:54:09', 0),
(20, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'user@user.user', NULL, '2024-08-30 16:54:23', 0),
(21, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'user@user.user', NULL, '2024-08-30 16:54:31', 0),
(22, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-08-30 16:55:40', 0),
(23, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 1, '2024-08-30 16:55:46', 1),
(24, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 1, '2024-08-31 07:18:32', 1),
(25, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 1, '2024-09-01 12:50:20', 1),
(26, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:02:14', 0),
(27, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 4, '2024-09-01 14:15:58', 1),
(28, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 4, '2024-09-01 14:18:50', 1),
(29, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 4, '2024-09-01 14:35:42', 1),
(30, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 4, '2024-09-01 14:39:52', 1),
(31, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 4, '2024-09-01 14:40:23', 1),
(32, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 4, '2024-09-01 14:41:25', 1),
(33, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 4, '2024-09-01 14:42:02', 1),
(34, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:43:41', 0),
(35, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:43:46', 0),
(36, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:43:56', 0),
(37, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:44:34', 0),
(38, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 5, '2024-09-01 14:45:45', 1),
(39, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:46:19', 0),
(40, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:52:54', 0),
(41, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 6, '2024-09-01 14:53:50', 1),
(42, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:54:27', 0),
(43, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:57:59', 0),
(44, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 7, '2024-09-01 14:59:02', 1),
(45, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 14:59:35', 0),
(46, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:00:05', 0),
(47, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:00:09', 0),
(48, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:00:13', 0),
(49, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:01:21', 0),
(50, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 8, '2024-09-01 15:01:28', 1),
(51, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:02:32', 0),
(52, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:03:15', 0),
(53, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 9, '2024-09-01 15:04:14', 1),
(54, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 9, '2024-09-01 15:04:35', 1),
(55, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:04:59', 0),
(56, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:06:17', 0),
(57, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:06:28', 0),
(58, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 10, '2024-09-01 15:07:26', 1),
(59, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:13:59', 0),
(60, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 11, '2024-09-01 15:14:44', 1),
(61, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:15:21', 0),
(62, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:40:47', 0),
(63, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 12, '2024-09-01 15:41:52', 1),
(64, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 12, '2024-09-01 15:52:10', 1),
(65, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 12, '2024-09-01 15:52:38', 1),
(66, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:53:06', 0),
(67, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 15:53:11', 0),
(68, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 17:22:54', 0),
(69, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval2soirval@gmail.com', NULL, '2024-09-01 17:30:33', 0),
(70, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval2soirval@gmail.com', NULL, '2024-09-01 17:30:37', 0),
(71, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 13, '2024-09-01 17:30:44', 1),
(72, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 13, '2024-09-01 18:06:45', 1),
(73, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 13, '2024-09-01 18:07:03', 1),
(74, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 18:07:33', 0),
(75, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 13, '2024-09-01 18:09:23', 1),
(76, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 18:09:47', 0),
(77, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 18:09:52', 0),
(78, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 14, '2024-09-01 18:11:23', 1),
(79, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 14, '2024-09-01 18:11:43', 1),
(80, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 18:12:07', 0),
(81, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 18:12:24', 0),
(82, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 18:13:25', 0),
(83, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-01 18:13:29', 0),
(84, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', NULL, '2024-09-02 01:32:21', 0),
(85, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 01:33:49', 1),
(86, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 01:44:40', 1),
(87, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 01:47:15', 1),
(88, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 01:48:16', 1),
(89, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:08:58', 1),
(90, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:09:32', 1),
(91, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:10:23', 1),
(92, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:10:33', 1),
(93, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:11:36', 1),
(94, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:11:56', 1),
(95, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:12:12', 1),
(96, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:12:30', 1),
(97, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 19:21:22', 1),
(98, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 22:58:30', 1),
(99, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-02 23:09:53', 1),
(100, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-03 00:25:37', 1),
(101, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-03 04:47:29', 1),
(102, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-03 04:48:24', 1),
(103, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-03 12:25:12', 1),
(104, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 03:34:38', 1),
(105, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 03:48:16', 1),
(106, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 03:54:32', 1),
(107, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 03:57:14', 1),
(108, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 03:59:07', 1),
(109, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 04:02:51', 1),
(110, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 04:05:36', 1),
(111, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 04:06:43', 1),
(112, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 10:30:09', 1),
(113, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 10:39:07', 1),
(114, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 10:58:35', 1),
(115, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:00:26', 1),
(116, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:07:21', 1),
(117, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:08:09', 1),
(118, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:12:15', 1),
(119, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:16:09', 1),
(120, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:16:50', 1),
(121, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:18:03', 1),
(122, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:19:23', 1),
(123, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:20:50', 1),
(124, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:21:30', 1),
(125, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:22:15', 1),
(126, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:35:26', 1),
(127, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 11:35:53', 1),
(128, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:24:12', 1),
(129, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:25:39', 1),
(130, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:26:26', 1),
(131, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:29:54', 1),
(132, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:32:53', 1),
(133, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:33:34', 1),
(134, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:34:10', 1),
(135, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:35:03', 1),
(136, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:35:43', 1),
(137, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:38:59', 1),
(138, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:43:18', 1),
(139, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:50:47', 1),
(140, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:51:58', 1),
(141, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:52:02', 1),
(142, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:56:36', 1),
(143, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:57:30', 1),
(144, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 12:58:53', 1),
(145, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:01:19', 1),
(146, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:04:35', 1),
(147, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:12:54', 1),
(148, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:14:41', 1),
(149, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:15:01', 1),
(150, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:15:19', 1),
(151, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:15:54', 1),
(152, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:16:11', 1),
(153, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:16:37', 1),
(154, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:17:12', 1),
(155, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:18:08', 1),
(156, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:49:53', 1),
(157, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:55:28', 1),
(158, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:55:56', 1),
(159, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:56:57', 1),
(160, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:57:37', 1),
(161, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:57:57', 1),
(162, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 13:58:31', 1),
(163, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:00:29', 1),
(164, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:01:56', 1),
(165, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:03:09', 1),
(166, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:03:35', 1),
(167, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:07:24', 1),
(168, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:08:56', 1),
(169, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:10:46', 1),
(170, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:20:00', 1),
(171, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:20:23', 1),
(172, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:21:04', 1),
(173, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:21:28', 1),
(174, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:22:22', 1),
(175, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:55:01', 1),
(176, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 14:55:42', 1),
(177, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:06:39', 1),
(178, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:06:53', 1),
(179, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:19:37', 1),
(180, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:21:48', 1),
(181, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:22:08', 1),
(182, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:22:52', 1),
(183, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:23:58', 1),
(184, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:24:22', 1),
(185, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 15:24:59', 1),
(186, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 18:18:26', 1),
(187, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'email_password', 'bonsoirval@gmail.com', 15, '2024-09-04 18:19:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `depositor` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `depositor`, `amount`, `created_at`) VALUES
(1, 1, 'NJOKU', 200, '2024-08-25 17:44:10'),
(2, 1, 'NJOKU', 200, '2024-08-26 01:52:04'),
(3, 1, 'NJOKU', 200, '2024-08-26 01:53:48'),
(4, 1, 'NJOKU', 200, '2024-08-26 01:54:49'),
(5, 1, 'NJOKU', 200, '2024-08-26 01:55:05'),
(6, 1, 'NJOKU', 200, '2024-08-26 01:56:12'),
(7, 1, 'NJOKU', 200, '2024-08-26 01:56:29'),
(8, 1, 'NJOKU', 200, '2024-08-26 01:56:49'),
(9, 1, 'NJOKU', 200, '2024-08-26 01:57:03'),
(10, 2, 'admin', 200, '2024-08-29 18:36:18'),
(11, 2, 'admin', 200, '2024-08-29 18:36:57'),
(12, 2, 'admin', 200, '2024-08-29 18:37:43');

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

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1724575831, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1724575831, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1724575831, 1),
(4, '2024-08-24-153524', 'App\\Database\\Migrations\\Deposits', 'default', 'App', 1724575832, 1),
(5, '2024-08-24-153533', 'App\\Database\\Migrations\\Withdrawals', 'default', 'App', 1724575832, 1),
(6, '2024-08-24-154418', 'App\\Database\\Migrations\\Transfers', 'default', 'App', 1724575832, 1),
(7, '2024-08-24-155351', 'App\\Database\\Migrations\\AddColumnsToUsers', 'default', 'App', 1724575832, 1),
(12, '2024-09-02-231215', 'App\\Database\\Migrations\\Profile', 'default', 'App', 1725391441, 2);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `title` varchar(3) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `date_of_birth` varchar(10) NOT NULL,
  `marital_status` varchar(7) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip_code` varchar(7) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `account_type` varchar(20) NOT NULL,
  `passport_image` varchar(7) NOT NULL,
  `next_kin_first_name` varchar(30) NOT NULL,
  `next_kin_middle_name` varchar(30) NOT NULL,
  `next_kin_last_name` varchar(30) NOT NULL,
  `next_kin_phone` varchar(15) NOT NULL,
  `next_kin_relationship` varchar(8) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `passport` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` datetime NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`, `name`, `phone`, `passport`, `address`, `dob`) VALUES
(2, 'admin', NULL, NULL, 1, NULL, '2024-08-26 01:03:44', '2024-08-26 01:03:45', NULL, 'admin', '08034948883', '09396323242', 'Owerri', '0000-00-00 00:00:00'),
(15, 'bonsoirval', NULL, NULL, 0, NULL, '2024-09-02 01:33:36', '2024-09-02 01:40:56', NULL, 'NJOKU', '2347038616871', '12345678901', 'Homebase house, off hardel junction, Orji Owerri North LGA', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `receiver_email` varchar(50) NOT NULL,
  `receiver_phone` varchar(15) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `receiver_email`, `receiver_phone`, `account_number`, `bank_name`, `account_name`, `amount`, `created_at`) VALUES
(1, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 09:54:11'),
(2, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 09:56:09'),
(3, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 09:57:53'),
(4, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 09:59:09'),
(5, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:00:29'),
(6, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:01:30'),
(7, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:02:21'),
(8, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:03:04'),
(9, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:03:46'),
(10, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:04:02'),
(11, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:04:21'),
(12, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:04:32'),
(13, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:04:37'),
(14, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:04:44'),
(15, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:05:09'),
(16, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:05:28'),
(17, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:05:40'),
(18, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:06:02'),
(19, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:06:28'),
(20, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:06:47'),
(21, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:13:30'),
(22, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:26:27'),
(23, 1, 'bonsoirval@gmail.com', '07038616871', '0004190924', 'Access', 'NJOKU', 200, '2024-08-25 10:27:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
