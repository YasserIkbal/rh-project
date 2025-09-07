-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 07 sep. 2025 à 21:18
-- Version du serveur : 10.5.28-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ahmar_33`
--
CREATE DATABASE IF NOT EXISTS `ahmar_33` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `ahmar_33`;

-- --------------------------------------------------------

--
-- Structure de la table `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'pbkdf2_sha256$600000$sHBfFyQbkPlo5XsC7OOXdo$x2DFJ1kvDmDJ+uo0S3KvlH3vgvgc+a4m3gDJR91YYPA=', '2025-08-01 10:41:44.752825', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-08-01 10:41:14.325997', 0, '2025-08-01 10:41:15.037474', '2025-08-01 10:41:15.037493'),
(2, 'pbkdf2_sha256$600000$JCn8WNPewdQratIK4piEA5$Q7rMeSCoQo52jPqPcLXXfx3nyPFPan46X1RCJmUWRFk=', '2025-08-08 17:35:57.230735', 0, 'hmed', 'hmed', 'hmidman', 'hmed@gmail.com', 0, 1, '2025-08-08 17:35:40.364625', 0, '2025-08-08 17:35:41.723529', '2025-08-09 16:25:17.595710'),
(3, 'pbkdf2_sha256$600000$dS1osGznP6hLcFzcULnnGa$pEoQoOENLL7CaK/fG0A6lYkbtPeeVD44j/635pSk4tQ=', '2025-08-08 18:15:39.390189', 1, 'ahmar', '', '', 'ahmar@gmail.com', 1, 1, '2025-08-08 17:39:46.000000', 1, '2025-08-08 17:39:47.082215', '2025-08-08 18:09:22.088728'),
(4, 'pbkdf2_sha256$600000$GLTHryur480zcAtSjVQ61x$vk9fe3C3CECGesU+qgEEfdJLMguzhQ9fvoUn9gC5tyI=', '2025-08-08 17:50:12.182627', 1, 'nabil', '', '', 'nabil@gmail.com', 1, 1, '2025-08-08 17:49:44.407100', 0, '2025-08-08 17:49:44.995201', '2025-08-08 17:49:44.995214'),
(5, 'pbkdf2_sha256$600000$u4gLGnPdck4fxBZvRqzJY2$Fyj39EABqKtZ+ad0ruV9Q67BMlI3cqR/RNJo71T2OF0=', '2025-08-09 16:50:46.441649', 0, 'hp', '', '', 'hp@gmail.com', 0, 1, '2025-08-08 17:54:01.664143', 0, '2025-08-08 17:54:02.253018', '2025-08-09 16:21:58.263699'),
(6, 'pbkdf2_sha256$600000$RMHtsHy9wQ5yBUr1ihjE6O$Y+52xsP4hKh1OusIqJvfZTfuTT2sA5C46DbASBeX1sk=', '2025-08-09 16:52:29.208499', 1, 'othmaneahmar', '', '', 'no@gmail.com', 1, 1, '2025-08-08 17:56:41.000000', 1, '2025-08-08 17:56:42.347443', '2025-08-09 16:22:30.308230');

-- --------------------------------------------------------

--
-- Structure de la table `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add Produit', 7, 'add_product'),
(26, 'Can change Produit', 7, 'change_product'),
(27, 'Can delete Produit', 7, 'delete_product'),
(28, 'Can view Produit', 7, 'view_product'),
(29, 'Can add Commande', 8, 'add_order'),
(30, 'Can change Commande', 8, 'change_order'),
(31, 'Can delete Commande', 8, 'delete_order'),
(32, 'Can view Commande', 8, 'view_order'),
(33, 'Can add Article de commande', 9, 'add_orderitem'),
(34, 'Can change Article de commande', 9, 'change_orderitem'),
(35, 'Can delete Article de commande', 9, 'delete_orderitem'),
(36, 'Can view Article de commande', 9, 'view_orderitem'),
(37, 'Can add Mouvement de Stock', 10, 'add_stockmovement'),
(38, 'Can change Mouvement de Stock', 10, 'change_stockmovement'),
(39, 'Can delete Mouvement de Stock', 10, 'delete_stockmovement'),
(40, 'Can view Mouvement de Stock', 10, 'view_stockmovement');

-- --------------------------------------------------------

--
-- Structure de la table `core_order`
--

CREATE TABLE `core_order` (
  `id` bigint(20) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `client_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `core_order`
--

INSERT INTO `core_order` (`id`, `order_date`, `status`, `created_at`, `updated_at`, `client_id`) VALUES
(5, '2025-08-08 06:27:18.574062', 'confirmed', '2025-08-08 06:27:18.574132', '2025-08-08 06:27:18.584649', 1),
(6, '2025-08-08 20:00:06.574524', 'confirmed', '2025-08-08 20:00:06.574671', '2025-08-08 20:00:06.611689', 3),
(9, '2025-08-09 16:51:10.288482', 'confirmed', '2025-08-09 16:51:10.288534', '2025-08-09 16:51:10.306912', 5);

-- --------------------------------------------------------

--
-- Structure de la table `core_orderitem`
--

CREATE TABLE `core_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `core_orderitem`
--

INSERT INTO `core_orderitem` (`id`, `quantity`, `price`, `order_id`, `product_id`) VALUES
(5, 2, 3000.00, 5, 4),
(6, 1, 1500.00, 6, 4),
(8, 1, 2000.00, 9, 4);

-- --------------------------------------------------------

--
-- Structure de la table `core_product`
--

CREATE TABLE `core_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `core_product`
--

INSERT INTO `core_product` (`id`, `name`, `description`, `quantity`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'capot', 'gkjv', 2, 1400.00, 'products/golf.webp', '2025-08-01 11:09:22.321230', '2025-08-08 18:12:12.331165'),
(4, 'pare-chocs', 'pare-chocs', 2, 2000.00, 'products/pare-chocs_itcRLhI.webp', '2025-08-08 06:27:01.805406', '2025-08-09 16:51:10.295177');

-- --------------------------------------------------------

--
-- Structure de la table `core_stockmovement`
--

