-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2021 at 07:57 PM
-- Server version: 8.0.25-0ubuntu0.20.10.1
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productservice`
--
CREATE DATABASE IF NOT EXISTS `productservice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `productservice`;

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_14_213158_create_products_table', 1),
(2, '2021_08_14_213202_create_users_table', 1),
(3, '2021_08_14_213205_create_purchased_table', 1),
(4, '2021_08_14_220434_create_api_keys_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`sku`, `name`) VALUES
('battery-4', 'Battery 4'),
('guitar-rig-5', 'Guitar Rig 5'),
('komplete-12', 'Komplete 12'),
('komplete-audio-2', 'Komplete Audio 2'),
('komplete-kontrol-m32', 'Komplete Kontrol M32'),
('komplete-kontrol-s49-black', 'Komplete Kontrol S49 Black'),
('komplete-kontrol-s61', 'Komplete Kontrol S61'),
('kontakt-6', 'Kontakt 6'),
('lone-forest', 'Lone Forest'),
('maschine', 'Maschine'),
('maschine-jam', 'Maschine JAM'),
('massive', 'Massive'),
('reaktor-6', 'Reaktor 6'),
('sku', 'name'),
('traktor-kontrol-s4', 'Traktor Kontrol S4'),
('traktor-kontrol-s8', 'Traktor Kontrol S8'),
('traktor-kontrol-z2', 'Traktor Kontrol Z2'),
('traktor-pro-3', 'Traktor PRO 3'),
('una-corda', 'Una Corda');

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE `purchased` (
  `user_id` int NOT NULL,
  `product_sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchased`
--

INSERT INTO `purchased` (`user_id`, `product_sku`) VALUES
(1, 'battery-4'),
(1, 'una-corda'),
(1, 'kontakt-6'),
(2, 'battery-4'),
(2, 'komplete-kontrol-m32'),
(2, 'kontakt-6'),
(3, 'massive'),
(3, 'komplete-audio-2'),
(3, 'reaktor-6'),
(4, 'massive'),
(4, 'komplete-audio-2'),
(4, 'reaktor-6'),
(5, 'komplete-kontrol-s49-black'),
(5, 'komplete-audio-2'),
(5, 'komplete-12'),
(6, 'traktor-kontrol-s4'),
(6, 'traktor-kontrol-s8'),
(6, 'traktor-pro-3'),
(7, 'guitar-rig-5'),
(7, 'komplete-kontrol-m32'),
(7, 'kontakt-6'),
(8, 'battery-4'),
(8, 'komplete-kontrol-m32'),
(8, 'kontakt-6'),
(9, 'traktor-kontrol-s4'),
(9, 'traktor-kontrol-z2'),
(9, 'traktor-pro-3'),
(10, 'guitar-rig-5'),
(10, 'una-corda'),
(10, 'kontakt-6'),
(11, 'komplete-kontrol-s49-black'),
(11, 'komplete-audio-2'),
(11, 'komplete-12'),
(12, 'maschine-jam'),
(12, 'lone-forest'),
(12, 'maschine'),
(13, 'traktor-kontrol-s4'),
(13, 'traktor-kontrol-s8'),
(13, 'traktor-pro-3'),
(14, 'massive'),
(14, 'komplete-audio-2'),
(14, 'reaktor-6'),
(15, 'komplete-kontrol-s49-black'),
(15, 'komplete-audio-2'),
(15, 'komplete-12'),
(16, 'traktor-kontrol-s4'),
(16, 'traktor-kontrol-z2'),
(16, 'traktor-pro-3'),
(17, 'massive'),
(17, 'komplete-audio-2'),
(17, 'reaktor-6'),
(18, 'massive'),
(18, 'komplete-audio-2'),
(18, 'reaktor-6'),
(19, 'traktor-kontrol-s4'),
(19, 'traktor-kontrol-s8'),
(19, 'traktor-pro-3'),
(20, 'massive'),
(20, 'komplete-audio-2'),
(20, 'reaktor-6'),
(21, 'massive'),
(21, 'komplete-audio-2'),
(21, 'reaktor-6'),
(22, 'komplete-kontrol-s61'),
(22, 'komplete-audio-2'),
(22, 'komplete-12'),
(23, 'maschine-jam'),
(23, 'lone-forest'),
(23, 'maschine'),
(24, 'massive'),
(24, 'komplete-audio-2'),
(24, 'reaktor-6'),
(25, 'komplete-kontrol-s49-black'),
(25, 'komplete-kontrol-s61'),
(25, 'komplete-12'),
(26, 'traktor-kontrol-s4'),
(26, 'traktor-kontrol-z2'),
(26, 'traktor-pro-3'),
(27, 'komplete-kontrol-s49-black'),
(27, 'komplete-audio-2'),
(27, 'komplete-12'),
(28, 'una-corda'),
(28, 'komplete-kontrol-m32'),
(28, 'kontakt-6'),
(29, 'traktor-kontrol-s8'),
(29, 'traktor-kontrol-z2'),
(29, 'traktor-pro-3'),
(30, 'komplete-kontrol-s49-black'),
(30, 'komplete-kontrol-s61'),
(30, 'komplete-12'),
(31, 'massive'),
(31, 'komplete-audio-2'),
(31, 'reaktor-6'),
(32, 'massive'),
(32, 'komplete-audio-2'),
(32, 'reaktor-6'),
(33, 'guitar-rig-5'),
(33, 'una-corda'),
(33, 'kontakt-6'),
(34, 'guitar-rig-5'),
(34, 'battery-4'),
(34, 'kontakt-6'),
(35, 'traktor-kontrol-s4'),
(35, 'traktor-kontrol-z2'),
(35, 'traktor-pro-3'),
(36, 'maschine-jam'),
(36, 'lone-forest'),
(36, 'maschine'),
(37, 'massive'),
(37, 'komplete-audio-2'),
(37, 'reaktor-6'),
(38, 'una-corda'),
(38, 'komplete-kontrol-m32'),
(38, 'kontakt-6'),
(39, 'maschine-jam'),
(39, 'massive'),
(39, 'maschine'),
(40, 'traktor-kontrol-s4'),
(40, 'traktor-kontrol-s8'),
(40, 'traktor-pro-3'),
(41, 'maschine-jam'),
(41, 'lone-forest'),
(41, 'maschine'),
(42, 'maschine-jam'),
(42, 'lone-forest'),
(42, 'maschine'),
(43, 'traktor-kontrol-s4'),
(43, 'traktor-kontrol-s8'),
(43, 'traktor-pro-3'),
(44, 'massive'),
(44, 'komplete-audio-2'),
(44, 'reaktor-6'),
(45, 'maschine-jam'),
(45, 'massive'),
(45, 'maschine'),
(46, 'maschine-jam'),
(46, 'lone-forest'),
(46, 'maschine'),
(47, 'lone-forest'),
(47, 'massive'),
(47, 'maschine'),
(48, 'guitar-rig-5'),
(48, 'komplete-kontrol-m32'),
(48, 'kontakt-6'),
(49, 'maschine-jam'),
(49, 'lone-forest'),
(49, 'maschine'),
(50, 'komplete-kontrol-s49-black'),
(50, 'komplete-kontrol-s61'),
(50, 'komplete-12'),
(51, 'maschine-jam'),
(51, 'lone-forest'),
(51, 'maschine'),
(52, 'una-corda'),
(52, 'komplete-kontrol-m32'),
(52, 'kontakt-6'),
(53, 'lone-forest'),
(53, 'massive'),
(53, 'maschine'),
(54, 'traktor-kontrol-s4'),
(54, 'traktor-kontrol-s8'),
(54, 'traktor-pro-3'),
(55, 'massive'),
(55, 'komplete-audio-2'),
(55, 'reaktor-6'),
(56, 'komplete-kontrol-s61'),
(56, 'komplete-audio-2'),
(56, 'komplete-12'),
(57, 'traktor-kontrol-s4'),
(57, 'traktor-kontrol-s8'),
(57, 'traktor-pro-3'),
(58, 'guitar-rig-5'),
(58, 'una-corda'),
(58, 'kontakt-6'),
(59, 'lone-forest'),
(59, 'massive'),
(59, 'maschine'),
(60, 'maschine-jam'),
(60, 'massive'),
(60, 'maschine'),
(61, 'komplete-kontrol-s49-black'),
(61, 'komplete-audio-2'),
(61, 'komplete-12'),
(62, 'traktor-kontrol-s8'),
(62, 'traktor-kontrol-z2'),
(62, 'traktor-pro-3'),
(63, 'maschine-jam'),
(63, 'massive'),
(63, 'maschine'),
(64, 'traktor-kontrol-s8'),
(64, 'traktor-kontrol-z2'),
(64, 'traktor-pro-3'),
(65, 'traktor-kontrol-s8'),
(65, 'traktor-kontrol-z2'),
(65, 'traktor-pro-3'),
(66, 'una-corda'),
(66, 'komplete-kontrol-m32'),
(66, 'kontakt-6'),
(67, 'traktor-kontrol-s8'),
(67, 'traktor-kontrol-z2'),
(67, 'traktor-pro-3'),
(68, 'battery-4'),
(68, 'komplete-kontrol-m32'),
(68, 'kontakt-6'),
(69, 'komplete-kontrol-s49-black'),
(69, 'komplete-audio-2'),
(69, 'komplete-12'),
(70, 'massive'),
(70, 'komplete-audio-2'),
(70, 'reaktor-6'),
(71, 'traktor-kontrol-s8'),
(71, 'traktor-kontrol-z2'),
(71, 'traktor-pro-3'),
(72, 'guitar-rig-5'),
(72, 'battery-4'),
(72, 'kontakt-6'),
(73, 'lone-forest'),
(73, 'massive'),
(73, 'maschine'),
(74, 'massive'),
(74, 'komplete-audio-2'),
(74, 'reaktor-6'),
(75, 'battery-4'),
(75, 'una-corda'),
(75, 'kontakt-6'),
(76, 'maschine-jam'),
(76, 'massive'),
(76, 'maschine'),
(77, 'una-corda'),
(77, 'komplete-kontrol-m32'),
(77, 'kontakt-6'),
(78, 'massive'),
(78, 'komplete-audio-2'),
(78, 'reaktor-6'),
(79, 'komplete-kontrol-s61'),
(79, 'komplete-audio-2'),
(79, 'komplete-12'),
(80, 'guitar-rig-5'),
(80, 'komplete-kontrol-m32'),
(80, 'kontakt-6'),
(81, 'massive'),
(81, 'komplete-audio-2'),
(81, 'reaktor-6'),
(82, 'komplete-kontrol-s49-black'),
(82, 'komplete-audio-2'),
(82, 'komplete-12'),
(83, 'traktor-kontrol-s4'),
(83, 'traktor-kontrol-z2'),
(83, 'traktor-pro-3'),
(84, 'lone-forest'),
(84, 'massive'),
(84, 'maschine'),
(85, 'traktor-kontrol-s4'),
(85, 'traktor-kontrol-z2'),
(85, 'traktor-pro-3'),
(86, 'guitar-rig-5'),
(86, 'una-corda'),
(86, 'kontakt-6'),
(87, 'komplete-kontrol-s49-black'),
(87, 'komplete-audio-2'),
(87, 'komplete-12'),
(88, 'maschine-jam'),
(88, 'lone-forest'),
(88, 'maschine'),
(89, 'battery-4'),
(89, 'una-corda'),
(89, 'kontakt-6'),
(90, 'maschine-jam'),
(90, 'lone-forest'),
(90, 'maschine'),
(91, 'traktor-kontrol-s8'),
(91, 'traktor-kontrol-z2'),
(91, 'traktor-pro-3'),
(92, 'lone-forest'),
(92, 'massive'),
(92, 'maschine'),
(93, 'guitar-rig-5'),
(93, 'una-corda'),
(93, 'kontakt-6'),
(94, 'lone-forest'),
(94, 'massive'),
(94, 'maschine'),
(95, 'una-corda'),
(95, 'komplete-kontrol-m32'),
(95, 'kontakt-6'),
(96, 'maschine-jam'),
(96, 'lone-forest'),
(96, 'maschine'),
(97, 'massive'),
(97, 'komplete-audio-2'),
(97, 'reaktor-6'),
(98, 'massive'),
(98, 'komplete-audio-2'),
(98, 'reaktor-6'),
(99, 'maschine-jam'),
(99, 'lone-forest'),
(99, 'maschine'),
(100, 'traktor-kontrol-s8'),
(100, 'traktor-kontrol-z2'),
(100, 'traktor-pro-3'),
(102, 'maschine'),
(103, 'traktor-pro-3'),
(104, 'komplete-12'),
(105, 'kontakt-6'),
(106, 'reaktor-6');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Weston Ratke', 'mac94@moen.com', 'secret'),
(2, 'Dr. Alberto Boyle I', 'clark32@yahoo.com', 'secret'),
(3, 'Candelario Kassulke', 'roselyn62@gmail.com', 'secret'),
(4, 'Abner Mueller', 'kabbott@yahoo.com', 'secret'),
(5, 'Mrs. Odie Miller Jr.', 'boyer.kallie@hotmail.com', 'secret'),
(6, 'Prof. Santa Reichert', 'aparker@dicki.net', 'secret'),
(7, 'Julio Will', 'brooklyn.stracke@yahoo.com', 'secret'),
(8, 'Mr. Vinnie Ziemann', 'antonietta.witting@conroy.net', 'secret'),
(9, 'Alexa Ledner', 'pasquale.cruickshank@yahoo.com', 'secret'),
(10, 'Mrs. Janet Rolfson Sr.', 'wrice@yahoo.com', 'secret'),
(11, 'Mrs. Meghan Mueller', 'ozella26@waelchi.com', 'secret'),
(12, 'Dr. August Auer V', 'reggie.gerhold@schiller.com', 'secret'),
(13, 'Dr. Lelia Hansen II', 'gudrun.gerhold@yahoo.com', 'secret'),
(14, 'Ila Collins', 'imogene.steuber@yahoo.com', 'secret'),
(15, 'Ms. Ashtyn Fritsch Sr.', 'derrick35@gmail.com', 'secret'),
(16, 'Ford Kovacek III', 'luis.rohan@ondricka.com', 'secret'),
(17, 'Miss Kenyatta Legros IV', 'skylar15@hotmail.com', 'secret'),
(18, 'Eleanora DuBuque', 'kautzer.alexis@gorczany.com', 'secret'),
(19, 'Avery Boyle', 'bheidenreich@brakus.com', 'secret'),
(20, 'Carlo Lueilwitz', 'zackary.parker@turner.biz', 'secret'),
(21, 'Mr. Marcus Schneider', 'llewellyn13@torphy.org', 'secret'),
(22, 'Janae Hoppe', 'grimes.claudia@dietrich.biz', 'secret'),
(23, 'Lucy Labadie', 'nasir.strosin@kub.com', 'secret'),
(24, 'Bill Beier', 'dkeeling@gmail.com', 'secret'),
(25, 'Prof. Brandy Ritchie', 'predovic.lonie@hotmail.com', 'secret'),
(26, 'Ms. Tiffany Kuhlman MD', 'cormier.georgianna@hotmail.com', 'secret'),
(27, 'Dr. Anna Stokes Jr.', 'wleuschke@gmail.com', 'secret'),
(28, 'Araceli Lind', 'fahey.dana@krajcik.com', 'secret'),
(29, 'Prof. Damien Runolfsdottir DDS', 'roman67@yahoo.com', 'secret'),
(30, 'Mafalda Von', 'alfredo.lindgren@windler.com', 'secret'),
(31, 'Dr. Albert Bruen Sr.', 'adolphus19@stanton.biz', 'secret'),
(32, 'Prof. Favian Runolfsson DVM', 'cedrick.becker@marks.org', 'secret'),
(33, 'Gino Ledner', 'purdy.gaylord@adams.com', 'secret'),
(34, 'Miss Britney Walker', 'lorna65@kuhic.com', 'secret'),
(35, 'Gerardo Toy', 'aufderhar.kasandra@hotmail.com', 'secret'),
(36, 'Mrs. Leonora Prosacco', 'sallie.orn@hotmail.com', 'secret'),
(37, 'Alysson Herzog PhD', 'chelsey.kiehn@gislason.com', 'secret'),
(38, 'Dr. Wilfred Leuschke', 'gdietrich@ledner.com', 'secret'),
(39, 'Carleton Friesen', 'rhoda86@gmail.com', 'secret'),
(40, 'Jordy Lehner', 'joana.botsford@hotmail.com', 'secret'),
(41, 'Carole Price', 'hans.dibbert@yahoo.com', 'secret'),
(42, 'Ms. Albina Zulauf III', 'bertram95@bernhard.org', 'secret'),
(43, 'Dr. Leilani Hudson III', 'kuhic.claudine@yost.com', 'secret'),
(44, 'Andre Hessel', 'ellsworth.kovacek@weber.biz', 'secret'),
(45, 'Alexandrea Farrell', 'ebert.dortha@hotmail.com', 'secret'),
(46, 'Maurine Bartell', 'okeefe.joy@gmail.com', 'secret'),
(47, 'Laney Cummerata', 'jacinthe.gleason@herman.com', 'secret'),
(48, 'Jamarcus Weissnat', 'marion30@rodriguez.com', 'secret'),
(49, 'Chadd Grady', 'dell88@jones.com', 'secret'),
(50, 'Ambrose Kunze', 'kgutkowski@hotmail.com', 'secret'),
(51, 'Parker Goldner', 'turner.rosie@berge.com', 'secret'),
(52, 'Jerad Murray I', 'farrell.gaylord@yahoo.com', 'secret'),
(53, 'Mrs. Ethelyn Terry Jr.', 'theresia92@hotmail.com', 'secret'),
(54, 'August Kemmer', 'molly.walker@streich.com', 'secret'),
(55, 'Manuel Lakin', 'destini90@bergnaum.info', 'secret'),
(56, 'Iva Botsford', 'ljerde@gmail.com', 'secret'),
(57, 'Aryanna Stracke', 'jschaefer@hotmail.com', 'secret'),
(58, 'Bartholome Mann', 'jevon.kessler@hotmail.com', 'secret'),
(59, 'Autumn Breitenberg', 'blanche.rosenbaum@jacobs.com', 'secret'),
(60, 'Kevon Metz', 'runte.sabrina@bednar.net', 'secret'),
(61, 'Rosario Breitenberg', 'rashawn64@carroll.org', 'secret'),
(62, 'Betsy Bartoletti', 'juvenal53@schowalter.net', 'secret'),
(63, 'Garrison Dickinson', 'eichmann.darion@yahoo.com', 'secret'),
(64, 'Isidro Satterfield', 'marisol03@lueilwitz.com', 'secret'),
(65, 'Jaylin Larkin Sr.', 'gottlieb.jaron@yahoo.com', 'secret'),
(66, 'Ellsworth Marquardt', 'kathryn.mann@yahoo.com', 'secret'),
(67, 'Jalon Bauch', 'vlockman@von.com', 'secret'),
(68, 'Dr. Jeffry Conn Jr.', 'blaise37@gmail.com', 'secret'),
(69, 'Dr. Clay Kuhic', 'helena45@yahoo.com', 'secret'),
(70, 'Michael Swift IV', 'joelle.corkery@doyle.com', 'secret'),
(71, 'Mr. Lorenza Mohr', 'frederick72@krajcik.com', 'secret'),
(72, 'Dr. Arnold Bruen MD', 'kirk30@hoeger.com', 'secret'),
(73, 'Arturo Skiles V', 'wilkinson.bernard@schimmel.org', 'secret'),
(74, 'Amira Renner Sr.', 'denesik.guiseppe@rau.com', 'secret'),
(75, 'Amanda O\'Hara', 'zwitting@goodwin.org', 'secret'),
(76, 'Phyllis Mitchell', 'sbeatty@yahoo.com', 'secret'),
(77, 'Alejandra Fadel', 'armand.howell@yahoo.com', 'secret'),
(78, 'Prof. Damian Wilkinson MD', 'destany.brakus@runolfsson.com', 'secret'),
(79, 'Alexandrea Simonis', 'alek55@shanahan.com', 'secret'),
(80, 'Maximillia Buckridge V', 'swaniawski.elna@moen.net', 'secret'),
(81, 'Mr. Javier Miller', 'tobin.mueller@yahoo.com', 'secret'),
(82, 'Kianna Goodwin', 'maureen84@hotmail.com', 'secret'),
(83, 'Cyril Murphy MD', 'luther.crona@hotmail.com', 'secret'),
(84, 'Briana Schiller', 'gonzalo.rau@hotmail.com', 'secret'),
(85, 'Rhett Howe I', 'ona.oreilly@yahoo.com', 'secret'),
(86, 'Mrs. Edwina Satterfield', 'pvolkman@brakus.com', 'secret'),
(87, 'Janiya Price', 'wyman.reese@gmail.com', 'secret'),
(88, 'Corene Osinski', 'robel.alaina@stanton.org', 'secret'),
(89, 'Blake Koch', 'yschinner@yahoo.com', 'secret'),
(90, 'Mrs. Domenica Stamm IV', 'dsawayn@ward.com', 'secret'),
(91, 'Dr. Velda Wyman', 'kshlerin.alexys@hotmail.com', 'secret'),
(92, 'Dr. Wiley Schmeler I', 'cartwright.jarrett@gmail.com', 'secret'),
(93, 'Dr. Katheryn Bayer I', 'mrau@medhurst.com', 'secret'),
(94, 'Tevin Feest', 'bkoss@gmail.com', 'secret'),
(95, 'Zachariah Marks', 'swaniawski.rowland@dare.org', 'secret'),
(96, 'Brando Ledner Jr.', 'chadd.bruen@hotmail.com', 'secret'),
(97, 'Abigail Stroman', 'mae60@casper.com', 'secret'),
(98, 'Karen Mraz PhD', 'rita84@christiansen.com', 'secret'),
(99, 'Mr. Osbaldo Hayes', 'beahan.domingo@waters.org', 'secret'),
(100, 'Marta Satterfield', 'kathryn.kuvalis@jacobs.biz', 'secret'),
(101, 'New', 'new@gmail.com', 'secret'),
(102, 'Maschine', 'maschine@gmail.com', 'secret'),
(103, 'Traktor', 'traktor@gmail.com', 'secret'),
(104, 'Komplete', 'komplete@gmail.com', 'secret'),
(105, 'Kontakt', 'kontakt@gmail.com', 'secret'),
(106, 'Reaktor', 'reaktor@gmail.com', 'secret');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
