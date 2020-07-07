-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 07:42 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

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
(1, '2020_07_07_110843_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `description`, `inventory`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Olin Rau', '2964456802466', 'Dolorem reiciendis tempora soluta eum. Necessitatibus voluptatum fuga omnis at non et aut nobis. Consequatur minima in a reiciendis consequatur unde veniam.', 10, 1, '2016-08-15 09:46:38', '2020-07-07 11:56:19'),
(2, 'sadasdd', '8069309092422', 'Minus facere sed mollitia aut quia. Et eos sit quisquam reprehenderit quia vero. Et eum ipsa consequatur molestiae dolorum rerum soluta.', 333, 1, '2019-08-02 04:15:57', '2020-07-07 11:53:46'),
(3, 'Keshaun Gaylord', '5017212903536', 'Autem nulla doloribus autem consequatur magni. Velit eos incidunt voluptatem nam aliquam. Error unde eveniet fuga velit.', 8, 1, '2017-08-16 20:04:30', '2020-07-07 08:19:28'),
(4, 'Michel Kerluke', '1440347140820', 'Esse earum est porro qui velit. Aut omnis cum error accusantium rerum earum distinctio omnis. Quis dolorem quisquam incidunt est iusto est et omnis.', 2, 1, '2016-10-26 11:55:54', '2020-07-07 08:19:28'),
(5, 'Mrs. Georgianna Heller', '6872332442223', 'Esse tempore deleniti unde. Voluptatem quasi nisi et veniam qui commodi et. Quam id eligendi et.', 8, 1, '2019-02-28 02:18:10', '2020-07-07 08:19:28'),
(6, 'Mr. Chadd Legros IV', '0561407839056', 'Illum voluptatibus eos quo. Aliquam odit ipsam iusto aut. Non voluptatibus rerum excepturi tempore. Consequatur reprehenderit qui occaecati cumque omnis.', 6, 1, '2019-02-04 05:55:30', '2020-07-07 08:19:28'),
(7, 'Sonya Koelpin', '0634461974268', 'Enim commodi autem ab iure adipisci ab. Unde dicta error et omnis quibusdam reprehenderit aut. Maiores eos quas necessitatibus sint sit nam id.', 6, 1, '2018-03-25 10:26:11', '2020-07-07 08:19:28'),
(8, 'Otis Powlowski', '1819643106852', 'Et omnis et ad eum doloribus ut saepe. Culpa perferendis ipsum quaerat. Ex soluta nemo nulla omnis nostrum. Et consectetur aut repellat soluta.', 3, 1, '2016-01-22 13:08:57', '2020-07-07 08:19:28'),
(9, 'Rory Green', '7403616961988', 'Enim distinctio itaque quasi blanditiis dolor rerum. Sint molestiae velit culpa facilis.', 1, 1, '2019-04-01 03:38:39', '2020-07-07 08:19:28'),
(10, 'Mr. Howard Mayer', '8162010319960', 'Laborum omnis nobis est assumenda dicta harum. Ad cumque corporis aliquid est sint et dolorem. Ut voluptatem quo architecto sint ex rerum. Et eos molestiae omnis in accusamus soluta et. Dolore iste et aut voluptatum.', 4, 1, '2020-02-25 19:27:57', '2020-07-07 08:19:28'),
(11, 'Francesco Dare', '0770914769514', 'Doloribus nobis et eum amet assumenda. Suscipit quidem itaque ullam voluptate soluta nemo. Quas odio esse quaerat. Tempora et fugiat illo et modi velit necessitatibus. Eos impedit optio quia magnam pariatur molestiae.', 1, 1, '2017-02-25 18:06:03', '2020-07-07 08:19:28'),
(12, 'Dr. Clark Hansen', '3676977274576', 'Minima dolores deleniti deserunt rem. Aut placeat placeat fugiat aut voluptatem atque. Perspiciatis quidem quasi impedit quis accusantium iste dolorum.', 7, 1, '2018-03-02 02:27:48', '2020-07-07 08:19:28'),
(13, 'Ofelia Sauer', '9620881432762', 'Qui est quo et necessitatibus illum sed. Praesentium excepturi tempore iure.', 3, 1, '2016-06-03 11:14:23', '2020-07-07 08:19:28'),
(14, 'Dr. Dexter Hane I', '9325051102635', 'Voluptatibus totam quidem velit ab ut non natus. Fuga delectus omnis unde voluptatum quaerat beatae aspernatur et. Fugiat dignissimos consequuntur sed quo cupiditate.', 9, 1, '2018-11-12 13:09:13', '2020-07-07 08:19:28'),
(15, 'Devonte Roob', '7251246397130', 'Placeat sed illo assumenda quia cumque rerum. Assumenda in officia alias dicta a quidem. Illo omnis dolorum voluptas veritatis voluptas officiis dolor.', 7, 1, '2016-04-01 10:18:13', '2020-07-07 08:19:28'),
(16, 'Macey Bayer', '7414277992570', 'Et corrupti molestiae cum ipsam. Voluptas quia sit amet qui maiores. Ratione dolores iure voluptate libero totam alias. Quo facilis aperiam ut omnis architecto quidem quam harum.', 8, 1, '2017-07-21 07:35:55', '2020-07-07 08:19:28'),
(17, 'Velva Hoeger', '6883506143136', 'Unde labore explicabo repudiandae blanditiis voluptas. Nihil dolorem reprehenderit facere repudiandae molestias aut quibusdam. Nemo debitis libero esse tempora est facilis ea.', 9, 1, '2019-10-01 03:50:58', '2020-07-07 08:19:28'),
(18, 'Elmo Kreiger', '6880454480214', 'Et totam similique nisi sint inventore. Consequatur cumque ullam voluptas culpa impedit consequatur. Aut nesciunt impedit aperiam est. Eos non placeat ullam dolorem ipsum suscipit eveniet.', 9, 1, '2015-11-29 19:56:45', '2020-07-07 08:19:28'),
(19, 'Miss Carolanne Davis IV', '8054790049253', 'Voluptatem voluptatum quos facere non quo. Quibusdam eligendi sapiente qui placeat voluptatem reiciendis. Rerum voluptas quia quo repellendus dolor dolores. Est id illum dolore voluptates quisquam error repudiandae.', 2, 1, '2017-05-13 07:00:36', '2020-07-07 08:19:28'),
(20, 'Letha Marvin PhD', '2661146951403', 'Sunt praesentium blanditiis vel et provident rerum minima. A dicta aut delectus et aut consequatur quo. Accusamus nulla et nihil dicta nihil repellat. Dolorem ratione eum et aliquam et doloribus aliquid.', 7, 1, '2017-06-29 19:16:01', '2020-07-07 08:19:28'),
(21, 'sdasdasd', 'JNGBR1TM3O', 'dasdas', 22, 1, '2020-07-07 15:41:06', NULL),
(22, 'ewew', '4Q813I2DJ6', 'ewewe', 3, 1, '2020-07-07 15:44:35', NULL),
(23, 'sdsa', '92863N8YTM', 'sdsda', 4, 1, '2020-07-07 15:47:32', NULL),
(24, 'sdsa', 'H5NUZROX9W', 'sdsda', 4, 1, '2020-07-07 15:47:56', NULL),
(25, 'dwfesrgdthf', 'NQ9S7WRGB3', 'sdfgh', 3, 1, '2020-07-07 15:48:04', NULL),
(26, 'ssasas', '1ORZL7JQE4', 'sasas', 0, 1, '2020-07-07 17:17:13', '2020-07-07 11:48:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
