-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 16 Janvier 2019 à 10:40
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
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

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `commentaire` text NOT NULL,
  `titre` varchar(100) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`id`, `pseudo`, `date`, `commentaire`, `titre`, `categories_id`) VALUES
(3, 'Jacky_du_38', '2019-01-15 16:00:31', 'Macron démission macron démission', 'Macron démission', 5),
(7, 'Maurice', '2019-01-15 16:02:31', 'ET salut mois c\'est maurice, 43 ans, célibataire, je suis à la recherche de l\'amour. Contacter moi au 0608673419\r\nLa bise ...', 'Maurice en manque d\'amour', 4),
(6, 'Marine_du_58', '2019-01-15 16:00:35', 'Oui, bonjour je trouve que des gens son trop payé dans cette boite, je trouve cela insupportable. Merci de prendre en compte mon commentaire', 'Rendez l\'argent au abonnés', 3),
(9, 'Jean-Charles Le Normand', '2019-01-15 16:05:15', 'Bonjour,\r\nUn petit commentaire pour faire une suggestion pour la cantine. Il serait bien d\'ajouter un repas végétarien au menu.\r\nMerci d\'avance', 'Demande de repas Végétarien au menu de la cantine', 5),
(10, 'Bernard du 69', '2019-01-15 16:56:44', 'Juste pour dire que l\'europe c\'est de la merde', 'L\'europe c\'est de la merde', 4),
(11, 'azerty', '2019-01-16 10:57:08', 'a nous allé sur le time des connaissance', 'test for all', 2),
(12, 'azerty', '2019-01-16 11:02:33', 'la politique est une science de la merde', 'icococo', 1),
(13, 'azerty', '2019-01-16 11:02:57', 'yfyuhgbujbkj', 'yuhvgfjvh', 3),
(14, 'azerty', '2019-01-16 11:16:46', 'tout va bien', 'okok', 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_categories_idx` (`categories_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