CREATE TABLE `core_stockmovement` (
  `id` bigint(20) NOT NULL,
  `movement_type` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `source` varchar(200) DEFAULT NULL,
  `destination` varchar(200) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `core_stockmovement`
--

INSERT INTO `core_stockmovement` (`id`, `movement_type`, `quantity`, `reason`, `source`, `destination`, `created_at`, `product_id`, `order_id`) VALUES
(5, 'in', 6, 'Nouveau produit ajouté', 'Stock initial', 'Stock', '2025-08-08 06:27:01.808932', 4, NULL),
(6, 'out', 2, 'Commande #5', 'Stock', 'Client', '2025-08-08 06:27:18.583505', 4, 5),
(7, 'out', 1, 'Commande #6', 'Stock', 'Client', '2025-08-08 20:00:06.600084', 4, 6),
(8, 'out', 1, 'Commande #8', 'Stock', 'Client', '2025-08-08 20:03:17.720415', 4, NULL),
(9, 'out', 1, 'Commande #9', 'Stock', 'Client', '2025-08-09 16:51:10.302143', 4, 9);

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-08-01 11:09:22.322382', '1', 'capot', 1, '[{\"added\": {}}]', 7, 1),
(2, '2025-08-08 05:24:35.847096', '1', 'Commande #1 - admin', 3, '', 8, 1),
(3, '2025-08-08 05:25:28.332551', '1', 'Commande #1 - admin', 3, '', 8, 1),
(4, '2025-08-08 06:09:25.814289', '2', 'pare-chocs', 3, '', 7, 1),
(5, '2025-08-08 06:11:46.775500', '3', 'Commande #3 - admin', 3, '', 8, 1),
(6, '2025-08-08 06:24:26.779559', '4', 'pare-chocs x 2', 3, '', 9, 1),
(7, '2025-08-08 06:24:36.502996', '4', 'Commande #4 - admin', 3, '', 8, 1),
(8, '2025-08-08 06:25:10.090775', '3', 'pare-chocs', 3, '', 7, 1),
(9, '2025-08-08 18:04:15.878906', '6', 'othmaneahmar', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 6),
(10, '2025-08-08 18:04:25.744914', '3', 'ahmar', 2, '[{\"changed\": {\"fields\": [\"Is admin\"]}}]', 6, 6),
(11, '2025-08-08 18:09:04.447673', '3', 'ahmar', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\", \"Is admin\"]}}]', 6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'user'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(8, 'core', 'order'),
(9, 'core', 'orderitem'),
(7, 'core', 'product'),
(10, 'core', 'stockmovement'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-08-01 10:40:22.784793'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-08-01 10:40:22.879535'),
(3, 'auth', '0001_initial', '2025-08-01 10:40:23.196471'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-08-01 10:40:23.262888'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-08-01 10:40:23.278589'),
(6, 'auth', '0004_alter_user_username_opts', '2025-08-01 10:40:23.291815'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-08-01 10:40:23.304536'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-08-01 10:40:23.308325'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-08-01 10:40:23.319860'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-08-01 10:40:23.328380'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-08-01 10:40:23.338149'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-08-01 10:40:23.353409'),
(13, 'auth', '0011_update_proxy_permissions', '2025-08-01 10:40:23.366363'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-08-01 10:40:23.376464'),
(15, 'accounts', '0001_initial', '2025-08-01 10:40:23.688862'),
(16, 'admin', '0001_initial', '2025-08-01 10:40:23.828602'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-08-01 10:40:23.839269'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-08-01 10:40:23.852520'),
(19, 'sessions', '0001_initial', '2025-08-01 10:40:23.886287'),
(20, 'core', '0001_initial', '2025-08-01 10:44:56.708831'),
(21, 'core', '0002_stockmovement', '2025-08-01 11:34:45.314418'),
(22, 'core', '0003_stockmovement_order', '2025-08-08 05:25:18.086787');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fm0pkpxs5al7zrtf5hpgpv84jo2lhqj9', '.eJxVjEEOwiAQRe_C2hAHplhcuvcMZIYBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqsnDr8bkzxkeoG5E711nRsdZkn1puid9r1tUl6Xnb376BQL98akyWMHshYc4rgRjTAaMUKAPMAgmj4GMUjcPZD9hDFZcjANDr2Wb0_08c38A:1ukmo1:4hJJVbAaFlavm5nmFwLqiS_vr9cx9bF5swuFE9FGBdc', '2025-08-23 16:52:29.212143'),
('n7habu3xacp7lzhcx3zgzx0oldxfgl6w', '.eJxVjEEOwiAQRe_C2hAHplhcuvcMZIYBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqsnDr8bkzxkeoG5E711nRsdZkn1puid9r1tUl6Xnb376BQL98akyWMHshYc4rgRjTAaMUKAPMAgmj4GMUjcPZD9hDFZcjANDr2Wb0_08c38A:1ukRKo:Hm0Tg9e8YWEbntOoT4DKc7i-AWsRbWnnfVtL1xAuAEo', '2025-08-22 17:56:54.601497');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `core_order`
--
ALTER TABLE `core_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_order_client_id_ef19d999_fk_accounts_user_id` (`client_id`);

--
-- Index pour la table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_orderitem_order_id_product_id_c19895da_uniq` (`order_id`,`product_id`),
  ADD KEY `core_orderitem_product_id_0c2047cd_fk_core_product_id` (`product_id`);

--
-- Index pour la table `core_product`
--
ALTER TABLE `core_product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `core_stockmovement`
--
ALTER TABLE `core_stockmovement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_stockmovement_product_id_bd647177_fk_core_product_id` (`product_id`),
  ADD KEY `core_stockmovement_order_id_dedf2c29_fk_core_order_id` (`order_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `core_order`
--
ALTER TABLE `core_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `core_product`
--
ALTER TABLE `core_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `core_stockmovement`
--
ALTER TABLE `core_stockmovement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Contraintes pour la table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `core_order`
--
ALTER TABLE `core_order`
  ADD CONSTRAINT `core_order_client_id_ef19d999_fk_accounts_user_id` FOREIGN KEY (`client_id`) REFERENCES `accounts_user` (`id`);

--
-- Contraintes pour la table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  ADD CONSTRAINT `core_orderitem_order_id_30929c10_fk_core_order_id` FOREIGN KEY (`order_id`) REFERENCES `core_order` (`id`),
  ADD CONSTRAINT `core_orderitem_product_id_0c2047cd_fk_core_product_id` FOREIGN KEY (`product_id`) REFERENCES `core_product` (`id`);

--
-- Contraintes pour la table `core_stockmovement`
--
ALTER TABLE `core_stockmovement`
  ADD CONSTRAINT `core_stockmovement_order_id_dedf2c29_fk_core_order_id` FOREIGN KEY (`order_id`) REFERENCES `core_order` (`id`),
  ADD CONSTRAINT `core_stockmovement_product_id_bd647177_fk_core_product_id` FOREIGN KEY (`product_id`) REFERENCES `core_product` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);
--
-- Base de données : `biblio_thèque`
--
CREATE DATABASE IF NOT EXISTS `biblio_thèque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblio_thèque`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add genre', 8, 'add_genre'),
(30, 'Can change genre', 8, 'change_genre'),
(31, 'Can delete genre', 8, 'delete_genre'),
(32, 'Can view genre', 8, 'view_genre'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add borrowing', 10, 'add_borrowing'),
(38, 'Can change borrowing', 10, 'change_borrowing'),
(39, 'Can delete borrowing', 10, 'delete_borrowing'),
(40, 'Can view borrowing', 10, 'view_borrowing'),
(41, 'Can add review', 11, 'add_review'),
(42, 'Can change review', 11, 'change_review'),
(43, 'Can delete review', 11, 'delete_review'),
(44, 'Can view review', 11, 'view_review');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$dLrYL4lt9arYsz2RZWSOUv$7zL8/6lPFYqpxfil3nBOsemQRYE11sYPbg0pcMhzE1w=', '2025-04-25 01:52:10.938348', 1, 'hp', '', '', 'ikbalyasser@gmail.com', 1, 1, '2025-04-25 01:19:21.483003');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'base', 'book'),
(10, 'base', 'borrowing'),
(8, 'base', 'genre'),
(9, 'base', 'product'),
(11, 'base', 'review'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-25 01:18:03.114307'),
(2, 'auth', '0001_initial', '2025-04-25 01:18:03.878542'),
(3, 'admin', '0001_initial', '2025-04-25 01:18:04.044522'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-25 01:18:04.063058'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-25 01:18:04.088866'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-25 01:18:04.218003'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-25 01:18:04.299797'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-25 01:18:04.340943'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-25 01:18:04.375419'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-25 01:18:04.469933'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-25 01:18:04.472946'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-25 01:18:04.483162'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-25 01:18:04.508499'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-25 01:18:04.529926'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-25 01:18:04.554225'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-25 01:18:04.569359'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-25 01:18:04.595259'),
(18, 'sessions', '0001_initial', '2025-04-25 01:18:04.634962'),
(19, 'base', '0001_initial', '2025-04-25 01:21:49.298901');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ny0andp7siirb873ien0efh8ixh2ucse', '.eJxVjEEOwiAQRe_C2hBgKAGX7j0DGYZBqgaS0q6Md9cmXej2v_f-S0Tc1hq3wUucszgLLU6_W0J6cNtBvmO7dUm9rcuc5K7Igw557Zmfl8P9O6g46rcmS8YYSqBVJp8UA4NXFMgVh2BMAPQQFLvM2pGdOPkCBqeCCpMNXrw_6W44Hw:1u88Ec:AfseiucLQNHcvGQdCRPy5pONFmFRDH99Z69Q2SX3Hk4', '2025-05-09 01:52:10.942897');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de données : `	biblio_thèque21`
--
CREATE DATABASE IF NOT EXISTS `	biblio_thèque21` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `	biblio_thèque21`;
--
-- Base de données : `boustane-21`
--
CREATE DATABASE IF NOT EXISTS `boustane-21` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `boustane-21`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add commande', 7, 'add_commande'),
(26, 'Can change commande', 7, 'change_commande'),
(27, 'Can delete commande', 7, 'delete_commande'),
(28, 'Can view commande', 7, 'view_commande'),
(29, 'Can add produit', 8, 'add_produit'),
(30, 'Can change produit', 8, 'change_produit'),
(31, 'Can delete produit', 8, 'delete_produit'),
(32, 'Can view produit', 8, 'view_produit'),
(33, 'Can add mouvement stock', 9, 'add_mouvementstock'),
(34, 'Can change mouvement stock', 9, 'change_mouvementstock'),
(35, 'Can delete mouvement stock', 9, 'delete_mouvementstock'),
(36, 'Can view mouvement stock', 9, 'view_mouvementstock'),
(37, 'Can add commande produit', 10, 'add_commandeproduit'),
(38, 'Can change commande produit', 10, 'change_commandeproduit'),
(39, 'Can delete commande produit', 10, 'delete_commandeproduit'),
(40, 'Can view commande produit', 10, 'view_commandeproduit');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$im2k4Hu770cJF27iUk3Mw2$48YXRfjji6KOCKiBgP9jH4S3oAlhPzrNfKmN6FJxWQU=', '2025-07-28 23:45:35.586826', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-07-28 21:33:54.314690');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'stock', 'commande'),
(10, 'stock', 'commandeproduit'),
(9, 'stock', 'mouvementstock'),
(8, 'stock', 'produit');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-07-28 21:28:44.826296'),
(2, 'auth', '0001_initial', '2025-07-28 21:28:45.231336'),
(3, 'admin', '0001_initial', '2025-07-28 21:28:45.335702'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-07-28 21:28:45.343365'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-07-28 21:28:45.351698'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-07-28 21:28:45.412729'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-07-28 21:28:45.456397'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-07-28 21:28:45.476361'),
(9, 'auth', '0004_alter_user_username_opts', '2025-07-28 21:28:45.492624'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-07-28 21:28:45.546091'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-07-28 21:28:45.554076'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-07-28 21:28:45.562206'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-07-28 21:28:45.580901'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-07-28 21:28:45.597533'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-07-28 21:28:45.613425'),
(16, 'auth', '0011_update_proxy_permissions', '2025-07-28 21:28:45.624767'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-07-28 21:28:45.638922'),
(18, 'sessions', '0001_initial', '2025-07-28 21:28:45.681336'),
(19, 'stock', '0001_initial', '2025-07-28 21:28:45.892303'),
(20, 'stock', '0002_commande_status_produit_image', '2025-07-28 22:10:24.275860');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('h14bjffkbgbofzghjzkls0hfk5y7aduh', '.eJxVjEEOwiAQRe_C2hAoOGVcuu8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnERWpx-t0DxkeoO-E711mRsdV3mIHdFHrTLqXF6Xg_376BQL98aHUccB6MxAYRMjlQcoj0zGM1EChxnMpZHRRh0yokpIztUQGDAonh_APVeOHA:1ugXXD:QednZKLr3v0ehnputh_Po20TEaofeUskacdv6infB9E', '2025-08-11 23:45:35.590665');

-- --------------------------------------------------------

--
-- Structure de la table `stock_commande`
--

CREATE TABLE `stock_commande` (
  `id` bigint(20) NOT NULL,
  `client_nom` varchar(200) NOT NULL,
  `date_commande` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stock_commande`
--

INSERT INTO `stock_commande` (`id`, `client_nom`, `date_commande`, `status`) VALUES
(1, 'hmed', '2025-07-28 21:48:28.455061', 'pending'),
(2, 'hmed', '2025-07-28 21:48:33.912344', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `stock_commandeproduit`
--

CREATE TABLE `stock_commandeproduit` (
  `id` bigint(20) NOT NULL,
  `quantite` int(11) NOT NULL,
  `commande_id` bigint(20) NOT NULL,
  `produit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock_mouvementstock`
--

CREATE TABLE `stock_mouvementstock` (
  `id` bigint(20) NOT NULL,
  `type_mouvement` varchar(6) NOT NULL,
  `quantite` int(11) NOT NULL,
  `date_mouvement` datetime(6) NOT NULL,
  `produit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock_produit`
--

CREATE TABLE `stock_produit` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `quantite` int(11) NOT NULL,
  `lieu_stockage` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stock_produit`
--

INSERT INTO `stock_produit` (`id`, `nom`, `reference`, `quantite`, `lieu_stockage`, `image`) VALUES
(1, 'capot', '12', 1, '23', 'product_images/golf.webp');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `stock_commande`
--
ALTER TABLE `stock_commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock_commandeproduit`
--
ALTER TABLE `stock_commandeproduit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stock_commandeproduit_produit_id_commande_id_4adee087_uniq` (`produit_id`,`commande_id`),
  ADD KEY `stock_commandeproduit_commande_id_62a4e5de_fk_stock_commande_id` (`commande_id`);

--
-- Index pour la table `stock_mouvementstock`
--
ALTER TABLE `stock_mouvementstock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_mouvementstock_produit_id_01608615_fk_stock_produit_id` (`produit_id`);

--
-- Index pour la table `stock_produit`
--
ALTER TABLE `stock_produit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `stock_commande`
--
ALTER TABLE `stock_commande`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `stock_commandeproduit`
--
ALTER TABLE `stock_commandeproduit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock_mouvementstock`
--
ALTER TABLE `stock_mouvementstock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stock_produit`
--
ALTER TABLE `stock_produit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `stock_commandeproduit`
--
ALTER TABLE `stock_commandeproduit`
  ADD CONSTRAINT `stock_commandeproduit_commande_id_62a4e5de_fk_stock_commande_id` FOREIGN KEY (`commande_id`) REFERENCES `stock_commande` (`id`),
  ADD CONSTRAINT `stock_commandeproduit_produit_id_6c2d893b_fk_stock_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `stock_produit` (`id`);

--
-- Contraintes pour la table `stock_mouvementstock`
--
ALTER TABLE `stock_mouvementstock`
  ADD CONSTRAINT `stock_mouvementstock_produit_id_01608615_fk_stock_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `stock_produit` (`id`);
--
-- Base de données : `cabek_21`
--
CREATE DATABASE IF NOT EXISTS `cabek_21` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `cabek_21`;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-07-31 08:44:09.814719');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);
--
-- Base de données : `cdma_db`
--
CREATE DATABASE IF NOT EXISTS `cdma_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cdma_db`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Profil utilisateur', 7, 'add_userprofile'),
(26, 'Can change Profil utilisateur', 7, 'change_userprofile'),
(27, 'Can delete Profil utilisateur', 7, 'delete_userprofile'),
(28, 'Can view Profil utilisateur', 7, 'view_userprofile'),
(29, 'Can add Produit', 8, 'add_product'),
(30, 'Can change Produit', 8, 'change_product'),
(31, 'Can delete Produit', 8, 'delete_product'),
(32, 'Can view Produit', 8, 'view_product'),
(33, 'Can add Commande', 9, 'add_order'),
(34, 'Can change Commande', 9, 'change_order'),
(35, 'Can delete Commande', 9, 'delete_order'),
(36, 'Can view Commande', 9, 'view_order'),
(37, 'Can add Article de commande', 10, 'add_orderitem'),
(38, 'Can change Article de commande', 10, 'change_orderitem'),
(39, 'Can delete Article de commande', 10, 'delete_orderitem'),
(40, 'Can view Article de commande', 10, 'view_orderitem'),
(41, 'Can add Mouvement de stock', 11, 'add_stockmovement'),
(42, 'Can change Mouvement de stock', 11, 'change_stockmovement'),
(43, 'Can delete Mouvement de stock', 11, 'delete_stockmovement'),
(44, 'Can view Mouvement de stock', 11, 'view_stockmovement'),
(45, 'Can add Crédit fournisseur', 12, 'add_suppliercredit'),
(46, 'Can change Crédit fournisseur', 12, 'change_suppliercredit'),
(47, 'Can delete Crédit fournisseur', 12, 'delete_suppliercredit'),
(48, 'Can view Crédit fournisseur', 12, 'view_suppliercredit'),
(49, 'Can add Paiement de crédit', 13, 'add_creditpayment'),
(50, 'Can change Paiement de crédit', 13, 'change_creditpayment'),
(51, 'Can delete Paiement de crédit', 13, 'delete_creditpayment'),
(52, 'Can view Paiement de crédit', 13, 'view_creditpayment');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$XIR65MltZLNsnEUO04oFJy$OvT6M70ciRbREFTkgRdFw4qc3HuQFWGTk3YWYwCKiCQ=', '2025-06-30 09:27:28.942196', 1, 'ikbal', '', '', 'ikbalyasseav@gmail.com', 1, 1, '2025-06-25 13:38:24.938446');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'inventory', 'creditpayment'),
(9, 'inventory', 'order'),
(10, 'inventory', 'orderitem'),
(8, 'inventory', 'product'),
(11, 'inventory', 'stockmovement'),
(12, 'inventory', 'suppliercredit'),
(7, 'inventory', 'userprofile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-06-25 13:36:50.097993'),
(2, 'auth', '0001_initial', '2025-06-25 13:36:50.520983'),
(3, 'admin', '0001_initial', '2025-06-25 13:36:50.631328'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-06-25 13:36:50.640250'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-06-25 13:36:50.651128'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-06-25 13:36:50.718460'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-06-25 13:36:50.763212'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-06-25 13:36:50.780411'),
(9, 'auth', '0004_alter_user_username_opts', '2025-06-25 13:36:50.789596'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-06-25 13:36:50.839359'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-06-25 13:36:50.841833'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-06-25 13:36:50.850067'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-06-25 13:36:50.892191'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-06-25 13:36:50.920531'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-06-25 13:36:50.937395'),
(16, 'auth', '0011_update_proxy_permissions', '2025-06-25 13:36:50.951521'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-06-25 13:36:50.963929'),
(18, 'sessions', '0001_initial', '2025-06-25 13:36:50.986721'),
(19, 'inventory', '0001_initial', '2025-06-26 09:56:56.939454');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6xypa358uldcvjezj5jfmv687bjlnl7m', '.eJxVjEEOgjAQRe_StWmmjMDg0j1nIJ3O1KKmTSisjHdXEha6_e-9_zKT39Y0bVWXaRZzMc6cfjf24aF5B3L3-VZsKHldZra7Yg9a7VhEn9fD_TtIvqZvHSI76JAAhx7FozRRYBAiRWSN6PRMwEp9G1wLiDA04hoOHRBTS2TeH9sIN0A:1uWAnQ:NMYSXVVFble8q8Mrd_9LZLpY95JvG_H8LtE9yUIte0Y', '2025-07-14 09:27:28.953865');

-- --------------------------------------------------------

--
-- Structure de la table `inventory_creditpayment`
--

CREATE TABLE `inventory_creditpayment` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `credit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_order`
--

CREATE TABLE `inventory_order` (
  `id` bigint(20) NOT NULL,
  `customer` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_orderitem`
--

CREATE TABLE `inventory_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_product`
--

CREATE TABLE `inventory_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `alert_threshold` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_stockmovement`
--

CREATE TABLE `inventory_stockmovement` (
  `id` bigint(20) NOT NULL,
  `movement_type` varchar(3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_suppliercredit`
--

CREATE TABLE `inventory_suppliercredit` (
  `id` bigint(20) NOT NULL,
  `supplier` varchar(200) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inventory_userprofile`
--

CREATE TABLE `inventory_userprofile` (
  `id` bigint(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `inventory_creditpayment`
--
ALTER TABLE `inventory_creditpayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_creditpaym_credit_id_4f3d77f2_fk_inventory` (`credit_id`);

--
-- Index pour la table `inventory_order`
--
ALTER TABLE `inventory_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_order_created_by_id_56114c33_fk_auth_user_id` (`created_by_id`);

--
-- Index pour la table `inventory_orderitem`
--
ALTER TABLE `inventory_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_orderitem_order_id_72ba1749_fk_inventory_order_id` (`order_id`),
  ADD KEY `inventory_orderitem_product_id_4b9e605e_fk_inventory_product_id` (`product_id`);

--
-- Index pour la table `inventory_product`
--
ALTER TABLE `inventory_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`);

--
-- Index pour la table `inventory_stockmovement`
--
ALTER TABLE `inventory_stockmovement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_stockmovement_created_by_id_9a39cb99_fk_auth_user_id` (`created_by_id`),
  ADD KEY `inventory_stockmovement_order_id_12654f30_fk_inventory_order_id` (`order_id`),
  ADD KEY `inventory_stockmovem_product_id_4eccfd0a_fk_inventory` (`product_id`);

--
-- Index pour la table `inventory_suppliercredit`
--
ALTER TABLE `inventory_suppliercredit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inventory_userprofile`
--
ALTER TABLE `inventory_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `inventory_creditpayment`
--
ALTER TABLE `inventory_creditpayment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory_order`
--
ALTER TABLE `inventory_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory_orderitem`
--
ALTER TABLE `inventory_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory_product`
--
ALTER TABLE `inventory_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory_stockmovement`
--
ALTER TABLE `inventory_stockmovement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory_suppliercredit`
--
ALTER TABLE `inventory_suppliercredit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inventory_userprofile`
--
ALTER TABLE `inventory_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `inventory_creditpayment`
--
ALTER TABLE `inventory_creditpayment`
  ADD CONSTRAINT `inventory_creditpaym_credit_id_4f3d77f2_fk_inventory` FOREIGN KEY (`credit_id`) REFERENCES `inventory_suppliercredit` (`id`);

--
-- Contraintes pour la table `inventory_order`
--
ALTER TABLE `inventory_order`
  ADD CONSTRAINT `inventory_order_created_by_id_56114c33_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `inventory_orderitem`
--
ALTER TABLE `inventory_orderitem`
  ADD CONSTRAINT `inventory_orderitem_order_id_72ba1749_fk_inventory_order_id` FOREIGN KEY (`order_id`) REFERENCES `inventory_order` (`id`),
  ADD CONSTRAINT `inventory_orderitem_product_id_4b9e605e_fk_inventory_product_id` FOREIGN KEY (`product_id`) REFERENCES `inventory_product` (`id`);

--
-- Contraintes pour la table `inventory_stockmovement`
--
ALTER TABLE `inventory_stockmovement`
  ADD CONSTRAINT `inventory_stockmovem_product_id_4eccfd0a_fk_inventory` FOREIGN KEY (`product_id`) REFERENCES `inventory_product` (`id`),
  ADD CONSTRAINT `inventory_stockmovement_created_by_id_9a39cb99_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `inventory_stockmovement_order_id_12654f30_fk_inventory_order_id` FOREIGN KEY (`order_id`) REFERENCES `inventory_order` (`id`);

--
-- Contraintes pour la table `inventory_userprofile`
--
ALTER TABLE `inventory_userprofile`
  ADD CONSTRAINT `inventory_userprofile_user_id_69d1daa8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de données : `dbevent`
--
CREATE DATABASE IF NOT EXISTS `dbevent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbevent`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add livre', 7, 'add_livre'),
(26, 'Can change livre', 7, 'change_livre'),
(27, 'Can delete livre', 7, 'delete_livre'),
(28, 'Can view livre', 7, 'view_livre'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add book', 9, 'add_book'),
(34, 'Can change book', 9, 'change_book'),
(35, 'Can delete book', 9, 'delete_book'),
(36, 'Can view book', 9, 'view_book'),
(37, 'Can add Adhérent', 10, 'add_adherent'),
(38, 'Can change Adhérent', 10, 'change_adherent'),
(39, 'Can delete Adhérent', 10, 'delete_adherent'),
(40, 'Can view Adhérent', 10, 'view_adherent'),
(41, 'Can add ouvrage', 11, 'add_ouvrage'),
(42, 'Can change ouvrage', 11, 'change_ouvrage'),
(43, 'Can delete ouvrage', 11, 'delete_ouvrage'),
(44, 'Can view ouvrage', 11, 'view_ouvrage'),
(45, 'Can add emprunt', 12, 'add_emprunt'),
(46, 'Can change emprunt', 12, 'change_emprunt'),
(47, 'Can delete emprunt', 12, 'delete_emprunt'),
(48, 'Can view emprunt', 12, 'view_emprunt');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$7zXN81cFNJLL4wABHpY6H1$95ify6fqzqsJX7cwFiXpHPNpn2S4Kd1Udz7xzxOgg5o=', '2025-04-23 16:17:17.692829', 1, 'ikbal', '', '', 'ikbalyasseav@gmail.com', 1, 1, '2025-04-09 15:46:58.463870');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `base_adherent`
--

CREATE TABLE `base_adherent` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `membership_type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `registration_date` date NOT NULL,
  `notes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `base_book`
--

CREATE TABLE `base_book` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `publication_date` date NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `ouvrage_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `base_book`
--

INSERT INTO `base_book` (`id`, `name`, `author`, `publication_date`, `description`, `image`, `ouvrage_id`) VALUES
(1, 'nnnn', 'm', '2025-01-01', ',,,', '', NULL),
(2, 'Antigone', 'Sophocle', '1900-01-01', 'Œdipe, après avoir tué son père Laïos et être devenu le roi de Thèbes, épouse sa mère Jocaste, qui donne naissance à deux garçons, Étéocle et Polynice, et deux filles, Ismène et Antigone. Créon, le frère de Jocaste, et Eurydice (ne pas confondre avec l\'amante d\'Orphée) donnent naissance à un fils, Hémon, amant d\'Antigone.', 'books/antigon.jpg', NULL),
(3, 'nnn', 'vv', '2025-01-01', 'bbb', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `base_emprunt`
--

CREATE TABLE `base_emprunt` (
  `id` bigint(20) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour_prevue` date NOT NULL,
  `date_retour_effective` date DEFAULT NULL,
  `adherent_id` bigint(20) NOT NULL,
  `ouvrage_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `base_livre`
--

CREATE TABLE `base_livre` (
  `id` bigint(20) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `auteur` varchar(200) NOT NULL,
  `date_publication` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `base_ouvrage`
--

CREATE TABLE `base_ouvrage` (
  `id` bigint(20) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `date_publication` date DEFAULT NULL,
  `exemplaires_disponibles` int(10) UNSIGNED NOT NULL CHECK (`exemplaires_disponibles` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `base_product`
--

CREATE TABLE `base_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `rating` decimal(7,2) DEFAULT NULL,
  `numReviews` int(11) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `countInstock` int(11) DEFAULT NULL,
  `creatAt` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-04-09 15:51:16.258810', '1', 'Antigone', 1, '[{\"added\": {}}]', 8, 1),
(2, '2025-04-09 16:18:21.119302', '1', 'Antigone', 2, '[]', 8, 1),
(3, '2025-04-09 16:40:41.616217', '1', 'Antigone', 1, '[{\"added\": {}}]', 9, 1),
(4, '2025-04-09 19:00:25.741813', '2', 'x', 3, '', 9, 1),
(5, '2025-04-09 19:19:03.142777', '1', 'Antigone', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(6, '2025-04-15 14:40:14.358259', '9', 'nnn', 3, '', 9, 1),
(7, '2025-04-15 14:40:14.358620', '8', 'Croc-Blanc', 3, '', 9, 1),
(8, '2025-04-15 14:40:14.358813', '7', 'Croc-Blanc', 3, '', 9, 1),
(9, '2025-04-15 14:40:14.359048', '6', 'Croc-Blanc', 3, '', 9, 1),
(10, '2025-04-15 14:40:14.359207', '5', 'Croc-Blanc', 3, '', 9, 1),
(11, '2025-04-15 14:42:41.144174', '4', 'Croc-Blanc', 2, '[{\"changed\": {\"fields\": [\"Author\", \"Image\"]}}]', 9, 1),
(12, '2025-04-15 14:54:07.630503', '11', ' L\'Étranger', 3, '', 9, 1),
(13, '2025-04-15 14:55:29.501177', '10', 'L\'Étranger', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Image\"]}}]', 9, 1),
(14, '2025-04-23 18:09:51.181648', '2', 'Antigone', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'base', 'adherent'),
(9, 'base', 'book'),
(12, 'base', 'emprunt'),
(7, 'base', 'livre'),
(11, 'base', 'ouvrage'),
(8, 'base', 'product'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-09 15:26:54.775955'),
(2, 'auth', '0001_initial', '2025-04-09 15:26:55.213269'),
(3, 'admin', '0001_initial', '2025-04-09 15:26:55.333770'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-09 15:26:55.340937'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-09 15:26:55.352510'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-09 15:26:55.418490'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-09 15:26:55.487554'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-09 15:26:55.507832'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-09 15:26:55.514916'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-09 15:26:55.576128'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-09 15:26:55.578488'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-09 15:26:55.586102'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-09 15:26:55.603475'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-09 15:26:55.617826'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-09 15:26:55.677905'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-09 15:26:55.694171'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-09 15:26:55.709324'),
(19, 'sessions', '0001_initial', '2025-04-09 15:26:55.812725'),
(20, 'base', '0002_book', '2025-04-09 16:26:30.658975'),
(21, 'base', '0003_book_image', '2025-04-09 19:17:23.538771'),
(22, 'base', '0004_adherent', '2025-04-15 14:34:41.576217'),
(23, 'base', '0005_ouvrage_adherent_auteur_adherent_date_publication_and_more', '2025-04-16 14:38:40.280131'),
(24, 'base', '0006_remove_adherent_auteur_and_more', '2025-04-16 14:50:37.815635'),
(25, 'base', '0001_initial', '2025-04-23 18:05:26.792503');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1q45z7itiaxsug0he1agseaqrxg1snx9', '.eJxVjDsOwjAQBe_iGlmxvfKHkp4zWLveNQ6gRMqnirg7iZQC2jczb1MZ16XldZYp96yuyqjL70ZYXjIcgJ84PEZdxmGZetKHok866_vI8r6d7t9Bw7nttYs2BkATbYHKHpInQGSTBMUABeeJfKFd62JgJ9R5jg6coE0VoKrPF9l7N9U:1u2Y4g:76mHyH6m_1LFMwWbiGD1oQ737JV1GPt0m8eF62QVrYM', '2025-04-23 16:14:50.062263'),
('7vo8j7367g6dszb0xa30c97bbp0w9o5b', '.eJxVjEEOwiAQRe_C2pAAMwVduvcMZBgGqRqalHbVeHdt0oVu_3vvbyrSutS4dpnjmNVFGXX63RLxU9oO8oPafdI8tWUek94VfdCub1OW1_Vw_w4q9fqt3dkUA1iYnZC3PpMnDEU4DJ5zcswISBatR2szAzoRKBDAycABgnp_APUROBI:1u7cmj:gcgOLVrojNGiWmVicwTSZEajpZSM6hvpyRNuDQZrIGQ', '2025-05-07 16:17:17.697729'),
('92j1o1q6xs4su5d5kkxc3dqwe3q3bjti', '.eJxVjDsOwjAQBe_iGlmxvfKHkp4zWLveNQ6gRMqnirg7iZQC2jczb1MZ16XldZYp96yuyqjL70ZYXjIcgJ84PEZdxmGZetKHok866_vI8r6d7t9Bw7nttYs2BkATbYHKHpInQGSTBMUABeeJfKFd62JgJ9R5jg6coE0VoKrPF9l7N9U:1u2XfZ:qQBEJtxUm21cKNeRq7Gn99qHGELNxOoHiucotXggczo', '2025-04-23 15:48:53.934855');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `base_adherent`
--
ALTER TABLE `base_adherent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `base_book`
--
ALTER TABLE `base_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_book_ouvrage_id_457eec64_fk_base_ouvrage_id` (`ouvrage_id`);

--
-- Index pour la table `base_emprunt`
--
ALTER TABLE `base_emprunt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_emprunt_adherent_id_da379df2_fk_base_adherent_id` (`adherent_id`),
  ADD KEY `base_emprunt_ouvrage_id_ebc2fca8_fk_base_ouvrage_id` (`ouvrage_id`);

--
-- Index pour la table `base_livre`
--
ALTER TABLE `base_livre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `base_ouvrage`
--
ALTER TABLE `base_ouvrage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Index pour la table `base_product`
--
ALTER TABLE `base_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_product_user_id_95204f5a_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `base_adherent`
--
ALTER TABLE `base_adherent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `base_book`
--
ALTER TABLE `base_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `base_emprunt`
--
ALTER TABLE `base_emprunt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `base_livre`
--
ALTER TABLE `base_livre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `base_ouvrage`
--
ALTER TABLE `base_ouvrage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `base_product`
--
ALTER TABLE `base_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `base_book`
--
ALTER TABLE `base_book`
  ADD CONSTRAINT `base_book_ouvrage_id_457eec64_fk_base_ouvrage_id` FOREIGN KEY (`ouvrage_id`) REFERENCES `base_ouvrage` (`id`);

--
-- Contraintes pour la table `base_emprunt`
--
ALTER TABLE `base_emprunt`
  ADD CONSTRAINT `base_emprunt_adherent_id_da379df2_fk_base_adherent_id` FOREIGN KEY (`adherent_id`) REFERENCES `base_adherent` (`id`),
  ADD CONSTRAINT `base_emprunt_ouvrage_id_ebc2fca8_fk_base_ouvrage_id` FOREIGN KEY (`ouvrage_id`) REFERENCES `base_ouvrage` (`id`);

--
-- Contraintes pour la table `base_product`
--
ALTER TABLE `base_product`
  ADD CONSTRAINT `base_product_user_id_95204f5a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de données : `dbevent44`
--
CREATE DATABASE IF NOT EXISTS `dbevent44` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbevent44`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 6, 'add_logentry'),
(2, 'Can change log entry', 6, 'change_logentry'),
(3, 'Can delete log entry', 6, 'delete_logentry'),
(4, 'Can view log entry', 6, 'view_logentry'),
(5, 'Can add permission', 7, 'add_permission'),
(6, 'Can change permission', 7, 'change_permission'),
(7, 'Can delete permission', 7, 'delete_permission'),
(8, 'Can view permission', 7, 'view_permission'),
(9, 'Can add group', 8, 'add_group'),
(10, 'Can change group', 8, 'change_group'),
(11, 'Can delete group', 8, 'delete_group'),
(12, 'Can view group', 8, 'view_group'),
(13, 'Can add content type', 1, 'add_contenttype'),
(14, 'Can change content type', 1, 'change_contenttype'),
(15, 'Can delete content type', 1, 'delete_contenttype'),
(16, 'Can view content type', 1, 'view_contenttype'),
(17, 'Can add session', 9, 'add_session'),
(18, 'Can change session', 9, 'change_session'),
(19, 'Can delete session', 9, 'delete_session'),
(20, 'Can view session', 9, 'view_session'),
(21, 'Can add Utilisateur', 2, 'add_user'),
(22, 'Can change Utilisateur', 2, 'change_user'),
(23, 'Can delete Utilisateur', 2, 'delete_user'),
(24, 'Can view Utilisateur', 2, 'view_user'),
(25, 'Can add Produit', 3, 'add_product'),
(26, 'Can change Produit', 3, 'change_product'),
(27, 'Can delete Produit', 3, 'delete_product'),
(28, 'Can view Produit', 3, 'view_product'),
(29, 'Can add Commande', 4, 'add_order'),
(30, 'Can change Commande', 4, 'change_order'),
(31, 'Can delete Commande', 4, 'delete_order'),
(32, 'Can view Commande', 4, 'view_order'),
(33, 'Can add Article de commande', 5, 'add_orderitem'),
(34, 'Can change Article de commande', 5, 'change_orderitem'),
(35, 'Can delete Article de commande', 5, 'delete_orderitem'),
(36, 'Can view Article de commande', 5, 'view_orderitem');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'accounts', 'user'),
(6, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(1, 'contenttypes', 'contenttype'),
(4, 'inventory', 'order'),
(5, 'inventory', 'orderitem'),
(3, 'inventory', 'product'),
(9, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-07-07 14:47:07.579868'),
(2, 'admin', '0001_initial', '2025-07-07 14:54:18.972644'),
(3, 'admin', '0002_logentry_remove_auto_add', '2025-07-07 14:54:37.224393'),
(4, 'admin', '0003_logentry_add_action_flag_choices', '2025-07-07 14:54:37.233683'),
(5, 'contenttypes', '0002_remove_content_type_name', '2025-07-07 14:54:37.298728'),
(6, 'auth', '0001_initial', '2025-07-07 14:54:37.526610'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-07-07 14:54:37.571954'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-07-07 14:54:37.581072'),
(9, 'auth', '0004_alter_user_username_opts', '2025-07-07 14:54:37.591051'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-07-07 14:54:37.597815'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-07-07 14:54:37.600853'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-07-07 14:54:37.608456'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-07-07 14:54:37.615714'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-07-07 14:54:37.625585'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-07-07 14:54:37.638746'),
(16, 'auth', '0011_update_proxy_permissions', '2025-07-07 14:54:37.650479'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-07-07 14:54:37.658761'),
(18, 'sessions', '0001_initial', '2025-07-07 14:54:37.689363'),
(19, 'accounts', '0001_initial', '2025-07-07 16:03:36.000000');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);
--
-- Base de données : `db_client`
--
CREATE DATABASE IF NOT EXISTS `db_client` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_client`;

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `segment` varchar(30) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `customer_name`, `segment`, `country`, `city`, `state`, `region`, `postal_code`) VALUES
(1, 'CUST001', 'John Doe', 'Consumer', 'France', 'Paris', 'Île-de-France', 'Europe', '75001'),
(2, 'CUST002', 'Jane Smith', 'Corporate', 'Germany', 'Berlin', 'Berlin', 'Europe', '10115'),
(3, 'CUST003', 'Michael Brown', 'Home Office', 'USA', 'New York', 'New York', 'East', '10001'),
(4, 'CUST004', 'Emily Davis', 'Small Business', 'Canada', 'Toronto', 'Ontario', 'North America', 'M4B 1B3'),
(5, 'CUST005', 'Chris Wilson', 'Consumer', 'Australia', 'Sydney', 'New South Wales', 'Oceania', '2000'),
(6, 'CUST006', 'Sophia Johnson', 'Corporate', 'India', 'Mumbai', 'Maharashtra', 'Asia', '400001'),
(7, 'CUST007', 'Daniel Lee', 'Home Office', 'China', 'Shanghai', 'Shanghai', 'Asia', '200000'),
(8, 'CUST008', 'Olivia Martinez', 'Small Business', 'Mexico', 'Mexico City', 'Mexico City', 'Latin America', '01000'),
(9, 'CUST009', 'Liam Taylor', 'Consumer', 'United Kingdom', 'London', 'England', 'Europe', 'SW1A 1AA'),
(10, 'CUST010', 'Emma White', 'Corporate', 'South Africa', 'Cape Town', 'Western Cape', 'Africa', '8001');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250103164447', '2025-01-03 17:55:21', 53);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Base de données : `fitness_360`
--
CREATE DATABASE IF NOT EXISTS `fitness_360` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fitness_360`;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `name` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`name`, `email`, `password`) VALUES
('Yassine', 'exemple@domaine.com', '2004yassine');
--
-- Base de données : `gestion_etudiants`
--
CREATE DATABASE IF NOT EXISTS `gestion_etudiants` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_etudiants`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add genre', 8, 'add_genre'),
(30, 'Can change genre', 8, 'change_genre'),
(31, 'Can delete genre', 8, 'delete_genre'),
(32, 'Can view genre', 8, 'view_genre'),
(33, 'Can add borrowing', 9, 'add_borrowing'),
(34, 'Can change borrowing', 9, 'change_borrowing'),
(35, 'Can delete borrowing', 9, 'delete_borrowing'),
(36, 'Can view borrowing', 9, 'view_borrowing'),
(37, 'Can add review', 10, 'add_review'),
(38, 'Can change review', 10, 'change_review'),
(39, 'Can delete review', 10, 'delete_review'),
(40, 'Can view review', 10, 'view_review'),
(41, 'Can add profile', 11, 'add_profile'),
(42, 'Can change profile', 11, 'change_profile'),
(43, 'Can delete profile', 11, 'delete_profile'),
(44, 'Can view profile', 11, 'view_profile'),
(45, 'Can add email configuration', 12, 'add_emailconfiguration'),
(46, 'Can change email configuration', 12, 'change_emailconfiguration'),
(47, 'Can delete email configuration', 12, 'delete_emailconfiguration'),
(48, 'Can view email configuration', 12, 'view_emailconfiguration'),
(49, 'Can add emprunt', 13, 'add_emprunt'),
(50, 'Can change emprunt', 13, 'change_emprunt'),
(51, 'Can delete emprunt', 13, 'delete_emprunt'),
(52, 'Can view emprunt', 13, 'view_emprunt'),
(53, 'Can add Template d\'email', 14, 'add_emailtemplate'),
(54, 'Can change Template d\'email', 14, 'change_emailtemplate'),
(55, 'Can delete Template d\'email', 14, 'delete_emailtemplate'),
(56, 'Can view Template d\'email', 14, 'view_emailtemplate'),
(57, 'Can add book review', 15, 'add_bookreview'),
(58, 'Can change book review', 15, 'change_bookreview'),
(59, 'Can delete book review', 15, 'delete_bookreview'),
(60, 'Can view book review', 15, 'view_bookreview');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$1000000$rrQhdkzo1c6SaqBY6LogyH$4yEO7eOJAbpPxtO0Azn8bo4x1Wj9I8LP5olN3jEQ4Oc=', NULL, 0, 'yasserikbal@gmail.com', '', '', '', 0, 1, '2025-04-28 23:34:09.530400'),
(3, 'pbkdf2_sha256$1000000$v1nSEO7mBG8tbyaJsWkPfR$SeclltIWhIuyH5brorurjl+asFDRf3h90x+WAh1CRDU=', '2025-04-28 23:37:46.909008', 0, 'yaserikbal@gmail.com', '', '', '', 0, 1, '2025-04-28 23:37:43.341306'),
(4, 'pbkdf2_sha256$1000000$XzqDzpUfAMx8dX8AzDzdFZ$5q3ElZUtL+fB3Sr1GyxkPwaGgTsuN7C1Q3m9B70/6w8=', '2025-05-28 00:13:13.936636', 1, 'yasser', '', '', 'ikbalyasser@gmail.com', 1, 1, '2025-04-28 23:43:21.113524'),
(5, 'pbkdf2_sha256$1000000$9kYuH4tTy76peEPEVHn74r$2+PzXGEAfJZf5zWzZeXZym5gnsSj80p1CkDYDEpkfsM=', '2025-04-28 23:47:34.626674', 0, 'yasserkharbouch@gmail.com', '', '', '', 0, 1, '2025-04-28 23:47:31.586087'),
(6, 'pbkdf2_sha256$1000000$iEwJwBRW19B5wLxpv7cOci$Vna+1zBwEQmOrOuX6n0eCGjMA3i5+TY8zxvxiL52nM4=', '2025-05-27 23:49:58.335948', 0, 'osmanedembele@gmail.com', '', '', '', 0, 1, '2025-04-29 19:09:55.865049'),
(7, 'pbkdf2_sha256$1000000$OalI1w1PusFIK5FUtVX2va$hRLp4s/8Hml2SQmqXtNlMbLzknwOeFlRBQ54uz6A6fo=', '2025-05-03 17:16:59.468606', 0, 'akramock@gmail.com', '', '', '', 0, 1, '2025-05-03 17:14:01.894047'),
(8, 'pbkdf2_sha256$1000000$sNbe2cXDwFuRPGaClJEAnl$oPMpDpDdaNzoSawTmoJ/BQrbW12OMxBlb6K8H3w63eA=', '2025-05-21 13:32:08.355416', 1, 'yassir', '', '', 'ikbalyassir@gmail.com', 1, 1, '2025-05-21 13:02:42.803021'),
(9, 'pbkdf2_sha256$1000000$upokd26efcBqLu2H79vCD1$dB73kDsoAlBkHZkYxfcCyIBwponnRyNr53b0LmFU/gw=', '2025-05-27 23:28:50.343859', 0, 'abdo', '', '', '', 0, 1, '2025-05-21 13:17:16.870449'),
(10, 'pbkdf2_sha256$1000000$027edMvstVAKG8Am5p9idy$alfacd+aIQs5dYwb+w+UaQSBtG21tq7nFEb94X3EVEc=', '2025-05-25 21:08:27.512505', 0, 'yassine', '', '', '', 0, 1, '2025-05-25 21:08:26.378039'),
(11, 'pbkdf2_sha256$1000000$aaIWZ1jYuJLAsuA8NxBRDa$7x7xHf2CdJuTUxQ6QJ+p9rbpPGYgYRFc7eXGQ46sWzg=', '2025-05-27 23:58:59.512739', 0, 'ahmed', '', '', '', 0, 1, '2025-05-27 23:58:58.113912'),
(12, 'pbkdf2_sha256$1000000$v4bmtwdrb1x0eFNsllNNoD$4vXlwk5GsRrBHhw3jGogfj4ct6pRGho3ODRFk4hgI/Q=', '2025-05-28 00:11:18.810909', 0, 'mustapha', '', '', '', 0, 1, '2025-05-28 00:11:17.614770');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `base_book`
--

CREATE TABLE `base_book` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `publisher` varchar(200) NOT NULL,
  `publication_date` date NOT NULL,
  `pages` int(10) UNSIGNED NOT NULL CHECK (`pages` >= 0),
  `language` varchar(50) NOT NULL,
  `shelf_location` varchar(50) NOT NULL,
  `cover_image` varchar(100) DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `borrow_count` int(10) UNSIGNED NOT NULL CHECK (`borrow_count` >= 0),
  `createdAt` datetime(6) NOT NULL,
  `genre_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `base_book`
--

INSERT INTO `base_book` (`id`, `title`, `author`, `description`, `isbn`, `publisher`, `publication_date`, `pages`, `language`, `shelf_location`, `cover_image`, `is_available`, `borrow_count`, `createdAt`, `genre_id`) VALUES
(2, 'Antigone', 'Jean Anouilh', 'Antigone est une pièce en un acte de Jean Anouilh représentée pour la première fois au théâtre de l\'Atelier à Paris le 6 février 1944, durant l\'Occupation allemande, dans une mise en scène, des décors et des costumes d\'André Barsacq. Réécriture de la pièce éponyme de Sophocle, elle fait partie de la série des Nouvelles Pièces noires, avec Jézabel (1932), Roméo et Jeannette (1946) et Médée (1953).', '13', 'Jean Anouilh', '1944-04-02', 128, 'Français', 'L1', 'book_covers/antigon.jpg', 0, 5, '2025-04-29 19:33:31.841820', 12),
(3, 'Dune', 'Frank Herbert', 'Un chef-d\'œuvre de science-fiction épique sur le pouvoir, l\'écologie et la survie.', '978-044117271', 'Chilton Books', '1965-08-01', 412, 'Anglais', 'L01', 'book_covers/dune.jfif', 1, 27, '2025-05-03 17:15:37.186356', 3),
(4, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 'Un conte poétique sur l’amitié, la solitude et l’amour.', '978-01560139', 'Gallimard', '1943-04-06', 96, 'fr', 'L33', 'book_covers/petit_peince.jpg', 1, 5, '2025-05-08 02:42:34.161421', 15),
(5, 'Sapiens : Une brève histoire de l\'humanité', 'Yuval Noah Harari', 'Une exploration fascinante de l\'évolution de l\'espèce humaine.', '978-207046948', 'Albin Michel', '2015-09-09', 528, 'Anglais', 'L2', 'book_covers/sapiens.jfif', 1, 5, '2025-05-26 02:10:53.444357', 16),
(6, 'Le Petit Nicolas', 'René Goscinny', 'Les aventures humoristiques d’un petit garçon et de ses amis.', '978-207061276', 'Gallimard', '1959-03-29', 160, 'Français', 'L3', 'book_covers/nicolas.jfif', 1, 5, '2025-05-26 02:12:36.681263', 15),
(7, 'Les 7 habitudes de ceux qui réalisent tout ce qu\'ils entreprennent', 'Stephen Covey', 'Un guide pratique pour développer son potentiel personnel et professionnel.', '978-289225686', 'First', '1989-01-01', 384, 'Français', 'L04', 'book_covers/les_7.jfif', 1, 5, '2025-05-26 02:16:45.506091', 14),
(8, 'Madame Bovary', 'Gustave Flaubert', 'Le destin tragique d’Emma Bovary, une femme en quête d’évasion.', '978-207036822', 'Garnier-Flammarion', '1857-12-12', 416, 'Français', 'L5', 'book_covers/mad.jpg', 1, 5, '2025-05-26 02:18:44.789740', 13),
(9, 'Le Cid', 'Pierre Corneille', 'Une tragédie classique sur l’honneur et l’amour.', '978-2070367', 'Gallimard', '1637-01-01', 160, 'Français', 'L6', 'book_covers/le_cid.jfif', 1, 5, '2025-05-26 02:20:32.196894', 12),
(10, 'Discurso sobre la servidumbre voluntaria', 'Étienne de La Boétie', 'Un ensayo filosófico sobre la libertad y la tiranía.', '978-207045902', 'Alianza Editorial', '1576-01-01', 96, 'Espagnol', 'L8', 'book_covers/es.jpg', 1, 5, '2025-05-26 02:23:42.709072', 10),
(11, 'Long Walk to Freedom', 'Nelson Mandela', 'The autobiography of Nelson Mandela, icon of the anti-apartheid struggle.', '978-031654818', 'Little, Brown and Company', '1994-11-01', 656, 'Anglais', 'L9', 'book_covers/long.jfif', 1, 5, '2025-05-26 02:25:00.784878', 9);

-- --------------------------------------------------------

--
-- Structure de la table `base_borrowing`
--

CREATE TABLE `base_borrowing` (
  `id` bigint(20) NOT NULL,
  `borrow_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `is_returned` tinyint(1) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `renewal_count` int(10) UNSIGNED NOT NULL CHECK (`renewal_count` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `base_borrowing`
--

INSERT INTO `base_borrowing` (`id`, `borrow_date`, `due_date`, `return_date`, `is_returned`, `book_id`, `user_id`, `renewal_count`) VALUES
(4, '2025-04-30', '2025-04-28', '2025-04-30', 0, 2, 5, 0),
(7, '2025-04-30', '2025-05-14', '2025-04-30', 1, 2, 6, 0),
(8, '2025-04-30', '2025-05-21', '2025-04-30', 1, 2, 6, 0),
(9, '2025-04-30', '2025-05-14', '2025-04-30', 1, 2, 6, 0),
(10, '2025-04-30', '2025-05-21', '2025-04-30', 1, 2, 6, 0),
(11, '2025-04-30', '2025-05-14', '2025-04-30', 1, 2, 6, 0),
(12, '2025-05-03', '2025-05-24', '2025-05-08', 1, 2, 6, 0),
(13, '2025-05-03', '2025-05-17', '2025-05-03', 1, 3, 7, 0),
(14, '2025-05-03', '2025-05-17', '2025-05-03', 1, 3, 7, 0),
(15, '2025-05-03', '2025-05-24', '2025-05-03', 1, 3, 7, 0),
(16, '2025-05-03', '2025-05-17', '2025-05-03', 1, 3, 7, 0),
(17, '2025-05-03', '2025-05-17', '2025-05-03', 1, 3, 7, 0),
(18, '2025-05-03', '2025-05-17', '2025-05-03', 1, 3, 7, 0),
(19, '2025-05-03', '2025-05-17', '2025-05-03', 1, 3, 7, 0),
(20, '2025-05-03', '2025-05-17', '2025-05-04', 1, 3, 7, 0),
(21, '2025-05-04', '2025-05-18', '2025-05-04', 1, 3, 7, 0),
(22, '2025-05-04', '2025-05-18', '2025-05-08', 1, 3, 6, 0),
(23, '2025-05-08', '2025-05-29', '2025-05-19', 1, 2, 6, 0),
(24, '2025-05-08', '2025-05-22', '2025-05-14', 1, 4, 6, 0),
(25, '2025-05-19', '2025-06-02', '2025-05-19', 1, 2, 6, 0),
(26, '2025-05-19', '2025-06-23', NULL, 0, 4, 6, 2),
(27, '2025-05-19', '2025-06-16', '2025-05-27', 1, 3, 6, 2),
(28, '2025-05-21', '2025-06-25', '2025-05-25', 1, 2, 9, 2),
(29, '2025-05-25', '2025-06-22', '2025-05-25', 1, 2, 9, 2),
(30, '2025-05-27', '2025-06-24', NULL, 0, 2, 9, 2),
(31, '2025-05-27', '2025-06-24', '2025-05-27', 1, 3, 11, 2),
(32, '2025-05-28', '2025-06-25', '2025-05-28', 1, 3, 12, 2);

-- --------------------------------------------------------

--
-- Structure de la table `base_emprunt`
--

CREATE TABLE `base_emprunt` (
  `id` bigint(20) NOT NULL,
  `date_emprunt` datetime(6) NOT NULL,
  `date_retour_prevue` datetime(6) NOT NULL,
  `date_retour_reelle` datetime(6) DEFAULT NULL,
  `rappels_envoyes` int(11) NOT NULL,
  `dernier_rappel` datetime(6) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `Book_id` bigint(20) NOT NULL,
  `utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `base_genre`
--

CREATE TABLE `base_genre` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `base_genre`
--

INSERT INTO `base_genre` (`id`, `name`) VALUES
(2, 'Roman historique'),
(3, 'Science-fiction'),
(4, 'Fantasy'),
(5, 'Policier / Thrille'),
(6, 'Romance'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Biographie / Autobiographie'),
(10, 'Essai'),
(11, 'Poésie'),
(12, 'Théâtre'),
(13, 'Littérature classique'),
(14, 'Développement personnel'),
(15, 'Jeunesse / Enfants'),
(16, 'Documentaire / Non-fiction'),
(17, 'Science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `base_profile`
--

CREATE TABLE `base_profile` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `due_date_reminders` tinyint(1) NOT NULL,
  `email_notifications` tinyint(1) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `base_profile`
--

INSERT INTO `base_profile` (`id`, `phone`, `address`, `user_id`, `avatar`, `city`, `country`, `due_date_reminders`, `email_notifications`, `postal_code`) VALUES
(1, NULL, NULL, 3, NULL, NULL, NULL, 1, 1, NULL),
(2, NULL, NULL, 4, NULL, NULL, NULL, 1, 1, NULL),
(3, NULL, NULL, 5, NULL, NULL, NULL, 1, 1, NULL),
(4, NULL, NULL, 6, NULL, NULL, NULL, 1, 1, NULL),
(5, NULL, NULL, 7, NULL, NULL, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `base_review`
--

CREATE TABLE `base_review` (
  `id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `base_review`
--

INSERT INTO `base_review` (`id`, `rating`, `comment`, `created_at`, `book_id`, `user_id`) VALUES
(2, 5, 'very good', '2025-04-30 14:11:40.504848', 2, 6),
(3, 5, 'yes', '2025-05-03 18:53:39.613261', 3, 7),
(4, 5, 'ggod', '2025-05-08 02:36:17.124602', 3, 6),
(5, 5, 'very good book', '2025-05-27 23:59:53.839345', 3, 11),
(6, 4, 'good book', '2025-05-28 00:12:12.305842', 3, 12);

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(5, '2025-04-28 23:44:39.267922', '1', 'hp', 3, '', 4, 4),
(6, '2025-04-29 19:24:20.075287', '2', 'Roman historique', 1, '[{\"added\": {}}]', 8, 4),
(7, '2025-04-29 19:24:28.312932', '3', 'Science-fiction', 1, '[{\"added\": {}}]', 8, 4),
(8, '2025-04-29 19:24:41.032571', '4', 'Fantasy', 1, '[{\"added\": {}}]', 8, 4),
(9, '2025-04-29 19:24:47.923875', '5', 'Policier / Thrille', 1, '[{\"added\": {}}]', 8, 4),
(10, '2025-04-29 19:25:37.876389', '6', 'Romance', 1, '[{\"added\": {}}]', 8, 4),
(11, '2025-04-29 19:25:42.186896', '7', 'Horreur', 1, '[{\"added\": {}}]', 8, 4),
(12, '2025-04-29 19:25:56.513283', '8', 'Aventure', 1, '[{\"added\": {}}]', 8, 4),
(13, '2025-04-29 19:26:03.212837', '9', 'Biographie / Autobiographie', 1, '[{\"added\": {}}]', 8, 4),
(14, '2025-04-29 19:26:08.156665', '10', 'Essai', 1, '[{\"added\": {}}]', 8, 4),
(15, '2025-04-29 19:26:12.614499', '11', 'Poésie', 1, '[{\"added\": {}}]', 8, 4),
(16, '2025-04-29 19:26:17.876038', '12', 'Théâtre', 1, '[{\"added\": {}}]', 8, 4),
(17, '2025-04-29 19:26:22.106900', '13', 'Littérature classique', 1, '[{\"added\": {}}]', 8, 4),
(18, '2025-04-29 19:26:27.055540', '14', 'Développement personnel', 1, '[{\"added\": {}}]', 8, 4),
(19, '2025-04-29 19:26:31.699919', '15', 'Jeunesse / Enfants', 1, '[{\"added\": {}}]', 8, 4),
(20, '2025-04-29 19:26:38.972713', '16', 'Documentaire / Non-fiction', 1, '[{\"added\": {}}]', 8, 4),
(21, '2025-04-29 19:33:31.843094', '2', 'Antigone', 1, '[{\"added\": {}}]', 7, 4),
(22, '2025-04-30 12:34:08.338310', '2', 'Antigone', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 7, 4),
(23, '2025-04-30 13:36:53.854026', '4', 'yasserkharbouch@gmail.com - Antigone', 1, '[{\"added\": {}}]', 9, 4),
(24, '2025-04-30 14:06:54.413810', '6', 'osmanedembele@gmail.com - Antigone', 3, '', 9, 4),
(25, '2025-04-30 14:06:54.413871', '5', 'osmanedembele@gmail.com - Antigone', 3, '', 9, 4),
(26, '2025-04-30 14:07:47.668572', '2', 'Antigone', 2, '[{\"changed\": {\"fields\": [\"Is available\"]}}]', 7, 4),
(27, '2025-05-03 17:15:37.187222', '3', 'kk', 1, '[{\"added\": {}}]', 7, 4),
(28, '2025-05-06 18:48:43.383109', '17', 'Science-fiction', 1, '[{\"added\": {}}]', 8, 4),
(29, '2025-05-06 18:53:56.943117', '18', 'nnnnnnn', 1, '[{\"added\": {}}]', 8, 4),
(30, '2025-05-08 02:42:34.162439', '4', 'gggg', 1, '[{\"added\": {}}]', 7, 4),
(31, '2025-05-25 21:15:27.701032', '18', 'nnnnnnn', 3, '', 8, 4),
(32, '2025-05-25 21:15:27.701253', '1', 'ss', 3, '', 8, 4),
(33, '2025-05-26 01:52:07.196680', '2', 'Antigone', 2, '[{\"changed\": {\"fields\": [\"Borrow count\"]}}]', 7, 4),
(34, '2025-05-26 01:56:46.564992', '4', 'Le Petit Prince', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Author\", \"Description\", \"Isbn\", \"Publisher\", \"Publication date\", \"Pages\", \"Cover image\", \"Is available\", \"Borrow count\"]}}]', 7, 4),
(35, '2025-05-26 02:05:51.382393', '3', 'Dune', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Author\", \"Description\", \"Isbn\", \"Genre\", \"Publisher\", \"Publication date\", \"Pages\", \"Language\", \"Shelf location\", \"Cover image\", \"Is available\"]}}]', 7, 4),
(36, '2025-05-26 02:10:53.448072', '5', 'Sapiens : Une brève histoire de l\'humanité', 1, '[{\"added\": {}}]', 7, 4),
(37, '2025-05-26 02:11:07.902037', '3', 'Dune', 2, '[{\"changed\": {\"fields\": [\"Language\"]}}]', 7, 4),
(38, '2025-05-26 02:12:36.682876', '6', 'Le Petit Nicolas', 1, '[{\"added\": {}}]', 7, 4),
(39, '2025-05-26 02:16:45.509794', '7', 'Les 7 habitudes de ceux qui réalisent tout ce qu\'ils entreprennent', 1, '[{\"added\": {}}]', 7, 4),
(40, '2025-05-26 02:18:44.792987', '8', 'Madame Bovary', 1, '[{\"added\": {}}]', 7, 4),
(41, '2025-05-26 02:20:32.199934', '9', 'Le Cid', 1, '[{\"added\": {}}]', 7, 4),
(42, '2025-05-26 02:23:42.712288', '10', 'Discurso sobre la servidumbre voluntaria', 1, '[{\"added\": {}}]', 7, 4),
(43, '2025-05-26 02:25:00.788307', '11', 'Long Walk to Freedom', 1, '[{\"added\": {}}]', 7, 4);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'base', 'book'),
(15, 'base', 'bookreview'),
(9, 'base', 'borrowing'),
(12, 'base', 'emailconfiguration'),
(14, 'base', 'emailtemplate'),
(13, 'base', 'emprunt'),
(8, 'base', 'genre'),
(11, 'base', 'profile'),
(10, 'base', 'review'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-28 20:46:36.176767'),
(2, 'auth', '0001_initial', '2025-04-28 20:46:36.608988'),
(3, 'admin', '0001_initial', '2025-04-28 20:46:36.717749'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-28 20:46:36.728285'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-28 20:46:36.737725'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-28 20:46:36.801803'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-28 20:46:36.851465'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-28 20:46:36.866233'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-28 20:46:36.876447'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-28 20:46:36.925167'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-28 20:46:36.927838'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-28 20:46:36.935251'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-28 20:46:36.952929'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-28 20:46:36.966321'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-28 20:46:36.983924'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-28 20:46:36.993749'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-28 20:46:37.006823'),
(18, 'base', '0001_initial', '2025-04-28 20:46:37.316573'),
(19, 'sessions', '0001_initial', '2025-04-28 20:46:37.341016'),
(20, 'base', '0002_profile', '2025-04-28 23:35:23.602509'),
(21, 'base', '0003_emailconfiguration_emprunt', '2025-04-29 19:05:00.784893'),
(22, 'base', '0004_emailtemplate', '2025-04-30 13:35:16.615365'),
(23, 'base', '0005_rename_created_at_book_createdat', '2025-04-30 18:18:27.421448'),
(24, 'base', '0006_bookreview_delete_emailconfiguration_and_more', '2025-05-08 02:22:52.767722'),
(25, 'base', '0007_alter_borrowing_book_alter_borrowing_user_and_more', '2025-05-08 02:50:24.832142'),
(26, 'base', '0008_alter_borrowing_book_alter_borrowing_user_and_more', '2025-05-08 03:04:55.612190'),
(27, 'base', '0009_borrowing_renewal_count', '2025-05-25 21:05:25.625720');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('80ndq5v4den9moemnm1jylewrgy31i3i', '.eJxVjDsOwyAQBe9CHaFdDAZSpvcZ0PILTiKQjF1FuXtsyUXSzsx7b-ZoW4vbelrcHNmVSXb5ZZ7CM9VDxAfVe-Oh1XWZPT8SftrOpxbT63a2fweFetnX1muFhJQxoxBaq2BkHoDQUPZyR3IEORJCxGEQmMFqG6U1QApCsJF9vr_MNsk:1uK4Px:bJzwaiomYFPrnUgYEKXkvfRO8hhBY1BgHNN3WHR0Lu4', '2025-06-11 00:13:13.940937'),
('afcos50n2omzm0sh2u3yv3u8l7jn2z1k', 'e30:1u9Y4X:FFSiaNYtwOCRiYCbEhSXuw94VJ5GlQAeov4kA_dL4UA', '2025-05-12 23:39:37.450322'),
('e65y6ww3wac5ks9u5dqzwqvwnu1kopt3', 'e30:1u9Y4D:V6h6HohzGYR6a4sSOj0EWDX-CtnP4KmipDIQm97JFpc', '2025-05-12 23:39:17.699544'),
('gw004h6hh64jq9kides2ipbi065whmon', '.eJxVjMEOwiAQRP-FsyGCFBaP3vsNZFkWqRpISnsy_rtt0oNe5jDvzbxFwHUpYe08hymJq7Di9NtFpCfXHaQH1nuT1OoyT1Huijxol2NL_Lod7t9BwV62tSIYwNsMSNYT48U7HZVTySU2QN7ks7OsQW1JHrVNYDiDzo6HrKMRny_lTjgI:1u9qiT:zFf7HJCKNgF6PN6l52fFjhFqdy8Ha8XWTBQlZVdDkyw', '2025-05-13 19:34:05.462109'),
('o5lkbh81ko3rxvtkhvzua4uhh8utdint', '.eJxVjMEOwiAQRP-FsyGCFBaP3vsNZFkWqRpISnsy_rtt0oNe5jDvzbxFwHUpYe08hymJq7Di9NtFpCfXHaQH1nuT1OoyT1Huijxol2NL_Lod7t9BwV62tSIYwNsMSNYT48U7HZVTySU2QN7ks7OsQW1JHrVNYDiDzo6HrKMRny_lTjgI:1uA97m:OFh5HfScgXoEJzNDY73fhUqcXxM-v4zu0GfYjuf6GC0', '2025-05-14 15:13:26.501850'),
('x3jei948rc3wdb37jkidhk2aobnis9t9', '.eJxVjMEOwiAQRP-FsyGCFBaP3vsNZFkWqRpISnsy_rtt0oNe5jDvzbxFwHUpYe08hymJq7Di9NtFpCfXHaQH1nuT1OoyT1Huijxol2NL_Lod7t9BwV62tSIYwNsMSNYT48U7HZVTySU2QN7ks7OsQW1JHrVNYDiDzo6HrKMRny_lTjgI:1uAAR6:Plo8weXx6-AbmQcu1lgDvVyLvoTE-AQok8JxVZtC82A', '2025-05-14 16:37:28.204585');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `base_book`
--
ALTER TABLE `base_book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `base_book_genre_id_fa7e31f4_fk_base_genre_id` (`genre_id`);

--
-- Index pour la table `base_borrowing`
--
ALTER TABLE `base_borrowing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_borrowing_book_id_652d5331_fk_base_book_id` (`book_id`),
  ADD KEY `base_borrowing_user_id_e32a0064_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `base_emprunt`
--
ALTER TABLE `base_emprunt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_emprunt_Book_id_b4d28706_fk_base_book_id` (`Book_id`),
  ADD KEY `base_emprunt_utilisateur_id_7fcba4f9_fk_auth_user_id` (`utilisateur_id`);

--
-- Index pour la table `base_genre`
--
ALTER TABLE `base_genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `base_profile`
--
ALTER TABLE `base_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `base_review`
--
ALTER TABLE `base_review`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_review_user_id_book_id_f233fcfd_uniq` (`user_id`,`book_id`),
  ADD KEY `base_review_book_id_ce15ac13_fk_base_book_id` (`book_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `base_book`
--
ALTER TABLE `base_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `base_borrowing`
--
ALTER TABLE `base_borrowing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `base_emprunt`
--
ALTER TABLE `base_emprunt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `base_genre`
--
ALTER TABLE `base_genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `base_profile`
--
ALTER TABLE `base_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `base_review`
--
ALTER TABLE `base_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `base_book`
--
ALTER TABLE `base_book`
  ADD CONSTRAINT `base_book_genre_id_fa7e31f4_fk_base_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `base_genre` (`id`);

--
-- Contraintes pour la table `base_borrowing`
--
ALTER TABLE `base_borrowing`
  ADD CONSTRAINT `base_borrowing_book_id_652d5331_fk_base_book_id` FOREIGN KEY (`book_id`) REFERENCES `base_book` (`id`),
  ADD CONSTRAINT `base_borrowing_user_id_e32a0064_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `base_emprunt`
--
ALTER TABLE `base_emprunt`
  ADD CONSTRAINT `base_emprunt_Book_id_b4d28706_fk_base_book_id` FOREIGN KEY (`Book_id`) REFERENCES `base_book` (`id`),
  ADD CONSTRAINT `base_emprunt_utilisateur_id_7fcba4f9_fk_auth_user_id` FOREIGN KEY (`utilisateur_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `base_profile`
--
ALTER TABLE `base_profile`
  ADD CONSTRAINT `base_profile_user_id_8081352f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `base_review`
--
ALTER TABLE `base_review`
  ADD CONSTRAINT `base_review_book_id_ce15ac13_fk_base_book_id` FOREIGN KEY (`book_id`) REFERENCES `base_book` (`id`),
  ADD CONSTRAINT `base_review_user_id_9a731b84_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de données : `gym`
--
CREATE DATABASE IF NOT EXISTS `gym` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gym`;

-- --------------------------------------------------------

--
-- Structure de la table `abonne`
--

CREATE TABLE `abonne` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abonne`
--

INSERT INTO `abonne` (`id`, `nom`, `prenom`, `email`, `password`, `roles`) VALUES
(14, 'yassine', 'Atiki', 'yassineatiki28@gmail.com', 'test55', '[\"ROLE_ADMIN\"]');

-- --------------------------------------------------------

--
-- Structure de la table `creneau`
--

CREATE TABLE `creneau` (
  `id` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `abonne_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `creneau`
--

INSERT INTO `creneau` (`id`, `date_debut`, `date_fin`, `abonne_id`) VALUES
(6, '2025-01-20 08:53:00', '2025-01-31 08:53:00', NULL),
(9, '2025-01-22 17:30:00', '2025-01-31 20:08:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `montant` double NOT NULL,
  `date_paiement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`id`, `montant`, `date_paiement`) VALUES
(4, 50, '2025-01-31 21:15:00'),
(5, 250, '2025-01-21 23:53:00'),
(6, 300, '2025-01-24 09:07:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonne`
--
ALTER TABLE `abonne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `creneau`
--
ALTER TABLE `creneau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F9668B5FC325A696` (`abonne_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonne`
--
ALTER TABLE `abonne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `creneau`
--
ALTER TABLE `creneau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `creneau`
--
ALTER TABLE `creneau`
  ADD CONSTRAINT `FK_F9668B5FC325A696` FOREIGN KEY (`abonne_id`) REFERENCES `abonne` (`id`);
--
-- Base de données : `junkyard_db`
--
CREATE DATABASE IF NOT EXISTS `junkyard_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `junkyard_db`;

-- --------------------------------------------------------

--
-- Structure de la table `app_order`
--

CREATE TABLE `app_order` (
  `id` bigint(20) NOT NULL,
  `nom_du_client` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_orderitem`
--

CREATE TABLE `app_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantite` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `app_product`
--

CREATE TABLE `app_product` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `quantite` int(11) NOT NULL,
  `lieu_de_stockage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add order', 7, 'add_order'),
(26, 'Can change order', 7, 'change_order'),
(27, 'Can delete order', 7, 'delete_order'),
(28, 'Can view order', 7, 'view_order'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add order item', 9, 'add_orderitem'),
(34, 'Can change order item', 9, 'change_orderitem'),
(35, 'Can delete order item', 9, 'delete_orderitem'),
(36, 'Can view order item', 9, 'view_orderitem');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$7OK5312EpflFIBaUH0zIYH$ZAEJQj4vor9aJLfkjp6ZjyaFWw56MttcE6WRqYQclkI=', '2025-07-28 21:00:16.855646', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-07-28 20:58:03.949948');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'order'),
(9, 'app', 'orderitem'),
(8, 'app', 'product'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-07-28 20:57:11.455160'),
(2, 'auth', '0001_initial', '2025-07-28 20:57:11.916480'),
(3, 'admin', '0001_initial', '2025-07-28 20:57:12.023410'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-07-28 20:57:12.036626'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-07-28 20:57:12.046978'),
(6, 'app', '0001_initial', '2025-07-28 20:57:12.189250'),
(7, 'contenttypes', '0002_remove_content_type_name', '2025-07-28 20:57:12.253718'),
(8, 'auth', '0002_alter_permission_name_max_length', '2025-07-28 20:57:12.304131'),
(9, 'auth', '0003_alter_user_email_max_length', '2025-07-28 20:57:12.323583'),
(10, 'auth', '0004_alter_user_username_opts', '2025-07-28 20:57:12.331433'),
(11, 'auth', '0005_alter_user_last_login_null', '2025-07-28 20:57:12.378745'),
(12, 'auth', '0006_require_contenttypes_0002', '2025-07-28 20:57:12.381598'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2025-07-28 20:57:12.388354'),
(14, 'auth', '0008_alter_user_username_max_length', '2025-07-28 20:57:12.403766'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2025-07-28 20:57:12.427314'),
(16, 'auth', '0010_alter_group_name_max_length', '2025-07-28 20:57:12.444039'),
(17, 'auth', '0011_update_proxy_permissions', '2025-07-28 20:57:12.453558'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2025-07-28 20:57:12.470303'),
(19, 'sessions', '0001_initial', '2025-07-28 20:57:12.496800');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('83ouui9ku0z3p7wjh8gjqg56ansfsmiy', '.eJxVjMsOwiAQRf-FtSFAh0dduvcbyDBMpWogKe3K-O_apAvd3nPOfYmI21ri1nmJcxZnocXpd0tID647yHestyap1XWZk9wVedAury3z83K4fwcFe_nWSuNICKhN8oEdWqX8BBhg8GwpTD5rHhyOHg1lFZgYwOUBUnLWMCTx_gDlfzgo:1ugUxE:AnGh_1rz0s1rwYYeitFU_-muMjXXg848T7moBI6L4fM', '2025-08-11 21:00:16.859434');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `app_order`
--
ALTER TABLE `app_order`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `app_orderitem`
--
ALTER TABLE `app_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_orderitem_order_id_41257a1b_fk_app_order_id` (`order_id`),
  ADD KEY `app_orderitem_product_id_5f40ddb0_fk_app_product_id` (`product_id`);

--
-- Index pour la table `app_product`
--
ALTER TABLE `app_product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `app_order`
--
ALTER TABLE `app_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `app_orderitem`
--
ALTER TABLE `app_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `app_product`
--
ALTER TABLE `app_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `app_orderitem`
--
ALTER TABLE `app_orderitem`
  ADD CONSTRAINT `app_orderitem_order_id_41257a1b_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`),
  ADD CONSTRAINT `app_orderitem_product_id_5f40ddb0_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de données : `library_db`
--
CREATE DATABASE IF NOT EXISTS `library_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library_db`;
--
-- Base de données : `musicapp`
--
CREATE DATABASE IF NOT EXISTS `musicapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `musicapp`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'users', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-08 23:02:14.050936'),
(2, 'auth', '0001_initial', '2025-04-08 23:02:15.008797'),
(3, 'admin', '0001_initial', '2025-04-08 23:02:15.175635'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-08 23:02:15.184393'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-08 23:02:15.192716'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-08 23:02:15.246898'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-08 23:02:15.295370'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-08 23:02:15.310659'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-08 23:02:15.320552'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-08 23:02:15.354172'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-08 23:02:15.356470'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-08 23:02:15.363053'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-08 23:02:15.519308'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-08 23:02:15.536308'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-08 23:02:15.556058'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-08 23:02:15.565438'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-08 23:02:15.581658'),
(18, 'sessions', '0001_initial', '2025-04-08 23:02:15.609445'),
(19, 'users', '0001_initial', '2025-04-08 23:02:15.641871');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2bxfu6vwmn89elsp9iwwrp3vt1hji7si', 'e30:1u2IGJ:HzZnRlMZvFBM8u67po63LBb3pGuk5eFV0SjKaiGP4_I', '2025-04-22 23:21:47.268744');

-- --------------------------------------------------------

--
-- Structure de la table `users_user`
--

CREATE TABLE `users_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `confirm_password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_user`
--

INSERT INTO `users_user` (`id`, `username`, `email`, `password`, `confirm_password`) VALUES
(1, 'Yassine', 'yassineatiki28@gmail.com', '20042004', '20042004');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Déchargement des données de la table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'database.sql', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"ahmar_33\",\"biblio_thèque\",\"\\tbiblio_thèque21\",\"boustane-21\",\"cabek_21\",\"cdma_db\",\"dbevent\",\"dbevent44\",\"db_client\",\"fitness_360\",\"gestion_etudiants\",\"gym\",\"junkyard_db\",\"library_db\",\"musicapp\",\"phpmyadmin\",\"salle_sport\",\"stock_21\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure de la table @TABLE@\",\"latex_structure_continued_caption\":\"Structure de la table @TABLE@ (suite)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenu de la table @TABLE@\",\"latex_data_continued_caption\":\"Contenu de la table @TABLE@ (suite)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cabek_21\",\"table\":\"django_admin_log\"},{\"db\":\"cdma_db\",\"table\":\"auth_user\"},{\"db\":\"dbevent44\",\"table\":\"django_admin_log\"},{\"db\":\"dbevent44\",\"table\":\"auth_group\"},{\"db\":\"dbevent\",\"table\":\"base_ouvrage\"},{\"db\":\"gestion_etudiants\",\"table\":\"base_genre\"},{\"db\":\"gestion_etudiants\",\"table\":\"base_profile\"},{\"db\":\"gestion_etudiants\",\"table\":\"base_book\"},{\"db\":\"biblio_th\\u00e8que\",\"table\":\"base_book\"},{\"db\":\"dbevent\",\"table\":\"base_book\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Déchargement des données de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'gym', 'abonne', '[]', '2025-01-21 11:06:20');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-09-07 19:16:18', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\",\"NavigationWidth\":611}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `salle_sport`
--
CREATE DATABASE IF NOT EXISTS `salle_sport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `salle_sport`;

-- --------------------------------------------------------

--
-- Structure de la table `abonne`
--

CREATE TABLE `abonne` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `creneau`
--

CREATE TABLE `creneau` (
  `id` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250115211553', '2025-01-15 22:15:55', 97);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `montant` double NOT NULL,
  `date_paiement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonne`
--
ALTER TABLE `abonne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `creneau`
--
ALTER TABLE `creneau`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonne`
--
ALTER TABLE `abonne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `creneau`
--
ALTER TABLE `creneau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données : `stock_21`
--
CREATE DATABASE IF NOT EXISTS `stock_21` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `stock_21`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Pièce', 7, 'add_piece'),
(26, 'Can change Pièce', 7, 'change_piece'),
(27, 'Can delete Pièce', 7, 'delete_piece'),
(28, 'Can view Pièce', 7, 'view_piece'),
(29, 'Can add Commande', 8, 'add_commande'),
(30, 'Can change Commande', 8, 'change_commande'),
(31, 'Can delete Commande', 8, 'delete_commande'),
(32, 'Can view Commande', 8, 'view_commande'),
(33, 'Can add Article de commande', 9, 'add_articlecommande'),
(34, 'Can change Article de commande', 9, 'change_articlecommande'),
(35, 'Can delete Article de commande', 9, 'delete_articlecommande'),
(36, 'Can view Article de commande', 9, 'view_articlecommande'),
(37, 'Can add Mouvement de stock', 10, 'add_mouvementstock'),
(38, 'Can change Mouvement de stock', 10, 'change_mouvementstock'),
(39, 'Can delete Mouvement de stock', 10, 'delete_mouvementstock'),
(40, 'Can view Mouvement de stock', 10, 'view_mouvementstock');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$Pi6dKk9LSHC1NW1PjlNK4O$2N4rJsAMNGvlMfBWR27EuXZFFo3xZ1JWOnftpqNj2Cw=', '2025-07-28 18:20:38.320336', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-07-28 18:16:51.461122');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'inventory', 'articlecommande'),
(8, 'inventory', 'commande'),
(10, 'inventory', 'mouvementstock'),
(7, 'inventory', 'piece'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-07-28 18:15:58.041980'),
(2, 'auth', '0001_initial', '2025-07-28 18:15:58.757160'),
(3, 'admin', '0001_initial', '2025-07-28 18:15:58.955918'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-07-28 18:15:58.987999'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-07-28 18:15:59.009822'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-07-28 18:15:59.120200'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-07-28 18:15:59.178883'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-07-28 18:15:59.208424'),
(9, 'auth', '0004_alter_user_username_opts', '2025-07-28 18:15:59.226441'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-07-28 18:15:59.301929'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-07-28 18:15:59.304539'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-07-28 18:15:59.318381'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-07-28 18:15:59.334431'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-07-28 18:15:59.353676'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-07-28 18:15:59.374365'),
(16, 'auth', '0011_update_proxy_permissions', '2025-07-28 18:15:59.439497'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-07-28 18:15:59.462414'),
(18, 'sessions', '0001_initial', '2025-07-28 18:15:59.495248');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('im8knayzj8imoi5btm3c0kpdlb815lhf', '.eJxVjMsOwiAQRf-FtSEzIJS6dN9vIDM8pGogKe3K-O_apAvd3nPOfQlP21r81tPi5yguAsXpd2MKj1R3EO9Ub02GVtdlZrkr8qBdTi2m5_Vw_w4K9fKtzTA66waGBGARzRgSKM0uq5CQtDWoo3JsMOszsIVojQuABgLbTIrE-wOypDb3:1ugSSk:JBNwZbQwS1IW09kvR2HDs1-kz1rK5W2HZgTw-YFn2J4', '2025-08-11 18:20:38.328275');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
