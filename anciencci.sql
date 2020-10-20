-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 20 oct. 2020 à 14:56
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `anciencci`
--

-- --------------------------------------------------------

--
-- Structure de la table `caracteristiques`
--

CREATE TABLE `caracteristiques` (
  `id_etudiant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `filiere_origine` varchar(50) NOT NULL,
  `age_rentree` int(11) NOT NULL,
  `bac_obtenu` varchar(50) NOT NULL,
  `regime_inscription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `caracteristiques`
--

INSERT INTO `caracteristiques` (`id_etudiant`, `nom`, `prenom`, `sexe`, `filiere_origine`, `age_rentree`, `bac_obtenu`, `regime_inscription`) VALUES
(1, 'Nom 1', 'Etudiant 1', 'Homme', 'Biologie', 22, 'General', 'Formation initiale'),
(2, 'Nom 2', 'Etudiant 2', 'Femme', 'Biologie', 30, 'Autre', 'Formation continue'),
(3, 'Nom 3', 'Etudiant 3', 'Femme', 'Maths', 25, 'General', 'Reprise d\'etudes'),
(4, 'Nom 4', 'Etudiant 4', 'Homme', 'Biologie', 27, 'General', 'Formation initiale'),
(5, 'Nom 5', 'Etudiant 5', 'Homme', 'Chimie', 34, 'Technologique', 'Formation initiale'),
(6, 'Nom 6', 'Etudiant 6', 'Femme', 'Maths', 25, 'General', 'Formation initiale'),
(7, 'Nom 7', 'Etudiant 7', 'Homme', 'Economie', 24, 'General', 'Formation continue'),
(8, 'Nom 8', 'Etudiant 8', 'Femme', 'Neurosciences', 24, 'General', 'Formation continue'),
(9, 'Nom 9', 'Etudiant 9', 'Femme', 'Biologie', 26, 'Technologique', 'Formation initiale'),
(10, 'Nom 10', 'Etudiant 10', 'Femme', 'Biologie', 26, 'General', 'Formation initiale'),
(11, 'Nom 11', 'Etudiant 11', 'Femme', 'Economie', 45, 'Autre', 'Formation continue'),
(12, 'Nom 12', 'Etudiant 12', 'Homme', 'Neurosciences', 47, 'Technologique', 'Formation initiale'),
(13, 'Nom 13', 'Etudiant 13', 'Homme', 'Chimie', 22, 'Technologique', 'Formation continue'),
(14, 'Nom 14', 'Etudiant 14', 'Femme', 'Economie', 22, 'General', 'Formation continue'),
(15, 'Nom 15', 'Etudiant 15', 'Homme', 'Maths', 23, 'General', 'Formation initiale'),
(16, 'Nom 16', 'Etudiant 16', 'Homme', 'Biologie', 24, 'General', 'Formation initiale'),
(17, 'Nom 17', 'Etudiant 17', 'Femme', 'Biologie', 27, 'General', 'Reprise d\'etudes'),
(18, 'Nom 18', 'Etudiant 18', 'Homme', 'Physique', 26, 'Autre', 'Reprise d\'etudes'),
(19, 'Nom 19', 'Etudiant 19', 'Femme', 'Economie', 30, 'General', 'Formation initiale'),
(20, 'Nom 20', 'Etudiant 20', 'Homme', 'Physique', 44, 'General', 'Formation initiale'),
(21, 'Nom 21', 'Etudiant 21', 'Homme', 'Neurosciences', 25, 'General', 'Formation continue'),
(22, 'Nom 22', 'Etudiant 22', 'Femme', 'Biologie', 24, 'Autre', 'Reprise d\'etudes'),
(23, 'Nom 23', 'Etudiant 23', 'Femme', 'Physique', 27, 'Autre', 'Formation initiale'),
(24, 'Nom 24', 'Etudiant 24', 'Homme', 'Biologie', 26, 'General', 'Formation continue'),
(25, 'Nom 25', 'Etudiant 25', 'Homme', 'Neurosciences', 23, 'General', 'Formation initiale'),
(26, 'Nom 26', 'Etudiant 26', 'Femme', 'Physique', 31, 'Technologique', 'Formation initiale'),
(27, 'Nom 27', 'Etudiant 27', 'Homme', 'Chimie', 24, 'General', 'Formation continue'),
(28, 'Nom 28', 'Etudiant 28', 'Homme', 'Chimie', 23, 'General', 'Formation initiale'),
(29, 'Nom 29', 'Etudiant 29', 'Femme', 'Biologie', 25, 'General', 'Reprise d\'etudes'),
(30, 'Nom 30', 'Etudiant 30', 'Femme', 'Economie', 23, 'Technologique', 'Formation initiale'),
(31, 'Nom 31', 'Etudiant 31', 'Homme', 'Economie', 24, 'Professionnel', 'Formation continue'),
(32, 'Nom 32', 'Etudiant 32', 'Homme', 'Maths', 29, 'Professionnel', 'Formation initiale'),
(33, 'Nom 33', 'Etudiant 33', 'Homme', 'Physique', 25, 'General', 'Formation initiale'),
(34, 'Nom 34', 'Etudiant 34', 'Femme', 'Physique', 26, 'Autre', 'Reprise d\'etudes'),
(35, 'Nom 35', 'Etudiant 35', 'Femme', 'Maths', 22, 'Autre', 'Formation continue'),
(36, 'Nom 36', 'Etudiant 36', 'Homme', 'Biologie', 27, 'General', 'Formation initiale'),
(37, 'Nom 37', 'Etudiant 37', 'Femme', 'Biologie', 28, 'General', 'Formation initiale'),
(38, 'Nom 38', 'Etudiant 38', 'Femme', 'Biologie', 28, 'General', 'Formation initiale'),
(39, 'Nom 39', 'Etudiant 39', 'Homme', 'Biologie', 24, 'General', 'Formation initiale'),
(40, 'Nom 40', 'Etudiant 40', 'Homme', 'Biologie', 25, 'General', 'Formation continue');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'Merci fatma!!', 51, 60, 'App\\Topic', '2020-04-24 14:19:47', '2020-04-24 14:19:47'),
(2, 'pas de quoi!!', 51, 1, 'App\\Comment', '2020-04-24 14:20:34', '2020-04-24 14:20:34'),
(3, 'hello', 51, 29, 'App\\Topic', '2020-04-29 08:45:21', '2020-04-29 08:45:21');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_02_115940_create_topics_table', 2),
(5, '2020_04_24_094950_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `situation`
--

CREATE TABLE `situation` (
  `id_situation` int(11) NOT NULL,
  `statut` varchar(5) NOT NULL,
  `taux_insertion` varchar(100) NOT NULL,
  `intitule_emploi` varchar(200) NOT NULL,
  `type_employeur` varchar(200) NOT NULL,
  `revenu_net` varchar(50) NOT NULL,
  `id_etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `situation`
--

INSERT INTO `situation` (`id_situation`, `statut`, `taux_insertion`, `intitule_emploi`, `type_employeur`, `revenu_net`, `id_etudiant`) VALUES
(1, 'CDI', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '1501-1801', 1),
(2, 'CDD', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '1801-2001', 2),
(3, 'CDD', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2001-2501', 3),
(4, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2501-3000', 4),
(5, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2501-3001', 5),
(6, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', 'Plus de 3000', 6),
(7, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2501-3000', 7),
(8, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '1801-2001', 8),
(9, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2501-3000', 9),
(10, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', 'Plus de 3000', 10),
(11, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '1501-1801', 11),
(12, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Fonction publique', '2001-2501', 12),
(13, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Fonction publique', '2501-3000', 13),
(14, 'CDI', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '1801-2001', 14),
(15, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '1801-2001', 15),
(16, 'CDI', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '2001-2501', 16),
(17, 'CDI', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '2001-2501', 17),
(18, 'CDI', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '1501-1801', 18),
(19, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', 'Plus de 3000', 19),
(20, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2501-3000', 20),
(21, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', 'Plus de 3000', 21),
(22, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2001-2501', 22),
(23, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2001-2501', 23),
(24, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', 'Plus de 3000', 24),
(25, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2501-3000', 25),
(26, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2501-3000', 26),
(27, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Fonction publique', '2501-3001', 27),
(28, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Fonction publique', '1801-2001', 28),
(29, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Fonction publique', '1801-2002', 29),
(30, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2001-2501', 30),
(31, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2001-2502', 31),
(32, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', 'Plus de 3000', 32),
(33, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2001-2501', 33),
(34, 'CDI', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '2001-2502', 34),
(35, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', '2501-3000', 35),
(36, 'CDI', 'Strictement en emploi', 'Business Analyst/MOA', 'Entreprise privée', '2501-3001', 36),
(37, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2501-3000', 37),
(38, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2001-2501', 38),
(39, 'CDI', 'Strictement en emploi', 'Développeur informatique', 'Entreprise privée', 'Plus de 3000', 39),
(40, 'CDI', 'Strictement en emploi', 'Consultant fonctionnel', 'Entreprise privée', '2001-2502', 40);

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `topics`
--

INSERT INTO `topics` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Qui aspernatur officia rerum architecto et tenetur.', 'Perferendis at consectetur magnam nam cumque quas rerum. Non minus accusamus nulla veniam unde neque. Facere eos aut accusamus quae. Aut aut quis autem a est animi sed.', 1, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(2, 'Blanditiis commodi a at aspernatur rerum.', 'Doloremque facere a magni consequatur autem officia. Officiis iusto eum ut corrupti eos voluptatem et asperiores. Similique eum velit et facilis et odio error. Accusamus quia iusto eveniet sed et exercitationem et.', 2, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(3, 'Sunt rem repellendus sint temporibus quod.', 'Blanditiis earum dolorum aut expedita est. Voluptatibus eum aut officiis velit et non officia. Explicabo iste mollitia dolorem saepe sequi aspernatur. Odit laudantium quibusdam voluptas debitis placeat.', 3, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(4, 'Sunt nesciunt accusamus temporibus vero aliquam molestiae.', 'Dolores est labore amet. Laboriosam corrupti ducimus blanditiis. Vitae iste neque rerum reiciendis. Et et qui velit magni blanditiis vel.', 4, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(5, 'Qui ut omnis nulla et perspiciatis iure atque nihil.', 'Nam voluptatibus quia ut. Natus aut veritatis molestias velit cupiditate molestias dolor. Quisquam alias voluptatem ipsum ipsum enim deleniti. Quis aut ut quia deleniti.', 5, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(6, 'Velit laborum rerum quos temporibus reprehenderit consectetur ut amet.', 'Excepturi corrupti fugit aut dolor nisi dolores sint. Doloremque natus magnam debitis amet. Dolorem repellendus ipsum inventore.', 6, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(7, 'Voluptatibus dicta distinctio reprehenderit molestias harum ut.', 'Accusantium voluptas qui numquam voluptatem id doloribus sunt. Omnis officiis tenetur quis eligendi provident laborum ut. Quo sint et sit adipisci quisquam odit quidem. Qui mollitia labore atque aut et consequatur et.', 7, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(8, 'Vero facilis qui nobis nihil ea sapiente ipsum.', 'Omnis voluptate quisquam iusto neque ratione. Rerum facere qui maxime culpa veritatis maiores. Est ducimus natus fuga eligendi amet sint non.', 8, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(9, 'Voluptas repudiandae numquam quo eos consequuntur.', 'Voluptas dolorem quae aspernatur ut voluptatem. Perspiciatis placeat mollitia sit aut. Voluptas ut ratione perferendis aut est animi.', 9, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(10, 'Ut aut in dolores labore voluptatum labore.', 'Cum quae est officiis. Omnis reiciendis ullam fugit architecto. Voluptas et sunt qui non.', 10, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(11, 'Labore sequi enim ut officia officiis nihil.', 'Rerum aliquam vel voluptas. Aspernatur debitis dolor et blanditiis vel enim laudantium. Sunt iste adipisci et suscipit.', 11, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(12, 'Porro et est explicabo suscipit qui porro aut in.', 'Quis quia dolores et blanditiis quia nihil quia aut. Ut consectetur officiis voluptatem minus quo ducimus. Aliquid voluptate repellat et dolor. Fugiat corporis dicta sint ut quae doloremque.', 12, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(13, 'Ad aut ab quas nobis quidem architecto blanditiis.', 'Quia est inventore nesciunt magnam cupiditate est omnis. Rerum unde sunt voluptatem dolorum quasi aut numquam et. Modi perferendis dolorem et quod. Error vitae aut quisquam sapiente consequuntur et. Et ut dolores aut dolores dignissimos dolorum.', 13, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(14, 'Molestias inventore possimus eos dolorem doloribus explicabo.', 'Debitis sed aspernatur delectus magni rerum minus. Corrupti itaque vel veritatis non sed. Cumque ad dicta voluptas ipsa et corporis. Saepe eaque nesciunt minus asperiores ab quos est.', 14, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(15, 'Et impedit nulla omnis necessitatibus.', 'Est adipisci voluptatibus itaque consequuntur voluptatem aut magnam. Repudiandae voluptas et quam corporis dolor. Omnis accusamus voluptatem repudiandae aut tenetur consequatur voluptas.', 15, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(16, 'Et nihil occaecati ipsam facilis molestias.', 'Et tempore unde harum veniam. Dolores doloribus aliquam illum numquam possimus. Eos aut voluptatem nemo autem quis magni eos.', 16, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(17, 'Ut est ab ad et.', 'Et quidem quidem corporis inventore ea velit qui numquam. Voluptates earum dolores non possimus iure error. Minima omnis necessitatibus reprehenderit accusamus voluptas aperiam fuga occaecati. Ex veritatis ut eos odio totam.', 17, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(18, 'Repellat quia provident perferendis unde.', 'Iure molestiae magni quo aut eaque excepturi non. Voluptate velit illum nostrum non fugiat. Est dignissimos illo quasi recusandae. Eos optio deserunt accusantium perspiciatis sit.', 18, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(19, 'Quisquam placeat voluptatem adipisci voluptatem et nobis.', 'At impedit maxime ut repellat quo aut dolorem. Incidunt nam sequi enim explicabo vel adipisci aut. Laudantium architecto vel omnis aut. Tenetur doloremque magni inventore consequatur voluptas. Et reprehenderit quibusdam fugit esse.', 19, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(20, 'Odit laudantium enim maxime rerum.', 'In est quisquam officiis ea qui ut. Qui qui nihil praesentium et. Voluptas delectus quis natus.', 20, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(21, 'Molestiae omnis provident eveniet dolor est quis.', 'Repudiandae enim dolor consequuntur sed ut impedit dolores. Aut officia accusantium dignissimos doloremque eum. Cum expedita itaque aut vel et. Inventore omnis magnam aspernatur quia.', 21, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(22, 'Qui dolorum vel dolores id eligendi quia.', 'Quas sint qui velit quia laborum. Accusantium nemo nisi nihil voluptates accusamus. Architecto sequi non ducimus voluptatum dolor voluptate nisi corporis. Enim dolore odio optio eum.', 22, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(23, 'Expedita voluptate eum sunt asperiores corrupti iste quia.', 'Omnis et ratione quia eius et et amet. Omnis sint totam saepe autem qui. Molestias sunt iusto qui nesciunt rerum. Ducimus quidem dolor repudiandae iste et et vero. Fugit minus delectus in iure quasi molestiae quam.', 23, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(24, 'Vero nesciunt qui et.', 'Eum optio possimus est laboriosam facilis. Fugiat fuga quis excepturi numquam voluptatem alias quia quia. Autem architecto non et et sunt voluptatem.', 24, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(25, 'Sapiente ex odit quasi vel quasi.', 'Architecto aliquid cumque perferendis nihil tempore repellat ipsam. Cupiditate eaque eveniet et fugit debitis expedita. Ipsa asperiores laboriosam voluptatem excepturi consectetur dolor quaerat. Reprehenderit modi necessitatibus nemo quisquam dolores voluptate.', 25, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(26, 'Repellendus et ad itaque dicta ut architecto.', 'Quae architecto est eum excepturi culpa quas. Et numquam est voluptatem quas enim qui. Odio perferendis ut quidem aut. Totam aut pariatur voluptas non dignissimos corporis voluptate.', 26, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(27, 'Qui excepturi dolorem eaque sed unde animi.', 'Enim in impedit ratione cumque aperiam. Mollitia eos dolor deserunt sit rerum. Delectus blanditiis est sed.', 27, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(28, 'Labore natus alias dicta est.', 'Eos et deleniti sed dolorem expedita doloremque cum. Sapiente eius et dolores dolor veniam voluptatem reprehenderit. Sint ea aut velit. Aut quisquam odio consequatur impedit alias.', 28, '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(29, 'Quis placeat nobis minus est error.', 'Doloremque voluptatem laboriosam itaque. Id officia debitis voluptas ab. Et porro totam dolores possimus eos eaque sunt.', 29, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(30, 'Est eum dolorem libero fugiat.', 'Blanditiis ab nihil quidem et nihil. Dolor reiciendis quibusdam esse exercitationem nisi at ut.', 30, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(31, 'Rerum aut sed aut.', 'Eaque corporis quia explicabo ipsa aut. Atque hic esse quis nihil quo assumenda. Nam quia ut modi et nam sapiente dolores. Sint quia corporis quidem commodi quas est est.', 31, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(32, 'Qui culpa quia nihil magnam delectus accusamus assumenda architecto.', 'Consequuntur labore animi numquam enim qui. Temporibus omnis nesciunt deleniti itaque laudantium error ipsam. Commodi qui sit tenetur rem quia earum.', 32, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(33, 'Libero dignissimos et sit nihil saepe ut sint explicabo.', 'Earum pariatur nulla facere et aperiam nostrum. Rerum non consequatur culpa. In consequatur eum dolores. Vero mollitia similique qui voluptatum eos sed corporis.', 33, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(34, 'Ut eum esse reprehenderit velit dolor.', 'Neque nesciunt non et suscipit necessitatibus maxime. Sed accusamus velit cupiditate ut esse enim quam ab. Quis praesentium dignissimos ex aut minima ullam vero. Culpa quas nam consectetur.', 34, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(35, 'Dolores fugiat pariatur dolorem quasi rerum.', 'Ut praesentium beatae dolore earum occaecati. Sunt sed nihil quisquam officia. Pariatur cum repudiandae sint et.', 35, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(36, 'Odit sint similique quasi.', 'Sed et aut laborum occaecati dolore distinctio. Minima sint sapiente qui autem id dolores. Nostrum incidunt voluptatem rerum exercitationem dolores. Beatae omnis qui neque.', 36, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(37, 'Facilis cupiditate omnis laborum quos unde.', 'Ut totam neque eius est enim et provident. Possimus distinctio consectetur nisi doloribus odio. Rem corrupti omnis tempore sed. Accusamus et et velit laborum iusto. Pariatur aspernatur ex et eos.', 37, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(38, 'Et quibusdam ducimus officiis odio quae laudantium.', 'Suscipit hic quia voluptatem et blanditiis omnis eum. Sunt et qui est ipsa at praesentium et dolorem. Sint possimus atque doloribus ipsa. Id praesentium nobis nesciunt nisi amet neque.', 38, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(39, 'Omnis ut eveniet in nisi illo odio voluptates.', 'Sed sunt cum est. Velit dicta quia aut neque. Iure perspiciatis adipisci libero omnis incidunt quia. Et atque excepturi sint eveniet ex aut.', 39, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(40, 'Non sint dignissimos quisquam adipisci illum qui.', 'Dolorum officiis est velit quo. Veniam aut qui odit aut qui voluptatibus quia.', 40, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(41, 'Quasi consequatur quis similique et.', 'Dolores non iste sed omnis consequatur suscipit. Vel enim suscipit possimus molestiae.', 41, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(42, 'Aut quae quasi odio non.', 'Beatae et sint repudiandae earum animi. Illo sed sed voluptas quis. Quod vero saepe nobis eos nesciunt est sed sunt.', 42, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(43, 'Et tempora dolore quibusdam accusamus officia repellendus.', 'Error nesciunt quia consequatur ratione animi aspernatur. Non libero nihil ipsa dolorem numquam rerum autem. Et nostrum blanditiis sed.', 43, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(44, 'Id facere nostrum asperiores recusandae.', 'Voluptas nesciunt rerum labore ut corrupti laborum perferendis. Impedit eaque quaerat voluptate expedita fugiat. Nemo ipsam distinctio vero sit eum laboriosam non. Aut et quasi quisquam.', 44, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(45, 'Consequatur voluptas aliquid amet quia dolorum exercitationem necessitatibus.', 'Ea tenetur facilis voluptatem voluptatem. Libero quo voluptates voluptatibus molestiae distinctio et dolores. Doloribus et modi expedita provident. Ducimus aliquam et incidunt nihil voluptates perferendis reiciendis et.', 45, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(46, 'Voluptatem ipsa nesciunt molestias quibusdam quos velit hic.', 'Consectetur occaecati quam incidunt quasi qui voluptate voluptas. Fugiat ratione voluptas porro culpa omnis distinctio earum. Possimus qui cupiditate qui placeat ex distinctio. Aperiam nam fuga enim quam reprehenderit.', 46, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(47, 'Est officia et ut.', 'Est soluta architecto et. Doloremque assumenda quia non consectetur sint. Sed explicabo et mollitia est numquam natus quia debitis. Dolorum molestias sit commodi nemo magni voluptas enim eveniet.', 47, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(48, 'Et doloribus fuga et officiis magnam.', 'Illo animi consequatur est voluptatem aperiam. Voluptatum officiis ut adipisci. Sint ut quia commodi ducimus. Placeat quos aut aliquam eius. Voluptatem aut in mollitia ipsa.', 48, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(49, 'Soluta voluptatem vitae ducimus nostrum.', 'Quo sapiente libero nesciunt hic ad. Saepe ut autem deleniti. A vel officiis expedita inventore est vitae.', 49, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(50, 'Quis culpa et quis blanditiis illo.', 'Impedit saepe suscipit accusamus hic occaecati excepturi iure quia. Aut cumque corrupti magni maiores.', 50, '2020-04-03 11:31:02', '2020-04-03 11:31:02'),
(55, 'first topic', 'hello guy AND GIRLS!!', 51, '2020-04-15 18:31:07', '2020-04-15 19:13:21'),
(59, 'first topic', 'rkrkkrkkkr', 51, '2020-04-24 08:55:06', '2020-04-24 08:55:06'),
(60, 'second topic', 'jee erreur', 51, '2020-04-24 13:40:29', '2020-04-24 13:40:29');

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adella Wiza', 'sawayn.emil@example.net', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6Rw9TeyAkR', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(2, 'Kelvin Cole', 'leda.russel@example.org', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H4cfidu2lr', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(3, 'Emiliano Wyman', 'meggie99@example.org', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dqYmDPp2RW', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(4, 'Kobe Dibbert', 'jakubowski.clifton@example.org', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't720m7IlJJ', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(5, 'Percy Schiller', 'shanel58@example.net', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jcwMS3oLqc', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(6, 'Mr. Lawrence O\'Connell', 'carlotta.dubuque@example.org', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V41J55Mgh6', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(7, 'Harmon Heathcote', 'allen.greenholt@example.net', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qn8yXuDClB', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(8, 'Dr. Jacynthe Grady', 'miguel.terry@example.com', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5EJpAm6nku', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(9, 'Weston Lebsack', 'ccarter@example.net', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gAnv0AAzb3', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(10, 'Naomi Bruen', 'dallin19@example.org', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RZpemZbJ1c', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(11, 'Prof. Alvah Cremin', 'bonita72@example.org', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ayU2BwMdYJ', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(12, 'Cletus Prohaska', 'kane27@example.com', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RH6FUoKLMX', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(13, 'Noble Mraz', 'kuhlman.lola@example.org', '2020-04-03 11:30:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OkqAhMHJ11', '2020-04-03 11:30:59', '2020-04-03 11:30:59'),
(14, 'Mr. Angel Eichmann', 'heaney.levi@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VRlyNstRfQ', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(15, 'Vernice Klein', 'schulist.abel@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YCvOu9rUC7', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(16, 'Paul Ernser III', 'halle.barrows@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GXQLVksiVH', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(17, 'Maurine Goldner', 'moses.willms@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YEh2CnaLuT', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(18, 'Georgette Turner', 'stoltenberg.kelly@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0Dk3d6IApY', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(19, 'Orpha Kunde', 'hermann.gayle@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LRE1aD9XAz', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(20, 'Anna Hahn', 'brandyn.kub@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jpGXYAsSWP', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(21, 'Alicia Cummings', 'lincoln.waelchi@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JnK5mP6gN5', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(22, 'Ebony Connelly', 'lester74@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IRC5VGGJ8j', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(23, 'Vincenzo Paucek', 'hugh.mccullough@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'swWtock2uU', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(24, 'Ciara Rowe I', 'mayert.joelle@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a4H4g4KVIE', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(25, 'Mackenzie Bahringer', 'esta42@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3cY9fYruFz', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(26, 'Emely Shields', 'torp.seamus@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JsxOxIlfWO', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(27, 'Khalil Bergstrom', 'sadie31@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YSH9NwEoii', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(28, 'Hilario Powlowski', 'stracke.emmanuel@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BwENvPac4t', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(29, 'Kennedi Torphy', 'bechtelar.liam@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PtWC7cbZzC', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(30, 'Helene Fritsch', 'jamar11@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VCNsUDUHOx', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(31, 'Mr. Gianni Purdy', 'americo61@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HkBcf3rzvN', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(32, 'Dr. Robyn Reinger', 'kschneider@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X46rR4xozi', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(33, 'Brionna Hamill', 'wwitting@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IdWmBFS3gG', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(34, 'Isabelle D\'Amore I', 'greenholt.daryl@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h7TNN0ZJq4', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(35, 'Sydnie Terry', 'hubert.labadie@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8NAuxXjeAA', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(36, 'Faye Bradtke', 'ellsworth49@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OAEDQOkhHl', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(37, 'Prof. Mara Reynolds', 'archibald95@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h89aAo6QiJ', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(38, 'Dr. Gretchen Moen', 'lueilwitz.hugh@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aqBpjo32P8', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(39, 'Javier Kautzer', 'tristian.dickens@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vbamgabr1p', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(40, 'Jennings Reinger', 'dejah.stiedemann@example.net', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RewSwLCBU3', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(41, 'Mrs. Verda Boyer IV', 'rowe.tessie@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HsHqjFQpTy', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(42, 'Delores Mueller DVM', 'rokon@example.com', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HSp5VxxiX1', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(43, 'Mohamed Kreiger', 'tmohr@example.org', '2020-04-03 11:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qb3Y0iaSev', '2020-04-03 11:31:00', '2020-04-03 11:31:00'),
(44, 'Domenic Cronin', 'ondricka.selina@example.org', '2020-04-03 11:31:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4zwWPmmLrx', '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(45, 'Dortha Wilkinson', 'hammes.seamus@example.org', '2020-04-03 11:31:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PRnUh93auX', '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(46, 'Jeremie Dickinson', 'tillman.elna@example.net', '2020-04-03 11:31:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TXkuwbv2Xt', '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(47, 'Tatyana Berge', 'schuyler.kassulke@example.org', '2020-04-03 11:31:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dxgdXInojh', '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(48, 'Dr. Wava Goodwin DVM', 'taylor.kemmer@example.com', '2020-04-03 11:31:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5GtB9nFhtb', '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(49, 'Mrs. Tracy Koch', 'pkub@example.com', '2020-04-03 11:31:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cvyXJufhkI', '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(50, 'Alvina Reynolds', 'marques.kautzer@example.net', '2020-04-03 11:31:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mHRjoYmPfm', '2020-04-03 11:31:01', '2020-04-03 11:31:01'),
(51, 'anna', 'anna@yahoo.fr', NULL, '$2y$10$siiiz.LqhDhaM0b59h5CCeQ1aAs/rhc07f4jiF7prCo3jzKNNwwmm', NULL, '2020-04-15 14:46:17', '2020-04-15 14:46:17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `caracteristiques`
--
ALTER TABLE `caracteristiques`
  ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `situation`
--
ALTER TABLE `situation`
  ADD PRIMARY KEY (`id_situation`);

--
-- Index pour la table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `caracteristiques`
--
ALTER TABLE `caracteristiques`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `situation`
--
ALTER TABLE `situation`
  MODIFY `id_situation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
