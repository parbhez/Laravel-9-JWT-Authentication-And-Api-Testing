-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 09:55 AM
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
-- Database: `jwt_api_testing`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_14_053314_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Corporis ea quaerat minima labore id saepe.', 'sint-sit-quo-inventore-id-aspernatur-neque-dolore-libero', '2022-05-13 23:59:15', '2022-05-13 23:59:15'),
(2, 'Officiis quis possimus reprehenderit omnis eos aut totam tenetur.', 'mollitia-veritatis-porro-nisi-et-in', '2022-05-13 23:59:15', '2022-05-13 23:59:15'),
(3, 'Officia voluptatem ipsa sed eveniet cum nemo.', 'rerum-doloremque-velit-beatae-suscipit', '2022-05-13 23:59:15', '2022-05-13 23:59:15'),
(4, 'Aut eum molestiae dicta voluptas aut enim cumque.', 'est-minus-sit-et', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(5, 'Sed tempore quo asperiores qui quis ut debitis.', 'odit-et-provident-maxime-nulla-dolor-a-saepe', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(6, 'Aliquam id veniam quis iste.', 'et-cum-nihil-sit', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(7, 'Eius qui eum aut voluptatem qui.', 'rerum-repellat-aspernatur-nostrum-ullam-autem-atque', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(8, 'Repudiandae magni molestias maxime omnis.', 'ea-illum-rem-velit-rerum', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(9, 'Ipsa numquam quia eos dolor officia inventore tenetur.', 'non-autem-pariatur-eos-enim-et-officiis', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(10, 'Product 10000', 'product-10000', '2022-05-13 23:59:16', '2022-05-14 08:29:25'),
(11, 'Vel error et dolorem deleniti tenetur repudiandae omnis.', 'porro-repudiandae-voluptate-ut', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(12, 'Mollitia eaque reiciendis quas nisi iusto impedit debitis.', 'laudantium-neque-non-et-iure', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(13, 'Veritatis ut vitae tempora tempore ab.', 'dolorum-minus-blanditiis-corrupti-et-autem-iusto-dignissimos-est', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(14, 'Atque eum ratione repudiandae facere occaecati recusandae sapiente.', 'porro-id-magni-quam-voluptas-veritatis-non', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(15, 'Ut cumque quasi eum ea reiciendis aut quam.', 'ea-nostrum-odit-minima-provident', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(16, 'In ut corporis nostrum ex neque nam.', 'sint-expedita-explicabo-autem-itaque', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(17, 'Nemo rerum est fugiat vero quo dolore.', 'eos-dolores-sed-qui-nostrum-nam', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(18, 'Suscipit velit quia minus fuga voluptatem voluptatem praesentium.', 'modi-rerum-incidunt-et-aut-odio', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(19, 'Id aut quod quo veniam.', 'quia-optio-repellendus-commodi-maiores-aut-qui', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(20, 'Dolor doloremque corporis eius voluptas quia.', 'hic-dicta-placeat-ut-eveniet-quasi-provident-ut-ab', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(21, 'Earum nisi repellendus consequatur officia praesentium.', 'ut-rerum-nobis-ea-repellendus-qui-quis', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(22, 'Error laborum totam quibusdam quia occaecati.', 'vitae-laudantium-rerum-asperiores-eaque-enim-ducimus-sed-quidem', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(23, 'Libero laboriosam eius aliquam quam exercitationem hic maiores.', 'a-aperiam-nesciunt-dolor-deleniti', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(24, 'Dolorem quae libero quia reiciendis culpa ea.', 'debitis-non-numquam-consectetur', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(25, 'Ut ea nihil tempora non error similique sapiente.', 'voluptas-non-qui-ut-iusto-inventore-quo', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(26, 'Commodi ut qui officia quia aliquid ad laborum aut.', 'nesciunt-omnis-quam-ad-dignissimos-odio-nemo-nesciunt', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(27, 'Omnis totam incidunt blanditiis.', 'esse-aut-qui-adipisci-et-minima-beatae-laudantium-consequatur', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(28, 'Alias recusandae fugiat voluptate debitis aut sed saepe.', 'optio-autem-excepturi-in-qui-corrupti', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(29, 'Qui veniam qui earum soluta.', 'et-mollitia-molestiae-aspernatur-sed-deleniti-et', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(30, 'Sunt aperiam atque aliquid et aperiam.', 'molestias-sint-enim-ipsam-necessitatibus-repellendus-dolores', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(31, 'Unde et iusto at molestiae voluptates architecto.', 'odit-officiis-et-voluptatum-repellendus-aliquam-enim', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(32, 'Enim iure atque magni repellendus distinctio.', 'et-numquam-distinctio-sit-laboriosam', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(33, 'Est aut praesentium illo a ullam.', 'voluptatem-soluta-deleniti-sint-voluptatem-odit-est', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(34, 'Quia facilis expedita aut et.', 'optio-explicabo-totam-aut-ut-recusandae-id-dolorem', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(35, 'Ex minus in quis accusamus veniam eum sunt.', 'voluptatem-exercitationem-itaque-at-alias-eveniet', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(36, 'Pariatur a ipsam quas beatae.', 'odio-occaecati-aut-facere-sunt-tenetur-dolor', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(37, 'Sit explicabo dolorem itaque provident vitae neque.', 'aut-quos-ab-non-itaque-molestiae-libero-ipsam', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(38, 'Maiores nam placeat tenetur ut nihil similique deleniti.', 'et-enim-corrupti-laborum-odit', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(39, 'Voluptatum provident voluptatum eaque veniam harum qui officia.', 'dicta-sed-sed-dolorem-occaecati-velit-inventore-commodi-aliquam', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(40, 'Omnis deleniti quisquam vel magnam praesentium nihil eum.', 'consequuntur-eius-nostrum-qui-aliquam-sed-eos-quos', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(41, 'Voluptas excepturi nostrum beatae in.', 'perspiciatis-qui-eos-ducimus-doloribus-ut-est-aut', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(42, 'Ut aut distinctio rerum minima a consequatur consequatur.', 'esse-officiis-laborum-nemo-neque', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(43, 'At nesciunt qui impedit aliquid id sint.', 'est-maiores-occaecati-fugiat-repellat-veniam-incidunt-saepe-vel', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(44, 'Ipsum fugiat culpa quo at.', 'similique-velit-ut-eos-occaecati-odit-harum', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(45, 'Nobis exercitationem inventore debitis nisi quis quaerat accusamus.', 'illo-voluptatem-molestiae-ipsam-enim-assumenda-vero', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(46, 'Reiciendis enim deserunt qui est modi consequatur.', 'hic-necessitatibus-quis-sit-molestiae', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(47, 'Aliquid laboriosam consequuntur aliquid voluptatibus.', 'autem-qui-dolorem-voluptas-veniam-molestias-alias-assumenda-quia', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(48, 'Ut et laudantium consectetur ut et.', 'reiciendis-illo-suscipit-ex-velit-incidunt-natus-autem', '2022-05-13 23:59:16', '2022-05-13 23:59:16'),
(49, 'Et laborum est expedita veritatis sunt sed sed.', 'qui-qui-nobis-vel-ea-praesentium-nemo-esse-tenetur', '2022-05-13 23:59:16', '2022-05-13 23:59:16');

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
(1, 'masud', 'masud@gmail.com', NULL, '$2y$10$8lBXak7vlcXaEBLOKk1Bg.pMjVCHkJiKppDgxbHBRNJug57Dou6WC', NULL, '2022-05-14 02:49:01', '2022-05-14 02:49:01');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
