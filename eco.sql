-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 16 déc. 2024 à 12:34
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
-- Base de données : `eco`
--

-- --------------------------------------------------------

--
-- Structure de la table `boutiques`
--

CREATE TABLE `boutiques` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `boutiques`
--

INSERT INTO `boutiques` (`id`, `nom`, `prenom`, `phone`, `Adresse`, `created_at`, `updated_at`, `logo`, `user_id`) VALUES
(1, 'AL MANNANI', 'MOSTAFA', '+212625174416', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', '2024-10-16 11:05:00', '2024-10-21 08:01:40', 'boutiques\\October2024\\OADPAsfeiGIUyM6mcS8D.jpg', 3),
(2, 'Al Mannani', 'Taher', '+212625174416', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', '2024-10-16 11:07:00', '2024-10-21 08:02:36', 'boutiques\\October2024\\X05aO1WWspTmy1DqOKi9.jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `carousels`
--

CREATE TABLE `carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carousels`
--

INSERT INTO `carousels` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'carousels\\October2024\\bRfVvD0dFuI9dgIdcvGr.jpg', '2024-10-18 17:55:00', '2024-10-18 18:29:37'),
(2, 'carousels\\October2024\\mV07wnWKTWSWmE6JBnYc.jpg', '2024-10-18 17:55:30', '2024-10-18 17:55:30'),
(3, 'carousels\\October2024\\UZ4F7GuCgLCnPTDoFpX0.jpg', '2024-10-18 17:55:43', '2024-10-18 17:55:43'),
(4, 'carousels\\October2024\\wfmsl2fTbhCcOf5ZDRnl.jpg', '2024-10-18 17:56:00', '2024-10-18 17:56:00'),
(5, 'carousels\\October2024\\1dzaHnDsR4QbUX1ZT7I1.jpg', '2024-10-18 17:56:25', '2024-10-18 17:56:25');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(2, NULL, 1, 'Category 2', 'category-2', '2024-10-10 08:16:45', '2024-10-10 08:16:45');

-- --------------------------------------------------------

--
-- Structure de la table `cats`
--

CREATE TABLE `cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cats`
--

INSERT INTO `cats` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Électronique', 'Découvrez notre vaste gamme d\'appareils électroniques de haute qualité, incluant smartphones, ordinateurs, télévisions et accessoires pour répondre à tous vos besoins technologiques.', '2024-10-10 09:07:06', '2024-10-10 09:07:06'),
(2, 'Vêtements', 'Explorez les dernières tendances de la mode avec notre sélection de vêtements pour hommes, femmes et enfants, des pièces élégantes pour toutes les occasions.', '2024-10-10 09:07:28', '2024-10-10 09:07:28'),
(3, 'Maison et Jardin', 'rouvez tout pour améliorer votre maison et jardin, des meubles modernes aux outils de jardinage, pour créer l\'espace de vos rêves.', '2024-10-10 09:07:47', '2024-10-10 09:07:47'),
(4, 'Beauté et Santé', 'Prenez soin de vous avec nos produits de beauté et de santé, des soins de la peau aux appareils de bien-être, pour vous sentir et paraître au mieux', '2024-10-10 09:08:05', '2024-10-10 09:08:05'),
(5, 'Sport et Loisirs', 'Préparez-vous pour vos activités sportives et vos loisirs préférés avec notre sélection d\'équipements sportifs, vêtements et accessoires pour un style de vie actif', '2024-10-10 09:08:26', '2024-10-10 09:08:26'),
(6, 'Jouets et Enfants', 'Offrez des moments de plaisir aux enfants avec notre gamme de jouets éducatifs, jeux créatifs et vêtements, conçus pour stimuler l\'imagination et l\'apprentissage.', '2024-10-10 09:08:46', '2024-10-10 09:08:46'),
(7, 'Livres et Médias', 'Immergez-vous dans un univers de divertissement avec nos livres captivants, films, musique et jeux vidéo pour tous les âges et tous les goûts.', '2024-10-10 09:09:06', '2024-10-10 09:09:06'),
(8, 'Alimentation et Boissons', 'Découvrez notre sélection d\'aliments de qualité, des produits bio aux spécialités gastronomiques, ainsi qu\'une gamme variée de boissons, vins et spiritueux.', '2024-10-10 09:09:31', '2024-10-10 09:09:31');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `demande` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `prenom`, `ville`, `email`, `phone`, `demande`, `created_at`, `updated_at`) VALUES
(1, 'TALIB', 'OTHMANE', 'SETTAT', 'mannanimostafa04@gmail.com', '0643086370', ',kklll fjfjgfjgg kkfkkg kjfklflf gkgkgkg kdkdkflfk', '2024-10-14 11:30:24', '2024-10-14 11:30:24');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(59, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(61, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(62, 10, 'prix', 'number', 'Prix', 0, 1, 1, 1, 1, 1, '{}', 4),
(63, 10, 'stock', 'number', 'Stock', 0, 1, 1, 1, 1, 1, '{}', 5),
(64, 10, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(65, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(66, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(68, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(70, 12, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(72, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(73, 10, 'product_belongsto_cat_relationship', 'relationship', 'cats', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Cat\",\"table\":\"cats\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(86, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 17, 'quantite', 'number', 'Quantite', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 17, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(90, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 18, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 18, 'adresse', 'text', 'Adresse', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 18, 'ville', 'text', 'Ville', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 18, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 6),
(98, 18, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(99, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(100, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(101, 17, 'orders_item_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(106, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 9),
(107, 17, 'orders_item_belongsto_laivraison_relationship', 'relationship', 'laivraisons', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Laivraison\",\"table\":\"laivraisons\",\"type\":\"belongsTo\",\"column\":\"laivraison_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(108, 17, 'laivraison_id', 'text', 'Laivraison Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(109, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 19, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(111, 19, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 3),
(112, 19, 'ville', 'text', 'Ville', 0, 1, 1, 1, 1, 1, '{}', 4),
(113, 19, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(114, 19, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 6),
(115, 19, 'demande', 'text', 'Demande', 0, 1, 1, 1, 1, 1, '{}', 7),
(116, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(117, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(118, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 20, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 3),
(121, 20, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 4),
(122, 20, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(125, 20, 'Adresse', 'text', 'Adresse', 0, 1, 1, 1, 1, 1, '{}', 8),
(126, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(127, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(128, 10, 'product_belongsto_boutique_relationship', 'relationship', 'boutiques', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Boutique\",\"table\":\"boutiques\",\"type\":\"belongsTo\",\"column\":\"boutique_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"boutiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(129, 10, 'boutique_id', 'text', 'Boutique Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(131, 20, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 11),
(132, 20, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(133, 20, 'boutique_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"boutiques\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(134, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 21, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(136, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(137, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-10-10 08:16:43', '2024-10-10 08:16:43'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-10-10 08:16:43', '2024-10-10 08:16:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-10-10 08:16:43', '2024-10-10 08:16:43'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2024-10-10 08:16:45', '2024-10-12 15:56:44'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(10, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-10 08:25:17', '2024-10-16 11:29:09'),
(12, 'cats', 'cats', 'Cat', 'Cats', NULL, 'App\\Cat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-10 08:27:12', '2024-10-16 11:23:55'),
(17, 'orders_items', 'orders-items', 'Orders Item', 'Orders Items', NULL, 'App\\OrdersItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-10 08:56:53', '2024-10-13 09:42:04'),
(18, 'laivraisons', 'laivraisons', 'Laivraison', 'Laivraisons', NULL, 'App\\Laivraison', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-10 08:58:02', '2024-10-13 09:39:38'),
(19, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-10-14 08:19:08', '2024-10-14 08:19:08'),
(20, 'boutiques', 'boutiques', 'Boutique', 'Boutiques', NULL, 'App\\Boutique', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-10-16 10:57:40', '2024-10-17 10:07:56'),
(21, 'carousels', 'carousels', 'Carousel', 'Carousels', NULL, 'App\\Carousel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-10-18 17:54:50', '2024-10-18 17:54:50');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `laivraisons`
--

CREATE TABLE `laivraisons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `laivraisons`
--

INSERT INTO `laivraisons` (`id`, `name`, `adresse`, `ville`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-13 10:19:40', '2024-10-13 10:19:40'),
(2, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-13 10:20:20', '2024-10-13 10:20:20'),
(3, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-13 19:38:39', '2024-10-13 19:38:39'),
(4, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-15 09:17:36', '2024-10-15 09:17:36'),
(5, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 11:53:53', '2024-10-16 11:53:53'),
(6, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 11:55:19', '2024-10-16 11:55:19'),
(7, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-16 11:55:52', '2024-10-16 11:55:52'),
(8, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 12:42:12', '2024-10-16 12:42:12'),
(9, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 12:42:38', '2024-10-16 12:42:38'),
(10, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-16 12:44:13', '2024-10-16 12:44:13'),
(11, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-16 12:55:04', '2024-10-16 12:55:04'),
(12, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 13:01:23', '2024-10-16 13:01:23'),
(13, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 13:01:47', '2024-10-16 13:01:47'),
(14, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 13:02:54', '2024-10-16 13:02:54'),
(15, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 13:05:46', '2024-10-16 13:05:46'),
(16, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-16 13:07:34', '2024-10-16 13:07:34'),
(17, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-16 17:16:09', '2024-10-16 17:16:09'),
(18, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-16 17:22:48', '2024-10-16 17:22:48'),
(19, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-17 09:25:32', '2024-10-17 09:25:32'),
(20, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-17 09:27:54', '2024-10-17 09:27:54'),
(21, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-17 09:30:11', '2024-10-17 09:30:11'),
(22, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-17 09:35:08', '2024-10-17 09:35:08'),
(23, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-17 09:36:37', '2024-10-17 09:36:37'),
(24, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-17 09:38:16', '2024-10-17 09:38:16'),
(25, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-17 09:40:18', '2024-10-17 09:40:18'),
(26, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-17 09:45:52', '2024-10-17 09:45:52'),
(27, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-18 09:14:07', '2024-10-18 09:14:07'),
(28, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-18 10:25:05', '2024-10-18 10:25:05'),
(29, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-18 16:35:04', '2024-10-18 16:35:04'),
(30, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-18 19:54:46', '2024-10-18 19:54:46'),
(31, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-18 20:15:35', '2024-10-18 20:15:35'),
(32, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-18 20:16:34', '2024-10-18 20:16:34'),
(33, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 07:53:28', '2024-10-21 07:53:28'),
(34, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:15:40', '2024-10-21 08:15:40'),
(35, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:15:46', '2024-10-21 08:15:46'),
(36, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:16:25', '2024-10-21 08:16:25'),
(37, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:16:39', '2024-10-21 08:16:39'),
(38, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:25:51', '2024-10-21 08:25:51'),
(39, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:26:57', '2024-10-21 08:26:57'),
(40, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:27:04', '2024-10-21 08:27:04'),
(41, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:29:48', '2024-10-21 08:29:48'),
(42, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 08:32:47', '2024-10-21 08:32:47'),
(43, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 08:36:03', '2024-10-21 08:36:03'),
(44, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 08:41:14', '2024-10-21 08:41:14'),
(45, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-21 08:51:06', '2024-10-21 08:51:06'),
(46, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 08:53:19', '2024-10-21 08:53:19'),
(47, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 08:56:45', '2024-10-21 08:56:45'),
(48, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 09:01:15', '2024-10-21 09:01:15'),
(49, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 09:03:15', '2024-10-21 09:03:15'),
(50, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 09:04:12', '2024-10-21 09:04:12'),
(51, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 09:07:38', '2024-10-21 09:07:38'),
(52, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 09:10:24', '2024-10-21 09:10:24'),
(53, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-21 09:13:13', '2024-10-21 09:13:13'),
(54, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-22 08:54:30', '2024-10-22 08:54:30'),
(55, 'OTHMANE TALIB', '4EME TRANCHE RUE 41 N 13 CD CASABLANCA', 'SETTAT', '0643086370', 'mannanimostafa04@gmail.com', '2024-10-22 09:09:25', '2024-10-22 09:09:25'),
(56, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 10:01:25', '2024-10-22 10:01:25'),
(57, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'SETTAT', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 10:27:06', '2024-10-22 10:27:06'),
(58, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '+212617125803', 'mostafaalmannani@gmail.com', '2024-10-22 10:28:27', '2024-10-22 10:28:27'),
(59, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 12:28:40', '2024-10-22 12:28:40'),
(60, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 12:29:56', '2024-10-22 12:29:56'),
(61, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 12:55:33', '2024-10-22 12:55:33'),
(62, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 12:56:23', '2024-10-22 12:56:23'),
(63, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:00:51', '2024-10-22 13:00:51'),
(64, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:03:51', '2024-10-22 13:03:51'),
(65, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:08:32', '2024-10-22 13:08:32'),
(66, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:09:39', '2024-10-22 13:09:39'),
(67, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:09:44', '2024-10-22 13:09:44'),
(68, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:09:50', '2024-10-22 13:09:50'),
(69, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:09:57', '2024-10-22 13:09:57'),
(70, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:10:43', '2024-10-22 13:10:43'),
(71, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:12:43', '2024-10-22 13:12:43'),
(72, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-22 13:14:43', '2024-10-22 13:14:43'),
(73, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-23 09:42:24', '2024-10-23 09:42:24'),
(74, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-10-27 18:57:21', '2024-10-27 18:57:21'),
(75, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-11-01 15:48:25', '2024-11-01 15:48:25'),
(76, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-11-07 10:31:48', '2024-11-07 10:31:48'),
(77, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-11-07 16:05:49', '2024-11-07 16:05:49'),
(78, 'MOSTAFA AL MANNANI', 'EL AHD EL JADID RUE 15 N 12 C D CASABLANCA', 'BEN M SICK BEN M\'SIK SIDI OTHMANE', '0617125803', 'mostafaalmannani@gmail.com', '2024-11-08 09:07:04', '2024-11-08 09:07:04');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(2, 'hhh', '2024-10-15 10:29:37', '2024-10-15 10:29:37');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2024-10-10 08:16:44', '2024-10-10 08:16:44', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2024-10-10 08:16:44', '2024-10-10 08:16:44', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2024-10-10 08:16:45', '2024-10-10 08:16:45', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2024-10-10 08:16:45', '2024-10-10 08:16:45', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2024-10-10 08:16:46', '2024-10-10 08:16:46', 'voyager.pages.index', NULL),
(14, 1, 'Products', '', '_self', NULL, NULL, NULL, 15, '2024-10-10 08:25:17', '2024-10-10 08:25:17', 'voyager.products.index', NULL),
(15, 1, 'Cats', '', '_self', NULL, NULL, NULL, 16, '2024-10-10 08:27:12', '2024-10-10 08:27:12', 'voyager.cats.index', NULL),
(20, 1, 'Orders Items', '', '_self', NULL, NULL, NULL, 19, '2024-10-10 08:56:53', '2024-10-10 08:56:53', 'voyager.orders-items.index', NULL),
(21, 1, 'Laivraisons', '', '_self', NULL, NULL, NULL, 20, '2024-10-10 08:58:02', '2024-10-10 08:58:02', 'voyager.laivraisons.index', NULL),
(22, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 21, '2024-10-14 08:19:08', '2024-10-14 08:19:08', 'voyager.contacts.index', NULL),
(23, 2, 'Accueil', '/index', '_self', 'fas fa-home', '#000000', NULL, 1, '2024-10-15 10:34:03', '2024-10-16 09:43:35', NULL, ''),
(24, 2, 'A Propos', '#about', '_self', 'fas fa-credit-card', '#000000', NULL, 2, '2024-10-15 10:38:14', '2024-10-16 09:44:02', NULL, ''),
(25, 2, 'Boutique', '/boutique', '_self', 'fas fa-shop', '#000000', NULL, 3, '2024-10-15 10:39:58', '2024-10-17 10:30:53', NULL, ''),
(26, 2, 'Contact', '/contact', '_self', 'fas fa-paper-plane', '#000000', NULL, 4, '2024-10-15 10:41:43', '2024-10-16 09:44:29', NULL, ''),
(27, 1, 'Boutiques', '', '_self', NULL, NULL, NULL, 22, '2024-10-16 10:57:40', '2024-10-16 10:57:40', 'voyager.boutiques.index', NULL),
(28, 1, 'Carousels', '', '_self', NULL, NULL, NULL, 23, '2024-10-18 17:54:50', '2024-10-18 17:54:50', 'voyager.carousels.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `laivraison_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders_items`
--

INSERT INTO `orders_items` (`id`, `quantite`, `product_id`, `created_at`, `updated_at`, `laivraison_id`) VALUES
(1, 3, 2, '2024-10-13 10:20:20', '2024-10-13 10:20:20', 2),
(2, 1, 4, '2024-10-13 10:20:20', '2024-10-13 10:20:20', 2),
(3, 2, 10, '2024-10-13 10:20:20', '2024-10-13 10:20:20', 2),
(4, 2, 18, '2024-10-13 10:20:20', '2024-10-13 10:20:20', 2),
(5, 1, 3, '2024-10-13 19:38:39', '2024-10-13 19:38:39', 3),
(6, 2, 6, '2024-10-15 09:17:36', '2024-10-15 09:17:36', 4),
(7, 1, 21, '2024-10-15 09:17:36', '2024-10-15 09:17:36', 4),
(8, 1, 2, '2024-10-15 09:17:36', '2024-10-15 09:17:36', 4),
(9, 1, 3, '2024-10-16 11:53:53', '2024-10-16 11:53:53', 5),
(10, 1, 2, '2024-10-16 11:55:52', '2024-10-16 11:55:52', 7),
(11, 2, 3, '2024-10-16 12:42:12', '2024-10-16 12:42:12', 8),
(12, 1, 3, '2024-10-16 12:44:13', '2024-10-16 12:44:13', 10),
(13, 1, 1, '2024-10-16 12:55:04', '2024-10-16 12:55:04', 11),
(14, 1, 1, '2024-10-16 13:01:23', '2024-10-16 13:01:23', 12),
(15, 1, 1, '2024-10-16 13:02:54', '2024-10-16 13:02:54', 14),
(16, 1, 1, '2024-10-16 13:05:46', '2024-10-16 13:05:46', 15),
(17, 1, 1, '2024-10-16 13:07:34', '2024-10-16 13:07:34', 16),
(18, 1, 1, '2024-10-16 17:16:09', '2024-10-16 17:16:09', 17),
(19, 1, 20, '2024-10-16 17:22:48', '2024-10-16 17:22:48', 18),
(20, 1, 1, '2024-10-17 09:25:32', '2024-10-17 09:25:32', 19),
(21, 1, 1, '2024-10-17 09:27:54', '2024-10-17 09:27:54', 20),
(22, 1, 1, '2024-10-17 09:30:11', '2024-10-17 09:30:11', 21),
(23, 1, 1, '2024-10-17 09:35:08', '2024-10-17 09:35:08', 22),
(24, 1, 1, '2024-10-17 09:36:37', '2024-10-17 09:36:37', 23),
(25, 1, 1, '2024-10-17 09:38:16', '2024-10-17 09:38:16', 24),
(26, 1, 1, '2024-10-17 09:40:18', '2024-10-17 09:40:18', 25),
(27, 3, 1, '2024-10-17 09:45:52', '2024-10-17 09:45:52', 26),
(28, 2, 1, '2024-10-18 09:14:07', '2024-10-18 09:14:07', 27),
(29, 1, 1, '2024-10-18 10:25:05', '2024-10-18 10:25:05', 28),
(30, 1, 3, '2024-10-18 10:25:05', '2024-10-18 10:25:05', 28),
(31, 1, 6, '2024-10-18 16:35:04', '2024-10-18 16:35:04', 29),
(32, 1, 3, '2024-10-18 16:35:04', '2024-10-18 16:35:04', 29),
(33, 2, 5, '2024-10-18 19:54:46', '2024-10-18 19:54:46', 30),
(34, 1, 1, '2024-10-18 19:54:46', '2024-10-18 19:54:46', 30),
(35, 1, 1, '2024-10-18 20:15:35', '2024-10-18 20:15:35', 31),
(36, 1, 1, '2024-10-18 20:16:34', '2024-10-18 20:16:34', 32),
(37, 1, 1, '2024-10-21 07:53:28', '2024-10-21 07:53:28', 33),
(38, 1, 6, '2024-10-21 08:15:40', '2024-10-21 08:15:40', 34),
(39, 1, 6, '2024-10-21 08:15:46', '2024-10-21 08:15:46', 35),
(40, 1, 6, '2024-10-21 08:16:25', '2024-10-21 08:16:25', 36),
(41, 1, 6, '2024-10-21 08:16:39', '2024-10-21 08:16:39', 37),
(42, 2, 1, '2024-10-21 08:25:51', '2024-10-21 08:25:51', 38),
(43, 2, 1, '2024-10-21 08:26:57', '2024-10-21 08:26:57', 39),
(44, 2, 1, '2024-10-21 08:27:04', '2024-10-21 08:27:04', 40),
(45, 2, 5, '2024-10-21 08:29:48', '2024-10-21 08:29:48', 41),
(46, 1, 2, '2024-10-21 08:32:47', '2024-10-21 08:32:47', 42),
(47, 1, 8, '2024-10-21 08:36:03', '2024-10-21 08:36:03', 43),
(48, 1, 4, '2024-10-21 08:41:14', '2024-10-21 08:41:14', 44),
(49, 1, 3, '2024-10-21 08:51:06', '2024-10-21 08:51:06', 45),
(50, 1, 7, '2024-10-21 08:53:19', '2024-10-21 08:53:19', 46),
(51, 1, 5, '2024-10-21 08:56:45', '2024-10-21 08:56:45', 47),
(52, 1, 3, '2024-10-21 09:01:15', '2024-10-21 09:01:15', 48),
(53, 1, 8, '2024-10-21 09:03:15', '2024-10-21 09:03:15', 49),
(54, 1, 3, '2024-10-21 09:04:12', '2024-10-21 09:04:12', 50),
(55, 1, 6, '2024-10-21 09:07:38', '2024-10-21 09:07:38', 51),
(56, 1, 6, '2024-10-21 09:10:24', '2024-10-21 09:10:24', 52),
(57, 1, 2, '2024-10-21 09:13:13', '2024-10-21 09:13:13', 53),
(58, 1, 3, '2024-10-22 08:54:30', '2024-10-22 08:54:30', 54),
(59, 1, 1, '2024-10-22 09:09:25', '2024-10-22 09:09:25', 55),
(60, 2, 1, '2024-10-22 10:01:25', '2024-10-22 10:01:25', 56),
(61, 1, 8, '2024-10-22 10:01:28', '2024-10-22 10:01:28', 56),
(62, 1, 3, '2024-10-22 10:27:06', '2024-10-22 10:27:06', 57),
(63, 1, 1, '2024-10-22 10:28:27', '2024-10-22 10:28:27', 58),
(64, 1, 1, '2024-10-22 12:28:40', '2024-10-22 12:28:40', 59),
(65, 1, 4, '2024-10-22 12:29:56', '2024-10-22 12:29:56', 60),
(66, 1, 7, '2024-10-23 09:42:24', '2024-10-23 09:42:24', 73),
(67, 2, 1, '2024-10-27 18:57:21', '2024-10-27 18:57:21', 74),
(68, 1, 3, '2024-10-27 18:57:21', '2024-10-27 18:57:21', 74),
(69, 2, 3, '2024-11-01 15:48:25', '2024-11-01 15:48:25', 75),
(70, 1, 3, '2024-11-07 10:31:48', '2024-11-07 10:31:48', 76),
(71, 1, 5, '2024-11-07 16:05:49', '2024-11-07 16:05:49', 77),
(72, 1, 1, '2024-11-08 09:07:04', '2024-11-08 09:07:04', 78),
(73, 1, 3, '2024-11-08 09:07:04', '2024-11-08 09:07:04', 78);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2024-10-10 08:16:46', '2024-10-10 08:16:46');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(2, 'browse_bread', NULL, '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(3, 'browse_database', NULL, '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(4, 'browse_media', NULL, '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(5, 'browse_compass', NULL, '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(6, 'browse_menus', 'menus', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(7, 'read_menus', 'menus', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(8, 'edit_menus', 'menus', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(9, 'add_menus', 'menus', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(10, 'delete_menus', 'menus', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(11, 'browse_roles', 'roles', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(12, 'read_roles', 'roles', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(13, 'edit_roles', 'roles', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(14, 'add_roles', 'roles', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(15, 'delete_roles', 'roles', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(16, 'browse_users', 'users', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(17, 'read_users', 'users', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(18, 'edit_users', 'users', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(19, 'add_users', 'users', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(20, 'delete_users', 'users', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(21, 'browse_settings', 'settings', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(22, 'read_settings', 'settings', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(23, 'edit_settings', 'settings', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(24, 'add_settings', 'settings', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(25, 'delete_settings', 'settings', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(26, 'browse_categories', 'categories', '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(27, 'read_categories', 'categories', '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(28, 'edit_categories', 'categories', '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(29, 'add_categories', 'categories', '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(30, 'delete_categories', 'categories', '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(31, 'browse_posts', 'posts', '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(32, 'read_posts', 'posts', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(33, 'edit_posts', 'posts', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(34, 'add_posts', 'posts', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(35, 'delete_posts', 'posts', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(36, 'browse_pages', 'pages', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(37, 'read_pages', 'pages', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(38, 'edit_pages', 'pages', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(39, 'add_pages', 'pages', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(40, 'delete_pages', 'pages', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(41, 'browse_products', 'products', '2024-10-10 08:25:17', '2024-10-10 08:25:17'),
(42, 'read_products', 'products', '2024-10-10 08:25:17', '2024-10-10 08:25:17'),
(43, 'edit_products', 'products', '2024-10-10 08:25:17', '2024-10-10 08:25:17'),
(44, 'add_products', 'products', '2024-10-10 08:25:17', '2024-10-10 08:25:17'),
(45, 'delete_products', 'products', '2024-10-10 08:25:17', '2024-10-10 08:25:17'),
(46, 'browse_cats', 'cats', '2024-10-10 08:27:12', '2024-10-10 08:27:12'),
(47, 'read_cats', 'cats', '2024-10-10 08:27:12', '2024-10-10 08:27:12'),
(48, 'edit_cats', 'cats', '2024-10-10 08:27:12', '2024-10-10 08:27:12'),
(49, 'add_cats', 'cats', '2024-10-10 08:27:12', '2024-10-10 08:27:12'),
(50, 'delete_cats', 'cats', '2024-10-10 08:27:12', '2024-10-10 08:27:12'),
(71, 'browse_orders_items', 'orders_items', '2024-10-10 08:56:53', '2024-10-10 08:56:53'),
(72, 'read_orders_items', 'orders_items', '2024-10-10 08:56:53', '2024-10-10 08:56:53'),
(73, 'edit_orders_items', 'orders_items', '2024-10-10 08:56:53', '2024-10-10 08:56:53'),
(74, 'add_orders_items', 'orders_items', '2024-10-10 08:56:53', '2024-10-10 08:56:53'),
(75, 'delete_orders_items', 'orders_items', '2024-10-10 08:56:53', '2024-10-10 08:56:53'),
(76, 'browse_laivraisons', 'laivraisons', '2024-10-10 08:58:02', '2024-10-10 08:58:02'),
(77, 'read_laivraisons', 'laivraisons', '2024-10-10 08:58:02', '2024-10-10 08:58:02'),
(78, 'edit_laivraisons', 'laivraisons', '2024-10-10 08:58:02', '2024-10-10 08:58:02'),
(79, 'add_laivraisons', 'laivraisons', '2024-10-10 08:58:02', '2024-10-10 08:58:02'),
(80, 'delete_laivraisons', 'laivraisons', '2024-10-10 08:58:02', '2024-10-10 08:58:02'),
(81, 'browse_contacts', 'contacts', '2024-10-14 08:19:08', '2024-10-14 08:19:08'),
(82, 'read_contacts', 'contacts', '2024-10-14 08:19:08', '2024-10-14 08:19:08'),
(83, 'edit_contacts', 'contacts', '2024-10-14 08:19:08', '2024-10-14 08:19:08'),
(84, 'add_contacts', 'contacts', '2024-10-14 08:19:08', '2024-10-14 08:19:08'),
(85, 'delete_contacts', 'contacts', '2024-10-14 08:19:08', '2024-10-14 08:19:08'),
(86, 'browse_boutiques', 'boutiques', '2024-10-16 10:57:40', '2024-10-16 10:57:40'),
(87, 'read_boutiques', 'boutiques', '2024-10-16 10:57:40', '2024-10-16 10:57:40'),
(88, 'edit_boutiques', 'boutiques', '2024-10-16 10:57:40', '2024-10-16 10:57:40'),
(89, 'add_boutiques', 'boutiques', '2024-10-16 10:57:40', '2024-10-16 10:57:40'),
(90, 'delete_boutiques', 'boutiques', '2024-10-16 10:57:40', '2024-10-16 10:57:40'),
(91, 'browse_carousels', 'carousels', '2024-10-18 17:54:50', '2024-10-18 17:54:50'),
(92, 'read_carousels', 'carousels', '2024-10-18 17:54:50', '2024-10-18 17:54:50'),
(93, 'edit_carousels', 'carousels', '2024-10-18 17:54:50', '2024-10-18 17:54:50'),
(94, 'add_carousels', 'carousels', '2024-10-18 17:54:50', '2024-10-18 17:54:50'),
(95, 'delete_carousels', 'carousels', '2024-10-18 17:54:50', '2024-10-18 17:54:50');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-10-10 08:16:46', '2024-10-10 08:16:46');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(10,0) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `boutique_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `prix`, `stock`, `category_id`, `created_at`, `updated_at`, `image`, `boutique_id`) VALUES
(1, 'SmartPhone', 'Découvrez notre vaste gamme d\'appareils électroniques de haute qualité, incluant smartphones, ordinateurs, télévisions et accessoires pour répondre à tous vos besoins technologiques.', 15000, 10, 1, '2024-10-10 09:38:00', '2024-10-16 11:31:22', 'products\\October2024\\bKR3MXVjNkMuqcrIQwA4.jpg', 1),
(2, 'PC Portable GAMMER', 'Découvrez notre vaste gamme d\'appareils électroniques de haute qualité, incluant smartphones, ordinateurs, télévisions et accessoires pour répondre à tous vos besoins technologiques.', 22000, 10, 1, '2024-10-10 09:38:00', '2024-10-16 11:31:36', 'products\\October2024\\GZpzVYyqqkLPbxhn4zam.jpg', 2),
(3, 'PC Portable HP', 'Découvrez notre vaste gamme d\'appareils électroniques de haute qualité, incluant smartphones, ordinateurs, télévisions et accessoires pour répondre à tous vos besoins technologiques.', 17000, 10, 1, '2024-10-10 09:39:00', '2024-10-16 11:31:50', 'products\\October2024\\MedLRkvVCpoZVCnuWcVh.jpg', 1),
(4, 'SmartPhone OPPO', 'Découvrez notre vaste gamme d\'appareils électroniques de haute qualité, incluant smartphones, ordinateurs, télévisions et accessoires pour répondre à tous vos besoins technologiques.', 9000, 10, 1, '2024-10-10 09:40:00', '2024-10-16 11:32:05', 'products\\October2024\\LuI7p81F7uEUKJqX7KGY.png', 2),
(5, 'Tapis Roulant', 'Préparez-vous pour vos activités sportives et vos loisirs préférés avec notre sélection d\'équipements sportifs, vêtements et accessoires pour un style de vie actif.', 12000, 10, 5, '2024-10-10 09:41:00', '2024-10-16 11:32:17', 'products\\October2024\\dDfaF0oWSoDUkvdeNp7z.jpg', 1),
(6, 'Musculation', 'Préparez-vous pour vos activités sportives et vos loisirs préférés avec notre sélection d\'équipements sportifs, vêtements et accessoires pour un style de vie actif.', 14999, 10, 5, '2024-10-10 09:42:00', '2024-10-16 11:32:28', 'products\\October2024\\iPIqN0mJJphOCxqKme07.webp', 2),
(7, 'Fitnes Musculation', 'Préparez-vous pour vos activités sportives et vos loisirs préférés avec notre sélection d\'équipements sportifs, vêtements et accessoires pour un style de vie actif.', 19997, 10, 5, '2024-10-10 09:43:00', '2024-10-16 11:32:44', 'products\\October2024\\toqwGbWHTvoHzlLHifkk.webp', 1),
(8, 'Les Medias Contre La Rue', 'Immergez-vous dans un univers de divertissement avec nos livres captivants, films, musique et jeux vidéo pour tous les âges et tous les goûts.', 197, 10, 7, '2024-10-10 09:46:00', '2024-10-16 11:33:03', 'products\\October2024\\UHdCG0H2FwJR3VuIz2vE.jpg', 1),
(9, 'Marketing Des Médias Sociaux', 'Immergez-vous dans un univers de divertissement avec nos livres captivants, films, musique et jeux vidéo pour tous les âges et tous les goûts.', 249, 10, 7, '2024-10-10 09:47:00', '2024-10-16 11:33:17', 'products\\October2024\\76QNgMJ1cEIJVkX3wkz2.jpg', 2),
(10, 'Nostalgies Contemporaines', 'Immergez-vous dans un univers de divertissement avec nos livres captivants, films, musique et jeux vidéo pour tous les âges et tous les goûts.', 349, 10, 7, '2024-10-10 09:48:00', '2024-10-16 11:33:34', 'products\\October2024\\ThGERQyzgKyVVJXZNH1p.jpg', 2),
(11, 'Meuble', 'Trouvez tout pour améliorer votre maison et jardin, des meubles modernes aux outils de jardinage, pour créer l\'espace de vos rêves.', 3499, 10, 3, '2024-10-10 09:50:00', '2024-10-16 11:36:13', 'products\\October2024\\yFAcpgPGfJKDEDyIQFWP.webp', 1),
(12, 'Pelle', 'Trouvez tout pour améliorer votre maison et jardin, des meubles modernes aux outils de jardinage, pour créer l\'espace de vos rêves.', 149, 10, 3, '2024-10-10 09:51:00', '2024-10-16 11:36:30', 'products\\October2024\\SmkZBqkgyyHK7vb2E0f9.jpg', 2),
(13, 'Otil Jardinier', 'Trouvez tout pour améliorer votre maison et jardin, des meubles modernes aux outils de jardinage, pour créer l\'espace de vos rêves.', 199, 10, 3, '2024-10-10 09:52:00', '2024-10-16 11:31:06', 'products\\October2024\\ZdIl88q3WADseIUI2kct.jpg', 1),
(14, 'Parfum Homme', 'Prenez soin de vous avec nos produits de beauté et de santé, des soins de la peau aux appareils de bien-être, pour vous sentir et paraître au mieux.', 449, 10, 4, '2024-10-10 09:53:00', '2024-10-16 11:30:45', 'products\\October2024\\nCU0freFbBsS0lOsaQx2.webp', 2),
(15, 'Parfum Femme', 'Prenez soin de vous avec nos produits de beauté et de santé, des soins de la peau aux appareils de bien-être, pour vous sentir et paraître au mieux.', 549, 10, 4, '2024-10-10 09:53:00', '2024-10-16 11:30:55', 'products\\October2024\\w3p3aABcuN9lyAhE7g2G.webp', 2),
(16, 'Maquillage', 'Prenez soin de vous avec nos produits de beauté et de santé, des soins de la peau aux appareils de bien-être, pour vous sentir et paraître au mieux.', 899, 10, 4, '2024-10-10 09:55:00', '2024-10-16 11:30:24', 'products\\October2024\\Fdg4RewZI25hT5kDlupC.jpg', 1),
(17, 'Packshot', 'Prenez soin de vous avec nos produits de beauté et de santé, des soins de la peau aux appareils de bien-être, pour vous sentir et paraître au mieux.', 999, 10, 4, '2024-10-10 09:55:00', '2024-10-16 11:30:35', 'products\\October2024\\06uVOJ4WLRDYy8i2GQtT.webp', 1),
(18, 'Pack Jouer', 'Offrez des moments de plaisir aux enfants avec notre gamme de jouets éducatifs, jeux créatifs et vêtements, conçus pour stimuler l\'imagination et l\'apprentissage.', 1099, 10, 6, '2024-10-10 09:57:00', '2024-10-16 11:30:15', 'products\\October2024\\XvDQzLS4c97QlE0slBam.jpg', 2),
(19, 'Pack Jouer Les enfants', 'Offrez des moments de plaisir aux enfants avec notre gamme de jouets éducatifs, jeux créatifs et vêtements, conçus pour stimuler l\'imagination et l\'apprentissage.', 1499, 10, 6, '2024-10-10 09:58:00', '2024-10-16 11:29:47', 'products\\October2024\\aYNRjB7OC5AGwdsYd4N5.jpg', 2),
(20, 'Jouer Les enfants', 'Offrez des moments de plaisir aux enfants avec notre gamme de jouets éducatifs, jeux créatifs et vêtements, conçus pour stimuler l\'imagination et l\'apprentissage.', 399, 10, 6, '2024-10-10 09:58:00', '2024-10-16 11:30:06', 'products\\October2024\\LDVcdeJg3b0vmMnpskY5.jpg', 1),
(21, 'Elctromenager', 'Trouvez tout pour améliorer votre maison et jardin, des meubles modernes aux outils de jardinage, pour créer l\'espace de vos rêves.', 35000, 10, 3, '2024-10-10 10:00:00', '2024-10-16 11:29:37', 'products\\October2024\\OP2G7Fu2B3VBHAtHKOnv.webp', 2),
(22, 'Produit bio', 'Découvrez notre vaste gamme d\'appareils électroniques de haute qualité, incluant smartphones, ordinateurs, télévisions et accessoires pour répondre à tous vos besoins technologiques.', 345, 6, 8, '2024-10-10 12:50:00', '2024-10-16 11:29:24', 'products\\October2024\\mrsmXNsermCbwy0z8U4M.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-10-10 08:16:44', '2024-10-10 08:16:44'),
(2, 'user', 'Normal User', '2024-10-10 08:16:44', '2024-10-10 08:16:44');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'contact', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'Phone', NULL, NULL, 'text', 6, 'Site'),
(12, 'contact.phone', 'Phone', '+212 678983456', NULL, 'text_area', 7, 'Contact'),
(13, 'contact.phone1', 'Phone1', '+212 734567891', NULL, 'text', 8, 'Contact'),
(14, 'contact.email', 'Email', 'EcoShop@gmail.com', NULL, 'text', 9, 'Contact'),
(15, 'contact.map', 'Maps', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13297.712063735416!2d-7.633352361632204!3d33.56823460275265!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda7d2ae179126b7%3A0xed0f844b803032db!2sDerb%20Ghallef%2C%20Casablanca!5e0!3m2!1sfr!2sma!4v1728849527836!5m2!1sfr!2sma\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'code_editor', 10, 'Contact'),
(16, 'contact.adresse', 'Adresse', 'Casablanca,Maroc', NULL, 'text', 11, 'Contact');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-10-10 08:16:46', '2024-10-10 08:16:46'),
(31, 'products', 'name', 21, 'en', 'Household appliances', '2024-10-15 09:08:33', '2024-10-15 09:27:52'),
(32, 'products', 'description', 21, 'en', 'Find everything to improve your home and garden, from modern furniture to gardening tools, to create the space of your dreams.', '2024-10-15 09:08:33', '2024-10-15 09:12:31'),
(33, 'products', 'name', 22, 'en', 'Organic product', '2024-10-15 09:25:58', '2024-10-15 09:25:58'),
(34, 'products', 'description', 22, 'en', 'Discover our wide range of high-quality electronic devices, including smartphones, computers, televisions and accessories to meet all your technology needs.', '2024-10-15 09:25:58', '2024-10-15 09:25:58'),
(35, 'products', 'name', 19, 'en', 'Player Pack Children', '2024-10-15 09:28:48', '2024-10-15 09:28:48'),
(36, 'products', 'description', 19, 'en', 'Give children moments of fun with our range of educational toys, creative games and clothing, designed to stimulate imagination and learning.', '2024-10-15 09:28:48', '2024-10-15 09:28:48'),
(37, 'products', 'name', 20, 'en', 'Play Children', '2024-10-15 09:29:47', '2024-10-15 09:29:47'),
(38, 'products', 'description', 20, 'en', 'Give children moments of fun with our range of educational toys, creative games and clothing, designed to stimulate imagination and learning.', '2024-10-15 09:29:47', '2024-10-15 09:29:47'),
(39, 'products', 'name', 18, 'en', 'Play Pack', '2024-10-15 09:30:59', '2024-10-15 09:31:41'),
(40, 'products', 'description', 18, 'en', 'Give children moments of fun with our range of educational toys, creative games and clothing, designed to stimulate imagination and learning.', '2024-10-15 09:30:59', '2024-10-15 09:31:41'),
(41, 'products', 'name', 16, 'en', 'Makeup', '2024-10-15 09:32:34', '2024-10-15 09:32:34'),
(42, 'products', 'description', 16, 'en', 'Pamper yourself with our beauty and health products, from skincare to wellness devices, to feel and look your best.', '2024-10-15 09:32:34', '2024-10-15 09:32:34'),
(43, 'products', 'name', 17, 'en', 'Packshot', '2024-10-15 09:33:43', '2024-10-15 09:33:43'),
(44, 'products', 'description', 17, 'en', 'Pamper yourself with our beauty and health products, from skincare to wellness devices, to feel and look your best.', '2024-10-15 09:33:43', '2024-10-15 09:33:43'),
(45, 'products', 'name', 14, 'en', 'Men\'s Perfume', '2024-10-15 09:35:03', '2024-10-15 09:35:03'),
(46, 'products', 'description', 14, 'en', 'Pamper yourself with our beauty and health products, from skincare to wellness devices, to feel and look your best.', '2024-10-15 09:35:03', '2024-10-15 09:35:03'),
(47, 'products', 'name', 15, 'en', 'Women\'s Perfume', '2024-10-15 09:36:31', '2024-10-15 09:36:31'),
(48, 'products', 'description', 15, 'en', 'Pamper yourself with our beauty and health products, from skincare to wellness devices, to feel and look your best.', '2024-10-15 09:36:31', '2024-10-15 09:36:31'),
(49, 'products', 'name', 13, 'en', 'Gardener Tool', '2024-10-15 09:37:10', '2024-10-15 09:37:10'),
(50, 'products', 'description', 13, 'en', 'Find everything to improve your home and garden, from modern furniture to gardening tools, to create the space of your dreams.', '2024-10-15 09:37:10', '2024-10-15 09:37:10'),
(51, 'products', 'name', 12, 'en', 'Shovel', '2024-10-15 09:38:06', '2024-10-15 09:38:06'),
(52, 'products', 'description', 12, 'en', 'Find everything to improve your home and garden, from modern furniture to gardening tools, to create the space of your dreams.', '2024-10-15 09:38:06', '2024-10-15 09:38:06'),
(53, 'products', 'name', 3, 'en', 'HP Laptop', '2024-10-15 09:38:51', '2024-10-15 09:38:51'),
(54, 'products', 'description', 3, 'en', 'Discover our wide range of high-quality electronic devices, including smartphones, computers, televisions and accessories to meet all your technology needs.', '2024-10-15 09:38:51', '2024-10-15 09:38:51'),
(55, 'products', 'name', 4, 'en', 'OPPO Smartphone', '2024-10-15 09:39:36', '2024-10-15 09:39:36'),
(56, 'products', 'description', 4, 'en', 'Discover our wide range of high-quality electronic devices, including smartphones, computers, televisions and accessories to meet all your technology needs.', '2024-10-15 09:39:36', '2024-10-15 09:39:36'),
(57, 'products', 'name', 5, 'en', 'Treadmill', '2024-10-15 09:40:37', '2024-10-15 09:40:37'),
(58, 'products', 'description', 5, 'en', 'Get ready for your favorite sports activities and hobbies with our selection of sports equipment, clothing and accessories for an active lifestyle.', '2024-10-15 09:40:37', '2024-10-15 09:40:37'),
(59, 'products', 'name', 6, 'en', 'Bodybuilding', '2024-10-15 09:41:32', '2024-10-15 09:41:32'),
(60, 'products', 'description', 6, 'en', 'Get ready for your favorite sports activities and hobbies with our selection of sports equipment, clothing and accessories for an active lifestyle.', '2024-10-15 09:41:32', '2024-10-15 09:41:32'),
(61, 'products', 'name', 7, 'en', 'Fitness Bodybuilding', '2024-10-15 09:42:17', '2024-10-15 09:42:17'),
(62, 'products', 'description', 7, 'en', 'Get ready for your favorite sports activities and hobbies with our selection of sports equipment, clothing and accessories for an active lifestyle.', '2024-10-15 09:42:17', '2024-10-15 09:42:17'),
(63, 'products', 'name', 8, 'en', 'Les Medias Contre La Rue', '2024-10-15 09:43:01', '2024-10-15 09:43:01'),
(64, 'products', 'description', 8, 'en', 'Immerse yourself in a world of entertainment with our captivating books, films, music and video games for all ages and tastes.', '2024-10-15 09:43:01', '2024-10-15 09:43:01'),
(65, 'products', 'name', 9, 'en', 'Marketing Des Médias Sociaux', '2024-10-15 09:43:28', '2024-10-15 09:43:28'),
(66, 'products', 'description', 9, 'en', 'Immerse yourself in a world of entertainment with our captivating books, films, music and video games for all ages and tastes.', '2024-10-15 09:43:28', '2024-10-15 09:43:28'),
(67, 'products', 'name', 10, 'en', 'Nostalgies Contemporaines', '2024-10-15 09:44:19', '2024-10-15 09:44:19'),
(68, 'products', 'description', 10, 'en', 'Immerse yourself in a world of entertainment with our captivating books, films, music and video games for all ages and tastes.', '2024-10-15 09:44:19', '2024-10-15 09:46:54'),
(69, 'products', 'name', 11, 'en', 'Furniture', '2024-10-15 09:48:15', '2024-10-15 09:48:15'),
(70, 'products', 'description', 11, 'en', 'Find everything to improve your home and garden, from modern furniture to gardening tools, to create the space of your dreams.', '2024-10-15 09:48:15', '2024-10-15 09:48:15'),
(71, 'products', 'name', 2, 'en', 'GAMMER Laptop', '2024-10-15 09:50:48', '2024-10-15 09:50:48'),
(72, 'products', 'description', 2, 'en', 'Discover our wide range of high quality electronic devices, including smartphones, computers, televisions and accessories to meet all your technology needs.', '2024-10-15 09:50:48', '2024-10-15 09:50:48'),
(73, 'products', 'name', 1, 'en', 'SmartPhone', '2024-10-15 09:51:14', '2024-10-15 09:51:14'),
(74, 'products', 'description', 1, 'en', 'Discover our wide range of high quality electronic devices, including smartphones, computers, televisions and accessories to meet all your technology needs.', '2024-10-15 09:51:14', '2024-10-15 09:51:14'),
(75, 'menu_items', 'title', 23, 'en', 'Home', '2024-10-15 10:34:03', '2024-10-15 10:34:03'),
(76, 'menu_items', 'title', 24, 'en', 'About', '2024-10-15 10:38:42', '2024-10-15 10:38:42'),
(77, 'menu_items', 'title', 25, 'en', 'Shop', '2024-10-15 10:39:58', '2024-10-15 10:39:58'),
(78, 'menu_items', 'title', 26, 'en', 'Contact', '2024-10-16 09:44:29', '2024-10-16 09:44:29'),
(79, 'data_rows', 'display_name', 59, 'en', 'Id', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(80, 'data_rows', 'display_name', 60, 'en', 'Name', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(81, 'data_rows', 'display_name', 61, 'en', 'Description', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(82, 'data_rows', 'display_name', 62, 'en', 'Prix', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(83, 'data_rows', 'display_name', 63, 'en', 'Stock', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(84, 'data_rows', 'display_name', 64, 'en', 'Category Id', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(85, 'data_rows', 'display_name', 65, 'en', 'Created At', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(86, 'data_rows', 'display_name', 66, 'en', 'Updated At', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(87, 'data_rows', 'display_name', 106, 'en', 'Image', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(88, 'data_rows', 'display_name', 73, 'en', 'cats', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(89, 'data_rows', 'display_name', 128, 'en', 'boutiques', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(90, 'data_types', 'display_name_singular', 10, 'en', 'Product', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(91, 'data_types', 'display_name_plural', 10, 'en', 'Products', '2024-10-16 11:00:29', '2024-10-16 11:00:29'),
(92, 'data_rows', 'display_name', 118, 'en', 'Id', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(93, 'data_rows', 'display_name', 119, 'en', 'Name', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(94, 'data_rows', 'display_name', 120, 'en', 'Nom', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(95, 'data_rows', 'display_name', 121, 'en', 'Prenom', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(96, 'data_rows', 'display_name', 122, 'en', 'Phone', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(97, 'data_rows', 'display_name', 123, 'en', 'Email', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(98, 'data_rows', 'display_name', 124, 'en', 'Password', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(99, 'data_rows', 'display_name', 125, 'en', 'Adresse', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(100, 'data_rows', 'display_name', 126, 'en', 'Created At', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(101, 'data_rows', 'display_name', 127, 'en', 'Updated At', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(102, 'data_rows', 'display_name', 130, 'en', 'products', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(103, 'data_types', 'display_name_singular', 20, 'en', 'Boutique', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(104, 'data_types', 'display_name_plural', 20, 'en', 'Boutiques', '2024-10-16 11:01:52', '2024-10-16 11:01:52'),
(105, 'data_rows', 'display_name', 129, 'en', 'Boutique Id', '2024-10-16 11:04:05', '2024-10-16 11:04:05'),
(106, 'data_rows', 'display_name', 68, 'en', 'Id', '2024-10-16 11:23:55', '2024-10-16 11:23:55'),
(107, 'data_rows', 'display_name', 69, 'en', 'Name', '2024-10-16 11:23:55', '2024-10-16 11:23:55'),
(108, 'data_rows', 'display_name', 70, 'en', 'Description', '2024-10-16 11:23:55', '2024-10-16 11:23:55'),
(109, 'data_rows', 'display_name', 71, 'en', 'Created At', '2024-10-16 11:23:55', '2024-10-16 11:23:55'),
(110, 'data_rows', 'display_name', 72, 'en', 'Updated At', '2024-10-16 11:23:55', '2024-10-16 11:23:55'),
(111, 'data_types', 'display_name_singular', 12, 'en', 'Cat', '2024-10-16 11:23:55', '2024-10-16 11:23:55'),
(112, 'data_types', 'display_name_plural', 12, 'en', 'Cats', '2024-10-16 11:23:55', '2024-10-16 11:23:55'),
(113, 'data_rows', 'display_name', 131, 'en', 'Logo', '2024-10-17 10:06:35', '2024-10-17 10:06:35'),
(114, 'data_rows', 'display_name', 132, 'en', 'User Id', '2024-10-17 10:07:56', '2024-10-17 10:07:56'),
(115, 'data_rows', 'display_name', 133, 'en', 'users', '2024-10-17 10:07:56', '2024-10-17 10:07:56');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$12$W2c4m/jRnu5gC/qCopoAseK8rZxjHmQbM1m.6zTCAj0O2tKP6xUuW', 'pev2NBAgLkqElerAeHwwqD5nIcQsVghvGKQ9XVxJpZPw71qaCeTwnE4YERDL', NULL, '2024-10-10 08:16:45', '2024-10-10 08:16:45'),
(3, 2, 'MostafaShop', 'mannanimostafa04@gmail.com', 'users/default.png', NULL, '$2y$12$Oca7CMy3QwqDey83/8.zmeX1Cp28psUxwnBZtq6.BWdfDLeOUW3Ny', NULL, '{\"locale\":\"fr\"}', '2024-10-17 10:10:40', '2024-10-17 10:10:40'),
(4, 2, 'ShopTaher', 'ofpptdigital2004@gmail.com', 'users/default.png', NULL, '$2y$12$S8qZLBYzRMD.qvpK9lxMNerRq54qxltT5PUTSoN7mjEUMUj1JyM52', NULL, '{\"locale\":\"fr\"}', '2024-10-17 10:11:53', '2024-10-17 10:11:53');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 2),
(4, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `laivraisons`
--
ALTER TABLE `laivraisons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boutiques`
--
ALTER TABLE `boutiques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `laivraisons`
--
ALTER TABLE `laivraisons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
