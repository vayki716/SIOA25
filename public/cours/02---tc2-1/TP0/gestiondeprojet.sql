-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 08 sep. 2023 à 15:21
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestiondeprojet`
--
CREATE DATABASE IF NOT EXISTS `TC2-1_gestiondeprojet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `TC2-1_gestiondeprojet`;

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE IF NOT EXISTS `activite` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `dateDebutPrev` datetime DEFAULT NULL,
  `dateFinPrev` datetime DEFAULT NULL,
  `dateDebutReelle` datetime DEFAULT NULL,
  `dateFinReelle` datetime DEFAULT NULL,
  `chargeJourHommePrev` float DEFAULT NULL,
  `chargeJourHommeReal` float DEFAULT NULL,
  `codeProjet` varchar(8) NOT NULL,
  PRIMARY KEY (`num`),
  KEY `codeProjet` (`codeProjet`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`num`, `nom`, `dateDebutPrev`, `dateFinPrev`, `dateDebutReelle`, `dateFinReelle`, `chargeJourHommePrev`, `chargeJourHommeReal`, `codeProjet`) VALUES
(1, 'Commande fournisseur', '2023-03-24 00:00:00', '2023-04-14 00:00:00', '2023-03-27 00:00:00', '2023-04-13 00:00:00', 1, 1, 'P050309'),
(2, 'Maquettage', '2023-04-14 00:00:00', '2023-04-28 00:00:00', '2023-04-14 00:00:00', '2023-05-02 00:00:00', 0.25, 0.4, 'P050309'),
(3, 'Installation et configuration serveur', '2023-04-10 00:00:00', '2023-04-21 00:00:00', '2023-04-10 00:00:00', '2023-04-18 00:00:00', 1.03, 1.5, 'P050309'),
(4, 'Installation et configuration poste', '2023-04-10 00:00:00', '2023-04-21 00:00:00', '2023-04-10 00:00:00', '2023-04-24 00:00:00', 0.7, 2, 'P050309'),
(5, 'Formation', '2023-04-12 00:00:00', '2023-05-19 00:00:00', '2023-04-12 00:00:00', '2023-05-19 00:00:00', 7, 7, 'P050309'),
(6, 'Déploiement', '2023-04-18 00:00:00', '2023-05-05 00:00:00', '2023-04-20 00:00:00', '2023-05-05 00:00:00', 3.7, 4, 'P050309'),
(7, 'Test', '2023-04-12 00:00:00', '2023-04-27 00:00:00', '2023-04-12 00:00:00', '2023-04-28 00:00:00', 2.2, 4, 'P050309');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) DEFAULT NULL,
  `rue` varchar(75) DEFAULT NULL,
  `CP` varchar(8) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `nomContact` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=1346 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`num`, `nom`, `rue`, `CP`, `ville`, `tel`, `fax`, `nomContact`) VALUES
