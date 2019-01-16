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
DROP SCHEMA IF EXISTS entreprise; 
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

DROP TABLE IF EXISTS `employes`;
CREATE TABLE IF NOT EXISTS `employes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `service` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `age` int(11) NOT NULL,
  `salaire` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `nom`, `prenom`, `service`, `date`, `age`, `salaire`) VALUES
(1, 'Charpentier', 'Antoine', 'Consultants', '2018-12-17', 26, 26000),
(2, 'Dallau', 'William', 'Consultants', '2018-12-17', 24, 26000),
(3, 'Singer', 'Antoine', 'Consultants', '2018-12-17', 25, 26000);

DROP TABLE IF EXISTS `annonces`;
CREATE TABLE IF NOT EXISTS `annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resume` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `categorie`, `date`, `resume`) VALUES
(1, 'News', '2019-01-15 00:00:00', 'Raclette&Co Toronto ouvre sa première antenne.'),
(2, 'Salon', '2019-01-14 00:00:00', 'Nous serons présents au forum Rhône-Alpes pour rencontrer les étudiants et leur présenter nos opportunités.'),
(3, 'News', '2019-01-13 00:00:00', 'Elon Musk soutient publiquement Raclette&Co pour son projet de développement de raclette de poche.'),
(9, 'News', '2019-01-16 09:28:39', 'Strasbourg relégué en ligue 2');

DROP TABLE IF EXISTS `cantine`;
CREATE TABLE IF NOT EXISTS `cantine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Jour` varchar(10) NOT NULL,
  `Menu` text NOT NULL,
  `MenuVégé` text NOT NULL,
  `Prix` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cantine`
--

INSERT INTO `cantine` (`ID`, `Jour`, `Menu`, `MenuVégé`, `Prix`) VALUES
(1, 'Lundi', 'Tartare de bœuf au couteau (250g) accompagné de ses petits légumes sauté à la poêle et de ses mannequins de pommes de terre sortis d\'un jacuzzi d\'huile bouillante.', 'Tartare de carotte enveloppé dans sa robe de poireau, accompagné par son charmant navet dans son jus d\'eau.', 12),
(2, 'Mardi', 'Tendre magret de canard saignant, cuit dans son bain de graisse et concaténation de pommes de terre en rondelle cimentées par une béchamel onctueuse.', 'Farandole de quinoa, petits pois, avocat, et tout le tralala. Vinaigrette à l\'ancienne cousin.', 10),
(3, 'Mercredi', 'Volaille en tranche recouvert de son manteau de raclette pour passer l\'hiver, en allant à la gravière. ', 'Pirouette et courbette de la courgette voulant aller plus haut que le haricot, mais qui se prend les pieds dans le chou et la fleur.', 15),
(4, 'Jeudi', 'Tagliatelles au saumon c\'est vraiment trop bon, sauce beurre-citron on est pas con.', 'Blé et maïs pour Anaïs,\r\nPotiron et melon pour Chaton,\r\nPlus rien ensuite, il y a une fuite.', 13),
(5, 'Vendredi', 'Vendredi tout est permis, maxi tacos triple viandes, salade, tomates, oignons, poivrons, raclette, sauce samouraï, blanche, ketchup, mayo, on s\'en fout d\'être gros.', 'Crêpe nature, on a plus de légumes, vous avez tout mangé, on est ruiné.', 10);

-- --------------------------------------------------------

--
-- Structure de la table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE IF NOT EXISTS `suggestion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Menu` text NOT NULL,
  `MenuVege` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;