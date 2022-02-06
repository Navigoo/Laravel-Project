-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 23 jun 2021 kl 13:24
-- Serverversion: 10.4.19-MariaDB
-- PHP-version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `pizza`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `carts`
--

INSERT INTO `carts` (`id`, `name`, `quantity`, `updated_at`, `created_at`) VALUES
(1, 'Margeritha', 1, '2021-06-23 06:40:03', '2021-06-23 06:40:03'),
(2, 'Bianco', 1, '2021-06-23 06:41:44', '2021-06-23 06:41:44'),
(3, 'Napoletana', 1, '2021-06-23 06:56:25', '2021-06-23 06:56:25'),
(4, 'Margeritha', 1, '2021-06-23 07:13:16', '2021-06-23 07:13:16'),
(5, 'Margeritha', 5, '2021-06-23 07:13:40', '2021-06-23 07:13:40'),
(6, 'Tuna', 4, '2021-06-23 09:12:40', '2021-06-23 09:12:40'),
(7, 'Funghi', 1, '2021-06-23 09:20:27', '2021-06-23 09:20:27');

-- --------------------------------------------------------

--
-- Tabellstruktur `failed_jobs`
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
-- Tabellstruktur `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumpning av Data i tabell `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_12_185423_create_products_table', 1),
(5, '2021_06_13_074752_add_antal_to_pizza', 2),
(6, '2021_06_16_102357_create_order', 3),
(7, '2021_06_16_103729_create_order', 4),
(8, '2021_06_16_103729_create_orders', 5),
(9, '2021_06_16_114647_create_order', 6),
(10, '2021_06_16_115423_create_orders', 7),
(11, '2021_06_16_120023_create_orders', 8),
(12, '2021_06_16_124702_create_users_table', 9),
(13, '2021_06_16_124900_create_products_table', 10),
(14, '2021_06_16_125522_create_products_table', 11),
(15, '2021_06_16_125739_create_products_table', 12),
(16, '2021_06_16_130129_create_products_table', 13),
(17, '2021_06_16_134448_create_products_table', 14),
(18, '2021_06_16_134618_create_users_table', 15),
(19, '2021_06_16_180300_create_orders_table', 16),
(20, '2021_06_18_155131_create_ordernr_table', 17),
(21, '2021_06_20_154252_create_users_table', 18),
(22, '2021_06_20_160540_create_ordernr_table', 19),
(23, '2021_06_21_152038_create_order_table', 20),
(24, '2021_06_21_171921_create_carts_table', 21),
(25, '2021_06_21_190730_create_cart_table', 22),
(26, '2021_06_21_191327_create_carts_table', 23),
(27, '2021_06_22_142612_create_orderhistoriks_table', 24),
(28, '2021_06_22_163519_create_carts_table', 25),
(29, '2021_06_22_163736_create_carts_table', 26),
(30, '2021_06_22_180843_create_carts_table', 27),
(31, '2021_06_22_190210_create_carts_table', 28),
(32, '2021_06_22_212157_create_users_table', 29),
(33, '2021_06_22_212415_create_users_table', 30),
(34, '2021_06_22_212809_create_carts_table', 31),
(35, '2021_06_22_215641_create_carts_table', 32),
(36, '2021_06_23_082342_create_users_table', 33);

-- --------------------------------------------------------

--
-- Tabellstruktur `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumpning av Data i tabell `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `photo`, `price`, `quantity`) VALUES
(1, NULL, NULL, 'Bianco', 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png', '99.00', NULL),
(2, NULL, NULL, 'Napoletana', 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png', '99.00', NULL),
(3, NULL, NULL, 'Margeritha', 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png', '99.00', NULL),
(4, NULL, NULL, 'Tuna', 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png', '99.00', NULL),
(5, NULL, NULL, 'Funghi', 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png', '99.00', NULL);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Richard Carlsson', 'richard@navigoo.se', NULL, '$2y$10$PGNwHU5/k.cSGxZ.0haXQOkEs78.XKBbu.iIufvJRoU96nXsTnGKy', NULL, '2021-06-23 06:34:32', '2021-06-23 06:34:32'),
(2, 'Richard Carlsson', 'test@test.se', NULL, '$2y$10$SdU83f4V.SsIfu5IRSc3wekpC3taDG98SbMIaepoSPQd0Fwt0wR4O', NULL, '2021-06-23 06:41:24', '2021-06-23 06:41:24');

-- --------------------------------------------------------

--
-- Tabellstruktur `users_has_carts`
--

CREATE TABLE `users_has_carts` (
  `users_id` int(11) NOT NULL,
  `carts_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index för tabell `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index för tabell `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index för tabell `users_has_carts`
--
ALTER TABLE `users_has_carts`
  ADD PRIMARY KEY (`users_id`,`carts_id`),
  ADD KEY `fk_users_has_carts_carts1_idx` (`carts_id`),
  ADD KEY `fk_users_has_carts_users_idx` (`users_id`),
  ADD KEY `fk_users_has_carts.quantity_users_idx` (`users_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT för tabell `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT för tabell `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `users_has_carts`
--
ALTER TABLE `users_has_carts`
  ADD CONSTRAINT `fk_users_has_carts_carts1` FOREIGN KEY (`carts_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_users_has_carts_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
