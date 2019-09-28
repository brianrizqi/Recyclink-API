-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2019 at 01:17 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.1.29-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recyclelink`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `resi` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `title`, `price`, `stock`, `category_id`, `description`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 'Jual Nemo architecto dolor hic sequi et quisquam.', 2193, 770, 3, 'Deserunt deleniti eos et quia suscipit ut corporis. Iste officiis laboriosam minima animi ex. Quis tempore tempora maiores illo earum voluptatem qui consequatur.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(2, 7, 'Jual Velit et dolor dolor id assumenda optio optio.', 5571, 763, 1, 'Magnam quo odit ut molestiae. Praesentium dignissimos quis est. Nobis sunt sint pariatur reiciendis aut odit qui. Voluptatibus maxime impedit corporis aut dolores dicta adipisci sed.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(3, 6, 'Jual Consectetur quia at sed odit reiciendis.', 1971, 110, 1, 'Adipisci qui nostrum est quia fuga qui quia. Nesciunt quae omnis rerum deserunt recusandae et.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(4, 9, 'Jual Aut et excepturi qui iste sit et nisi veniam.', 7956, 790, 1, 'Amet deserunt laudantium cupiditate ab facere et. Sequi aut est eos aut. Ut distinctio corporis deserunt dolor.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(5, 12, 'Jual Dolor consequatur nisi minima iusto blanditiis.', 6446, 804, 1, 'Deserunt voluptas ea iure maiores nihil eum delectus. Voluptates ipsum consequuntur ducimus et consequatur non. Repellendus impedit nam voluptas quibusdam delectus et illo ea.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(6, 19, 'Jual Veniam velit earum deserunt amet.', 6768, 246, 3, 'In ut aut praesentium aspernatur id unde. Quasi in autem odio quia saepe hic quia ullam. Facere provident velit rerum in commodi quibusdam qui.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(7, 17, 'Jual Porro quo tempora ut reiciendis.', 7679, 332, 2, 'Sapiente ut dolor consequatur molestias. Dicta nisi et ducimus quia sapiente assumenda. Blanditiis labore velit atque error et non libero consequatur. Est accusantium maxime et.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(8, 6, 'Jual Molestiae quibusdam neque odio nam molestiae.', 8281, 378, 1, 'Quo non et at voluptatem qui sit labore. Facere provident repudiandae maiores fuga. Sunt distinctio impedit iste itaque quia. Qui quo in aut quia ratione.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(9, 7, 'Jual Velit sapiente sit nulla voluptates quam.', 4033, 284, 3, 'Quos necessitatibus officia modi excepturi molestias cupiditate. Et eos et nesciunt voluptas ipsam.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(10, 14, 'Jual Nesciunt dolorum qui aliquam minus.', 4592, 251, 2, 'Sequi accusantium sed vero iste recusandae vel voluptatem. Sit dolorem dolor accusamus quae minima reprehenderit. Saepe sapiente ratione aut modi explicabo libero ratione.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(11, 4, 'Jual Rerum voluptatibus commodi incidunt neque.', 4526, 468, 3, 'Tenetur ea ipsa veritatis quidem sunt quos. Et voluptatem aliquid atque culpa. Est cum eum modi perspiciatis facere pariatur. Explicabo ab autem sint modi iure saepe numquam.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(12, 7, 'Jual Rerum quidem corrupti officia delectus.', 7188, 219, 2, 'Illo adipisci natus quia corporis aspernatur corrupti iure. Similique nihil unde et at. Iure ipsa ipsa eius est velit aut. Tempore sunt accusantium odio exercitationem.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(13, 2, 'Jual Officia non cupiditate architecto sit.', 7124, 910, 1, 'Facere odio saepe voluptatum omnis veritatis maxime non distinctio. Quo dolorem iusto repellat aspernatur sed. Ut tempora fugit modi aliquam.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(14, 13, 'Jual Omnis facilis dolorum non.', 8259, 656, 3, 'In esse doloribus a quidem beatae sit ab. Inventore officiis in mollitia quas ut nam vero. Illo sint et reprehenderit error dolor.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(15, 10, 'Jual Eos quisquam qui magnam assumenda.', 5371, 28, 2, 'Doloremque neque necessitatibus quo cupiditate. Placeat accusamus ea ut quae distinctio. Sit soluta qui illum nam nostrum. Non quasi aut et id assumenda tempora eum.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(16, 16, 'Jual Voluptatem saepe enim eaque sunt et dolorum.', 7019, 600, 1, 'Quis iste amet quo qui. Et inventore et omnis facere voluptas. Rerum occaecati nihil et architecto.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(17, 6, 'Jual Ducimus alias aut quidem totam debitis.', 4667, 43, 3, 'Et amet quaerat ut. Eum dolorum asperiores ea quis occaecati labore. Dolor nihil sed molestiae ratione aut. Eum dolores sequi architecto quas fugit.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(18, 19, 'Jual Aliquam rerum occaecati esse odio corporis.', 8503, 386, 2, 'Hic libero et enim eos et. Laborum dolorem quis et eum sed. Sint aut reiciendis modi non tempora libero ab. Laudantium ex aut dicta doloribus et architecto atque in.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(19, 13, 'Jual Sit eius placeat voluptate nam aut.', 2740, 220, 2, 'Delectus odit illo et est. Illo commodi neque quisquam accusantium maxime. Sunt molestiae omnis enim non.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(20, 11, 'Jual Dolores repudiandae vitae et quae.', 5750, 744, 1, 'Quas dolor possimus est nemo fugiat necessitatibus. Culpa recusandae mollitia ut sit dicta. Officia tempore non officia recusandae. Libero illum non iste autem consequuntur.', NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL);

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
(1, 'baju', 'Baju', NULL, NULL, NULL),
(2, 'celana', 'Celana', NULL, NULL, NULL),
(3, 'sepatu', 'Sepatu', NULL, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `recycles`
--

CREATE TABLE `recycles` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `stock` double NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recycles`
--

