-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 30 mai 2019 à 09:45
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

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

DROP TABLE IF EXISTS `anneescolaire`;
CREATE TABLE IF NOT EXISTS `anneescolaire` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bulletin`
--

DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE IF NOT EXISTS `bulletin` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_trimestre` smallint(5) UNSIGNED NOT NULL,
  `id_inscription` smallint(5) UNSIGNED NOT NULL,
  `appreciation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bulletin_inscription` (`id_inscription`),
  KEY `fk_bulletin_trimestre` (`id_trimestre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `id_ecole` smallint(5) UNSIGNED NOT NULL,
  `id_niveau` smallint(5) UNSIGNED NOT NULL,
  `id_annee` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_classe_annee` (`id_annee`),
  KEY `fk_classe_ecole` (`id_ecole`),
  KEY `fk_classe_niveau` (`id_niveau`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `detailbulletin`
--

DROP TABLE IF EXISTS `detailbulletin`;
CREATE TABLE IF NOT EXISTS `detailbulletin` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_bulletin` smallint(5) UNSIGNED NOT NULL,
  `id_enseignement` smallint(5) UNSIGNED NOT NULL,
  `appreciation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_DetailBulletin_Bulletin` (`id_bulletin`),
  KEY `fk_DetailBulletin_Enseignement` (`id_enseignement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
CREATE TABLE IF NOT EXISTS `discipline` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

DROP TABLE IF EXISTS `ecole`;
CREATE TABLE IF NOT EXISTS `ecole` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

DROP TABLE IF EXISTS `enseignement`;
CREATE TABLE IF NOT EXISTS `enseignement` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_classe` smallint(5) UNSIGNED NOT NULL,
  `id_discipline` smallint(5) UNSIGNED NOT NULL,
  `id_personne` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enseignement_classe` (`id_classe`),
  KEY `fk_enseignement_discipline` (`id_discipline`),
  KEY `fk_enseignement_personne` (`id_personne`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_detail_bulletin` smallint(5) UNSIGNED NOT NULL,
  `note` decimal(10,0) NOT NULL,
  `appreciation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Evaluation_DetailBulletin` (`id_detail_bulletin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_classe` smallint(5) UNSIGNED NOT NULL,
  `id_personne` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_inscription_classe` (`id_classe`),
  KEY `fk_inscription_personne` (`id_personne`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `type` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `id_annee` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trimestre_annee` (`id_annee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
