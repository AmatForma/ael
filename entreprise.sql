-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 16 jan. 2019 à 08:26
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
-- Base de données :  `entreprise`
--
CREATE DATABASE IF NOT EXISTS `entreprise` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `entreprise`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(1, 'Politique'),
(2, 'Economie'),
(3, 'fonctionnement_entreprise'),
(4, 'autres'),
(5, 'nourriture');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `commentaire` text NOT NULL,
  `titre` varchar(100) NOT NULL,
  `categories_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_categories_idx` (`categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `nom`, `date`, `commentaire`, `titre`, `categories_id`) VALUES
(3, 'Jacky_du_38', '2019-01-15 16:00:31', 'Macron démission macron démission', 'Macron démission', 5),
(7, 'Maurice', '2019-01-15 16:02:31', 'ET salut mois c\'est maurice, 43 ans, célibataire, je suis à la recherche de l\'amour. Contacter moi au 0608673419\r\nLa bise ...', 'Maurice en manque d\'amour', 4),
(6, 'Marine_du_58', '2019-01-15 16:00:35', 'Oui, bonjour je trouve que des gens son trop payé dans cette boite, je trouve cela insupportable. Merci de prendre en compte mon commentaire', 'Rendez l\'argent au abonnés', 3),
(9, 'Jean-Charles Le Normand', '2019-01-15 16:05:15', 'Bonjour,\r\nUn petit commentaire pour faire une suggestion pour la cantine. Il serait bien d\'ajouter un repas végétarien au menu.\r\nMerci d\'avance', 'Demande de repas Végétarien au menu de la cantine', 5),
(10, 'Bernard du 69', '2019-01-15 16:56:44', 'Juste pour dire que l\'europe c\'est de la merde', 'L\'europe c\'est de la merde', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
