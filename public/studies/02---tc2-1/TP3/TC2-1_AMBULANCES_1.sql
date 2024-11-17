CREATE DATABASE `TC2-1_AMBULANCES_1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `TC2-1_AMBULANCES_1`;
-- --------------------------------------------------------

--
-- Structure de la table `CODE_ETAT`
--

CREATE TABLE IF NOT EXISTS `CODE_ETAT` (
  `CODE` char(1) NOT NULL,
  `LIBELLE` char(20) NOT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CODE_ETAT`
--

INSERT INTO `CODE_ETAT` (`CODE`, `LIBELLE`) VALUES
('F', 'Formation'),
('M', 'Maladie'),
('P', 'Permanence'),
('R', 'Récupération'),
('T', 'Travail'),
('V', 'Vacances');

-- --------------------------------------------------------

--
-- Structure de la table `EQUIPE`
--

CREATE TABLE IF NOT EXISTS `EQUIPE` (
  `CODE` int(6) NOT NULL AUTO_INCREMENT,
  `NUM` smallint(3) NOT NULL,
  `CHAUFFEUR` int(3) NOT NULL,
  `AMBULANCIER` int(3) DEFAULT NULL,
  `JOUR` date NOT NULL,
  `HEUREDEBUT` time DEFAULT NULL,
  `HEUREFIN` time DEFAULT NULL,
  PRIMARY KEY (`CODE`),
  KEY `I_FK_CHAUFFEUR` (`CHAUFFEUR`),
  KEY `I_FK_AMBULANCIER` (`AMBULANCIER`),
  KEY `FK_EQUIPE_VEHICULE` (`NUM`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Contenu de la table `EQUIPE`
--

INSERT INTO `EQUIPE` (`CODE`, `NUM`, `CHAUFFEUR`, `AMBULANCIER`, `JOUR`, `HEUREDEBUT`, `HEUREFIN`) VALUES
(1, 1, 1, 3, '2008-11-03', '06:00:00', '16:00:00'),
(2, 2, 2, 11, '2008-11-03', '06:00:00', '16:00:00'),
(3, 3, 19, 4, '2008-11-03', '06:00:00', '16:00:00'),
(4, 4, 7, 15, '2008-11-03', '10:00:00', '20:00:00'),
(5, 5, 9, 16, '2008-11-03', '10:00:00', '20:00:00'),
(6, 6, 20, 8, '2008-11-03', '10:00:00', '20:00:00'),
(7, 8, 5, NULL, '2008-11-03', '06:00:00', '16:00:00'),
(8, 9, 12, NULL, '2008-11-03', '06:00:00', '16:00:00'),
(9, 10, 13, NULL, '2008-11-03', '06:00:00', '16:00:00'),
(10, 11, 14, NULL, '2008-11-03', '10:00:00', '20:00:00'),
(11, 12, 17, NULL, '2008-11-03', '10:00:00', '20:00:00'),
(12, 1, 3, 1, '2008-11-04', '06:00:00', '16:00:00'),
(13, 2, 2, 11, '2008-11-04', '06:00:00', '16:00:00'),
(14, 3, 19, 4, '2008-11-04', '06:00:00', '16:00:00'),
(15, 4, 7, 15, '2008-11-04', '10:00:00', '20:00:00'),
(16, 5, 9, 16, '2008-11-04', '10:00:00', '20:00:00'),
(17, 6, 8, 20, '2008-11-04', '10:00:00', '20:00:00'),
(18, 8, 5, NULL, '2008-11-04', '06:00:00', '16:00:00'),
(19, 9, 12, NULL, '2008-11-04', '06:00:00', '16:00:00'),
(20, 10, 13, NULL, '2008-11-04', '06:00:00', '16:00:00'),
(21, 11, 14, NULL, '2008-11-04', '10:00:00', '20:00:00'),
(22, 12, 17, NULL, '2008-11-04', '10:00:00', '20:00:00'),
(23, 1, 1, 3, '2008-11-05', '06:00:00', '16:00:00'),
(24, 2, 2, 11, '2008-11-05', '06:00:00', '16:00:00'),
(25, 3, 19, 18, '2008-11-05', '06:00:00', '16:00:00'),
(26, 4, 7, 15, '2008-11-05', '10:00:00', '20:00:00'),
(27, 5, 9, 16, '2008-11-05', '10:00:00', '20:00:00'),
(28, 6, 20, 8, '2008-11-05', '10:00:00', '20:00:00'),
(29, 9, 12, NULL, '2008-11-05', '06:00:00', '16:00:00'),
(30, 10, 13, NULL, '2008-11-05', '06:00:00', '16:00:00'),
(31, 11, 14, NULL, '2008-11-05', '10:00:00', '20:00:00'),
(32, 12, 17, NULL, '2008-11-05', '10:00:00', '20:00:00'),
(33, 1, 1, 3, '2008-11-06', '06:00:00', '16:00:00'),
(34, 2, 2, 11, '2008-11-06', '06:00:00', '16:00:00'),
(35, 3, 19, 18, '2008-11-06', '06:00:00', '16:00:00'),
(36, 4, 7, 15, '2008-11-06', '10:00:00', '20:00:00'),
(37, 5, 9, 16, '2008-11-06', '10:00:00', '20:00:00'),
(38, 6, 20, 8, '2008-11-06', '10:00:00', '20:00:00'),
(39, 8, 5, NULL, '2008-11-06', '06:00:00', '16:00:00'),
(40, 9, 12, NULL, '2008-11-06', '06:00:00', '16:00:00'),
(41, 10, 13, NULL, '2008-11-06', '06:00:00', '16:00:00'),
(42, 11, 14, NULL, '2008-11-06', '06:00:00', '16:00:00'),
(43, 12, 17, NULL, '2008-11-06', '06:00:00', '16:00:00'),
(44, 1, 1, 3, '2008-11-07', '06:00:00', '16:00:00'),
(45, 2, 2, 11, '2008-11-07', '06:00:00', '16:00:00'),
(46, 3, 19, 4, '2008-11-07', '06:00:00', '16:00:00'),
(47, 4, 7, 15, '2008-11-07', '10:00:00', '20:00:00'),
(48, 5, 9, 16, '2008-11-07', '10:00:00', '20:00:00'),
(49, 6, 20, 8, '2008-11-07', '10:00:00', '20:00:00'),
(50, 8, 5, NULL, '2008-11-07', '06:00:00', '16:00:00'),
(51, 9, 12, NULL, '2008-11-07', '06:00:00', '16:00:00'),
(52, 11, 14, NULL, '2008-11-07', '10:00:00', '20:00:00'),
(53, 12, 17, NULL, '2008-11-07', '10:00:00', '20:00:00'),
(54, 1, 7, 2, '2008-11-08', '06:00:00', '16:00:00'),
(55, 2, 1, 11, '2008-11-08', '06:00:00', '16:00:00'),
(56, 3, 16, 19, '2008-11-08', '10:00:00', '20:00:00'),
(57, 8, 21, NULL, '2008-11-08', '06:00:00', '16:00:00'),
(58, 2, 2, 6, '2008-11-08', '06:00:00', '16:00:00'),
(59, 1, 1, 3, '2008-11-09', '06:00:00', '16:00:00'),
(60, 2, 2, 11, '2008-11-09', '06:00:00', '16:00:00'),
(61, 3, 18, 19, '2008-11-09', '06:00:00', '16:00:00'),
(62, 4, 7, 14, '2008-11-09', '10:00:00', '20:00:00'),
(63, 5, 8, 16, '2008-11-09', '10:00:00', '20:00:00'),
(64, 6, 20, 9, '2008-11-09', '10:00:00', '20:00:00'),
(65, 8, 5, NULL, '2008-11-09', '06:00:00', '16:00:00'),
(66, 9, 12, NULL, '2008-11-09', '06:00:00', '16:00:00'),
(67, 10, 13, NULL, '2008-11-09', '06:00:00', '16:00:00'),
(68, 11, 15, NULL, '2008-11-09', '06:00:00', '16:00:00'),
(69, 12, 17, NULL, '2008-11-09', '06:00:00', '16:00:00'),
(70, 1, 3, 12, '2008-11-10', '06:00:00', '16:00:00'),
(71, 2, 2, 11, '2008-11-10', '06:00:00', '16:00:00'),
(72, 3, 19, 4, '2008-11-10', '06:00:00', '16:00:00'),
(73, 4, 7, 15, '2008-11-10', '10:00:00', '20:00:00'),
(74, 5, 9, 16, '2008-11-10', '10:00:00', '20:00:00'),
(75, 6, 8, 20, '2008-11-10', '10:00:00', '20:00:00'),
(76, 8, 5, NULL, '2008-11-10', '06:00:00', '16:00:00'),
(77, 9, 11, NULL, '2008-11-10', '06:00:00', '16:00:00'),
(78, 10, 13, NULL, '2008-11-10', '06:00:00', '16:00:00'),
(79, 11, 14, NULL, '2008-11-10', '10:00:00', '20:00:00'),
(80, 12, 17, NULL, '2008-11-10', '10:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `EQUIPIER`
--

CREATE TABLE IF NOT EXISTS `EQUIPIER` (
  `ID_EQUIPIER` int(3) NOT NULL,
  `NOM` char(32) NOT NULL,
  `PRENOM` char(32) NOT NULL,
  `VOLONTAIRE_DIMANCHE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_EQUIPIER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `EQUIPIER`
--

INSERT INTO `EQUIPIER` (`ID_EQUIPIER`, `NOM`, `PRENOM`, `VOLONTAIRE_DIMANCHE`) VALUES
(1, 'Patis', 'Alan', 0),
(2, 'Potet', 'Baptiste', 1),
(3, 'Marquel', 'Charline', 1),
(4, 'Babin', 'Dimitri', 1),
(5, 'Marceau', 'Elodie', 1),
(6, 'Joubert', 'Florian', 1),
(7, 'Rutinac', 'Geoffrey', 1),
(8, 'Abad', 'Hugo', 1),
(9, 'Mercoeur', 'Idriz', 0),
(10, 'Batteleux', 'Jean-Pierre', 0),
(11, 'D''hour', 'Kendra', 1),
(12, 'Aubret', 'Lucie', 0),
(13, 'Villars', 'Matthieu', 0),
(14, 'Bodin', 'Nadjim', 1),
(15, 'Tadron', 'Olivier', 0),
(16, 'Badet', 'Pascal', 0),
(17, 'Vergeon De La Besse', 'Quentin', 0),
(18, 'Cartier', 'Régis', 0),
(19, 'Nandranajparua', 'Salim', 1),
(20, 'Sertine', 'Thomas', 0),
(21, 'Bertolina', 'Ugolin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `MISSION`
--

CREATE TABLE IF NOT EXISTS `MISSION` (
  `NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `CODEEQUIPE` int(6) NOT NULL,
  `NUMEROPATIENT` int(11) NOT NULL,
  `MOTIF` varchar(32) DEFAULT NULL,
  `DATEMISSION` date DEFAULT NULL,
  `HEURERV` time DEFAULT NULL,
  `LIEURV` varchar(64) DEFAULT NULL,
  `LIEUDESTINATION` varchar(64) DEFAULT NULL,
  `OBSERVATION` varchar(64) DEFAULT NULL,
  `PRISEENCHARGESS` tinyint(1) NOT NULL,
  `DUREE` time DEFAULT NULL,
  `HEUREDEPART` time DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `I_FK_MISSION_EQUIPE` (`CODEEQUIPE`),
  KEY `I_FK_MISSION_PATIENT` (`NUMEROPATIENT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=327 ;

--
-- Contenu de la table `MISSION`
--

INSERT INTO `MISSION` (`NUMERO`, `CODEEQUIPE`, `NUMEROPATIENT`, `MOTIF`, `DATEMISSION`, `HEURERV`, `LIEURV`, `LIEUDESTINATION`, `OBSERVATION`, `PRISEENCHARGESS`, `DUREE`, `HEUREDEPART`) VALUES
(107, 8, 91, 'accident', '2008-11-03', '06:15:00', 'Coulommiers - 1 rue auguste renoir', 'CH Meaux Saint Fiacre', 'Rdv Tél 2/11 16 H', 1, '00:55:00', '06:15:00'),
(108, 3, 64, 'soins journaliers', '2008-11-03', '06:15:00', 'CH Arbeltier De Coulommiers', 'CHU Montfermeil', 'Fax 16 H 30 veille', 1, '00:45:00', '06:15:00'),
(109, 1, 68, 'accident', '2008-11-03', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(110, 7, 72, 'urgence domicile', '2008-11-03', '07:00:00', 'Boissy 24 rue de la grange', 'CH La ferté Saint Jean', 'Rdv fixé le 30/10', 1, '00:15:00', '07:00:00'),
(111, 9, 94, 'retour domicile', '2008-11-03', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(112, 8, 78, 'rééducation journalière', '2008-11-03', '07:45:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Rdv fixé le 27/10', 0, '01:00:00', '07:45:00'),
(113, 7, 90, 'retour domicile', '2008-11-03', '08:00:00', 'CH Meaux Saint Fiacre', 'Maison de Retraite Le Marais', 'Embouteillage entrée Meaux', 1, '00:30:00', '08:15:00'),
(114, 3, 108, 'rééducation journalière', '2008-11-03', '08:15:00', 'Clinique de tournan', 'Centre rééducation cardiaque de la brie', 'à tarder à donner l''heure de fin de mission', 1, '01:15:00', '08:00:00'),
(115, 9, 65, 'retour domicile', '2008-11-03', '08:15:00', 'Clinique Saint Faron', 'Association Residences Et Foyers', 'Patient pris plus tôt', 1, '01:00:00', '08:15:00'),
(116, 7, 96, 'transport demande médecin', '2008-11-03', '09:00:00', 'Saint-Cyr/Morin - 21 rue marbeau', 'CH Arbeltier De Coulommiers', 'heure fin de mission tardive', 0, '00:45:00', '09:30:00'),
(117, 1, 109, 'rééducation hebdomadaire', '2008-11-03', '09:00:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Patient avait compris 10 H', 1, '01:30:00', '09:15:00'),
(118, 8, 108, 'accident de la route', '2008-11-03', '09:45:00', 'MaisonRouge - 3, rue dautancourt', 'CH Arbeltier De Coulommiers', 'Tél 2/11 15 H00', 1, '00:15:00', '10:00:00'),
(119, 5, 66, 'accident de moto', '2008-11-03', '10:00:00', 'Coulommiers - 56 blvrd de saint denis', 'CH Arbeltier De Coulommiers', 'A du faire le plein', 0, '00:00:00', '10:15:00'),
(120, 11, 76, 'urgence domicile', '2008-11-03', '10:00:00', 'Clinique de Thorigny', 'CHU Necker', 'Travaux sur la route', 0, '01:45:00', '10:30:00'),
(121, 4, 82, 'coma', '2008-11-03', '10:15:00', 'Choisy en brie 4 La Fresnois', 'Clinique la Francilienne', 'Rdv fixé le 27/10', 1, '01:00:00', '10:15:00'),
(122, 10, 84, 'perte de connaissance', '2008-11-03', '10:15:00', 'Clinique la Francilienne', 'CHU Saint Louis', 'retard/Travaux', 1, '02:15:00', '10:15:00'),
(123, 6, 100, 'accident', '2008-11-03', '00:00:00', 'CH Arbeltier De Coulommiers', 'CH Garches', 'Appel 8 H ce jour Antenne Crécy', 1, '00:00:00', '00:00:00'),
(124, 5, 101, 'urgence médecin', '2008-11-03', '10:30:00', 'CH Arbeltier De Coulommiers', 'CH Lagny Sur Marne', 'Appel 8 H 30 ce jour', 0, '03:30:00', '10:30:00'),
(125, 2, 81, 'examen cardiaque', '2008-11-03', '10:30:00', 'Mortcerf - 17 rue guillaume apollinaire', 'CH Arbeltier De Coulommiers', 'Erreur dans l''adresse appel patient', 0, '01:30:00', '10:30:00'),
(126, 8, 95, 'accident', '2008-11-03', '10:30:00', 'LaFerté-Gaucher - 104 avenue thiers', 'Clinique Ange Gardien', 'Client pas prêt attendait le véhicule pour 13 H', 1, '01:15:00', '10:30:00'),
(127, 1, 102, 'évanouissement', '2008-11-03', '11:15:00', 'CH Meaux Saint Faron', 'CHU Bichat', 'retard/Embouteillage', 1, '00:45:00', '11:45:00'),
(128, 8, 98, 'retour domicile', '2008-11-03', '12:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 53 rue des princes de wagram', 'CH arbeltier prévenu du retard', 0, '00:45:00', '12:45:00'),
(129, 7, 110, 'urgence domicile', '2008-11-03', '12:30:00', 'Maison de Retraite Le Marais', 'CH Arbeltier De Coulommiers', 'Erreur planning Rdv prévu 13:45', 0, '00:45:00', '13:30:00'),
(130, 2, 80, 'retour domicile', '2008-11-03', '12:30:00', 'CH La ferté Saint Jean', 'Résidence les Floralies', 'Fax 17 H 00 veille', 1, '00:45:00', '12:30:00'),
(131, 10, 83, 'retour domicile', '2008-11-03', '12:45:00', 'Clinique des moulins', 'Mouroux - 19 rue des coudreaux', 'Appel 11 H ce jour', 0, '00:30:00', '13:00:00'),
(132, 4, 104, 'arrêt cardiaque', '2008-11-03', '12:45:00', 'CH Arbeltier De Coulommiers', 'CHU Pitié', 'Service accueil arrivée non prévenu', 1, '02:15:00', '12:45:00'),
(133, 11, 87, 'retour domicile', '2008-11-03', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(134, 5, 105, 'accouchement difficile', '2008-11-03', '13:15:00', 'CH Arbeltier De Coulommiers', 'CHU Necker', 'Fax 16 H 45 veille', 0, '02:00:00', '13:15:00'),
(135, 10, 61, 'retour domicile', '2008-11-03', '13:45:00', 'Clinique des moulins', 'Sammeron - 10, rue de la tour gouzangrez', 'Appel 12 H ce jour', 0, '00:30:00', '14:00:00'),
(136, 8, 86, 'transport demande médecin', '2008-11-03', '14:00:00', 'La ferté/gaucher 14 rue Washington', 'CH Meaux Saint Faron', 'Rdv pris par chauffeur', 1, '00:45:00', '14:15:00'),
(137, 2, 63, 'retour domicile', '2008-11-03', '14:00:00', 'CH Arbeltier De Coulommiers', 'Trilport - 21 rue des bas pres', 'Appel 13 H 30 ce jour', 1, '00:30:00', '14:00:00'),
(138, 1, 77, 'accident cérébral', '2008-11-03', '14:15:00', 'Clinique des moulins', 'Ussy-sur-Marne - 39 rue de metz', 'Appel 12 H 45 ce jour', 1, '00:45:00', '14:30:00'),
(139, 11, 67, 'retour domicile', '2008-11-03', '14:15:00', 'Clinique des moulins', 'Mortery - 28 rue vassal', 'Appel 13 H ce jour', 1, '00:30:00', '14:15:00'),
(140, 3, 89, 'perte de connaissance', '2008-11-03', '14:45:00', 'Mouroux 215 Av de la libération', 'CH Arbeltier De Coulommiers', 'Rdv fixé le 27/10', 1, '00:15:00', '14:45:00'),
(141, 9, 60, 'retour domicile', '2008-11-03', '14:45:00', 'CH Arbeltier De Coulommiers', 'Bassevelle - 18 boulevard colbert', 'Appel 12 H 45 ce jour', 0, '00:45:00', '14:45:00'),
(142, 11, 85, 'retour domicile', '2008-11-03', '15:00:00', 'Clinique des moulins', 'Crégy-lès-Meaux - 3 allee de la cle saint pierre', 'Erreur planning Rdv prévu par le client à 15:30', 0, '01:00:00', '15:30:00'),
(143, 10, 73, 'retour domicile', '2008-11-03', '15:00:00', 'CH Arbeltier De Coulommiers', 'Marolles-en-Brie - 22 rue courteline', 'Appel 14 H 30 ce jour', 1, '00:15:00', '15:00:00'),
(144, 4, 79, 'retour domicile', '2008-11-03', '15:45:00', 'Clinique des moulins', 'Thénisy - 25 rue bisson', 'Appel 14 H 15 ce jour', 0, '00:45:00', '16:00:00'),
(145, 10, 93, 'retour domicile', '2008-11-03', '16:00:00', 'CH Arbeltier De Coulommiers', 'Saint-Cyr-sur-Morin - 21 rue marbeau', 'Appel 15 H 15 ce jour', 1, '00:30:00', '16:00:00'),
(146, 5, 99, 'retour domicile', '2008-11-03', '16:00:00', 'Clinique des moulins', 'Magny-le-Hongre - les vergers clairbois', 'Appel 15 H 45 ce jour', 0, '00:30:00', '16:15:00'),
(147, 6, 75, 'retour domicile', '2008-11-03', '16:15:00', 'CH Arbeltier De Coulommiers', 'Fontenailles - 53 rue éléonore jarry', 'Appel 15 H 45 ce jour', 1, '00:15:00', '16:15:00'),
(148, 11, 69, 'retour domicile', '2008-11-03', '16:45:00', 'Clinique des moulins', 'LeChâtelet-en-Brie - 12 avenue rachel', 'Appel 15 H 30 ce jour', 1, '00:30:00', '17:00:00'),
(149, 4, 71, 'retour domicile', '2008-11-03', '17:15:00', 'CH Arbeltier De Coulommiers', 'MaisonRouge - 3, rue dautancourt', 'Appel 16 H 45 ce jour', 1, '00:15:00', '17:15:00'),
(150, 10, 74, 'retour domicile', '2008-11-03', '17:15:00', 'CH Arbeltier De Coulommiers', 'Saint-Germain-sur-Morin - 11 rue des federes', 'Appel 15 H 45 ce jour', 1, '00:30:00', '17:15:00'),
(151, 5, 88, 'retour domicile', '2008-11-03', '17:30:00', 'Clinique des moulins', 'Provins - 5 rue dorian', 'Appel 17 H 00 ce jour', 1, '00:45:00', '17:30:00'),
(152, 6, 92, 'retour domicile', '2008-11-03', '17:30:00', 'CH Arbeltier De Coulommiers', 'Meigneux - 13 rue du petit robinson', 'Appel 17 H ce jour', 0, '00:30:00', '17:30:00'),
(153, 11, 70, 'retour domicile', '2008-11-03', '18:00:00', 'CH Arbeltier De Coulommiers', 'Saint-JeanDeux-Jumeaux - 15 rue du general leclerc', 'Appel 17 H 15 ce jour', 1, '00:30:00', '18:00:00'),
(154, 4, 62, 'retour domicile', '2008-11-03', '18:15:00', 'Clinique des moulins', 'Rebais - 1 rue d''edimbourg', 'Appel 18 H ce jour', 0, '00:30:00', '18:15:00'),
(155, 10, 97, 'retour domicile', '2008-11-03', '18:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 15 rue du grenier saint lazarre', 'Appel 18 H ce jour', 0, '00:30:00', '18:30:00'),
(156, 6, 106, 'coma', '2008-11-03', '18:45:00', 'CH Arbeltier De Coulommiers', 'CHU Pitié', 'Appel 17 H 30 ce jour', 1, '02:15:00', '18:30:00'),
(157, 4, 107, 'urgence par médecin', '2008-11-03', '19:15:00', 'Clinique des moulins', 'CHU Necker', 'Appel 11 H ce jour', 0, '01:45:00', '19:15:00'),
(158, 19, 91, 'accident', '2008-11-04', '06:15:00', 'Coulommiers - 1 rue auguste renoir', 'CH Meaux Saint Fiacre', 'Rdv Tél 2/11 16 H', 1, '00:55:00', '06:15:00'),
(159, 14, 64, 'soins journaliers', '2008-11-04', '06:15:00', 'CH Arbeltier De Coulommiers', 'CHU Montfermeil', 'Fax 16 H 30 veille', 1, '00:45:00', '06:15:00'),
(160, 12, 68, 'accident', '2008-11-04', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(161, 18, 72, 'urgence domicile', '2008-11-04', '07:00:00', 'Boissy 24 rue de la grange', 'CH La ferté Saint Jean', 'Rdv fixé le 30/10', 1, '00:15:00', '07:00:00'),
(162, 20, 94, 'retour domicile', '2008-11-04', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(163, 19, 78, 'rééducation journalière', '2008-11-04', '07:45:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Rdv fixé le 27/10', 0, '01:00:00', '07:45:00'),
(164, 18, 90, 'retour domicile', '2008-11-04', '08:00:00', 'CH Meaux Saint Fiacre', 'Maison de Retraite Le Marais', 'Embouteillage entrée Meaux', 1, '00:30:00', '08:15:00'),
(165, 20, 65, 'retour domicile', '2008-11-04', '08:15:00', 'Clinique Saint Faron', 'Association Residences Et Foyers', 'Patient pris plus tôt', 1, '01:00:00', '08:15:00'),
(166, 18, 96, 'transport demande médecin', '2008-11-04', '09:00:00', 'Saint-Cyr/Morin - 21 rue marbeau', 'CH Arbeltier De Coulommiers', 'heure fin de mission tardive', 0, '00:45:00', '09:30:00'),
(167, 19, 108, 'accident de la route', '2008-11-04', '09:45:00', 'MaisonRouge - 3, rue dautancourt', 'CH Arbeltier De Coulommiers', 'Tél 2/11 15 H00', 1, '00:15:00', '10:00:00'),
(168, 16, 66, 'accident de moto', '2008-11-04', '10:00:00', 'Coulommiers - 56 blvrd de saint denis', 'CH Arbeltier De Coulommiers', 'A du faire le plein', 0, '00:00:00', '10:15:00'),
(169, 22, 76, 'urgence domicile', '2008-11-04', '10:00:00', 'Clinique de Thorigny', 'CHU Necker', 'Travaux sur la route', 0, '01:45:00', '10:30:00'),
(170, 17, 100, 'accident', '2008-11-04', '00:00:00', 'CH Arbeltier De Coulommiers', 'CH Garches', 'Appel 8 H ce jour Antenne Crécy', 1, '00:00:00', '00:00:00'),
(171, 16, 101, 'urgence médecin', '2008-11-04', '10:30:00', 'CH Arbeltier De Coulommiers', 'CH Lagny Sur Marne', 'Appel 8 H 30 ce jour', 0, '03:30:00', '10:30:00'),
(172, 19, 95, 'accident', '2008-11-04', '10:30:00', 'LaFerté-Gaucher - 104 avenue thiers', 'Clinique Ange Gardien', 'Client pas prêt attendait le véhicule pour 13 H', 1, '01:15:00', '10:30:00'),
(173, 12, 102, 'évanouissement', '2008-11-04', '11:15:00', 'CH Meaux Saint Faron', 'CHU Bichat', 'retard/Embouteillage', 1, '00:45:00', '11:45:00'),
(174, 19, 98, 'retour domicile', '2008-11-04', '12:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 53 rue des princes de wagram', 'CH arbeltier prévenu du retard', 0, '00:45:00', '12:45:00'),
(175, 18, 110, 'urgence domicile', '2008-11-04', '12:30:00', 'Maison de Retraite Le Marais', 'CH Arbeltier De Coulommiers', 'Erreur planning Rdv prévu 13:45', 0, '00:45:00', '13:30:00'),
(176, 19, 80, 'retour domicile', '2008-11-04', '12:30:00', 'CH La ferté Saint Jean', 'Résidence les Floralies', 'Fax 17 H 00 veille', 1, '00:45:00', '12:30:00'),
(177, 15, 104, 'arrêt cardiaque', '2008-11-04', '12:45:00', 'CH Arbeltier De Coulommiers', 'CHU Pitié', 'Service accueil arrivée non prévenu', 1, '02:15:00', '12:45:00'),
(178, 22, 87, 'retour domicile', '2008-11-04', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(179, 21, 61, 'retour domicile', '2008-11-04', '13:45:00', 'Clinique des moulins', 'Sammeron - 10, rue de la tour gouzangrez', 'Appel 12 H ce jour', 0, '00:30:00', '14:00:00'),
(180, 13, 63, 'retour domicile', '2008-11-04', '14:00:00', 'CH Arbeltier De Coulommiers', 'Trilport - 21 rue des bas pres', 'Appel 13 H 30 ce jour', 1, '00:30:00', '14:00:00'),
(181, 12, 77, 'accident cérébral', '2008-11-04', '14:15:00', 'Clinique des moulins', 'Ussy-sur-Marne - 39 rue de metz', 'Appel 12 H 45 ce jour', 1, '00:45:00', '14:30:00'),
(182, 14, 89, 'perte de connaissance', '2008-11-04', '14:45:00', 'Mouroux 215 Av de la libération', 'CH Arbeltier De Coulommiers', 'Rdv fixé le 27/10', 1, '00:15:00', '14:45:00'),
(183, 20, 60, 'retour domicile', '2008-11-04', '14:45:00', 'CH Arbeltier De Coulommiers', 'Bassevelle - 18 boulevard colbert', 'Appel 12 H 45 ce jour', 0, '00:45:00', '14:45:00'),
(184, 15, 79, 'retour domicile', '2008-11-04', '15:45:00', 'Clinique des moulins', 'Thénisy - 25 rue bisson', 'Appel 14 H 15 ce jour', 0, '00:45:00', '16:00:00'),
(185, 16, 88, 'retour domicile', '2008-11-04', '17:30:00', 'Clinique des moulins', 'Provins - 5 rue dorian', 'Appel 17 H 00 ce jour', 1, '00:45:00', '17:30:00'),
(186, 22, 70, 'retour domicile', '2008-11-04', '18:00:00', 'CH Arbeltier De Coulommiers', 'Saint-JeanDeux-Jumeaux - 15 rue du general leclerc', 'Appel 17 H 15 ce jour', 1, '00:30:00', '18:00:00'),
(187, 15, 62, 'retour domicile', '2008-11-04', '18:15:00', 'Clinique des moulins', 'Rebais - 1 rue d''edimbourg', 'Appel 18 H ce jour', 0, '00:30:00', '18:15:00'),
(188, 21, 97, 'retour domicile', '2008-11-04', '18:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 15 rue du grenier saint lazarre', 'Appel 18 H ce jour', 0, '00:30:00', '18:30:00'),
(189, 17, 106, 'coma', '2008-11-04', '18:45:00', 'CH Arbeltier De Coulommiers', 'CHU Pitié', 'Appel 17 H 30 ce jour', 1, '02:15:00', '18:30:00'),
(190, 15, 107, 'urgence par médecin', '2008-11-04', '19:15:00', 'Clinique des moulins', 'CHU Necker', 'Appel 11 H ce jour', 0, '01:45:00', '19:15:00'),
(191, 23, 64, 'soins journaliers', '2008-11-05', '06:15:00', 'CH Arbeltier De Coulommiers', 'CHU Montfermeil', 'Fax 16 H 30 veille', 1, '00:45:00', '06:15:00'),
(192, 24, 68, 'accident', '2008-11-05', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(193, 32, 94, 'retour domicile', '2008-11-05', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(194, 31, 78, 'rééducation journalière', '2008-11-05', '07:45:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Rdv fixé le 27/10', 0, '01:00:00', '07:45:00'),
(195, 26, 108, 'rééducation journalière', '2008-11-05', '08:15:00', 'Clinique de tournan', 'Centre rééducation cardiaque de la brie', 'à tarder à donner l''heure de fin de mission', 1, '01:15:00', '08:00:00'),
(196, 32, 65, 'retour domicile', '2008-11-05', '08:15:00', 'Clinique Saint Faron', 'Association Residences Et Foyers', 'Patient pris plus tôt', 1, '01:00:00', '08:15:00'),
(197, 30, 96, 'transport demande médecin', '2008-11-05', '09:00:00', 'Saint-Cyr/Morin - 21 rue marbeau', 'CH Arbeltier De Coulommiers', 'heure fin de mission tardive', 0, '00:45:00', '09:30:00'),
(198, 23, 109, 'rééducation hebdomadaire', '2008-11-05', '09:00:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Patient avait compris 10 H', 1, '01:30:00', '09:15:00'),
(199, 31, 108, 'accident de la route', '2008-11-05', '09:45:00', 'MaisonRouge - 3, rue dautancourt', 'CH Arbeltier De Coulommiers', 'Tél 2/11 15 H00', 1, '00:15:00', '10:00:00'),
(200, 25, 76, 'urgence domicile', '2008-11-05', '10:00:00', 'Clinique de Thorigny', 'CHU Necker', 'Travaux sur la route', 0, '01:45:00', '10:30:00'),
(201, 26, 81, 'examen cardiaque', '2008-11-05', '10:30:00', 'Mortcerf - 17 rue guillaume apollinaire', 'CH Arbeltier De Coulommiers', 'Erreur dans l''adresse appel patient', 0, '01:30:00', '10:30:00'),
(202, 23, 102, 'évanouissement', '2008-11-05', '11:15:00', 'CH Meaux Saint Faron', 'CHU Bichat', 'retard/Embouteillage', 1, '00:45:00', '11:45:00'),
(203, 24, 80, 'retour domicile', '2008-11-05', '12:30:00', 'CH La ferté Saint Jean', 'Résidence les Floralies', 'Fax 17 H 00 veille', 1, '00:45:00', '12:30:00'),
(204, 30, 87, 'retour domicile', '2008-11-05', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(205, 27, 61, 'retour domicile', '2008-11-05', '13:45:00', 'Clinique des moulins', 'Sammeron - 10, rue de la tour gouzangrez', 'Appel 12 H ce jour', 0, '00:30:00', '14:00:00'),
(206, 28, 86, 'transport demande médecin', '2008-11-05', '14:00:00', 'La ferté/gaucher 14 rue Washington', 'CH Meaux Saint Faron', 'Rdv pris par chauffeur', 1, '00:45:00', '14:15:00'),
(207, 25, 67, 'retour domicile', '2008-11-05', '14:15:00', 'Clinique des moulins', 'Mortery - 28 rue vassal', 'Appel 13 H ce jour', 1, '00:30:00', '14:15:00'),
(208, 26, 89, 'perte de connaissance', '2008-11-05', '14:45:00', 'Mouroux 215 Av de la libération', 'CH Arbeltier De Coulommiers', 'Rdv fixé le 27/10', 1, '00:15:00', '14:45:00'),
(209, 31, 60, 'retour domicile', '2008-11-05', '14:45:00', 'CH Arbeltier De Coulommiers', 'Bassevelle - 18 boulevard colbert', 'Appel 12 H 45 ce jour', 0, '00:45:00', '14:45:00'),
(210, 32, 85, 'retour domicile', '2008-11-05', '15:00:00', 'Clinique des moulins', 'Crégy-lès-Meaux - 3 allee de la cle saint pierre', 'Erreur planning Rdv prévu par le client à 15:30', 0, '01:00:00', '15:30:00'),
(211, 28, 73, 'retour domicile', '2008-11-05', '15:00:00', 'CH Arbeltier De Coulommiers', 'Marolles-en-Brie - 22 rue courteline', 'Appel 14 H 30 ce jour', 1, '00:15:00', '15:00:00'),
(212, 26, 79, 'retour domicile', '2008-11-05', '15:45:00', 'Clinique des moulins', 'Thénisy - 25 rue bisson', 'Appel 14 H 15 ce jour', 0, '00:45:00', '16:00:00'),
(213, 25, 93, 'retour domicile', '2008-11-05', '16:00:00', 'CH Arbeltier De Coulommiers', 'Saint-Cyr-sur-Morin - 21 rue marbeau', 'Appel 15 H 15 ce jour', 1, '00:30:00', '16:00:00'),
(214, 24, 99, 'retour domicile', '2008-11-05', '16:00:00', 'Clinique des moulins', 'Magny-le-Hongre - les vergers clairbois', 'Appel 15 H 45 ce jour', 0, '00:30:00', '16:15:00'),
(215, 23, 75, 'retour domicile', '2008-11-05', '16:15:00', 'CH Arbeltier De Coulommiers', 'Fontenailles - 53 rue éléonore jarry', 'Appel 15 H 45 ce jour', 1, '00:15:00', '16:15:00'),
(216, 30, 69, 'retour domicile', '2008-11-05', '16:45:00', 'Clinique des moulins', 'LeChâtelet-en-Brie - 12 avenue rachel', 'Appel 15 H 30 ce jour', 1, '00:30:00', '17:00:00'),
(217, 32, 71, 'retour domicile', '2008-11-05', '17:15:00', 'CH Arbeltier De Coulommiers', 'MaisonRouge - 3, rue dautancourt', 'Appel 16 H 45 ce jour', 1, '00:15:00', '17:15:00'),
(218, 31, 74, 'retour domicile', '2008-11-05', '17:15:00', 'CH Arbeltier De Coulommiers', 'Saint-Germain-sur-Morin - 11 rue des federes', 'Appel 15 H 45 ce jour', 1, '00:30:00', '17:15:00'),
(219, 29, 88, 'retour domicile', '2008-11-05', '17:30:00', 'Clinique des moulins', 'Provins - 5 rue dorian', 'Appel 17 H 00 ce jour', 1, '00:45:00', '17:30:00'),
(220, 25, 92, 'retour domicile', '2008-11-05', '17:30:00', 'CH Arbeltier De Coulommiers', 'Meigneux - 13 rue du petit robinson', 'Appel 17 H ce jour', 0, '00:30:00', '17:30:00'),
(221, 26, 70, 'retour domicile', '2008-11-05', '18:00:00', 'CH Arbeltier De Coulommiers', 'Saint-JeanDeux-Jumeaux - 15 rue du general leclerc', 'Appel 17 H 15 ce jour', 1, '00:30:00', '18:00:00'),
(222, 27, 62, 'retour domicile', '2008-11-05', '18:15:00', 'Clinique des moulins', 'Rebais - 1 rue d''edimbourg', 'Appel 18 H ce jour', 0, '00:30:00', '18:15:00'),
(223, 28, 97, 'retour domicile', '2008-11-05', '18:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 15 rue du grenier saint lazarre', 'Appel 18 H ce jour', 0, '00:30:00', '18:30:00'),
(224, 30, 107, 'urgence par médecin', '2008-11-05', '19:15:00', 'Clinique des moulins', 'CHU Necker', 'Appel 11 H ce jour', 0, '01:45:00', '19:15:00'),
(225, 36, 64, 'soins journaliers', '2008-11-06', '06:15:00', 'CH Arbeltier De Coulommiers', 'CHU Montfermeil', 'Fax 16 H 30 veille', 1, '00:45:00', '06:15:00'),
(226, 33, 68, 'accident', '2008-11-06', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(227, 42, 94, 'retour domicile', '2008-11-06', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(228, 41, 78, 'rééducation journalière', '2008-11-06', '07:45:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Rdv fixé le 27/10', 0, '01:00:00', '07:45:00'),
(230, 42, 65, 'retour domicile', '2008-11-06', '08:15:00', 'Clinique Saint Faron', 'Association Residences Et Foyers', 'Patient pris plus tôt', 1, '01:00:00', '08:15:00'),
(231, 40, 96, 'transport demande médecin', '2008-11-06', '09:00:00', 'Saint-Cyr/Morin - 21 rue marbeau', 'CH Arbeltier De Coulommiers', 'heure fin de mission tardive', 0, '00:45:00', '09:30:00'),
(232, 33, 109, 'rééducation hebdomadaire', '2008-11-06', '09:00:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Patient avait compris 10 H', 1, '01:30:00', '09:15:00'),
(233, 41, 108, 'accident de la route', '2008-11-06', '09:45:00', 'MaisonRouge - 3, rue dautancourt', 'CH Arbeltier De Coulommiers', 'Tél 2/11 15 H00', 1, '00:15:00', '10:00:00'),
(234, 35, 81, 'examen cardiaque', '2008-11-06', '10:30:00', 'Mortcerf - 17 rue guillaume apollinaire', 'CH Arbeltier De Coulommiers', 'Erreur dans l''adresse appel patient', 0, '01:30:00', '10:30:00'),
(235, 34, 80, 'retour domicile', '2008-11-06', '12:30:00', 'CH La ferté Saint Jean', 'Résidence les Floralies', 'Fax 17 H 00 veille', 1, '00:45:00', '12:30:00'),
(236, 43, 87, 'retour domicile', '2008-11-06', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(237, 40, 86, 'transport demande médecin', '2008-11-06', '14:00:00', 'La ferté/gaucher 14 rue Washington', 'CH Meaux Saint Faron', 'Rdv pris par chauffeur', 1, '00:45:00', '14:15:00'),
(238, 35, 89, 'perte de connaissance', '2008-11-06', '14:45:00', 'Mouroux 215 Av de la libération', 'CH Arbeltier De Coulommiers', 'Rdv fixé le 27/10', 1, '00:15:00', '14:45:00'),
(239, 42, 85, 'retour domicile', '2008-11-06', '15:00:00', 'Clinique des moulins', 'Crégy-lès-Meaux - 3 allee de la cle saint pierre', 'Erreur planning Rdv prévu par le client à 15:30', 0, '01:00:00', '15:30:00'),
(240, 35, 99, 'retour domicile', '2008-11-06', '16:00:00', 'Clinique des moulins', 'Magny-le-Hongre - les vergers clairbois', 'Appel 15 H 45 ce jour', 0, '00:30:00', '16:15:00'),
(241, 36, 75, 'retour domicile', '2008-11-06', '16:15:00', 'CH Arbeltier De Coulommiers', 'Fontenailles - 53 rue éléonore jarry', 'Appel 15 H 45 ce jour', 1, '00:15:00', '16:15:00'),
(242, 37, 69, 'retour domicile', '2008-11-06', '16:45:00', 'Clinique des moulins', 'LeChâtelet-en-Brie - 12 avenue rachel', 'Appel 15 H 30 ce jour', 1, '00:30:00', '17:00:00'),
(243, 38, 92, 'retour domicile', '2008-11-06', '17:30:00', 'CH Arbeltier De Coulommiers', 'Meigneux - 13 rue du petit robinson', 'Appel 17 H ce jour', 0, '00:30:00', '17:30:00'),
(244, 39, 70, 'retour domicile', '2008-11-06', '18:00:00', 'CH Arbeltier De Coulommiers', 'Saint-JeanDeux-Jumeaux - 15 rue du general leclerc', 'Appel 17 H 15 ce jour', 1, '00:30:00', '18:00:00'),
(245, 40, 62, 'retour domicile', '2008-11-06', '18:15:00', 'Clinique des moulins', 'Rebais - 1 rue d''edimbourg', 'Appel 18 H ce jour', 0, '00:30:00', '18:15:00'),
(246, 41, 97, 'retour domicile', '2008-11-06', '18:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 15 rue du grenier saint lazarre', 'Appel 18 H ce jour', 0, '00:30:00', '18:30:00'),
(247, 42, 107, 'urgence par médecin', '2008-11-06', '19:15:00', 'Clinique des moulins', 'CHU Necker', 'Appel 11 H ce jour', 0, '01:45:00', '19:15:00'),
(248, 44, 64, 'soins journaliers', '2008-11-07', '06:15:00', 'CH Arbeltier De Coulommiers', 'CHU Montfermeil', 'Fax 16 H 30 veille', 1, '00:45:00', '06:15:00'),
(249, 45, 68, 'accident', '2008-11-07', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(250, 46, 94, 'retour domicile', '2008-11-07', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(251, 50, 78, 'rééducation journalière', '2008-11-07', '07:45:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Rdv fixé le 27/10', 0, '01:00:00', '07:45:00'),
(252, 51, 65, 'retour domicile', '2008-11-07', '08:15:00', 'Clinique Saint Faron', 'Association Residences Et Foyers', 'Patient pris plus tôt', 1, '01:00:00', '08:15:00'),
(253, 52, 96, 'transport demande médecin', '2008-11-07', '09:00:00', 'Saint-Cyr/Morin - 21 rue marbeau', 'CH Arbeltier De Coulommiers', 'heure fin de mission tardive', 0, '00:45:00', '09:30:00'),
(254, 53, 109, 'rééducation hebdomadaire', '2008-11-07', '09:00:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Patient avait compris 10 H', 1, '01:30:00', '09:15:00'),
(255, 44, 108, 'accident de la route', '2008-11-07', '09:45:00', 'MaisonRouge - 3, rue dautancourt', 'CH Arbeltier De Coulommiers', 'Tél 2/11 15 H00', 1, '00:15:00', '10:00:00'),
(256, 47, 81, 'examen cardiaque', '2008-11-07', '10:30:00', 'Mortcerf - 17 rue guillaume apollinaire', 'CH Arbeltier De Coulommiers', 'Erreur dans l''adresse appel patient', 0, '01:30:00', '10:30:00'),
(257, 48, 80, 'retour domicile', '2008-11-07', '12:30:00', 'CH La ferté Saint Jean', 'Résidence les Floralies', 'Fax 17 H 00 veille', 1, '00:45:00', '12:30:00'),
(258, 49, 87, 'retour domicile', '2008-11-07', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(259, 44, 86, 'transport demande médecin', '2008-11-07', '14:00:00', 'La ferté/gaucher 14 rue Washington', 'CH Meaux Saint Faron', 'Rdv pris par chauffeur', 1, '00:45:00', '14:15:00'),
(260, 54, 68, 'accident', '2008-11-08', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(261, 55, 94, 'retour domicile', '2008-11-08', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(262, 56, 78, 'rééducation journalière', '2008-11-08', '07:45:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Rdv fixé le 27/10', 0, '01:00:00', '07:45:00'),
(263, 57, 65, 'retour domicile', '2008-11-08', '08:15:00', 'Clinique Saint Faron', 'Association Residences Et Foyers', 'Patient pris plus tôt', 1, '01:00:00', '08:15:00'),
(264, 58, 96, 'transport demande médecin', '2008-11-08', '09:00:00', 'Saint-Cyr/Morin - 21 rue marbeau', 'CH Arbeltier De Coulommiers', 'heure fin de mission tardive', 0, '00:45:00', '09:30:00'),
(265, 54, 109, 'rééducation hebdomadaire', '2008-11-08', '09:00:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Patient avait compris 10 H', 1, '01:30:00', '09:15:00'),
(266, 55, 108, 'accident de la route', '2008-11-08', '09:45:00', 'MaisonRouge - 3, rue dautancourt', 'CH Arbeltier De Coulommiers', 'Tél 2/11 15 H00', 1, '00:15:00', '10:00:00'),
(267, 56, 81, 'examen cardiaque', '2008-11-08', '10:30:00', 'Mortcerf - 17 rue guillaume apollinaire', 'CH Arbeltier De Coulommiers', 'Erreur dans l''adresse appel patient', 0, '01:30:00', '10:30:00'),
(268, 57, 80, 'retour domicile', '2008-11-08', '12:30:00', 'CH La ferté Saint Jean', 'Résidence les Floralies', 'Fax 17 H 00 veille', 1, '00:45:00', '12:30:00'),
(269, 58, 87, 'retour domicile', '2008-11-08', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(270, 54, 86, 'transport demande médecin', '2008-11-08', '14:00:00', 'La ferté/gaucher 14 rue Washington', 'CH Meaux Saint Faron', 'Rdv pris par chauffeur', 1, '00:45:00', '14:15:00'),
(271, 55, 89, 'perte de connaissance', '2008-11-08', '14:45:00', 'Mouroux 215 Av de la libération', 'CH Arbeltier De Coulommiers', 'Rdv fixé le 27/10', 1, '00:15:00', '14:45:00'),
(272, 56, 85, 'retour domicile', '2008-11-08', '15:00:00', 'Clinique des moulins', 'Crégy-lès-Meaux - 3 allee de la cle saint pierre', 'Erreur planning Rdv prévu par le client à 15:30', 0, '01:00:00', '15:30:00'),
(273, 57, 99, 'retour domicile', '2008-11-08', '16:00:00', 'Clinique des moulins', 'Magny-le-Hongre - les vergers clairbois', 'Appel 15 H 45 ce jour', 0, '00:30:00', '16:15:00'),
(274, 58, 75, 'retour domicile', '2008-11-08', '16:15:00', 'CH Arbeltier De Coulommiers', 'Fontenailles - 53 rue éléonore jarry', 'Appel 15 H 45 ce jour', 1, '00:15:00', '16:15:00'),
(275, 54, 69, 'retour domicile', '2008-11-08', '16:45:00', 'Clinique des moulins', 'LeChâtelet-en-Brie - 12 avenue rachel', 'Appel 15 H 30 ce jour', 1, '00:30:00', '17:00:00'),
(276, 55, 92, 'retour domicile', '2008-11-08', '17:30:00', 'CH Arbeltier De Coulommiers', 'Meigneux - 13 rue du petit robinson', 'Appel 17 H ce jour', 0, '00:30:00', '17:30:00'),
(277, 56, 70, 'retour domicile', '2008-11-08', '18:00:00', 'CH Arbeltier De Coulommiers', 'Saint-JeanDeux-Jumeaux - 15 rue du general leclerc', 'Appel 17 H 15 ce jour', 1, '00:30:00', '18:00:00'),
(278, 57, 62, 'retour domicile', '2008-11-08', '18:15:00', 'Clinique des moulins', 'Rebais - 1 rue d''edimbourg', 'Appel 18 H ce jour', 0, '00:30:00', '18:15:00'),
(279, 58, 97, 'retour domicile', '2008-11-08', '18:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 15 rue du grenier saint lazarre', 'Appel 18 H ce jour', 0, '00:30:00', '18:30:00'),
(280, 54, 107, 'urgence par médecin', '2008-11-08', '19:15:00', 'Clinique des moulins', 'CHU Necker', 'Appel 11 H ce jour', 0, '01:45:00', '19:15:00'),
(281, 59, 64, 'soins journaliers', '2008-11-09', '06:15:00', 'CH Arbeltier De Coulommiers', 'CHU Montfermeil', 'Fax 16 H 30 veille', 1, '00:45:00', '06:15:00'),
(282, 60, 68, 'accident', '2008-11-09', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(283, 61, 94, 'retour domicile', '2008-11-09', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(284, 62, 80, 'retour domicile', '2008-11-09', '12:30:00', 'CH La ferté Saint Jean', 'Résidence les Floralies', 'Fax 17 H 00 veille', 1, '00:45:00', '12:30:00'),
(285, 63, 87, 'retour domicile', '2008-11-09', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(286, 64, 86, 'transport demande médecin', '2008-11-09', '14:00:00', 'La ferté/gaucher 14 rue Washington', 'CH Meaux Saint Faron', 'Rdv pris par chauffeur', 1, '00:45:00', '14:15:00'),
(287, 65, 89, 'perte de connaissance', '2008-11-09', '14:45:00', 'Mouroux 215 Av de la libération', 'CH Arbeltier De Coulommiers', 'Rdv fixé le 27/10', 1, '00:15:00', '14:45:00'),
(288, 66, 85, 'retour domicile', '2008-11-09', '15:00:00', 'Clinique des moulins', 'Crégy-lès-Meaux - 3 allee de la cle saint pierre', 'Erreur planning Rdv prévu par le client à 15:30', 0, '01:00:00', '15:30:00'),
(289, 69, 99, 'retour domicile', '2008-11-09', '16:00:00', 'Clinique des moulins', 'Magny-le-Hongre - les vergers clairbois', 'Appel 15 H 45 ce jour', 0, '00:30:00', '16:15:00'),
(290, 59, 75, 'retour domicile', '2008-11-09', '16:15:00', 'CH Arbeltier De Coulommiers', 'Fontenailles - 53 rue éléonore jarry', 'Appel 15 H 45 ce jour', 1, '00:15:00', '16:15:00'),
(291, 69, 97, 'retour domicile', '2008-11-09', '18:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 15 rue du grenier saint lazarre', 'Appel 18 H ce jour', 0, '00:30:00', '18:30:00'),
(292, 68, 107, 'urgence par médecin', '2008-11-09', '19:15:00', 'Clinique des moulins', 'CHU Necker', 'Appel 11 H ce jour', 0, '01:45:00', '19:15:00'),
(293, 70, 91, 'accident', '2008-11-10', '06:15:00', 'Coulommiers - 1 rue auguste renoir', 'CH Meaux Saint Fiacre', 'Rdv Tél 2/11 16 H', 1, '00:55:00', '06:15:00'),
(294, 71, 64, 'soins journaliers', '2008-11-10', '06:15:00', 'CH Arbeltier De Coulommiers', 'CHU Montfermeil', 'Fax 16 H 30 veille', 1, '00:45:00', '06:15:00'),
(295, 72, 68, 'accident', '2008-11-10', '07:00:00', 'Clinique de tournan', 'CHU Necker', 'Embouteillage', 0, '01:45:00', '07:00:00'),
(296, 73, 72, 'urgence domicile', '2008-11-10', '07:00:00', 'Boissy 24 rue de la grange', 'CH La ferté Saint Jean', 'Rdv fixé le 30/10', 1, '00:15:00', '07:00:00'),
(297, 74, 94, 'retour domicile', '2008-11-10', '07:00:00', 'CH Lagny Sur Marne', 'Maison Retraite Saint Aile', 'Mel 17 H veille', 1, '01:00:00', '07:00:00'),
(298, 75, 78, 'rééducation journalière', '2008-11-10', '07:45:00', 'Clinique de Thorigny', 'Centre rééducation cardiaque de la brie', 'Rdv fixé le 27/10', 0, '01:00:00', '07:45:00'),
(299, 76, 108, 'accident de la route', '2008-11-10', '09:45:00', 'MaisonRouge - 3, rue dautancourt', 'CH Arbeltier De Coulommiers', 'Tél 2/11 15 H00', 1, '00:15:00', '10:00:00'),
(300, 77, 66, 'accident de moto', '2008-11-10', '10:00:00', 'Coulommiers - 56 blvrd de saint denis', 'CH Arbeltier De Coulommiers', 'A du faire le plein', 0, '00:00:00', '10:15:00'),
(301, 78, 76, 'urgence domicile', '2008-11-10', '10:00:00', 'Clinique de Thorigny', 'CHU Necker', 'Travaux sur la route', 0, '01:45:00', '10:30:00'),
(302, 79, 82, 'coma', '2008-11-10', '10:15:00', 'Choisy en brie 4 La Fresnois', 'Clinique la Francilienne', 'Rdv fixé le 27/10', 1, '01:00:00', '10:15:00'),
(303, 80, 84, 'perte de connaissance', '2008-11-10', '10:15:00', 'Clinique la Francilienne', 'CHU Saint Louis', 'retard/Travaux', 1, '02:15:00', '10:15:00'),
(304, 70, 100, 'accident', '2008-11-10', '00:00:00', 'CH Arbeltier De Coulommiers', 'CH Garches', 'Appel 8 H ce jour Antenne Crécy', 1, '00:00:00', '00:00:00'),
(305, 71, 101, 'urgence médecin', '2008-11-10', '10:30:00', 'CH Arbeltier De Coulommiers', 'CH Lagny Sur Marne', 'Appel 8 H 30 ce jour', 0, '03:30:00', '10:30:00'),
(306, 72, 95, 'accident', '2008-11-10', '10:30:00', 'LaFerté-Gaucher - 104 avenue thiers', 'Clinique Ange Gardien', 'Client pas prêt attendait le véhicule pour 13 H', 1, '01:15:00', '10:30:00'),
(307, 73, 102, 'évanouissement', '2008-11-10', '11:15:00', 'CH Meaux Saint Faron', 'CHU Bichat', 'retard/Embouteillage', 1, '00:45:00', '11:45:00'),
(308, 74, 104, 'arrêt cardiaque', '2008-11-10', '12:45:00', 'CH Arbeltier De Coulommiers', 'CHU Pitié', 'Service accueil arrivée non prévenu', 1, '02:15:00', '12:45:00'),
(309, 75, 87, 'retour domicile', '2008-11-10', '13:00:00', 'CH d''Orgemont', 'Coulommiers - 22 avenue réaumur', 'Appel 11 H ce jour', 1, '00:45:00', '13:00:00'),
(310, 76, 105, 'accouchement difficile', '2008-11-10', '13:15:00', 'CH Arbeltier De Coulommiers', 'CHU Necker', 'Fax 16 H 45 veille', 0, '02:00:00', '13:15:00'),
(311, 77, 61, 'retour domicile', '2008-11-10', '13:45:00', 'Clinique des moulins', 'Sammeron - 10, rue de la tour gouzangrez', 'Appel 12 H ce jour', 0, '00:30:00', '14:00:00'),
(312, 78, 86, 'transport demande médecin', '2008-11-10', '14:00:00', 'La ferté/gaucher 14 rue Washington', 'CH Meaux Saint Faron', 'Rdv pris par chauffeur', 1, '00:45:00', '14:15:00'),
(313, 79, 63, 'retour domicile', '2008-11-10', '14:00:00', 'CH Arbeltier De Coulommiers', 'Trilport - 21 rue des bas pres', 'Appel 13 H 30 ce jour', 1, '00:30:00', '14:00:00'),
(314, 80, 77, 'accident cérébral', '2008-11-10', '14:15:00', 'Clinique des moulins', 'Ussy-sur-Marne - 39 rue de metz', 'Appel 12 H 45 ce jour', 1, '00:45:00', '14:30:00'),
(315, 70, 85, 'retour domicile', '2008-11-10', '15:00:00', 'Clinique des moulins', 'Crégy-lès-Meaux - 3 allee de la cle saint pierre', 'Erreur planning Rdv prévu par le client à 15:30', 0, '01:00:00', '15:30:00'),
(316, 71, 73, 'retour domicile', '2008-11-10', '15:00:00', 'CH Arbeltier De Coulommiers', 'Marolles-en-Brie - 22 rue courteline', 'Appel 14 H 30 ce jour', 1, '00:15:00', '15:00:00'),
(317, 72, 79, 'retour domicile', '2008-11-10', '15:45:00', 'Clinique des moulins', 'Thénisy - 25 rue bisson', 'Appel 14 H 15 ce jour', 0, '00:45:00', '16:00:00'),
(318, 73, 93, 'retour domicile', '2008-11-10', '16:00:00', 'CH Arbeltier De Coulommiers', 'Saint-Cyr-sur-Morin - 21 rue marbeau', 'Appel 15 H 15 ce jour', 1, '00:30:00', '16:00:00'),
(319, 74, 99, 'retour domicile', '2008-11-10', '16:00:00', 'Clinique des moulins', 'Magny-le-Hongre - les vergers clairbois', 'Appel 15 H 45 ce jour', 0, '00:30:00', '16:15:00'),
(320, 75, 88, 'retour domicile', '2008-11-10', '17:30:00', 'Clinique des moulins', 'Provins - 5 rue dorian', 'Appel 17 H 00 ce jour', 1, '00:45:00', '17:30:00'),
(321, 76, 92, 'retour domicile', '2008-11-10', '17:30:00', 'CH Arbeltier De Coulommiers', 'Meigneux - 13 rue du petit robinson', 'Appel 17 H ce jour', 0, '00:30:00', '17:30:00'),
(322, 77, 70, 'retour domicile', '2008-11-10', '18:00:00', 'CH Arbeltier De Coulommiers', 'Saint-JeanDeux-Jumeaux - 15 rue du general leclerc', 'Appel 17 H 15 ce jour', 1, '00:30:00', '18:00:00'),
(323, 78, 62, 'retour domicile', '2008-11-10', '18:15:00', 'Clinique des moulins', 'Rebais - 1 rue d''edimbourg', 'Appel 18 H ce jour', 0, '00:30:00', '18:15:00'),
(324, 79, 97, 'retour domicile', '2008-11-10', '18:30:00', 'CH Arbeltier De Coulommiers', 'Coulommiers - 15 rue du grenier saint lazarre', 'Appel 18 H ce jour', 0, '00:30:00', '18:30:00'),
(325, 80, 106, 'coma', '2008-11-10', '18:45:00', 'CH Arbeltier De Coulommiers', 'CHU Pitié', 'Appel 17 H 30 ce jour', 1, '02:15:00', '18:30:00'),
(326, 70, 107, 'urgence par médecin', '2008-11-10', '19:15:00', 'Clinique des moulins', 'CHU Necker', 'Appel 11 H ce jour', 0, '01:45:00', '19:15:00');

-- --------------------------------------------------------

--
-- Structure de la table `PATIENT`
--

CREATE TABLE IF NOT EXISTS `PATIENT` (
  `NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(32) DEFAULT NULL,
  `PRENOM` varchar(32) DEFAULT NULL,
  `ADRESSE` varchar(64) DEFAULT NULL,
  `TELEPHONE` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`NUMERO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Contenu de la table `PATIENT`
--

INSERT INTO `PATIENT` (`NUMERO`, `NOM`, `PRENOM`, `ADRESSE`, `TELEPHONE`) VALUES
(60, 'Bisotey', 'Stéphane', 'Bassevelle - 18 boulevard colbert', '01 98 64 23 66'),
(61, 'Francon', 'Isabelle', 'Sammeron - 10, rue de la tour gouzangrez', '01 55 17 18 58'),
(62, 'Villemer', 'Ludovic', 'Rebais - 1 rue d''edimbourg', '01 58 27 36 45'),
(63, 'Feghali', 'Rodolphe', 'Trilport - 21 rue des bas pres', '01 48 24 21 37'),
(64, 'Plana', 'Valérie', 'Centre rééducation cardiaque de la brie', '01 32 29 31 10'),
(65, 'Magontier', 'Virginie', 'Association Residences Et Foyers', '01 32 92 25 51'),
(66, 'Le', 'David', 'Coulommiers - 56 blvrd de saint denis', '01 33 09 51 95'),
(67, 'Garcia', 'Nadege', 'Mortery - 28 rue vassal', '01 11 41 58 17'),
(68, 'Pasti', 'Marie', 'MaisonRouge - 3, rue dautancourt', '01 51 24 83 43'),
(69, 'Mona', 'Stéphanie', 'LeChâtelet-en-Brie - 12 avenue rachel', '01 73 86 17 61'),
(70, 'Freppel', 'Marie Odile', 'Saint-JeanDeux-Jumeaux - 15 rue du general leclerc', '01 32 82 55 17'),
(71, 'Dunand', 'Rodolphe', 'MaisonRouge - 3, rue dautancourt', '01 53 53 43 71'),
(72, 'Champin', 'Karine', 'Boissy 24 rue de la grange', '01 41 08 31 18'),
(73, 'Cany', 'Nicolas', 'Marolles-en-Brie - 22 rue courteline', '01 15 52 21 58'),
(74, 'Fevrier', 'Renaud', 'Saint-Germain-sur-Morin - 11 rue des federes', '01 13 91 57 97'),
(75, 'Delcroix', 'Nadine', 'Fontenailles - 53 rue éléonore jarry', '01 21 68 20 80'),
(76, 'Detat', 'Laetitia', 'Centre rééducation cardiaque de la brie', '01 83 42 67 15'),
(77, 'Joudoux', 'Sandrine', 'Ussy-sur-Marne - 39 rue de metz', '01 00 01 52 69'),
(78, 'Marchand', 'Christel', 'Centre rééducation cardiaque de la brie', '01 58 94 58 48'),
(79, 'Huret', 'Stéphanie', 'Thénisy - 25 rue bisson', '01 48 59 56 13'),
(80, 'Hang', 'Stéphanie', 'Résidence les Floralies', '01 01 37 50 72'),
(81, 'Gibert', 'Muriel', 'Mortcerf - 17 rue guillaume apollinaire', '01 30 20 11 57'),
(82, 'Bazin', 'Cédric', 'Choisy en brie 4 La Fresnois', '01 57 86 14 42'),
(83, 'Dalard', 'Sandrine', 'Mouroux - 19 rue des coudreaux', '01 83 41 88 70'),
(84, 'Teurlay', 'Laurent', 'Maison de Retraite Le Marais', '01 24 73 03 66'),
(85, 'Le Cour', 'Caroline', 'Crégy-lès-Meaux - 3 allee de la cle saint pierre', '01 77 83 74 80'),
(86, 'Boureau', 'Olivier', 'La ferté/gaucher 14 rue Washington', '01 64 46 68 31'),
(87, 'Boucharel', 'Marie Claire', 'Coulommiers - 22 avenue réaumur', '01 74 35 74 04'),
(88, 'Orfanidis', 'Stéphane', 'Provins - 5 rue dorian', '01 49 74 65 14'),
(89, 'Pomariega', 'Cyril', 'Mouroux 215 Av de la libération', '01 53 87 88 46'),
(90, 'Regeffe', 'Valérie', 'Maison de Retraite Le Marais', '01 14 73 18 79'),
(91, 'Dufourcq', 'Nathalie', 'Coulommiers - 1 rue auguste renoir', '01 44 75 61 07'),
(92, 'Geoffroy', 'Matthieu', 'Meigneux - 13 rue du petit robinson', '01 66 35 62 41'),
(93, 'Touchais', 'Violaine', 'Saint-Cyr-sur-Morin - 21 rue marbeau', '01 11 58 95 43'),
(94, 'Feyt', 'Thierry', 'Maison Retraite Saint Aile', '01 84 97 23 42'),
(95, 'Sartron', 'Matthieu', 'LaFerté-Gaucher - 104 avenue thiers', '01 27 23 88 72'),
(96, 'Labreze', 'Christophe', 'Saint-Cyr/Morin - 21 rue marbeau', '01 31 40 59 79'),
(97, 'Bonnin', 'Anne', 'Coulommiers - 15 rue du grenier saint lazarre', '01 72 76 52 35'),
(98, 'Murat', 'David', 'Coulommiers - 53 rue des princes de wagram', '01 26 44 61 62'),
(99, 'Ferte', 'Stéphane', 'Magny-le-Hongre - les vergers clairbois', '01 73 78 69 84'),
(100, 'Billa', 'Isabelle', 'Mouroux - 20 rue des mustangs', '01 21 32 83 11'),
(101, 'Lataste', 'Benoit', 'Boissy - 5 rue les faures', '01 82 53 38 89'),
(102, 'Potonne', 'Omar', 'Mouroux - 125 cours gambetta', '01 33 80 33 13'),
(103, 'Cabaco', 'Sophie', 'Coulommiers - 178 chemin de suze', '01 85 56 62 14'),
(104, 'Balan', 'Arnaud', 'Rebais - 4 rue antoine watteau', '01 96 43 14 16'),
(105, 'Charry', 'Charlène', 'Ussy-sur-Marne - 51 rue voltaire', '01 56 47 84 12'),
(106, 'Bellicard', 'Christophe', 'Thénisy - 6 rue renaudel', '01 32 56 81 00'),
(107, 'Bouchet', 'Linda', 'Boissy - 44 rue des lauriers', '01 25 69 99 27'),
(108, 'Berthier', 'Fabrice', 'Mortcerf - 2 rue Tared', '01 56 84 12 00'),
(109, 'Brukhnoff', 'Caroline', 'Mouroux - 54 impasse Tissier', '01 64 21 11 50'),
(110, 'Carliton', 'Stéphane', 'Maisonrouge - 14 rue clignancourt', '01 82 14 58 99');

-- --------------------------------------------------------

--
-- Structure de la table `PRESENCE`
--

CREATE TABLE IF NOT EXISTS `PRESENCE` (
  `ID_EQUIPIER` int(3) NOT NULL,
  `JOUR` date NOT NULL,
  `CODE` char(1) NOT NULL,
  PRIMARY KEY (`ID_EQUIPIER`,`JOUR`),
  KEY `I_FK_ETAT_EQUIPIER` (`ID_EQUIPIER`),
  KEY `I_FK_ETAT_CODE_ETAT` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `PRESENCE`
--

INSERT INTO `PRESENCE` (`ID_EQUIPIER`, `JOUR`, `CODE`) VALUES
(3, '2013-12-11', 'M'),
(1, '2008-11-08', 'P'),
(1, '2008-11-29', 'P'),
(2, '2008-11-08', 'P'),
(2, '2008-11-09', 'P'),
(2, '2008-11-11', 'P'),
(3, '2008-11-01', 'P'),
(3, '2008-11-22', 'P'),
(3, '2008-11-30', 'P'),
(1, '2008-11-18', 'R'),
(1, '2008-11-19', 'R'),
(1, '2008-11-20', 'R'),
(2, '2008-11-04', 'R'),
(2, '2008-11-10', 'R'),
(3, '2008-11-12', 'R'),
(3, '2008-11-21', 'R'),
(1, '2008-11-03', 'T'),
(1, '2008-11-04', 'T'),
(1, '2008-11-05', 'T'),
(1, '2008-11-06', 'T'),
(1, '2008-11-07', 'T'),
(1, '2008-11-09', 'T'),
(1, '2008-11-11', 'T'),
(1, '2008-11-12', 'T'),
(1, '2008-11-13', 'T'),
(1, '2008-11-16', 'T'),
(1, '2008-11-17', 'T'),
(1, '2008-11-21', 'T'),
(1, '2008-11-24', 'T'),
(1, '2008-11-25', 'T'),
(1, '2008-11-26', 'T'),
(1, '2008-11-27', 'T'),
(1, '2008-11-28', 'T'),
(2, '2008-11-03', 'T'),
(2, '2008-11-05', 'T'),
(2, '2008-11-06', 'T'),
(2, '2008-11-07', 'T'),
(2, '2008-11-12', 'T'),
(2, '2008-11-13', 'T'),
(2, '2008-11-14', 'T'),
(2, '2008-11-17', 'T'),
(2, '2008-11-18', 'T'),
(2, '2008-11-19', 'T'),
(2, '2008-11-20', 'T'),
(2, '2008-11-21', 'T'),
(2, '2008-11-24', 'T'),
(2, '2008-11-25', 'T'),
(2, '2008-11-26', 'T'),
(2, '2008-11-27', 'T'),
(2, '2008-11-28', 'T'),
(3, '2008-11-03', 'T'),
(3, '2008-11-04', 'T'),
(3, '2008-11-05', 'T'),
(3, '2008-11-06', 'T'),
(3, '2008-11-07', 'T'),
(3, '2008-11-10', 'T'),
(3, '2008-11-13', 'T'),
(3, '2008-11-14', 'T'),
(3, '2008-11-17', 'T'),
(3, '2008-11-18', 'T'),
(3, '2008-11-19', 'T'),
(3, '2008-11-20', 'T'),
(3, '2008-11-24', 'T'),
(3, '2008-11-25', 'T'),
(3, '2008-11-26', 'T'),
(3, '2008-11-27', 'T'),
(3, '2008-11-28', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `TYPE_VEHICULE`
--

CREATE TABLE IF NOT EXISTS `TYPE_VEHICULE` (
  `CODE` varchar(1) NOT NULL,
  `LIBELLE` char(32) NOT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `TYPE_VEHICULE`
--

INSERT INTO `TYPE_VEHICULE` (`CODE`, `LIBELLE`) VALUES
('A', 'ambulance'),
('V', 'véhicule sanitaire léger');

-- --------------------------------------------------------

--
-- Structure de la table `VEHICULE`
--

CREATE TABLE IF NOT EXISTS `VEHICULE` (
  `NUM` smallint(3) NOT NULL,
  `CODE` varchar(3) NOT NULL,
  `IMMA` varchar(10) NOT NULL,
  PRIMARY KEY (`NUM`),
  KEY `I_FK_VEHICULE_TYPE_VEHICULE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `VEHICULE`
--

INSERT INTO `VEHICULE` (`NUM`, `CODE`, `IMMA`) VALUES
(1, 'A', '737 DPS 77'),
(2, 'A', '824 BSD 77'),
(3, 'A', '735 ADV 77'),
(4, 'A', '64 BSD 77'),
(5, 'A', '476 AFC 77'),
(6, 'A', '267 BQS 77'),
(7, 'A', '15 AUF 77'),
(8, 'V', '289 BHU 77'),
(9, 'V', '845 BAD 77'),
(10, 'V', '397 AGF 77'),
(11, 'V', '824 BSD 77'),
(12, 'V', '362 BSC 77');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `EQUIPE`
--
ALTER TABLE `EQUIPE`
  ADD CONSTRAINT `EQUIPE_ibfk_1` FOREIGN KEY (`NUM`) REFERENCES `VEHICULE` (`NUM`),
  ADD CONSTRAINT `EQUIPE_ibfk_2` FOREIGN KEY (`CHAUFFEUR`) REFERENCES `EQUIPIER` (`ID_EQUIPIER`),
  ADD CONSTRAINT `EQUIPE_ibfk_3` FOREIGN KEY (`AMBULANCIER`) REFERENCES `EQUIPIER` (`ID_EQUIPIER`);

--
-- Contraintes pour la table `MISSION`
--
ALTER TABLE `MISSION`
  ADD CONSTRAINT `MISSION_ibfk_2` FOREIGN KEY (`CODEEQUIPE`) REFERENCES `EQUIPE` (`CODE`),
  ADD CONSTRAINT `MISSION_ibfk_3` FOREIGN KEY (`NUMEROPATIENT`) REFERENCES `PATIENT` (`NUMERO`);

--
-- Contraintes pour la table `PRESENCE`
--
ALTER TABLE `PRESENCE`
  ADD CONSTRAINT `PRESENCE_ibfk_1` FOREIGN KEY (`ID_EQUIPIER`) REFERENCES `EQUIPIER` (`ID_EQUIPIER`),
  ADD CONSTRAINT `PRESENCE_ibfk_2` FOREIGN KEY (`CODE`) REFERENCES `CODE_ETAT` (`CODE`);

--
-- Contraintes pour la table `VEHICULE`
--
ALTER TABLE `VEHICULE`
  ADD CONSTRAINT `VEHICULE_ibfk_1` FOREIGN KEY (`CODE`) REFERENCES `TYPE_VEHICULE` (`CODE`);