(41, 'Collège Francois 1er', '3, cours du clos des reines', '17200', 'ROYAN', '05 46 4x xx xx', '05 46 4x xx xx', 'Vincent Cheneraud'),
(45, 'Lycée Elysée Reclus', '19, porte du pommier', '16000', 'ANGOULEME', '05 45 4x xx xx', '05 45 4x xx xx', 'Cecile Allenet'),
(50, 'Poisson Occaz', '34 bis, porte des peupliers', '16300', 'VIGNOLLES', '05 45 xx xx xx', '05 45 xx xx xx', 'Jerry Maurandeau'),
(77, 'Collège Mitterand', '18 rue du Cimetière', '16200', 'JARNAC', '05 45 4x xx xx', '05 45 4x xx xx', 'Mikaele Briron'),
(107, 'Mambrade EURL', '5 bis, porte de Ste Yolande', '16400', 'VOEUIL ET GIGET', '05 45 xx xx xx', '05 45 xx xx xx', 'Innocent Jean'),
(127, 'Jeux SARL', '53, cours du cours d\'eau', '17870', 'ROCHEFORT', '05 46 xx xx xx', '05 46 xx xx xx', 'Sophie Maurin?'),
(245, 'Transports Rioux SA', '30, chemin de St Jean', '16200', 'JARNAC', '05 45 xx xx xx', '05 45 xx xx xx', 'Zeineb Deltry'),
(247, 'Portable Assistance', '59, sentier de Nevers', '17470', 'ST GEORGES DE LONGUEPIERR', '05 49 xx xx xx', '05 49 xx xx xx', 'Christopher Suire'),
(248, 'Marquez Urgences', '57, boulevard des paquerettes', '17340', 'YVES', '05 46 xx xx xx', '05 46 xx xx xx', 'Cheun Jousset'),
(251, 'Dauger SA', '74 bis, cours de Strasbourg', '17870', 'ROCHEFORT', '05 46 xx xx xx', '05 46 xx xx xx', 'Carol Chadint'),
(254, 'Marole 17', '49, passage  Asimov', '17110', 'ST GEORGES DE DIDONNE', '05 46 xx xx xx', '05 46 xx xx xx', 'Celine Delhomme'),
(258, 'Jarnac Télé SAV', '26, place du clochet', '16200', 'JARNAC', '05 45 xx xx xx', '05 45 xx xx xx', 'Déborah Surau'),
(260, 'Bon-Garage Ouest', '83 ter, chemin du paradis', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Cristelle Chatez'),
(261, 'Le front de mer', '29, allée de la liberté', '17200', 'ST SULPICE DE ROYAN', '05 46 xx xx xx', '05 46 xx xx xx', 'Jofrette Caillé'),
(262, 'Raimon 24/24', '31, avenue des fleurs', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Marion Claverie'),
(263, 'Arrerat SA', '90, avenue de la Victoire', '17430', 'ST HIPPOLYTE', '05 46 xx xx xx', '05 46 xx xx xx', 'Henry Tétard'),
(264, 'Aide-Plombier Kilo', '93, sentier des pas perdus', '17750', 'ETAULES', '05 46 xx xx xx', '05 46 xx xx xx', 'Michelle Gachet'),
(265, 'Bruar SVP', '8, avenue de Libourne', '17000', 'VILLENEUVE LES SALINES', '05 46 xx xx xx', '05 46 xx xx xx', 'Abraham Annelet'),
(266, 'Total-Télé 79', '20 bis, chemin de Lyon', '17500', 'ST HILAIRE DU BOIS', '05 46 xx xx xx', '05 46 xx xx xx', 'Lucie Seguinar'),
(267, 'Génial-News 17', '66 bis, avenue de la mouche bleue', '17130', 'MONTENDRE', '05 46 xx xx xx', '05 46 xx xx xx', 'Thong Bagnere'),
(269, 'Port Max', '33, voie du col des ouches', '17530', 'ARVERT', '05 46 xx xx xx', '05 46 xx xx xx', 'Pénélope Quinemand'),
(271, 'Bon-Crèmerie SA', '83 bis, voie des places', '17500', 'ST GERMAIN DE VIBRAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Enée Estanard'),
(272, 'Tout-Miroiterie SARL', '19 ter, rue de St Joseph', '16300', 'VIGNOLLES', '05 45 xx xx xx', '05 45 xx xx xx', 'Ivanny De Fleurian'),
(273, 'Goal-VU SA', '62, boulevard de la marée', '16300', 'VIGNOLLES', '05 45 xx xx xx', '05 45 xx xx xx', 'Vincent Ramber'),
(274, 'Fantastic-Horticole', '71 bis, avenue de St Sébastien', '17240', 'ST GERMAIN DU SEUDRE', '05 46 xx xx xx', '05 46 xx xx xx', 'Gavin Gargary'),
(276, 'Génial-Miroiterie', '66 bis, boulevard de la fontaine perdue', '17500', 'ST GERMAIN DE VIBRAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Corisande Cailletté'),
(277, 'VU Net', '10, rue de la Gastronomie', '17100', 'VENERAND', '05 46 xx xx xx', '05 46 xx xx xx', 'Barbe Bachelot'),
(278, 'Chambard Urgences', '47, lieu-dit des bijoux', '17130', 'CHAMOUILLAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Nelly Lacoste'),
(279, 'Fromagerie des Peupliers', '47, rue des peupliers', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Vivien Reparau'),
(280, 'Demelé Assistance', '71, voie des libertés individuelles', '16500', 'ST MAURICE DES LIONS', '05 45 xx xx xx', '05 45 xx xx xx', 'Faustine Jonet'),
(281, 'Trickell Services', '16, impasse du calvaire', '17110', 'ST GEORGES DE DIDONNE', '05 46 xx xx xx', '05 46 xx xx xx', 'Petite Boutin'),
(302, 'Thoumain Max', '25 bis, passage des cailloux', '16400', 'LA COURONNE', '05 45 xx xx xx', '05 45 xx xx xx', 'Lia Bouillau'),
(315, 'Jouets Lagnon', '91, sentier du 14 juillet 1789', '17510', 'VILLIERS COUTURE', '05 49 xx xx xx', '05 49 xx xx xx', 'Judith Lacaille'),
(338, 'Barsau SA', '5 bis, rue de la partition', '16600', 'TOUVRE', '05 49 xx xx xx', '05 49 xx xx xx', 'Benjamin De St'),
(346, 'Angibaud Pro', '92, quai du pommier', '17600', 'LE GUA', '05 49 xx xx xx', '05 49 xx xx xx', 'Alain Audureau'),
(353, 'Méga-Poisson 24/24', '47, boulevard de Cannes', '17500', 'ST GERMAIN DE VIBRAC', '05 46 xx xx xx', '05 46 xx xx xx', 'Mathieu Chenereau'),
(467, 'AZ-Fromagerie Services', '89 ter, rue de la Seine', '85800', 'LE FENOUILLER', '05 49 xx xx xx', '05 49 xx xx xx', 'Aurelie Emery'),
(527, 'Portable Assistance', '59, sentier de Nevers', '17470', 'ST GEORGES DE LONGUEPIERR', '05 46 xx xx xx', '05 46 xx xx xx', 'Christopher Suire'),
(577, 'Delorsier', '77 bis, impasse de la chance', '17560', 'BOURCEFRANC LE CHAPUS', '05 49 xx xx xx', '05 49 xx xx xx', 'Celia Maurin?'),
(657, 'Fromage de A à Z', '68, rue des saules', '16600', 'TOUVRE', '05 45 xx xx xx', '05 45 xx xx xx', 'Guillaume Hivon'),
(677, 'SteEanne Récupération', '78, boulevard  Bertran de Born', '79800', 'STE EANNE', '05 49 xx xx xx', '05 49 xx xx xx', 'Toinette Rechain'),
(774, 'Collège Georges Brassens', '32 bis, Avenue  Colbert', '17500', 'VILLEXAVIER', '05 46 xx xx xx', '05 46 xx xx xx', 'Herick Charpantreau'),
(775, 'Lycée de la Mer', '86, rue de Fouvreaux', '17560', 'BOURCEFRANC LE CHAPUS', '05 46 xx xx xx', '05 46 xx xx xx', 'Magdeleine Patoiseau'),
(786, 'Lycée L\'Hermione', '59, rue Pierre Loti', '17100', 'ROCHEFORT', '05 46 xx xx xx', '05 46 xx xx xx', 'Arnaud Verger'),
(805, 'Marquez SA', '49, lieu-dit du trouvère', '17690', 'ANGOULINS', '05 49 xx xx xx', '05 49 xx xx xx', 'Mikaele Baril'),
(838, 'Bricolage de A à Z', '8, boulevard du Gastronome Belge', '17230', 'CHARRON', '05 49 xx xx xx', '05 49 xx xx xx', 'Eve Trezeau'),
(847, 'Mateaud Récup', '94, cours  Pline l\'ancien', '16700', 'VILLEGATS', '05 49 xx xx xx', '05 49 xx xx xx', 'Thomas Retour'),
(868, 'Hyper-Pub phone', '57, impasse de la chèvrette', '17000', 'VILLENEUVE LES SALINES', '05 49 xx xx xx', '05 49 xx xx xx', 'Hugo Briason'),
(882, 'Parfumerie Lanvin', '60, rue  Bertran de Born', '16100', 'ST LAURENT DE COGNAC', '05 49 xx xx xx', '05 49 xx xx xx', 'Agathe Benoist'),
(888, 'Gacollain SA', '90, rue du Mont Blanc', '79800', 'STE EANNE', '05 49 xx xx xx', '05 49 xx xx xx', 'Justine Tessonneau'),
(954, 'Jouet & Cie', '53 ter, avenue des frères innocents', '16700', 'VILLEGATS', '05 49 xx xx xx', '05 49 xx xx xx', 'Geneviève Esselier'),
(986, 'Korrigan Services', '43, avenue  Ghandi', '16400', 'VOEUIL ET GIGET', '05 49 xx xx xx', '05 49 xx xx xx', 'Anais Vieuille'),
(990, 'Valentin SA', '64, avenue des chênes', '17770', 'VILLARS LES BOIS', '05 49 xx xx xx', '05 49 xx xx xx', 'Marie De Jean'),
(1010, 'Bardon 24', '87, route du calvaire', '17000', 'VILLENEUVE LES SALINES', '05 49 xx xx xx', '05 49 xx xx xx', 'Marguerite Allieu'),
(1014, 'Collège des Marais', '63 bis, cours du Joailler', '17780', 'ST NAZAIRE SUR CHARENTE', '05 46 xx xx xx', '05 46 xx xx xx', 'Meera Daniaux'),
(1046, 'Collège Jean Jaurès', '49, quai  Jean Jaurès', '17000', 'VILLENEUVE LES SALINES', '05 46 xx xx xx', '05 46 xx xx xx', 'Ahmed Gaconnaut'),
(1066, 'Vet Affaire', '75, avenue de la fontaine perdue', '17590', 'ST CLEMENT DES BALEINES', '05 49 xx xx xx', '05 49 xx xx xx', 'Barthélémy Chantrau'),
(1169, 'Pelleret SA', '91, impasse des peupliers', '24800', 'VAUNAC', '05 49 xx xx xx', '05 49 xx xx xx', 'Vincenzina Mallet'),
(1195, 'Raymond EURL', '31, allée des fleurs', '17460', 'BERNEUIL', '05 49 xx xx xx', '05 49 xx xx xx', 'Ivanny Sorain/Lorain'),
(1207, 'Louis Blanc', '36, lieu-dit des jouets', '17700', 'BOISSE', '05 49 xx xx xx', '05 49 xx xx xx', 'Audrey Demonsay'),
(1255, 'Bevrinet Urgences', '84, lieu-dit des jaunes', '17780', 'ST NAZAIRE SUR CHARENTE', '05 49 xx xx xx', '05 49 xx xx xx', 'Lucie Hervieux'),
(1261, 'Tétardolle SA', '2 bis, place de la Révolution', '17340', 'YVES', '05 49 xx xx xx', '05 49 xx xx xx', 'Maxence Lardreau'),
(1270, 'Lycée des Pommiers', '94, rue des Pommiers', '16300', 'BARBEZIEUX', '05 45 4x xx xx', '05 45 4x xx xx', 'Janny Abrard'),
(1345, 'Jardin Vert', '41, impasse du canard', '16700', 'VILLEGATS', '05 49 xx xx xx', '05 49 xx xx xx', 'Rihana Riflau');

-- --------------------------------------------------------

--
-- Structure de la table `intervenant`
--

DROP TABLE IF EXISTS `intervenant`;
CREATE TABLE IF NOT EXISTS `intervenant` (
  `num` int(11) NOT NULL,
  `codePole` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `dateEmbauche` datetime DEFAULT NULL,
  `dateFinContrat` datetime DEFAULT NULL,
  `dateNaiss` datetime DEFAULT NULL,
  `rue` varchar(255) DEFAULT NULL,
  `CP` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `coutHoraire` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `codePole` (`codePole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `intervenant`
--

INSERT INTO `intervenant` (`num`, `codePole`, `nom`, `prenom`, `dateEmbauche`, `dateFinContrat`, `dateNaiss`, `rue`, `CP`, `ville`, `tel`, `coutHoraire`) VALUES
(102100, 1, 'Degret', 'Kévin', '2014-08-09 00:00:00', NULL, '1990-10-22 00:00:00', '28, cours du marquis Montcalm', '17000', 'LA ROCHELLE', '05 46 4x xx xx', NULL),
(102101, 2, 'De Gillot', 'Rino', '2014-08-09 00:00:00', NULL, '1986-06-08 00:00:00', '33, impasse  Roosevelt', '17000', 'LA ROCHELLE', '05 46 4x xx xx', NULL),
(102102, 2, 'Lacoste', 'Emmanuelle', '2014-10-03 00:00:00', NULL, '1969-01-10 00:00:00', '22, avenue du four à pain', '16700', 'VILLEGATS', '05 46 xx xx xx', NULL),
(102105, 1, 'Aron', 'Élie', '2015-02-03 00:00:00', NULL, '1995-03-16 00:00:00', '7, avenue Gambetta', '17330', 'LOZAY', '05 46 4x xx xx', NULL),
(102107, 2, 'Vier', 'Janny', '2015-03-31 00:00:00', NULL, '1976-10-01 00:00:00', '50 bis, boulevard du ferrailleur', '17500', 'VILLEXAVIER', '05 46 4x xx xx', NULL),
(102109, 2, 'Regnier', 'Tania', '2015-05-25 00:00:00', NULL, '1985-03-18 00:00:00', '78 bis, impasse du clochet', '16000', 'ANGOULEME', '05 46 xx xx xx', NULL),
(102115, 2, 'Piatsky', 'Karole', '2016-01-14 00:00:00', NULL, '1972-01-28 00:00:00', '25, avenue de la Belle-Dame', '17250', 'STE RADEGONDE', '05 46 4x xx xx', NULL),
(102116, 1, 'Barthe', 'Sébastien', '2016-03-09 00:00:00', NULL, '1974-08-12 00:00:00', '74, route de la jument verte', '16700', 'VILLEGATS', '05 46 xx xx xx', NULL),
(102117, 1, 'Desormeau', 'Margaux', '2016-08-28 00:00:00', NULL, '1980-03-29 00:00:00', '50, rue du clos du marché', '17340', 'YVES', '05 46 4x xx xx', NULL),
(102118, 2, 'Ateur', 'Nordine', '2017-04-17 00:00:00', '2023-04-15 00:00:00', '1983-11-05 00:00:00', '10 bis, cours  Montaigne', '17100', 'VENERAND', '05 46 4x xx xx', NULL),
(102119, 2, 'Péret', 'Inès', '2017-09-08 00:00:00', NULL, '1984-04-06 00:00:00', '21, passage de la Belladone', '17190', 'ST GEORGES D OLERON', '05 46 4x xx xx', NULL),
(102120, 1, 'Gaboriaud', 'Frédéric', '2018-05-23 00:00:00', NULL, '1999-12-25 00:00:00', '30 bis, porte de la Seine', '17138', 'PUILBOREAU', '05 46 4x xx xx', NULL),
(102121, 1, 'Degory', 'Lucile', '2019-02-14 00:00:00', NULL, '1998-11-25 00:00:00', '37, route  Jeanne D\'Arc', '17100', 'VENERAND', '05 46 4x xx xx', NULL),
(102122, 2, 'Lopez', 'Jésus', '2019-02-17 00:00:00', NULL, '1974-01-17 00:00:00', '5, avenue du col de seine', '16400', 'VOEUIL ET GIGET', '05 46 xx xx xx', NULL),
(102123, 2, 'Papion', 'Sylvestre', '2019-03-04 00:00:00', NULL, '1999-05-04 00:00:00', '74, boulevard de Cannes', '17770', 'VILLARS LES BOIS', '05 46 4x xx xx', NULL),
(102124, 1, 'Mert', 'Wylliam', '2019-04-26 00:00:00', NULL, '2000-09-13 00:00:00', '83 bis, rue du col de seine', '17600', 'CORME ROYAL', '05 46 4x xx xx', NULL),
(102125, 2, 'Amieau', 'Eline', '2019-05-05 00:00:00', NULL, '1980-09-03 00:00:00', '28 ter, rue de Poitiers', '17170', 'LA RONDE', '05 46 4x xx xx', NULL),
(102126, 2, 'Leforestier', 'Loïc', '2019-05-05 00:00:00', NULL, '1979-12-03 00:00:00', '13 rue des Fleurs', '17600', 'CORME', '05 46 4x xx xx', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

DROP TABLE IF EXISTS `participer`;
CREATE TABLE IF NOT EXISTS `participer` (
  `numIntervenant` int(11) NOT NULL,
  `numActivite` int(11) NOT NULL,
  `dateEntree` datetime DEFAULT NULL,
  `dateSortie` datetime DEFAULT NULL,
  PRIMARY KEY (`numIntervenant`,`numActivite`),
  KEY `numActivite` (`numActivite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `participer`
--

INSERT INTO `participer` (`numIntervenant`, `numActivite`, `dateEntree`, `dateSortie`) VALUES
(102102, 5, '2023-04-24 00:00:00', '2023-05-18 00:00:00'),
(102102, 6, '2023-04-21 00:00:00', '2023-05-05 00:00:00'),
(102109, 7, '2023-04-12 00:00:00', '2023-04-26 00:00:00'),
(102118, 6, '2023-04-20 00:00:00', '2023-05-04 00:00:00'),
(102119, 5, '2023-04-12 00:00:00', '2023-04-24 00:00:00'),
(102122, 3, '2023-04-10 00:00:00', '2023-04-18 00:00:00'),
(102123, 1, '2023-04-07 00:00:00', '2023-04-13 00:00:00'),
(102123, 3, '2023-04-11 00:00:00', '2023-04-18 00:00:00'),
(102123, 7, '2023-04-12 00:00:00', '2023-04-28 00:00:00'),
(102125, 2, '2023-04-14 00:00:00', '2023-05-02 00:00:00'),
(102125, 4, '2023-04-10 00:00:00', '2023-04-24 00:00:00'),
(102126, 1, '2023-03-27 00:00:00', '2023-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `pole`
--

DROP TABLE IF EXISTS `pole`;
CREATE TABLE IF NOT EXISTS `pole` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pole`
--

INSERT INTO `pole` (`code`, `libelle`) VALUES
(1, 'Développement'),
(2, 'Réseau');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `code` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `codePole` int(11) DEFAULT NULL,
  `numClient` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `origine` varchar(50) DEFAULT NULL,
  `dateReponse` datetime DEFAULT NULL,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `commentaire` text,
  PRIMARY KEY (`code`),
  KEY `numClient` (`numClient`),
  KEY `codePole` (`codePole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`code`, `nom`, `codePole`, `numClient`, `description`, `origine`, `dateReponse`, `dateDebut`, `dateFin`, `etat`, `commentaire`) VALUES
('P050297', 'ResMarquez', 2, 805, 'mise en place d\'un réseau…', 'Devis', '2023-02-10 00:00:00', '2023-03-18 00:00:00', '2023-03-24 00:00:00', 'Non Réalisé', NULL),
('P050298', 'ResAZ-FromagerieServices', 2, 467, 'mise en place d\'un réseau…', 'Devis', '2023-02-10 00:00:00', '2023-03-22 00:00:00', '2023-03-25 00:00:00', 'Terminé', NULL),
('P050299', 'ResSteEanneRécupération', 2, 677, 'mise en place d\'un réseau…', 'Devis', '2023-02-13 00:00:00', '2023-03-23 00:00:00', '2023-03-29 00:00:00', 'Terminé', NULL),
('P050300', 'DévHyper-Pubphone', 1, 868, 'développement…', 'Devis', '2023-02-13 00:00:00', '2023-03-25 00:00:00', '2023-03-29 00:00:00', 'Non Réalisé', NULL),
('P050301', 'ResDelorsier', 2, 577, 'mise en place d\'un réseau…', 'Devis', '2023-02-15 00:00:00', '2023-03-25 00:00:00', '2023-03-29 00:00:00', 'Terminé', NULL),
('P050302', 'DévRaymond', 1, 1195, 'développement…', 'Devis', '2023-02-18 00:00:00', '2023-03-26 00:00:00', '2023-03-29 00:00:00', 'Terminé', NULL),
('P050303', 'ResValentin', 2, 990, 'mise en place d\'un réseau…', 'Devis', '2023-02-20 00:00:00', '2023-03-26 00:00:00', '2023-03-31 00:00:00', 'Terminé', NULL),
('P050304', 'DévPelleret', 1, 1169, 'développement…', 'Devis', '2023-02-21 00:00:00', '2023-03-28 00:00:00', '2023-04-12 00:00:00', 'En Cours', NULL),
('P050305', 'DévGacollain', 1, 888, 'développement…', 'Devis', '2023-02-24 00:00:00', '2023-03-29 00:00:00', '2023-04-09 00:00:00', 'En Cours', NULL),
('P050306', 'ResJouet&Cie', 2, 954, 'mise en place d\'un réseau…', 'Marché', '2023-02-26 00:00:00', '2023-04-07 00:00:00', '2023-04-29 00:00:00', 'Candidat', NULL),
('P050307', 'ResKorriganServices', 2, 986, 'mise en place d\'un réseau…', 'Devis', '2023-02-26 00:00:00', '2023-04-07 00:00:00', '2023-04-14 00:00:00', 'Candidat', NULL),
('P050308', 'DévBarsau', 1, 338, 'développement…', 'Devis', '2023-03-01 00:00:00', '2023-04-10 00:00:00', '2023-04-14 00:00:00', 'Candidat', NULL),
('P050309', 'ResHermioneSTG1', 2, 786, 'mise en place d\'un réseau local dans un lycée : serveur + 24 postes +,,,', 'Marché', '2023-03-04 00:00:00', '2023-03-25 00:00:00', '2023-05-01 00:00:00', 'En Cours', NULL),
('P050310', 'DévBevrinetUrgences', 1, 1255, 'développement…', 'Devis', '2023-03-08 00:00:00', '2023-04-11 00:00:00', '2023-04-14 00:00:00', 'Candidat', NULL),
('P050311', 'DévBardon24', 1, 1010, 'développement…', 'Devis', '2023-03-09 00:00:00', '2023-04-12 00:00:00', '2023-04-23 00:00:00', 'Candidat', NULL),
('P050312', 'ResTétardolle', 2, 1261, 'mise en place d\'un réseau…', 'Devis', '2023-03-12 00:00:00', '2023-04-14 00:00:00', '2023-04-26 00:00:00', 'Candidat', NULL),
('P050313', 'DévMateaud', 1, 847, 'développement…', 'Devis', '2023-03-12 00:00:00', '2023-04-22 00:00:00', '2023-04-26 00:00:00', 'Candidat', NULL),
('P050314', 'DévLouisBlanc', 1, 1207, 'développement…', 'Devis', '2023-03-14 00:00:00', '2023-04-22 00:00:00', '2023-04-28 00:00:00', 'Candidat', NULL),
('P050315', 'ResVetAffaire', 2, 1066, 'mise en place d\'un réseau…', 'Devis', '2023-03-15 00:00:00', '2023-04-25 00:00:00', '2023-05-19 00:00:00', 'Candidat', NULL),
('P050316', 'ResJardinVert', 2, 1345, 'mise en place d\'un réseau…', 'Marché', '2023-03-18 00:00:00', '2023-04-25 00:00:00', '2023-06-14 00:00:00', 'Candidat', NULL),
('P050317', 'DévJardHiou', 1, 838, 'développement…', 'Devis', '2023-03-19 00:00:00', '2023-04-25 00:00:00', '2023-04-29 00:00:00', 'Candidat', NULL),
('P050318', 'ResBertahard', 2, 247, 'mise en place d\'un réseau…', 'Devis', '2023-03-20 00:00:00', '2023-04-27 00:00:00', '2023-05-05 00:00:00', 'Candidat', NULL),
('P050319', 'DévJouetsLagnon', 1, 315, 'développement…', 'Devis', '2023-03-21 00:00:00', '2023-05-02 00:00:00', '2023-05-05 00:00:00', 'Candidat', NULL),
('P050320', 'ResParfumerieLanvin', 2, 882, 'mise en place d\'un réseau…', 'Devis', '2023-03-21 00:00:00', '2023-05-02 00:00:00', '2023-05-05 00:00:00', 'Candidat', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `activite_ibfk_1` FOREIGN KEY (`codeProjet`) REFERENCES `projet` (`code`);

--
-- Contraintes pour la table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`numIntervenant`) REFERENCES `intervenant` (`num`),
  ADD CONSTRAINT `participer_ibfk_3` FOREIGN KEY (`numActivite`) REFERENCES `activite` (`num`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `client` (`num`),
  ADD CONSTRAINT `projet_ibfk_2` FOREIGN KEY (`codePole`) REFERENCES `pole` (`code`);
--
-- Contraintes pour la table `intervenant`
--
ALTER TABLE `intervenant`
ADD CONSTRAINT `intervenant_ibfk_1` FOREIGN KEY (`codePole`) REFERENCES `pole` (`code`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
