-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2019 at 06:23 AM
-- Server version: 10.1.41-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recyclink`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `total_price` bigint(20) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `courier` varchar(255) NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `resi` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `total_price`, `alamat`, `district_id`, `courier`, `payment`, `resi`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(35, 23, 150000, 'jember', NULL, 'jne', NULL, 'BBB17172', 3, '2019-10-03 05:22:55', '2019-10-03 06:22:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT 'https://imgflip.com/s/meme/Mocking-Spongebob.jpg',
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `description` text,
  `rating` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `title`, `thumbnail`, `price`, `stock`, `category_id`, `description`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 'Jual Baju Bekas', 'https://media.karousell.com/media/photos/products/2018/03/30/baju_bekas_1522399354_3328b5ee.jpg', 2193, 770, 3, 'Deserunt deleniti eos et quia suscipit ut corporis. Iste officiis laboriosam minima animi ex. Quis tempore tempora maiores illo earum voluptatem qui consequatur.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(2, 7, 'Jual sandal', 'https://s1.bukalapak.com/img/6566368463/original/20181020_160625_scaled.jpg', 5571, 763, 1, 'Magnam quo odit ut molestiae. Praesentium dignissimos quis est. Nobis sunt sint pariatur reiciendis aut odit qui. Voluptatibus maxime impedit corporis aut dolores dicta adipisci sed.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(3, 6, 'Jual Tas Bekas Promax', 'https://media.karousell.com/media/photos/products/2016/08/23/tas_dari_barang_bekas_1471928953_1c1d4bac.jpg', 1971, 110, 1, 'Adipisci qui nostrum est quia fuga qui quia. Nesciunt quae omnis rerum deserunt recusandae et.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(4, 9, 'Gelang barang bekas', 'https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/u1iaGb3ZtR.jpg', 7956, 790, 1, 'Amet deserunt laudantium cupiditate ab facere et. Sequi aut est eos aut. Ut distinctio corporis deserunt dolor.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(33, 23, 'jual jaket bekas', 'http://recyclink.miqdad.codes/storage/assets/products/eHDGhxLxn3sFSP5T.', 150000, 10, 1, 'jaket bagus buatan amerika', 0, '2019-10-03 05:22:34', '2019-10-03 05:22:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pakaian', 'Pakaian', NULL, NULL, NULL),
(2, 'dekorasi', 'Dekorasi', NULL, NULL, NULL),
(3, 'tas', 'Tas', NULL, NULL, NULL),
(4, 'furniture', 'Furniture', NULL, NULL, NULL),
(5, 'tas', 'Tas', NULL, NULL, NULL),
(6, 'lainnya', 'Lainnya', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `invoice_id`, `product_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 35, 33, 1, '2019-10-03 05:22:55', '2019-10-03 05:22:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recycles`
--

CREATE TABLE `recycles` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `recycle_order_id` bigint(20) NOT NULL,
  `stock` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recycle_categories`
--

CREATE TABLE `recycle_categories` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recycle_categories`
--

