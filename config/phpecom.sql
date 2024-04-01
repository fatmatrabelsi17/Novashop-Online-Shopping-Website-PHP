-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
<<<<<<< HEAD
-- Généré le : mer. 27 mars 2024 à 05:20
=======
-- Généré le : mer. 27 mars 2024 à 03:10
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phpecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`) VALUES
(26, 1, 9, 1, '2024-03-27 00:28:57'),
<<<<<<< HEAD
(27, 1, 11, 3, '2024-03-27 00:48:44'),
(30, 7, 12, 2, '2024-03-27 02:44:21');
=======
(27, 1, 11, 3, '2024-03-27 00:48:44');
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(1, 'Mobiles', 'mobiles', 'All kinds of mobiles', 0, 1, '1711474018.png', 'Mobiles', 'All kinds of mobiles', 'All kinds of mobiles', '2024-03-24 23:10:08'),
(2, 'Electronics', 'Electronics', 'All kind of electronics', 0, 0, '1711474108.png', 'Electronics', 'All kind of electronics', 'electronics ', '2024-03-25 01:32:02'),
(3, 'Fashion', 'Fashion', 'Clothes for women, men and kids', 0, 1, '1711474171.jpg', 'Fashion', 'Clothes for women, men and kids', 'clothes ', '2024-03-25 01:33:32'),
(4, 'Laptops', 'laptops', 'All kinds of laptops', 0, 0, '1711474206.png', 'Laptops', 'All kinds of laptops', 'laptop ', '2024-03-25 01:34:58'),
(5, 'Footwear', 'Footwear', 'All kind of footwear', 0, 1, '1711474254.jpg', 'Footwear', 'All kind of footwear', 'All kind of footwear', '2024-03-25 02:00:37');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` mediumtext NOT NULL,
  `pincode` int(191) NOT NULL,
  `total_price` int(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `address`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
<<<<<<< HEAD
(8, 'novashop227734567', 2, 'user', 'user@gmail.com', '1234567', 'address', 1234, 3820, 'COD', '', 0, NULL, '2024-03-26 19:50:09'),
(9, 'novashop4438345678', 2, 'user', 'user@gmail.com', '12345678', 'address', 3001, 110, 'COD', '', 0, NULL, '2024-03-27 02:39:07'),
(10, 'novashop484934567', 2, 'user', 'user@gmail.com', '1234567', 'address', 1234, 3700, 'COD', '', 1, NULL, '2024-03-27 03:48:07'),
(11, 'novashop407234567', 2, 'user', 'user@gmail.com', '1234567', 'address', 1234, 200, 'COD', '', 1, NULL, '2024-03-27 03:57:21');
=======
(8, 'novashop227734567', 2, 'user', 'user@gmail.com', '1234567', 'address', 1234, 3820, 'COD', '', 0, NULL, '2024-03-26 19:50:09');
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) NOT NULL,
  `prod_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(10, 8, 9, 1, 3700, '2024-03-26 19:50:09'),
<<<<<<< HEAD
(11, 8, 4, 2, 60, '2024-03-26 19:50:09'),
(12, 9, 4, 1, 60, '2024-03-27 02:39:07'),
(13, 9, 12, 1, 50, '2024-03-27 02:39:07'),
(14, 10, 9, 1, 3700, '2024-03-27 03:48:07'),
(15, 11, 13, 1, 200, '2024-03-27 03:57:21');
=======
(11, 8, 4, 2, 60, '2024-03-26 19:50:09');
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
<<<<<<< HEAD
(4, 3, 'T shirt Black - Men', 't-shirt-black-for-men', 'The Lifestyle Co Men Black T-shirt\r\n', 'The Lifestyle Co Men Black T-shirt', 70, 60, '1711474320.jpg', 46, 0, 1, 'T shirt Black - Men', 'T shirt Black - Men', 'T shirt Black - Men', '2022-03-09 08:43:24'),
(9, 1, 'SAMSUNG Galaxy S23', 'SAMSUNG Galaxy S23', '128GB, Unlocked Android Smartphone, Long Battery Life', '128GB, Unlocked Android Smartphone, Long Battery Life, Premium Processor, Tough Gorilla Glass Display, Hi-Res 50MP Camera, US Version, 2023, Graphite', 3979, 3700, '1711469268.png', 8, 0, 1, 'SAMSUNG Galaxy S23', 'SAMSUNG Galaxy S23', 'SAMSUNG Galaxy S23', '2024-03-26 16:07:48'),
(11, 5, 'Nike Men Basketball Shoe', 'Nike Men Basketball Shoe', 'Nike Dunk Low - Men', 'Nike Dunk Low - Men', 500, 450, '1711503052.jpg', 50, 0, 1, 'Nike Dunk Low - Men', 'Nike Dunk Low Basketball Shoe ', 'Nike Dunk Low - Men', '2024-03-27 00:46:57'),
(12, 2, 'TALK WORKS Fast-Charge', 'TALK WORKS Fast-Charge', 'TALK WORKS Fast-Charge', 'ALK WORKS Fast-Charge Lightning Cable-MFi-Certified for Apple iPhone 14, 14 Pro, 14 Plus, 13 , 13 Pro , 12, 11 Pro/Max/Mini/Plus, XR, XS/Max, AirPods - 10ft Long, Heavy-Duty Cord, White', 60, 50, '1711505283.jpg', 39, 0, 1, 'TALK WORKS Fast-Charge', 'iphone fast charger cable ', 'TALK WORKS Fast-Charge', '2024-03-27 02:08:03'),
(13, 3, 'Hand Bag', 'Hand Bag', 'Black Hand Bag Medium Size', 'Black Hand Bag Medium Size', 200, 200, '1711509162.jpg', 29, 0, 0, 'Black Hand Bag Medium Size', 'Black Hand Bag Medium Size', 'Black Hand Bag Medium Size', '2024-03-27 03:12:42'),
(14, 1, 'IPHONE 13 - 128 GO', 'IPHONE 13 - 128 GO', 'IPHONE 13 - 128 GO', '6.1 Super Retina XDR Display\r\nUltra-fast 5G Cinematic Mode for 1080p video at 30 fps\r\nDolby Vision HDR video recording up to 4K at 60 fps\r\nA15 Bionic CPU 6-core chip with 2 performance cores and 4 energy-efficient cores 4-core GPU 16-core Neural Engine\r\nUp to 19 hours of video playback\r\nFront Ceramic Shield Aerospace-grade aluminum\r\nFace ID', 3479, 3479, '1711510235.jpg', 26, 0, 0, 'IPHONE 13 - 128 GO', 'IPHONE 13 - 128 GO', 'IPHONE 13 - 128 GO', '2024-03-27 03:30:35');
=======
(4, 3, 'T shirt Black - Men', 't-shirt-black-for-men', 'The Lifestyle Co Men Black T-shirt\r\n', 'The Lifestyle Co Men Black T-shirt', 70, 60, '1711474320.jpg', 47, 0, 1, 'T shirt Black - Men', 'T shirt Black - Men', 'T shirt Black - Men', '2022-03-09 08:43:24'),
(9, 1, 'SAMSUNG Galaxy S23', 'SAMSUNG Galaxy S23', '128GB, Unlocked Android Smartphone, Long Battery Life', '128GB, Unlocked Android Smartphone, Long Battery Life, Premium Processor, Tough Gorilla Glass Display, Hi-Res 50MP Camera, US Version, 2023, Graphite', 3979, 3700, '1711469268.png', 9, 0, 1, 'SAMSUNG Galaxy S23', 'SAMSUNG Galaxy S23', 'SAMSUNG Galaxy S23', '2024-03-26 16:07:48'),
(11, 5, 'Nike Men Basketball Shoe', 'Nike Men Basketball Shoe', 'Nike Dunk Low - Men', 'Nike Dunk Low - Men', 500, 450, '1711503052.jpg', 50, 0, 1, 'Nike Dunk Low - Men', 'Nike Dunk Low Basketball Shoe ', 'Nike Dunk Low - Men', '2024-03-27 00:46:57'),
(12, 2, 'TALK WORKS Fast-Charge', 'TALK WORKS Fast-Charge', 'TALK WORKS Fast-Charge', 'ALK WORKS Fast-Charge Lightning Cable-MFi-Certified for Apple iPhone 14, 14 Pro, 14 Plus, 13 , 13 Pro , 12, 11 Pro/Max/Mini/Plus, XR, XS/Max, AirPods - 10ft Long, Heavy-Duty Cord, White', 60, 50, '1711505283.jpg', 40, 0, 1, 'TALK WORKS Fast-Charge', 'iphone fast charger cable ', 'TALK WORKS Fast-Charge', '2024-03-27 02:08:03');
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `created_at`) VALUES
(1, 'admin', 'om@gmail.com', '2147483647', '1234', 1, '2024-03-24 10:49:59'),
(2, 'user', 'user@gmail.com', '1231231233', '1234', 0, '2024-03-24 10:51:19'),
(6, 'user', 'user01@gmail.com', '98433433', '1234', 0, '2024-03-25 19:09:53'),
(7, 'user2', 'user2@gmail.com', '12345678', '1234', 0, '2024-03-26 18:29:59');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carts`
--
ALTER TABLE `carts`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

--
-- AUTO_INCREMENT pour la table `order_items`
--
ALTER TABLE `order_items`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
>>>>>>> 7131ed37edc1de09e680bbbe53c5f625fbedd4fd

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
