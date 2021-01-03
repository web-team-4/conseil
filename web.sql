-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 déc. 2020 à 13:17
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `web`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`name`, `password`, `id`) VALUES
('yassine', '123456789', 1);

-- --------------------------------------------------------

--
-- Structure de la table `conseil_d`
--

CREATE TABLE `conseil_d` (
  `id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `titre` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `conseuytesf`
--

CREATE TABLE `conseuytesf` (
  `id` int(11) NOT NULL,
  `titre` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `description` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `forum`
--

INSERT INTO `forum` (`id`, `nom`, `prenom`, `message`) VALUES
(0, 'test', 'test', 'ezd'),
(1, 'a', 'testa', 'klmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklmsqdkkkkkkkkkkkkklm');

-- --------------------------------------------------------

--
-- Structure de la table `regime_d`
--

CREATE TABLE `regime_d` (
  `id` int(11) NOT NULL,
  `type` varchar(128) NOT NULL,
  `titre` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `regime_d`
--

INSERT INTO `regime_d` (`id`, `type`, `titre`, `image`, `description`) VALUES
(27, 'new', 'test', '261x.JPG', 'ra'),
(26, 'test', 'test', '7836nn.jpg', 'rezr'),
(25, 'test', 'test', '340sofiene.JPG', 'test'),
(24, 'r', 'r', '2303x.JPG', 'r'),
(23, 'test', 'test', '7203x.JPG', 'test'),
(22, 'type', 'titre', '8507nn.jpg', 'test'),
(28, 'r', 'test', '4240x.JPG', 'zezrfez');

-- --------------------------------------------------------

--
-- Structure de la table `voy_d`
--

CREATE TABLE `voy_d` (
  `id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `prix` float NOT NULL,
  `nbnuit` int(11) NOT NULL,
  `destination` varchar(128) NOT NULL,
  `programme` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voy_d`
--

INSERT INTO `voy_d` (`id`, `image`, `date`, `prix`, `nbnuit`, `destination`, `programme`) VALUES
(1, '1573767paris1.jpg', '2010-10-12', 12.5, 145, 'dghjk', 'xdcfghjk'),
(2, '4913767paris1.jpg', '2020-12-22', 10.3, 4, 'hyuio', 'fghjk'),
(3, '7313960hotel-7.jpg', '2020-12-22', 10.3, 4, 'hyuio', 'fghjk');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conseil_d`
--
ALTER TABLE `conseil_d`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `regime_d`
--
ALTER TABLE `regime_d`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `voy_d`
--
ALTER TABLE `voy_d`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `conseil_d`
--
ALTER TABLE `conseil_d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `regime_d`
--
ALTER TABLE `regime_d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `voy_d`
--
ALTER TABLE `voy_d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
