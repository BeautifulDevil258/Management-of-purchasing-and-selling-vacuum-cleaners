-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2024 lúc 05:58 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce2024`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`, `product_id`, `quantity`) VALUES
(1, 1, '2024-09-19 20:47:49', '2024-09-19 20:49:10', 3, 4),
(65, 2, '2024-10-17 08:29:50', '2024-10-17 08:29:50', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
(3, '2024-08-30 06:23:02', '2024-08-30 06:23:02', 'name1'),
(5, '2024-09-19 19:29:37', '2024-09-19 19:29:37', 'Mẫu 2021'),
(6, '2024-09-19 19:30:55', '2024-09-19 19:30:55', 'Mẫu 2024'),
(7, '2024-09-30 14:55:10', '2024-09-30 14:55:10', 'Mẫu 2019'),
(8, '2024-09-30 14:55:31', '2024-09-30 14:55:31', 'Mẫu mới nhất'),
(9, '2024-09-30 14:56:12', '2024-09-30 14:56:12', 'Mẫu rẻ'),
(10, '2024-09-30 14:56:22', '2024-09-30 14:56:22', '23'),
(11, '2024-09-30 14:56:28', '2024-09-30 14:56:28', '54'),
(12, '2024-09-30 14:56:32', '2024-09-30 14:56:32', '565');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_30_110437_create_categories_table', 1),
(5, '2024_09_06_004926_create_products_table', 2),
(6, '2024_09_06_025922_add_image_to_products_table', 3),
(7, '2024_09_13_004851_add_fields_to_users_table', 4),
(8, '2024_09_20_031830_create_carts_table', 5),
(9, '2024_09_20_034403_add_columns_to_carts_table', 6),
(10, '2024_09_20_034630_add_user_id_to_carts_table', 7),
(11, '2024_09_26_201451_create_orders_table', 8),
(12, '2024_09_26_203825_add_total_to_orders_table', 9),
(13, '2024_09_26_205431_create_order_items_table', 10),
(14, '2024_10_04_012712_add_status_to_orders_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `phone`, `payment_method`, `total_amount`, `created_at`, `updated_at`, `status`) VALUES
(2, 2, 'Nguyễn Hữu Thành Trung', 'Hải Phòng', '0385770872', 'cash_on_delivery', 6350000.00, '2024-09-26 13:53:00', '2024-10-03 18:55:49', 'completed'),
(4, 2, 'Thành Trung', 'Hải Phòng', '0376553827', 'cash_on_delivery', 22890000.00, '2024-09-26 14:13:56', '2024-10-03 19:33:52', 'completed'),
(5, 2, 'Trung', 'hp', '13829829', 'cash_on_delivery', 12340000.00, '2024-09-26 17:37:43', '2024-10-03 19:33:17', 'completed'),
(12, 2, 'Nguyễn Hữu Thành Trung', 'Hải Phòng', '0385770872', 'cash_on_delivery', 12773434.00, '2024-09-26 19:22:58', '2024-10-03 19:23:18', 'completed'),
(85, 1, 'Nguyễn Hữu Thành Trung', 'Hải Phòng', '2423', 'vnpay', 23960000.00, '2024-10-17 08:18:08', '2024-10-17 08:18:08', 'pending'),
(89, 2, 'Nguyễn Hữu Thành Trung', 'Hải Phòng', '0376553827', 'cash_on_delivery', 12340000.00, '2024-10-17 08:28:10', '2024-10-17 08:28:10', 'pending'),
(91, 2, 'Trung', 'Hải Phòng', '2423', 'vnpay', 5990000.00, '2024-10-17 08:37:28', '2024-10-17 08:37:28', 'pending'),
(92, 2, 'Nguyễn Hữu Thành Trung', 'Hải Phòng', '0385770872', 'vnpay', 5990000.00, '2024-10-17 08:40:08', '2024-10-17 08:40:08', 'pending'),
(93, 2, 'trug', 'Hải Phòng', '0385770872', 'vnpay', 5990000.00, '2024-10-17 08:44:08', '2024-10-17 08:44:08', 'pending'),
(94, 2, 'trf', 'hải phòng', '0385770872', 'vnpay', 5990000.00, '2024-10-17 08:46:59', '2024-10-17 08:46:59', 'pending'),
(95, 2, 'Nguyễn Hữu Thành Trung', 'hải phòng', '0376553827', 'vnpay', 5990000.00, '2024-10-17 08:48:59', '2024-10-17 08:48:59', 'pending'),
(96, 2, 'tú', 'hà nội', '0385770872', 'vnpay', 5990000.00, '2024-10-17 08:51:29', '2024-10-17 08:51:29', 'pending'),
(97, 2, 'trung', 'hải phòng', '0376553827', 'vnpay', 5990000.00, '2024-10-17 08:52:45', '2024-10-17 08:52:45', 'pending'),
(98, 2, 'trungg', 'hải phòng', '0385770872', 'vnpay', 5990000.00, '2024-10-17 08:54:43', '2024-10-17 08:54:43', 'pending'),
(99, 2, 'trunggg', 'hp', '0385770872', 'vnpay', 5990000.00, '2024-10-17 08:57:13', '2024-10-17 08:57:13', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 1, 4560000.00, '2024-09-26 14:13:56', '2024-09-26 14:13:56'),
(2, 4, 4, 1, 6350000.00, '2024-09-26 14:13:56', '2024-09-26 14:13:56'),
(3, 4, 3, 2, 5990000.00, '2024-09-26 14:13:56', '2024-09-26 14:13:56'),
(4, 5, 3, 1, 5990000.00, '2024-09-26 17:37:43', '2024-09-26 17:37:43'),
(5, 5, 4, 1, 6350000.00, '2024-09-26 17:37:43', '2024-09-26 17:37:43'),
(6, 12, 3, 1, 5990000.00, '2024-09-26 19:22:58', '2024-09-26 19:22:58'),
(7, 12, 4, 1, 6350000.00, '2024-09-26 19:22:58', '2024-09-26 19:22:58'),
(8, 12, 6, 1, 433434.00, '2024-09-26 19:22:58', '2024-09-26 19:22:58'),
(100, 85, 3, 4, 5990000.00, '2024-10-17 08:18:08', '2024-10-17 08:18:08'),
(107, 89, 3, 1, 5990000.00, '2024-10-17 08:28:10', '2024-10-17 08:28:10'),
(108, 89, 4, 1, 6350000.00, '2024-10-17 08:28:10', '2024-10-17 08:28:10'),
(110, 91, 3, 1, 5990000.00, '2024-10-17 08:37:28', '2024-10-17 08:37:28'),
(111, 92, 3, 1, 5990000.00, '2024-10-17 08:40:08', '2024-10-17 08:40:08'),
(112, 93, 3, 1, 5990000.00, '2024-10-17 08:44:08', '2024-10-17 08:44:08'),
(113, 94, 3, 1, 5990000.00, '2024-10-17 08:46:59', '2024-10-17 08:46:59'),
(114, 95, 3, 1, 5990000.00, '2024-10-17 08:48:59', '2024-10-17 08:48:59'),
(115, 96, 3, 1, 5990000.00, '2024-10-17 08:51:29', '2024-10-17 08:51:29'),
(116, 97, 3, 1, 5990000.00, '2024-10-17 08:52:45', '2024-10-17 08:52:45'),
(117, 98, 3, 1, 5990000.00, '2024-10-17 08:54:43', '2024-10-17 08:54:43'),
(118, 99, 3, 1, 5990000.00, '2024-10-17 08:57:13', '2024-10-17 08:57:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `quantity`, `price`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Máy hút mùi Canzy 70EA2', 'Giúp căn bếp của bạn luôn dễ chịu', 135, 5990000, 'images/Wuy4qMviP9JkG3P1At44jJ6ZqbzDeWwhRU0L9IJD.jpg', 3, '2024-09-06 07:23:07', '2024-10-17 08:57:13'),
(4, 'Máy hút mùi Eurosun EH-90K25', 'Hút sạch mùi bếp', 61, 6350000, 'images/5HQ9E7ZgMyMmBkCttRpqTQ4BALeYS0GyWR7qxSIe.jpg', 3, '2024-09-06 07:27:16', '2024-10-17 08:28:10'),
(5, 'Máy hút  NAG1855-90CM', 'Làm sạch không khí xung quanh căn bếp của bạn', 244, 4560000, 'images/rOhRaoGloe5DbRRGgmOxZ8n0jU0sYNMawtgA9XYP.jpg', 3, '2024-09-06 07:33:27', '2024-10-02 20:59:33'),
(6, 'Máy hút mùi daikin3', '32sdfs', 322, 433434, 'images/Q30af5ZCDhNfgRSGwBqbkWvHrDCQ6LRb2sp4k7Ds.png', 5, '2024-09-19 19:45:17', '2024-09-26 20:15:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('s546MDLM1Lh9HO7joLoUuNFrBeM3XB04PzfDff7n', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiemRuTXljUkdKcGpYWFNYSXltZzB5djBqZmVqOTlaQk5zOHc5OUxBciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTAzOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvY2hlY2tvdXQ/X21ldGhvZD1QQVRDSCZfdG9rZW49emRuTXljUkdKcGpYWFNYSXltZzB5djBqZmVqOTlaQk5zOHc5OUxBciZxdWFudGl0eT0xIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1729180633);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@example.com', NULL, '$2y$12$iVJ3HROjbjC30Nyjlg3K9.H5/NKM9o9eMnkBJEntaCxMAFce.RoE.', NULL, NULL, NULL, 'admin'),
(2, 'trung', 'trung@gmail.com', NULL, '$2y$12$czJdWjoTzTKKV5yrsxpwOuKl3aUYtP2QfQkGLtMAtosTGsG0OwsI.', NULL, '2024-09-19 12:47:03', '2024-09-19 12:47:03', 'customer'),
(3, 'trangu', 'trangu123@gmail.com', NULL, '$2y$12$US9Zr8e4q5VrIbcMtFJPaOxK8b4qpvr95F6pVAFI83Wcfygj7Dkti', NULL, '2024-09-23 19:14:57', '2024-09-23 19:14:57', 'customer'),
(4, 'trung', 'trung2@gmail.com', NULL, '$2y$12$dZ.v8Xt0U/fRAfgWUNz5KOAOkqaAx2DofYVPg08kQWzHkCyxUqW/6', NULL, '2024-10-15 10:08:38', '2024-10-15 10:08:38', 'customer'),
(5, 'trung2', 'trung3@gmail.com', NULL, '$2y$12$yp8WK3YYl6LB4P..QKPtye7K5njlplsYOsbMTH3WFAjXSFR8RfkTe', NULL, '2024-10-15 10:11:48', '2024-10-15 10:11:48', 'customer'),
(6, 'trung3', 'trung4@gmail.com', NULL, '$2y$12$bUbb.4RAalMw6R8w1RW5iOC0oArIDk5CkYEEPbUA.WTD19f1ylJ6C', NULL, '2024-10-15 10:14:55', '2024-10-15 10:14:55', 'customer');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