INSERT INTO `recycle_categories` (`id`, `category`, `title`, `price`, `thumbnail`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plastik', 'Plastik', 1000, 'https://asset.kompas.com/crops/ck0PHZBsaZ480qYACyxKrGDuBj4=/0x0:0x0/750x500/data/photo/2016/09/13/1943498Plastikp.jpg', NULL, NULL, NULL),
(2, 'botol_bekas', 'Botol Bekas', 2000, 'https://turtledaycare.files.wordpress.com/2015/01/1811074_botol330mla.jpg?w=540', NULL, NULL, NULL),
(3, 'kardus', 'Kardus', 3000, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2017/7/4/20442116/20442116_41654c73-78bf-4140-944b-b17675b6c337_505_300.png', NULL, NULL, NULL),
(4, 'kain', 'Kain', 2500, 'https://docplayer.info/docs-images/65/52840129/images/3-0.jpg', NULL, NULL, NULL),
(5, 'kaca', 'Kaca', 7000, 'http://rizkybeling.com/wp-content/uploads/2019/01/stok-kaca-1024x768.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recycle_orders`
--

CREATE TABLE `recycle_orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `total_price` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recycle_orders`
--

INSERT INTO `recycle_orders` (`id`, `user_id`, `total_price`, `quantity`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 0, 0, 1, '2019-10-03 02:47:50', '2019-10-03 02:47:50', NULL),
(2, 23, 7000, 1, 1, '2019-10-03 05:10:34', '2019-10-03 05:10:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `role` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `title`) VALUES
(1, 'admin', 'Admin'),
(2, 'mitra', 'Mitra'),
(3, 'customer', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `role_id`, `email_verified_at`, `verification_code`, `remember_token`, `api_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hillary Reinger Sr.', 'a', 'miqdad.farcha@gmail.comasd', '$2y$10$zBTa9t4tjqFgdbk6RZLYmumnL7s5voi5W.DLa4YNFT1JuA20si5Qe', 2, '2019-09-28 06:44:21', NULL, NULL, 'xiZMTqnrphRCSqen', '2019-09-28 06:16:30', '2019-10-03 04:57:12', NULL),
(2, 'Ruth Moen', 'ukreiger', 'cronin.anne@rolfson.com', '$2y$10$uSv4K9qvy5YwLjopTMJH6eK5fMLbxx3SXX7ikHSLmu78apqKB/Oju', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(3, 'Greta Goldner', 'schultz.mary', 'zthompson@altenwerth.net', '$2y$10$D8pSKd8J/H1Exc7xkdIDuu4LTChViDYNlQ4BZ309Qlc6MkBVFvMmS', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(4, 'Timmothy Heidenreich', 'stroman.nikita', 'lessie09@turner.net', '$2y$10$wusFfUrf2O953jfb5IGTquf1Y3AKhoata7gFCyiuM8T3SRelpp1HK', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(5, 'Grace Parker I', 'elsa.hill', 'elvis73@thompson.com', '$2y$10$I3GM5qdAEvu2hxNWhRLlke7SPJbgNWVvHn2Eq5SqaXqAi0w21.FTa', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(6, 'Kirstin Dach', 'jayde.gusikowski', 'glowe@hotmail.com', '$2y$10$evk6brkhK9pO0/VCQLJGFeuocJzudVGgUU0saul9OhPJ1uR250VT6', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(7, 'Miss Melody Mertz MD', 'gutmann.robert', 'adams.elza@yahoo.com', '$2y$10$2q7w8torfSURVFUXVOMVQuk0FvhWVYq.U8oivUisQU1HUrZXk0zxG', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(8, 'Alanna Pfannerstill', 'deontae.murray', 'jadyn99@sawayn.com', '$2y$10$mLWOPogyzbH4u/.QBHdzLuUoSZ5kKUpZs3EchRLL2pkebvwt2dk46', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(9, 'Tremaine Oberbrunner', 'keenan.wisozk', 'spencer.freda@hotmail.com', '$2y$10$JyQyOIIjSq8QkKofOJDd9eO/PNoci0Rc6YYaJ11W4maecOlA81Ybi', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(10, 'Lucile Mohr', 'katherine.kshlerin', 'carlo.johnston@hotmail.com', '$2y$10$GtIOB.HtWpoPMcixIbcFFuHzTdj/9t2a4htmmxgy.g2JxjEBHGSI6', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
(11, 'Katrina Mann', 'bschroeder', 'kuhn.mariela@hotmail.com', '$2y$10$KWhurN/94gR6MtHgsgKfPe8dw7sB17kwTM/0n3ht5SbYDOH6IvVXO', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(12, 'Raphael Johns', 'loyal.littel', 'hbosco@hotmail.com', '$2y$10$3L8bV40C3/xhusGm0QrkGeqosbmWF/1op4RoXTIhMoMatyFJdIZCa', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(13, 'Ms. Tierra Ferry', 'schultz.earline', 'elna.prohaska@schaefer.net', '$2y$10$5qLalH.3xxtoQKSTd/Qh5e5denLQJrdHxKMAAHwUz0Uym..MhiWam', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(14, 'Mr. Armani Rosenbaum', 'roob.orlo', 'homenick.dagmar@reichel.com', '$2y$10$vfMwh5KxpSk1PIxDnLY9gO/Yg11EMCKBu7sfXwbYD2bJQpR8z5666', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(15, 'Mrs. Eldridge Batz', 'tdicki', 'pablo11@gmail.com', '$2y$10$YkPen0PNq.Kie3QLMV97A.b4N.8G2kI7XRfn/pc9y2Zm5.n3HuEmO', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(16, 'Prof. Heloise Larkin', 'karlee.robel', 'sporer.sigrid@yahoo.com', '$2y$10$B16cRHNBVQQ0kWI2wsgCh.9xDbFvBi5k1.fo1lxyHAuTNar7vcMc6', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(17, 'Mr. Jamie Beer', 'dkuhic', 'kemmer.otto@gmail.com', '$2y$10$Qc6iXTHcwlvP14f6z20IJO48HYtLiNvFaskTz9UT7WeFfS2Q5NS7O', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(18, 'Dr. Jules Konopelski', 'yundt.nedra', 'kelton.vandervort@metz.net', '$2y$10$WCTyF8DY3koinXk0UIjk1.91yYo5YHfCCZZc6IhsSTybZrCTQ9BZq', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(19, 'Madilyn Goodwin', 'melyssa.cummings', 'dexter.jaskolski@yahoo.com', '$2y$10$VPHaei2s8RsGJZnFNGKaiuAMmsHwOtZoI7y9yaaQY7bk129/gsoOG', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(20, 'Sarina Kreiger', 'gerald98', 'fmcglynn@hotmail.com', '$2y$10$0qRcY/ArwSoGAWAjBr3wwez1vgAkIrkQuIhaqmNJsm4W05A1jhnua', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(23, 'brian rizqi', 'brianrizqi', 'rizqibrian27@gmail.com', '$2y$10$W.zGyidJfakZEyHucSnd7..nV0PCBIfqkrRRx4/Ub/mL/ncRXiAaO', 2, NULL, 'LPEb9QCan3SDf5lfE2Qt8voDh40l2FGh', NULL, 'kwvCNXUX7yCGSAAc', '2019-09-30 06:07:06', '2019-10-02 08:58:07', NULL),
(24, 'Wisnuds', 'Wisnu Dewa', 'wisnuudewa5@gmail.com', '$2y$10$87uIdwC1mitJwz4W1vEtLu6iFJa76q0wNhyAq4EHNVd27w9eEvET2', 3, NULL, 'uywJRwBRj4qwzg1LisUsSAl2A0tiH46u', NULL, 'kC5f5LV01KqxwKi7', '2019-10-01 01:13:28', '2019-10-01 19:40:44', NULL),
(25, 'Miqdad Yanuar Farcha', 'miqdadyyy', 'miqdad.farcha@gmail.com', '$2y$10$LYA7341Jk32QCIvKP7qKqOABEBRorOOkOLVAlshyNvRaU8IG3KCsG', 2, NULL, 'RtsFgqzRhIvO2MVZ5dcv5b6jUi8WQyIf', NULL, 'vCtjAWiapgYKJwA3', '2019-10-01 02:34:34', '2019-10-02 05:20:22', NULL),
(26, 'asif', 'asif', 'mokhamadasif@gmail.com', '$2y$10$wpFkCOtzr8gqc84xXwi3pOBdVGFcNeAFYASaLG3jW3tROP8S.7EOC', 3, NULL, 'wAbjT6nXG7dGHKDLALLxnyqk39Q57d1l', NULL, 'mSZJcTwBvusVIudA', '2019-10-01 04:15:17', '2019-10-01 04:15:28', NULL),
(27, 'dyah ayuniningtyas', 'dyah', 'dyahtyas@gmail.com', '$2y$10$0FHaZwPKT2eb/PV1wSaW2.1123KQ.a7RSqxjWMM1sLqFcUsOWDD/S', 3, NULL, 'V7sSWf3fENebD5LUYPhEtAZbm7C6lAkQ', NULL, 'nrlBUZmcrvRDSdW7', '2019-10-01 04:25:03', '2019-10-02 22:58:15', NULL),
(28, 'yyyyyy', 'yyyyyy', 'miqdadyyyy@gamail.com', '$2y$10$T2YyHph8VMlR4wAhr/8cmeaJ5moI/OnciPSLtNEm7gq4wYfsOQgSu', 2, NULL, '1UjX18qSUewtfoGWfcQwlowPetLWgkhQ', NULL, 'MgOllB7KHRcWRLWh', '2019-10-01 08:08:20', '2019-10-01 19:09:37', NULL),
(29, 'suci', 'suci', 'suci@gmail.com', '$2y$10$.CJP494.8wkxMX48fewjvupQMYsFDT.xKE8Ll4Ya.d5rFmgKLFRSu', 3, NULL, 'IDWLIClyKg8ts6oTATdsdg8EWBbUGBK7', NULL, NULL, '2019-10-01 08:09:20', '2019-10-01 08:09:20', NULL),
(30, 'customer', 'customer', 'dyahtyas7@gmail.com', '$2y$10$F/XPkuNM9EtsFgYyuk/ZRefA6RUuQ7J6.ZgKsIpu5MC8icvCfHZOC', 3, NULL, '35VFGOqv0qCN3avlCGuVuidy3i23t1Dj', NULL, 'vnxCSMaNkO8gFKwm', '2019-10-02 07:27:47', '2019-10-03 00:09:31', NULL),
(31, 'karya mandiri', 'karya mandiri', 'karya@gmail.com', '$2y$10$s5/WobwFXay7s9sBTrE3ZupfQMzgxxQQaUWJLtrd8mXfToeMI3GHC', 3, NULL, 'Md1FoFkiSTF0z1EoPRqDrSaHbLJeABwm', NULL, NULL, '2019-10-02 14:01:39', '2019-10-02 14:01:39', NULL),
(32, 'karya mandiri', 'karyaku', 'karyaku@gmail.com', '$2y$10$Lq2hv2Th97Dug6xinZ170eW8GZQgGuNENUqzMyt38ZG0CGT0vX3MW', 3, NULL, 'HHzfDq3ToV7A4H8wAPGngqbLAHrU8qfS', NULL, 'nfPHTi7v99AoiZMb', '2019-10-02 14:03:04', '2019-10-02 14:03:15', NULL),
(33, 'karya mandiri balung kulon', 'karyamandiri', 'karyamandiri@gmail.com', '$2y$10$Mtpye1eHG4gkEhO7esxJG.IT.AEYz/WMyfMHpDD9qvb2XZq5uY7Tm', 3, NULL, 'xse7rwTBR4HsKvJcBFtthAS2NMy897pL', NULL, 'u5PVuXzZWhTyR3Va', '2019-10-02 23:14:25', '2019-10-02 23:57:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `recycles`
--
ALTER TABLE `recycles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `recycle_order_id` (`recycle_order_id`);

--
-- Indexes for table `recycle_categories`
--
ALTER TABLE `recycle_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recycle_orders`
--
ALTER TABLE `recycle_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
  ADD KEY `users_ibfk_1` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `recycles`
--
ALTER TABLE `recycles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `recycle_categories`
--
ALTER TABLE `recycle_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `recycle_orders`
--
ALTER TABLE `recycle_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recycles`
--
ALTER TABLE `recycles`
  ADD CONSTRAINT `recycles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `recycle_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recycles_ibfk_3` FOREIGN KEY (`recycle_order_id`) REFERENCES `recycle_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recycle_orders`
--
ALTER TABLE `recycle_orders`
  ADD CONSTRAINT `recycle_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
