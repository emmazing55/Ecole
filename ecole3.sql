-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 07 juin 2019 à 13:37
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecole2`
--

-- --------------------------------------------------------

--
-- Structure de la table `anneescolaire`
--

CREATE TABLE `anneescolaire` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `anneescolaire`
--

INSERT INTO `anneescolaire` (`id`, `debut`, `fin`) VALUES
(1, '2016-09-03', '2021-05-27'),
(2, '2018-09-07', '2023-05-29');

-- --------------------------------------------------------

--
-- Structure de la table `bulletin`
--

CREATE TABLE `bulletin` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `id_trimestre` smallint(5) UNSIGNED NOT NULL,
  `id_inscription` smallint(5) UNSIGNED NOT NULL,
  `appreciation` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `id_ecole` smallint(5) UNSIGNED NOT NULL,
  `id_niveau` smallint(5) UNSIGNED NOT NULL,
  `id_annee` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detailbulletin`
--

CREATE TABLE `detailbulletin` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `id_bulletin` smallint(5) UNSIGNED NOT NULL,
  `id_enseignement` smallint(5) UNSIGNED NOT NULL,
  `appreciation` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

CREATE TABLE `discipline` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `discipline`
--

INSERT INTO `discipline` (`id`, `nom`) VALUES
(1, 'informatique'),
(2, 'physique');

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`id`, `nom`) VALUES
(1, 'ece'),
(2, 'ece tech');

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

CREATE TABLE `enseignement` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `id_classe` smallint(5) UNSIGNED NOT NULL,
  `id_discipline` smallint(5) UNSIGNED NOT NULL,
  `id_personne` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `id_detail_bulletin` smallint(5) UNSIGNED NOT NULL,
  `note` decimal(10,0) NOT NULL,
  `appreciation` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `id_classe` smallint(5) UNSIGNED NOT NULL,
  `id_personne` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `id_classe`, `id_personne`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id`, `nom`) VALUES
(1, 'cycle ingenieur'),
(2, 'cycle preparatoire');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `type`) VALUES
(1, 'guetienne', 'emma', 'etudiant'),
(2, 'rohart', 'margaux', 'etudiant'),
(3, 'd hotelans', 'augustin', 'etudiant'),
(4, 'luke', 'lucky', 'enseignant ');

-- --------------------------------------------------------

--
-- Structure de la table `trimestre`
--

CREATE TABLE `trimestre` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `id_annee` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `anneescolaire`
--
ALTER TABLE `anneescolaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bulletin`
--
ALTER TABLE `bulletin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bulletin_inscription` (`id_inscription`),
  ADD KEY `fk_bulletin_trimestre` (`id_trimestre`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classe_annee` (`id_annee`),
  ADD KEY `fk_classe_ecole` (`id_ecole`),
  ADD KEY `fk_classe_niveau` (`id_niveau`);

--
-- Index pour la table `detailbulletin`
--
ALTER TABLE `detailbulletin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_DetailBulletin_Bulletin` (`id_bulletin`),
  ADD KEY `fk_DetailBulletin_Enseignement` (`id_enseignement`);

--
-- Index pour la table `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enseignement`
--
ALTER TABLE `enseignement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_enseignement_classe` (`id_classe`),
  ADD KEY `fk_enseignement_discipline` (`id_discipline`),
  ADD KEY `fk_enseignement_personne` (`id_personne`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Evaluation_DetailBulletin` (`id_detail_bulletin`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inscription_classe` (`id_classe`),
  ADD KEY `fk_inscription_personne` (`id_personne`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_trimestre_annee` (`id_annee`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `anneescolaire`
--
ALTER TABLE `anneescolaire`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `bulletin`
--
ALTER TABLE `bulletin`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detailbulletin`
--
ALTER TABLE `detailbulletin`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `discipline`
--
ALTER TABLE `discipline`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ecole`
--
ALTER TABLE `ecole`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `enseignement`
--
ALTER TABLE `enseignement`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
