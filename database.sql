-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2021 at 04:49 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instinct_laravel`
--
CREATE DATABASE IF NOT EXISTS `instinct_laravel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `instinct_laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Et nesciunt eius qui sed voluptatibus repudiandae.', 'Ducimus repellendus id officia quasi tempore exercitationem amet. Doloremque impedit animi minima ad. Quas labore vero et est.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(2, 'Sed facere doloremque rerum accusamus sunt ea.', 'Et cupiditate similique dolores reiciendis. Alias est qui autem provident. Ducimus ipsum veritatis eum neque quis voluptas rem.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(3, 'Iste asperiores voluptatum magnam placeat id.', 'Repellat voluptas enim omnis enim asperiores optio consectetur. Error dolor ducimus ut asperiores est ducimus error.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(4, 'Ut accusantium modi autem minima fuga.', 'Reiciendis doloribus dolor animi magnam et ipsa architecto omnis. Non illo sapiente quidem molestiae et et. Et et earum quod culpa sapiente consequuntur. Nostrum dolores cupiditate libero aut et blanditiis consequuntur reprehenderit.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(5, 'Pariatur et aut eveniet ut quibusdam culpa et.', 'Maxime inventore iusto qui officia reprehenderit. Nulla optio minus et velit asperiores sequi. Ullam eligendi enim quos possimus iure dolor vel saepe. Voluptatem ut qui ut expedita.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(6, 'Dolore numquam vero vel molestiae.', 'Quas asperiores hic autem. Ad esse dolor nesciunt aut consequatur ut.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(7, 'Aperiam et ut atque ipsam nisi aut.', 'Et suscipit quas corrupti facilis aut et. Totam quo sit dolore perspiciatis ea harum at. Molestiae ut et explicabo sit. Qui dicta dolores voluptatum saepe nostrum odit et doloribus.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(8, 'Beatae veniam consequatur suscipit et sed recusandae.', 'Similique esse et dolorum ad et fugiat exercitationem. Impedit doloremque incidunt fugiat in beatae alias. Similique sapiente odio voluptas provident minima autem.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(9, 'Fugit vero nobis magnam et molestias.', 'Id aut eius explicabo non non earum. Omnis non optio tempore quia et molestias natus velit. Quas illo voluptates nisi ullam assumenda.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(10, 'Ipsum laboriosam voluptatum error praesentium quia.', 'Distinctio impedit et assumenda id. Tempora at saepe quasi deserunt. Laborum et saepe qui est dolor.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(11, 'Commodi ea quia sed rerum non.', 'Nobis ipsum qui maiores voluptatem. Dolor est nisi quo laudantium dolorem accusamus eligendi voluptas. In quo est non architecto sequi repudiandae adipisci voluptatem.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(12, 'Animi esse ut distinctio odit doloremque voluptatibus.', 'Enim occaecati blanditiis et id. Voluptate et earum cum rerum dolores ea sint. Et eligendi optio ipsum quos. Iure voluptatum tenetur nisi illum assumenda necessitatibus.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(13, 'Optio nemo consectetur eaque aliquam.', 'Nostrum perferendis nobis commodi. Voluptas omnis minima et voluptatem nihil voluptatem id. Omnis vel tempore blanditiis animi.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(14, 'Suscipit ad qui corrupti quibusdam consequatur.', 'Eum rem esse nemo quo rerum doloribus. Illo repellendus omnis aperiam et sit. Similique sunt consequuntur non alias aspernatur blanditiis.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(15, 'Error delectus voluptatem voluptas voluptas et vel commodi.', 'Blanditiis provident nihil dolores numquam ut eum. Et nihil voluptas et. Consequatur neque tempore consequatur dolores temporibus. Dolore et voluptates hic magnam temporibus error aspernatur.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(16, 'Voluptate alias alias ratione non sint voluptatem quod ipsa.', 'Enim mollitia vitae voluptatum pariatur eos. Ad excepturi enim et dolores. Consequatur excepturi optio magni ducimus sint praesentium blanditiis velit.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(17, 'Tempore aut deserunt ea earum quas quia est.', 'Nulla quo minima corporis illo ipsa ut deleniti. Rerum earum vel et illum et voluptatem corporis. Ipsa et aliquid officia.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(18, 'Sapiente ad quia nihil quia animi.', 'Dolor laborum nulla illum incidunt corporis qui non. Ea culpa et odio sed maiores dicta porro. Deserunt error eaque recusandae non.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(19, 'Voluptas nostrum laboriosam esse.', 'Vel voluptatum ut nihil aut voluptate. Illo dolores veritatis quia rem rerum. Similique repellat molestiae voluptatibus modi. Nemo itaque suscipit et accusantium delectus neque.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(20, 'Fugit reiciendis ea eius aut consequatur aut perspiciatis maiores.', 'Eaque consequatur et iste nihil eum dolorum. Et laboriosam et porro recusandae alias numquam aut. In veritatis est et esse soluta maiores itaque.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(21, 'Aut veniam in illum autem eum reprehenderit.', 'A inventore velit sint similique. Et tenetur similique provident quia tempora eaque. Libero odio aut eos deserunt non soluta.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(22, 'Optio officiis libero ut et iusto dolor iusto.', 'Asperiores voluptate voluptas reprehenderit et sit dolor. Voluptate dolorem alias ut facere perferendis. Dolorum est necessitatibus vitae cupiditate vitae est modi ea. Consequatur illum sed pariatur eligendi et.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(23, 'Molestiae quia veniam omnis magnam quisquam culpa voluptatibus.', 'Quisquam perspiciatis reiciendis laborum veniam similique quo. Id laudantium laborum veniam et possimus qui culpa. Exercitationem quasi facere aut consequatur cumque ipsum. Eum mollitia dolore rerum iusto pariatur quia.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(24, 'Laboriosam voluptatibus ratione sequi ab sapiente ipsa est.', 'Doloribus deserunt cupiditate veritatis accusantium dolorem. Fugit et aut enim sit enim eum iure. Voluptatem et quos occaecati eum dignissimos quia ea. Quos ea possimus qui enim unde autem autem.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(25, 'Ut labore quo unde neque.', 'Voluptas magni cupiditate nam illum non est ab dolorum. Exercitationem modi ad sint magnam nisi tempore. Iusto et aut id non ut voluptatem magni. Consequatur reprehenderit ipsum aut.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(26, 'Sint non dolore harum repellendus.', 'Dolore id quaerat enim quibusdam. Possimus dolorem enim ut. Nulla est aliquid assumenda vel est voluptatem facere. Voluptatem molestiae aspernatur blanditiis sed. Odit est soluta voluptas eius iusto provident.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(27, 'Facilis dolorum aut et iusto.', 'Numquam quidem labore hic sed nulla totam animi. Et et sint explicabo dolorum at perferendis aliquid.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(28, 'Tenetur ut maxime sit est reprehenderit ut quasi omnis.', 'Nobis iste amet et ratione velit sequi et. Iusto omnis est voluptate earum voluptas. Quia recusandae esse qui maxime hic accusantium ea. Impedit ea beatae sit id dolor.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(29, 'Sint provident eligendi recusandae ut quos.', 'Eveniet eaque dolorum expedita eum et. Cupiditate explicabo delectus omnis animi voluptatem. Inventore eos incidunt accusamus laboriosam beatae et.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(30, 'Laudantium aspernatur vel eveniet voluptate sit ducimus odit veritatis.', 'Accusamus qui rerum ea sint odio eligendi libero. Quo voluptatum sit aut tempore velit. Voluptatibus qui nulla maxime voluptatibus tempora consequatur amet deleniti.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(31, 'Cumque officia delectus tempore aut et.', 'Quia odio dicta et aliquam et. Id perspiciatis et possimus id. Aut ut voluptatibus est amet. Omnis odio ipsa qui consequatur omnis.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(32, 'Harum dolorem quasi quo quam ratione.', 'Labore alias possimus est necessitatibus qui. Est non numquam laborum qui aut doloribus aut. Doloremque nulla voluptas minus amet doloribus veniam totam vel.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(33, 'Quis dolor autem repellendus.', 'Et cumque veniam et ea commodi perspiciatis atque neque. Nulla dignissimos porro et ut rerum. Laborum quis corporis voluptatum id.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(34, 'Facere nisi similique expedita inventore suscipit ut.', 'Nulla officiis exercitationem blanditiis eligendi repellat architecto reiciendis molestias. Voluptatem quos molestiae sit aut. Voluptatum sapiente ipsa at. Magnam et facere magnam voluptatem quidem qui. A voluptatibus nihil fugiat explicabo quo accusamus.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(35, 'Dolores excepturi illo eveniet est fuga commodi eos aut.', 'Et sit tenetur fugit necessitatibus. Quasi vel aperiam omnis facere consequatur deleniti error ut.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(36, 'Dolorum sit aut soluta hic commodi.', 'Ut natus minus libero qui similique omnis reprehenderit. Quisquam consectetur consectetur odit provident.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(37, 'Aspernatur ab eos sequi perspiciatis.', 'Autem necessitatibus ab neque est et dignissimos itaque. Quis labore alias nihil et ea molestiae. Aliquid omnis et error dolores molestiae consequuntur a necessitatibus.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(38, 'Sunt deserunt sit quia culpa eligendi dolorum.', 'Id aut in qui et. Ut voluptate possimus vitae modi sunt cupiditate magni alias. Illo sunt architecto maxime qui deleniti rem eius. Consequatur perferendis officiis occaecati. Assumenda rerum voluptatibus veniam qui vel.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(39, 'Perspiciatis doloremque accusamus quam impedit illum quaerat itaque.', 'Harum repellendus dicta numquam. Vero rerum ipsa deleniti perferendis. Sunt cumque consequuntur necessitatibus est est voluptatem ipsam. Qui fuga molestiae itaque blanditiis et autem quaerat sit.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(40, 'Et vero quia iure est ducimus neque sint.', 'Vitae maxime accusantium neque neque deleniti dolorem minus. Aut voluptas non quos laboriosam sit eligendi excepturi. Dolores et facere assumenda. Veniam aperiam qui molestiae voluptatibus.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(41, 'Voluptatem nulla eos dolores maiores consequatur temporibus amet.', 'Nisi ea aliquam sit ullam vel saepe. Aliquam modi ipsa ex quia et.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(42, 'Voluptas ex assumenda vitae molestias sapiente enim animi.', 'Molestiae sit quidem alias eos at et. Est iste maiores cupiditate ab omnis laudantium asperiores. Rerum deleniti odio qui cum quis aspernatur. Aut vel facere pariatur dicta ut voluptates consequuntur.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(43, 'Et dicta eveniet id sunt voluptas.', 'Maiores repellendus doloremque ipsa vitae aut. Veritatis nostrum dolor officiis. Repellendus sint adipisci molestiae tenetur. Quos delectus quia quis nobis facilis id voluptatem.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(44, 'Aut voluptatem consectetur temporibus id rerum laboriosam laboriosam.', 'Quos consequatur molestiae accusantium. Aut suscipit necessitatibus et eaque. Provident est et sint dicta cupiditate aut aliquam. Et in id et et et ratione.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(45, 'Nostrum quasi aut quo dolorem molestiae.', 'Ut ut omnis quibusdam. Iure quasi tempore sit.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(46, 'A repellat a nulla aspernatur enim aliquid voluptatem eligendi.', 'Harum nesciunt est fugit nihil id quia. Voluptate ea aut vel aut quis praesentium. Et non ut est voluptas. Quaerat voluptas sit sit quo eum.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(47, 'Sint corrupti nisi eveniet cupiditate in unde temporibus asperiores.', 'Accusamus voluptas amet ipsum esse molestiae beatae qui dolores. Ipsum voluptates molestiae in nihil sit voluptas. Est cupiditate occaecati accusantium sint vitae corporis.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(48, 'Sequi fugiat animi non veniam voluptates maxime.', 'Impedit eum quibusdam perferendis sed eligendi sed praesentium ullam. Cupiditate eveniet ea perferendis voluptatum et iusto aut. Omnis eos quos saepe sit.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(49, 'Qui totam consequatur ut quasi nulla vel.', 'Ea vitae cumque facilis velit inventore. Et rerum a omnis inventore. Iste deleniti velit itaque similique labore hic.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(50, 'Qui tenetur velit ullam debitis.', 'Odit odit aut soluta illo ab vel laborum. Assumenda rerum eos enim tempora aliquam placeat. Nostrum fugiat fugit officia voluptatum. Sit quasi nostrum excepturi consequatur rerum.', '2021-06-18 21:04:04', '2021-06-18 21:04:04'),
(52, 'Ut accusantium modi autem minima fuga. TEST', 'Reiciendis doloribus dolor animi magnam et ipsa architecto omnis. Non illo sapiente quidem molestiae et et. Et et earum quod culpa sapiente consequuntur. Nostrum dolores cupiditate libero aut et blanditiis consequuntur reprehenderit.', '2021-06-18 21:25:43', '2021-06-18 21:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'category 1', 'description 1', '2021-06-04 20:56:32', '2021-06-04 20:56:32'),
(2, 'Category 2', 'description 2', '2021-06-04 20:56:41', '2021-06-04 20:56:41'),
(3, 'Category 3', 'description 3', '2021-06-04 20:56:52', '2021-06-04 20:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(8, '2021_05_22_043944_create_categories_table', 2),
(9, '2021_06_05_030319_create_posts_table', 2),
(10, '2021_06_19_035933_create_articles_table', 3),
(11, '2021_06_20_035310_create_user_verifies_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `author`, `image`, `short_desc`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'title 33', 'author 33', '1623469845mondulkiri.jpeg', 'short desc 33', 'description 33', '2021-06-04 21:07:52', '2021-06-11 20:50:45'),
(2, 3, 'title 33', 'author 33', '1623471486kohkong.jpeg', 'short desc 33', 'description 33', '2021-06-11 21:18:06', '2021-06-11 21:18:06'),
(3, 2, 'title 33', 'author 33', '1623469845mondulkiri.jpeg', 'short desc 33', 'description 33', '2021-06-04 21:07:52', '2021-06-11 20:50:45'),
(4, 3, 'title 33', 'author 33', '1623471486kohkong.jpeg', 'short desc 33', 'description 33', '2021-06-11 21:18:06', '2021-06-11 21:18:06'),
(5, 2, 'title 33', 'author 33', '1623469845mondulkiri.jpeg', 'short desc 33', 'description 33', '2021-06-04 21:07:52', '2021-06-11 20:50:45'),
(6, 3, 'title 33', 'author 33', '1623471486kohkong.jpeg', 'short desc 33', 'description 33', '2021-06-11 21:18:06', '2021-06-11 21:18:06'),
(7, 2, 'title 33', 'author 33', '1623469845mondulkiri.jpeg', 'short desc 33', 'description 33', '2021-06-04 21:07:52', '2021-06-11 20:50:45'),
(8, 3, 'title 22', 'author 33', '1623471486kohkong.jpeg', 'short desc 33', 'description 33', '2021-06-11 21:18:06', '2021-06-11 21:18:06'),
(9, 2, 'title 22', 'author 33', '1623469845mondulkiri.jpeg', 'short desc 33', 'description 33', '2021-06-04 21:07:52', '2021-06-11 20:50:45'),
(10, 3, 'title 22', 'author 33', '1623471486kohkong.jpeg', 'short desc 33', 'description 33', '2021-06-11 21:18:06', '2021-06-11 21:18:06'),
(11, 2, 'coca 22', 'author 33', '1623471486kohkong.jpeg', 'short desc 33', 'description 33', '2021-06-04 21:07:52', '2021-06-11 20:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_email_verified`) VALUES
(1, 'piseth', 'piseth@example.com', NULL, '$2y$10$8z3anQOind3YWym1KmnMh.3G5kUagT0dKUwYxyQE2tHNEYqj0qXiW', NULL, '2021-06-18 19:35:59', '2021-06-19 19:39:42', 0),
(2, 'Piseth', 'sokpiseth@gmail.com', NULL, '$2y$10$TBqdDbudDTJ2w7qx79eW9OORhTHQDQ0Qpx4fqkPASp71uWjawPNUC', 'jZuxbitlDeEcZF7KRm6Bb8LDGYNFLmcbfxjLJ6G2oFjysgN7Gx3q1TBfzSkh', '2021-06-19 21:08:55', '2021-06-19 21:11:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_verify`
--

CREATE TABLE `users_verify` (
  `user_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_verify`
--

INSERT INTO `users_verify` (`user_id`, `token`, `created_at`, `updated_at`) VALUES
(2, 'kYrgT9S5ZxZ2vsWmYqEf1BnmfQiAZUbVf1mgYqRnnrgBeOniugULVUZEyjcg0Rzt', '2021-06-19 21:08:55', '2021-06-19 21:08:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
