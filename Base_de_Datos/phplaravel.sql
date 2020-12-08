-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2020 a las 05:23:05
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phplaravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Accion', 1, '2020-12-08 07:50:47', '2020-12-08 07:51:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_movie`
--

CREATE TABLE `category_movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_10_28_204924_create_movies_table', 1),
(4, '2020_11_05_160833_create_category_movie_table', 1),
(5, '2020_11_05_161137_create_movie_rental_table', 1),
(6, '2020_11_05_165725_create_statuses_table', 1),
(7, '2020_11_09_162331_create_rentals_table', 1),
(8, '2020_11_09_163447_create_type_statuses_table', 1),
(9, '2020_11_09_164101_create_roles_table', 1),
(10, '2020_11_10_164000_create_categories_table', 1),
(11, '2020_11_13_191637_create_relationships', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `user_id`, `status_id`, `created_at`, `updated_at`) VALUES
(2, 'Mozell Strosin', 'Voluptatem velit consequuntur fugit et odit et aliquid ut voluptates ut.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(3, 'Laverne Kuhic', 'Sunt nisi dolores veritatis voluptate ullam ea similique accusamus nostrum nostrum repellendus repudiandae ut.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(4, 'Tyreek Bode', 'Minima facilis dolor velit dolores quibusdam vitae eligendi a.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(5, 'Ophelia Armstrong Sr.', 'Totam possimus rerum ex sint quae nemo id fuga dolore totam molestiae sint autem.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(6, 'Ms. April Kassulke III', 'Maiores iusto facilis eveniet nisi excepturi vel aspernatur alias aut.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(7, 'Dr. Kevin Cartwright', 'Quia rerum quia quos est quam maiores.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(8, 'Mr. Gage Bayer PhD', 'Velit eos dolore facilis iure pariatur delectus tempora sint aut sed veritatis magni.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(9, 'Turner Balistreri', 'Quibusdam eos incidunt corrupti vitae at saepe est nihil ipsum vel asperiores.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(10, 'Easter Steuber', 'Rerum quis iusto voluptatem ipsam aspernatur ut tenetur.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29'),
(11, 'Alanna Gerhold', 'Dicta aut voluptate non aut eaque et totam.', 2, 1, '2020-12-08 08:47:29', '2020-12-08 08:47:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie_rental`
--

CREATE TABLE `movie_rental` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `rental_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `observations` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentals`
--

CREATE TABLE `rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `total` double NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rentals`
--

INSERT INTO `rentals` (`id`, `start_date`, `end_date`, `total`, `status_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '2007-07-11 13:09:43', '1994-04-15 15:24:39', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(3, '2008-03-04 05:35:41', '1977-03-14 11:41:21', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(4, '2007-02-27 21:05:11', '1981-07-20 21:41:32', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(5, '1997-11-01 04:59:18', '2016-04-07 15:43:24', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(6, '1996-01-01 05:47:12', '1998-12-09 08:02:17', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(7, '2001-03-04 17:40:45', '2017-11-29 01:18:56', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(8, '1977-07-30 13:10:16', '1988-10-21 13:44:52', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(9, '1987-10-19 06:04:44', '2015-04-30 03:40:59', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(10, '1993-07-07 14:01:48', '1970-10-10 02:24:58', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27'),
(11, '1998-11-01 13:33:13', '2020-05-17 14:07:55', 2000, 1, 2, '2020-12-08 08:55:27', '2020-12-08 08:55:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'prueba1', 1, '2020-12-08 06:00:42', '2020-12-08 08:05:18'),
(4, 'Nels Purdy I', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(5, 'Yoshiko Abernathy', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(6, 'Miss Wilma Hilpert', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(7, 'Prof. Ashleigh Greenfelder', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(8, 'Dr. Kristian Johnston', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(9, 'Abe Runte', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(10, 'Odell Beatty MD', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(11, 'Alberto Beatty', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(12, 'Charlene Carter', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(13, 'Verdie Feil', 1, '2020-12-08 09:01:50', '2020-12-08 09:01:50'),
(14, 'Database Manager', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(15, 'Service Station Attendant', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(16, 'Dredge Operator', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(17, 'Human Resources Specialist', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(18, 'Bailiff', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(19, 'Counselor', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(20, 'Production Planning', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(21, 'Gas Compressor Operator', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(22, 'Coroner', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(23, 'Food Preparation Worker', 1, '2020-12-08 09:03:23', '2020-12-08 09:03:23'),
(24, 'HR Manager', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(25, 'General Practitioner', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(26, 'Telecommunications Facility Examiner', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(27, 'Network Admin OR Computer Systems Administrator', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(28, 'Accountant', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(29, 'Tool and Die Maker', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(30, 'Nursing Instructor', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(31, 'Nonfarm Animal Caretaker', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(32, 'Gaming Dealer', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45'),
(33, 'Control Valve Installer', 1, '2020-12-08 09:06:45', '2020-12-08 09:06:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `type_status_id`, `created_at`, `updated_at`) VALUES
(1, 'prueba1', 1, NULL, '2020-12-08 08:05:56'),
(2, 'Activo', 1, '2020-12-08 08:22:36', '2020-12-08 08:22:36'),
(3, 'Inactivo', 1, '2020-12-08 08:22:36', '2020-12-08 08:22:36'),
(4, 'Activo', 1, '2020-12-08 08:25:00', '2020-12-08 08:25:00'),
(5, 'Inactivo', 1, '2020-12-08 08:25:00', '2020-12-08 08:25:00'),
(6, 'Activo', 1, '2020-12-08 08:25:39', '2020-12-08 08:25:39'),
(7, 'Inactivo', 1, '2020-12-08 08:25:39', '2020-12-08 08:25:39'),
(8, 'Activo', 1, '2020-12-08 08:26:57', '2020-12-08 08:26:57'),
(9, 'Inactivo', 1, '2020-12-08 08:26:57', '2020-12-08 08:26:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_statuses`
--

CREATE TABLE `type_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_statuses`
--

INSERT INTO `type_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'activo', NULL, NULL),
(2, 'inactivo', '2020-12-08 08:06:51', '2020-12-08 08:06:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Johan Martinez S', 'lando18tinez@gmail.com', NULL, '123123', 1, 1, NULL, '2020-12-08 08:10:46', '2020-12-08 08:11:28'),
(3, 'Emanuel Cruickshank V', 'erdman.yadira@kunze.info', NULL, '$2y$10$RHLD1v3A.CXzcpY.S.qx2uCQ/GLvh4gbOQf7SZHCGLaLTRgCHZQNq', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(4, 'Rudy Carter', 'demarco02@yahoo.com', NULL, '$2y$10$87.hhU48R3d0vqhmKa/bheY6jk2MVnLUFGeIMlr5PRZnLXIAw3LeW', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(5, 'Dr. Demetris Shanahan', 'kevon75@yahoo.com', NULL, '$2y$10$59l1j6ZjejTKHfmgO2pFuuas9mOYOQ8n/Z.zGsI169HbmpxkAW7tK', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(6, 'Velda Kuhic', 'jamar.cummings@schultz.com', NULL, '$2y$10$DebFiSNb2Z/SaSHwCfcrEOyAoR7ZlbKr9zU3rMSzX2HKPRc76i1p6', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(7, 'Mrs. Lavinia Schmidt I', 'rschimmel@kirlin.net', NULL, '$2y$10$5lGZaUxpAEfVry383Pnibuckspfpnl.yn9VhbTQ6UWO05ODKs9m1G', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(8, 'Robyn Hilpert', 'muller.dorcas@gmail.com', NULL, '$2y$10$Gn4QmTtG1IE/FWQLE1uWHO/IOj8VDB620b1JKQkYvanHP3P6A9BWm', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(9, 'Jazmyn Baumbach', 'khamill@hotmail.com', NULL, '$2y$10$1qQJsXkDcI2KAxB3tu6gguP7IE/SYXQlemCq/i7ZzcAikg4IrNdXe', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(10, 'Mr. Stone Heaney', 'octavia.fisher@ferry.info', NULL, '$2y$10$oIuu20cVkRnhJ5Q4MxbwoebwlPM6AMw8iwkHs4ukjt0L9yQbI6fEW', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(11, 'Jamal Marvin', 'fthompson@gmail.com', NULL, '$2y$10$VkeWShhD/Tc6j.7En01QFuh2APUtPNtBqlwGjbsYc5FCr5Dw2Upea', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58'),
(12, 'Nicole Okuneva', 'gustave50@gmail.com', NULL, '$2y$10$vdf2Ocz2i5qkYbZ9leDLMOgpWg0vFKn1BNFaTgPbekW.Kca4kx182', 1, 1, NULL, '2020-12-08 08:26:58', '2020-12-08 08:26:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `category_movie`
--
ALTER TABLE `category_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_movie_movie_id_foreign` (`movie_id`),
  ADD KEY `category_movie_category_id_foreign` (`category_id`),
  ADD KEY `category_movie_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_user_id_foreign` (`user_id`),
  ADD KEY `movies_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `movie_rental`
--
ALTER TABLE `movie_rental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_rental_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_rental_rental_id_foreign` (`rental_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_status_id_foreign` (`status_id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_type_status_id_foreign` (`type_status_id`);

--
-- Indices de la tabla `type_statuses`
--
ALTER TABLE `type_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_status_id_foreign` (`status_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category_movie`
--
ALTER TABLE `category_movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `movie_rental`
--
ALTER TABLE `movie_rental`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `type_statuses`
--
ALTER TABLE `type_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `category_movie`
--
ALTER TABLE `category_movie`
  ADD CONSTRAINT `category_movie_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `category_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `category_movie_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movie_rental`
--
ALTER TABLE `movie_rental`
  ADD CONSTRAINT `movie_rental_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_rental_rental_id_foreign` FOREIGN KEY (`rental_id`) REFERENCES `rentals` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_type_status_id_foreign` FOREIGN KEY (`type_status_id`) REFERENCES `type_statuses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
