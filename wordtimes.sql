-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mer. 15 mai 2019 à 15:01
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordtimes`
--

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

CREATE TABLE `continent` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `continent`
--

INSERT INTO `continent` (`id`, `name`) VALUES
(1, 'Africa'),
(2, 'America'),
(3, 'Europe'),
(4, 'Antarctica'),
(5, 'Arctic'),
(6, 'Atlantic'),
(7, 'Australia'),
(8, 'Indian'),
(9, 'Pacific'),
(10, 'Asia');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190501022013', '2019-05-01 02:20:54'),
('20190501121953', '2019-05-01 12:23:18');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `continent_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id`, `continent_id`, `name`) VALUES
(1, 2, 'Adak'),
(2, 9, 'Gambier'),
(3, 1, 'Abidjan'),
(4, 9, 'Apia'),
(5, 9, 'Chuuk'),
(7, 9, 'Fakaofo'),
(8, 9, 'Gambier'),
(9, 9, 'Kiritimati'),
(10, 9, 'Marquesas'),
(11, 9, 'Norfolk'),
(12, 9, 'Pitcairn'),
(13, 9, 'Saipan'),
(14, 9, 'Wake'),
(15, 9, 'Auckland'),
(16, 3, 'Amsterdam'),
(17, 3, 'Paris'),
(18, 3, 'Rome'),
(19, 3, 'Monaco'),
(20, 3, 'Podgorica'),
(21, 3, 'Zurich'),
(22, 3, 'Volgograd'),
(23, 3, 'Zaporozhye'),
(24, 3, 'Vatican'),
(25, 3, 'London'),
(26, 3, 'Moscow'),
(27, 3, 'Luxembourg'),
(28, 3, 'Andorra'),
(29, 10, 'Hong_Kong'),
(30, 10, 'Beirut'),
(31, 10, 'Dubai'),
(32, 10, 'Ho_Chi_Minh'),
(33, 10, 'Tokyo'),
(34, 10, 'Vladivostok'),
(35, 10, 'Qatar'),
(36, 10, 'Vientiane'),
(37, 10, 'Tashkent'),
(38, 10, 'Shanghai'),
(39, 8, 'Antananarivo'),
(40, 8, 'Comoro'),
(41, 8, 'Mauritius'),
(42, 8, 'Chagos'),
(43, 8, 'Kerguelen'),
(44, 8, 'Mayotte'),
(45, 8, 'Christmas'),
(46, 8, 'Mahe'),
(47, 8, 'Reunion'),
(48, 8, 'Cocos'),
(49, 8, 'Maldives');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F62F176921F4C77` (`continent_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `continent`
--
ALTER TABLE `continent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_F62F176921F4C77` FOREIGN KEY (`continent_id`) REFERENCES `continent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