INSERT INTO `recycles` (`id`, `user_id`, `category_id`, `title`, `stock`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 5, 'Jual Incidunt provident ullam non.', 598, 3175, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(2, 7, 2, 'Jual Velit animi sint dicta necessitatibus.', 237, 7287, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(3, 11, 2, 'Jual Vitae aut quia sunt nesciunt tempora et.', 294, 5796, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(4, 14, 1, 'Jual Et incidunt in sunt laudantium.', 119, 9348, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(5, 3, 1, 'Jual Pariatur aliquid ab qui et.', 230, 4212, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(6, 2, 1, 'Jual Sed sit ut laudantium aut et excepturi hic.', 168, 9902, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(7, 8, 3, 'Jual Sit totam sit est consectetur cumque culpa alias.', 661, 4593, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(8, 10, 2, 'Jual Quisquam ad eos mollitia est tenetur.', 689, 7758, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(9, 5, 2, 'Jual Rerum a molestiae iste dolores eum velit.', 232, 7977, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(10, 8, 3, 'Jual Autem asperiores et consequatur.', 270, 2130, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(11, 18, 5, 'Jual Quo aperiam esse aut sunt voluptatem qui hic et.', 174, 4650, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(12, 14, 5, 'Jual At voluptas eveniet aut.', 697, 3701, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(13, 4, 4, 'Jual Tempore beatae quaerat vel architecto ducimus.', 421, 2322, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(14, 18, 5, 'Jual Voluptates ut iste at eveniet non optio.', 227, 5417, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(15, 2, 4, 'Jual Labore voluptatibus et aut qui velit illo ipsa.', 239, 9327, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(16, 9, 4, 'Jual Ratione exercitationem error ea quibusdam omnis.', 271, 5183, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(17, 19, 4, 'Jual Quam inventore quae aliquid ut est et et.', 148, 2868, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(18, 19, 1, 'Jual Nobis et totam ab recusandae quo.', 922, 4438, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(19, 6, 1, 'Jual Necessitatibus quam repellat odit rerum impedit.', 363, 1638, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL),
(20, 15, 1, 'Jual Eaque eveniet et rerum hic.', 733, 8791, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recycle_categories`
--

CREATE TABLE `recycle_categories` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recycle_categories`
--

INSERT INTO `recycle_categories` (`id`, `category`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plastik', 'Plastik', NULL, NULL, NULL),
(2, 'botol_bekas', 'Botol Bekas', NULL, NULL, NULL),
(3, 'kardus', 'Kardus', NULL, NULL, NULL),
(4, 'kain', 'Kain', NULL, NULL, NULL),
(5, 'kaca', 'Kaca', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recycle_orders`
--

CREATE TABLE `recycle_orders` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `recycle_id` bigint(20) NOT NULL,
  `quantity` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Hillary Reinger Sr.', 'genevieve68', 'jacobson.afton@schmeler.com', '$2y$10$zBTa9t4tjqFgdbk6RZLYmumnL7s5voi5W.DLa4YNFT1JuA20si5Qe', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:30', '2019-09-28 06:16:30', NULL),
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
(20, 'Sarina Kreiger', 'gerald98', 'fmcglynn@hotmail.com', '$2y$10$0qRcY/ArwSoGAWAjBr3wwez1vgAkIrkQuIhaqmNJsm4W05A1jhnua', 3, NULL, NULL, NULL, NULL, '2019-09-28 06:16:31', '2019-09-28 06:16:31', NULL);

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
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

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
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `recycle_orders_ibfk_2` (`recycle_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
  ADD CONSTRAINT `recycles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recycles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `recycle_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recycle_orders`
--
ALTER TABLE `recycle_orders`
  ADD CONSTRAINT `recycle_orders_ibfk_1` FOREIGN KEY (`recycle_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recycle_orders_ibfk_2` FOREIGN KEY (`recycle_id`) REFERENCES `recycles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
