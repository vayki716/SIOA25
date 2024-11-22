--
-- Base de données :  `TC2-1_CINEMA`
--
CREATE DATABASE IF NOT EXISTS `TC2-1_CINEMA` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `TC2-1_CINEMA`;

-- --------------------------------------------------------
--
-- Structure de la table `ABONNEMENT`
--

DROP TABLE IF EXISTS `ABONNEMENT`;
CREATE TABLE `ABONNEMENT` (
  `CodeAbonnement` char(6) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  `Prenom` varchar(25) DEFAULT NULL,
  `AdresseNumero` varchar(7) NOT NULL,
  `AdresseRue` varchar(30) NOT NULL,
  `AdresseCP` char(5) NOT NULL,
  `AdresseVille` varchar(30) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DateSouscription` date NOT NULL,
  `NumeroFormule` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `ABONNEMENT`:
--   `NumeroFormule`
--       `FORMULE` -> `NumeroFormule`
--

--
-- Déchargement des données de la table `ABONNEMENT`
--

INSERT INTO `ABONNEMENT` (`CodeAbonnement`, `Nom`, `Prenom`, `AdresseNumero`, `AdresseRue`, `AdresseCP`, `AdresseVille`, `Email`, `DateSouscription`, `NumeroFormule`) VALUES
('1', 'LUMIERE', 'Vera', '123 Bis', 'Rue Lumière', '99999', 'VILLE DES LUMIERES', 'vera.lumiere@gmail.com', '2011-09-25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `AVIS`
--

DROP TABLE IF EXISTS `AVIS`;
CREATE TABLE `AVIS` (
  `CodeFilm` char(5) NOT NULL,
  `NumeroAvis` int(11) NOT NULL,
  `TexteAvis` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `AVIS`:
--   `CodeFilm`
--       `FILM` -> `CodeFilm`
--

--
-- Déchargement des données de la table `AVIS`
--

INSERT INTO `AVIS` (`CodeFilm`, `NumeroAvis`, `TexteAvis`) VALUES
('AVARP', 1, 'Scènes comiques d\'anthologie - Histoire au départ un peu abracadabrante mais qu\'importe, on ne s\'ennuie pas une seconde'),
('AVATR', 1, 'Superbe - Enfin une 3D qui ne donne pas mal au crâne'),
('BCHTI', 1, 'Drôle mais s\'essoufle un peu par moments'),
('BCHTI', 2, 'Bel hommage aux gens du Nord'),
('CBCET', 1, 'Etonnant - Hilarant - A ne pas manquer'),
('ETETR', 1, 'Magique - A ne pas manquer'),
('FRNKS', 1, 'Assez bonne reconstitution'),
('IEUFO', 1, 'Très réaliste'),
('IEUFO', 2, 'Superbe bande-son à l\'harmonica'),
('JM-OP', 1, 'Rafraichissant'),
('JM-OP', 2, 'Réchauffant'),
('JM-OP', 3, 'Suspense soutenable'),
('LCRND', 1, 'Hilarant - Bourvil est étonnant de naturel - De Funès en fait parfois un peu trop'),
('LGETL', 1, 'Effets spéciaux très novateurs pour l\'époque'),
('LSINC', 1, 'On retrouve l\'atmosphère de la série'),
('MFBLS', 1, 'Hilarant - On aimerait que ce soit aussi drôle dans la réalité'),
('PRWMN', 1, 'Histoire très plaisante même si fin assez prévisible'),
('RNADC', 1, 'Pas si exagéré que cela et largement transposable'),
('RNADC', 2, 'Rien de plus à déclarer'),
('RNADC', 3, 'Film très pertinent à l\'époque actuelle - A passer en boucle'),
('TXDRV', 1, 'Film intéressant s\'il n\'est pas vu comme une apologie de la violence'),
('TXDRV', 2, 'Troublant'),
('TXDRV', 3, 'Ne laisse pas le spectateur indifférent');

-- --------------------------------------------------------

--
-- Structure de la table `CENSURE`
--

DROP TABLE IF EXISTS `CENSURE`;
CREATE TABLE `CENSURE` (
  `CodeCensure` char(2) NOT NULL,
  `Description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `CENSURE`:
--

--
-- Déchargement des données de la table `CENSURE`
--

INSERT INTO `CENSURE` (`CodeCensure`, `Description`) VALUES
('12', 'Interdit aux moins de 12 ans'),
('16', 'Interdit aux moins de 16 ans'),
('18', 'Interdit aux moins de 18 ans'),
('AV', 'Avertissement'),
('TP', 'Tous publics');

-- --------------------------------------------------------

--
-- Structure de la table `FILM`
--

DROP TABLE IF EXISTS `FILM`;
CREATE TABLE `FILM` (
  `CodeFilm` char(5) NOT NULL,
  `Titre` varchar(90) NOT NULL,
  `AnneeSortie` smallint(6) DEFAULT NULL,
  `DureeMns` int(11) DEFAULT NULL,
  `CodeRealisateur` char(5) DEFAULT NULL,
  `CodeLangueVO` char(2) NOT NULL,
  `Tournage` char(2) DEFAULT NULL,
  `CodeCensure` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `FILM`:
--   `CodeCensure`
--       `CENSURE` -> `CodeCensure`
--   `CodeLangueVO`
--       `LANGUE` -> `CodeLangue`
--   `CodeRealisateur`
--       `PERSONNE` -> `CodePersonne`
--

--
-- Déchargement des données de la table `FILM`
--

INSERT INTO `FILM` (`CodeFilm`, `Titre`, `AnneeSortie`, `DureeMns`, `CodeRealisateur`, `CodeLangueVO`, `Tournage`, `CodeCensure`) VALUES
('AFPLC', 'L\'affaire Pelican', 1993, NULL, 'MR-GR', 'AN', '2D', 'TP'),
('AVARP', 'Indiana Jones - Les aventuriers de l\'Arche Perdue', 1981, NULL, 'SP-ST', 'AN', '2D', 'TP'),
('AVATR', 'Avatar', NULL, NULL, 'CM-JM', 'AN', '3D', 'TP'),
('BCHTI', 'Bienvenue chez les Ch\'tis', 2008, NULL, 'BN-DN', 'FR', '2D', 'TP'),
('CBCET', 'Cow-boys et Envahisseurs', 2011, NULL, NULL, 'AN', '2D', 'TP'),
('CFNHL', 'Coup de foudre à Notting Hill', 1999, NULL, 'MC-RG', 'AN', '2D', 'TP'),
('ETETR', 'E.T. L\'Extra-terrestre', 1982, NULL, 'SP-ST', 'AN', '2D', 'TP'),
('FRNKS', 'Frankenstein', 1994, NULL, 'BR-KN', 'AN', '2D', NULL),
('IEUFO', 'Il était une fois dans l\'Ouest', NULL, NULL, 'LN-SG', 'AN', '2D', NULL),
('JM-OP', 'Just Married (ou presque)', NULL, NULL, 'MR-GR', 'AN', '2D', 'TP'),
('LCRND', 'Le corniaud', 1965, NULL, 'OR-GR', 'FR', '2D', 'TP'),
('LGETL', 'La guerre des étoiles', NULL, NULL, 'LC-GR', 'AN', '2D', 'TP'),
('LSINC', 'Les Incorruptibles', 1987, NULL, 'DP-BR', 'AN', '2D', NULL),
('MFBLS', 'Mafia Blues', 1999, NULL, 'RM-HR', 'AN', '2D', 'TP'),
('PRWMN', 'Pretty Woman', 1990, NULL, 'MR-GR', 'AN', '2D', 'TP'),
('RNADC', 'Rien à déclarer', 2011, NULL, 'BN-DN', 'FR', '2D', 'TP'),
('TINTN', 'Tintin - Le secret de la Licorne', 2011, NULL, 'SP-ST', 'AN', '3D', 'TP'),
('TXDRV', 'Taxi Driver', 1976, NULL, 'SC-MR', 'AN', '2D', '12');

-- --------------------------------------------------------

--
-- Structure de la table `FILM_ACTEUR`
--

DROP TABLE IF EXISTS `FILM_ACTEUR`;
CREATE TABLE `FILM_ACTEUR` (
  `CodeFilm` char(5) NOT NULL,
  `CodeActeur` char(5) NOT NULL,
  `Personnage` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `FILM_ACTEUR`:
--   `CodeFilm`
--       `FILM` -> `CodeFilm`
--   `CodeActeur`
--       `PERSONNE` -> `CodePersonne`
--

--
-- Déchargement des données de la table `FILM_ACTEUR`
--

INSERT INTO `FILM_ACTEUR` (`CodeFilm`, `CodeActeur`, `Personnage`) VALUES
('AFPLC', 'RB-JL', 'Darby Shaw'),
('AVARP', 'FR-HR', 'Indiana Jones'),
('BCHTI', 'BN-DN', 'Antoine Bailleul, facteur et carillonneur'),
('BCHTI', 'MR-KD', 'Philippe Abrams, receveur des Postes'),
('CFNHL', 'GR-HG', 'William Thacker'),
('CFNHL', 'RB-JL', 'Anna Scott'),
('FRNKS', 'DN-RB', 'La créature'),
('IEUFO', 'BR-CH', 'L\'homme à l\'harmonica'),
('JM-OP', 'GR-RC', 'Ike Graham'),
('JM-OP', 'RB-JL', 'Maggie Carpenter'),
('LCRND', 'DF-LS', 'Antoine Maréchal'),
('LCRND', 'RM-AR', 'Léopold Saroyan'),
('LGETL', 'FR-HR', 'Han Solo'),
('LSINC', 'DN-RB', 'Al Capone'),
('MFBLS', 'DN-RB', 'Paul Vitti'),
('PRWMN', 'GR-RC', 'Edward Lewis'),
('PRWMN', 'RB-JL', 'Vivian Ward'),
('RNADC', 'BN-DN', 'Mathias Ducatel, le douanier français'),
('RNADC', 'PL-BN', 'Ruben Vandervoorde, le douanier belge'),
('RNADC', 'VR-KR', 'Irène Janus, la bistrotière'),
('TXDRV', 'DN-RB', 'Travis Bickle'),
('TXDRV', 'FS-JD', 'Iris Steensma'),
('TXDRV', 'SC-MR', 'l\'Homme qui regarde sa femme à travers la fenêtre'),
('TXDRV', 'SH-CB', 'Betsy');

-- --------------------------------------------------------

--
-- Structure de la table `FILM_GENRE`
--

DROP TABLE IF EXISTS `FILM_GENRE`;
CREATE TABLE `FILM_GENRE` (
  `CodeFilm` char(5) NOT NULL,
  `CodeGenre` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `FILM_GENRE`:
--   `CodeFilm`
--       `FILM` -> `CodeFilm`
--   `CodeGenre`
--       `GENRE` -> `CodeGenre`
--

--
-- Déchargement des données de la table `FILM_GENRE`
--

INSERT INTO `FILM_GENRE` (`CodeFilm`, `CodeGenre`) VALUES
('AFPLC', 'TH'),
('AVARP', 'AV'),
('AVATR', 'SF'),
('BCHTI', 'CM'),
('CBCET', 'CM'),
('CBCET', 'SF'),
('CBCET', 'WS'),
('CFNHL', 'RM'),
('ETETR', 'SF'),
('FRNKS', 'DR'),
('FRNKS', 'FT'),
('IEUFO', 'WS'),
('JM-OP', 'CM'),
('JM-OP', 'RM'),
('LGETL', 'SF'),
('MFBLS', 'CM'),
('PRWMN', 'CM'),
('PRWMN', 'RM'),
('RNADC', 'CM'),
('TINTN', 'AV'),
('TXDRV', 'DR'),
('TXDRV', 'PS');

-- --------------------------------------------------------

--
-- Structure de la table `FORMULE`
--

DROP TABLE IF EXISTS `FORMULE`;
CREATE TABLE `FORMULE` (
  `NumeroFormule` tinyint(4) NOT NULL,
  `DescriptionFormule` varchar(50) NOT NULL,
  `TarifMensuel` smallint(6) NOT NULL,
  `DureeDeBaseEnMois` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `FORMULE`:
--

--
-- Déchargement des données de la table `FORMULE`
--

INSERT INTO `FORMULE` (`NumeroFormule`, `DescriptionFormule`, `TarifMensuel`, `DureeDeBaseEnMois`) VALUES
(1, 'Toutes les places à demi-tarif', 15, 6),
(2, 'Illimité standard', 25, 12),
(3, 'Illimité découverte', 30, 6);

-- --------------------------------------------------------

--
-- Structure de la table `GENRE`
--

DROP TABLE IF EXISTS `GENRE`;
CREATE TABLE `GENRE` (
  `CodeGenre` char(2) NOT NULL,
  `LibelleGenre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `GENRE`:
--

--
-- Déchargement des données de la table `GENRE`
--

INSERT INTO `GENRE` (`CodeGenre`, `LibelleGenre`) VALUES
('AC', 'Action'),
('AV', 'Aventures'),
('BG', 'Biographie'),
('CM', 'Comédie'),
('DR', 'Drame'),
('EP', 'Epouvante'),
('FT', 'Fantastique'),
('HR', 'Horreur'),
('PL', 'Policier'),
('PS', 'Psychologique'),
('RM', 'Romance'),
('SF', 'Science-Fiction'),
('TH', 'Thriller'),
('WS', 'Western');

-- --------------------------------------------------------

--
-- Structure de la table `LANGUE`
--

DROP TABLE IF EXISTS `LANGUE`;
CREATE TABLE `LANGUE` (
  `CodeLangue` char(2) NOT NULL,
  `DesignationLangue` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `LANGUE`:
--

--
-- Déchargement des données de la table `LANGUE`
--

INSERT INTO `LANGUE` (`CodeLangue`, `DesignationLangue`) VALUES
('AN', 'Anglais'),
('FR', 'Français'),
('JV', 'Javanais');

-- --------------------------------------------------------

--
-- Structure de la table `PERSONNE`
--

DROP TABLE IF EXISTS `PERSONNE`;
CREATE TABLE `PERSONNE` (
  `CodePersonne` char(5) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  `Prenom` varchar(25) NOT NULL,
  `Surnom` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `PERSONNE`:
--

--
-- Déchargement des données de la table `PERSONNE`
--

INSERT INTO `PERSONNE` (`CodePersonne`, `Nom`, `Prenom`, `Surnom`) VALUES
('AM-AN', 'AIMEE', 'Anouck', NULL),
('AT-DN', 'AUTEUIL', 'Daniel', NULL),
('BN-DN', 'BOON', 'Dany', NULL),
('BR-CH', 'BRONSON', 'Charles', NULL),
('BR-KN', 'BRANAGH', 'Kenneth', NULL),
('CH-CH', 'CHAPLIN', 'Charlie', 'Charlot'),
('CM-JM', 'CAMERON', 'James', NULL),
('DF-LS', 'DE FUNES', 'Louis', NULL),
('DN-RB', 'DE NIRO', 'Robert', NULL),
('DP-BR', 'DE PALMA', 'Brian', NULL),
('FR-HR', 'FORD', 'Harrison', NULL),
('FS-JD', 'FOSTER', 'Jodie', NULL),
('GR-HG', 'GRANT', 'Hugh', NULL),
('GR-ML', 'GRIFFITHS', 'Melanie', NULL),
('GR-RC', 'GERE', 'Richard', NULL),
('HL-TR', 'HILL', 'Terence', NULL),
('LC-GR', 'LUCAS', 'Georges', NULL),
('LN-SG', 'LEONE', 'Sergio', NULL),
('MC-RG', 'MICHELL', 'Roger', NULL),
('MR-GR', 'MARSHALL', 'Garry', NULL),
('MR-KD', 'MERAD', 'Kad', NULL),
('OR-GR', 'OURY', 'Gerard', NULL),
('PK-AL', 'PAKULA', 'Alan J.', NULL),
('PL-BN', 'POELVOORDE', 'Benoît', NULL),
('RB-JL', 'ROBERTS', 'Julia', NULL),
('RM-AR', 'RAIMBOURG', 'André-Robert', 'Bourvil'),
('RM-HR', 'RAMIS', 'Harold', NULL),
('SC-MR', 'SCORSESE', 'Martin', NULL),
('SH-CB', 'SHEPHERD', 'Cybill', NULL),
('SP-BD', 'SPENCER', 'Bud', NULL),
('SP-ST', 'SPIELBERG', 'Steven', NULL),
('TT-JC', 'TATI', 'Jacques', NULL),
('VR-KR', 'VIARD', 'Karin', NULL),
('WV-SG', 'WEAVER', 'Sigourney', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `SALLE`
--

DROP TABLE IF EXISTS `SALLE`;
CREATE TABLE `SALLE` (
  `NumeroSalle` tinyint(4) NOT NULL,
  `Capacite` int(11) NOT NULL,
  `ProjectionNumerique` char(1) DEFAULT NULL,
  `Relief` char(1) DEFAULT NULL,
  `DolbyDigital` char(1) DEFAULT NULL,
  `DTS` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `SALLE`:
--

--
-- Déchargement des données de la table `SALLE`
--

INSERT INTO `SALLE` (`NumeroSalle`, `Capacite`, `ProjectionNumerique`, `Relief`, `DolbyDigital`, `DTS`) VALUES
(1, 900, 'V', 'V', 'V', 'V'),
(2, 700, 'F', 'V', 'V', 'V'),
(3, 500, 'V', 'F', 'F', 'V'),
(4, 300, 'F', 'F', 'V', 'V'),
(5, 300, 'F', 'F', 'F', 'V');

-- --------------------------------------------------------

--
-- Structure de la table `SEANCE`
--

DROP TABLE IF EXISTS `SEANCE`;
CREATE TABLE `SEANCE` (
  `DateSeance` date NOT NULL,
  `NumeroSalle` tinyint(4) NOT NULL,
  `HeureDebutSeance` char(5) NOT NULL,
  `HeureFinSeance` char(5) DEFAULT NULL,
  `CodeFilm` char(5) NOT NULL,
  `Version` char(2) DEFAULT NULL,
  `ProjectionNumerique` char(1) DEFAULT NULL,
  `Relief` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `SEANCE`:
--   `CodeFilm`
--       `FILM` -> `CodeFilm`
--   `NumeroSalle`
--       `SALLE` -> `NumeroSalle`
--

--
-- Déchargement des données de la table `SEANCE`
--

INSERT INTO `SEANCE` (`DateSeance`, `NumeroSalle`, `HeureDebutSeance`, `HeureFinSeance`, `CodeFilm`, `Version`, `ProjectionNumerique`, `Relief`) VALUES
('2011-11-09', 1, '11:00', NULL, 'TINTN', 'VO', 'V', 'V'),
('2011-11-09', 1, '14:00', NULL, 'TINTN', 'VF', 'V', 'V'),
('2011-11-09', 1, '16:30', NULL, 'TINTN', 'VF', 'V', 'V'),
('2011-11-09', 1, '19:50', NULL, 'TINTN', 'VF', 'V', 'V'),
('2011-11-09', 1, '22:30', NULL, 'TINTN', 'VF', 'V', 'V'),
('2011-11-09', 5, '14:15', NULL, 'TINTN', 'VO', 'F', 'F'),
('2011-11-09', 5, '16:45', NULL, 'TINTN', 'VF', 'F', 'F'),
('2011-11-09', 5, '20:00', NULL, 'TINTN', 'VF', 'F', 'F'),
('2011-11-09', 5, '22:40', NULL, 'TINTN', 'VF', 'F', 'F');

-- --------------------------------------------------------

--
-- Structure de la table `STATISTIQUE`
--

DROP TABLE IF EXISTS `STATISTIQUE`;
CREATE TABLE `STATISTIQUE` (
  `CodeFilm` char(5) NOT NULL,
  `Annee` smallint(6) NOT NULL,
  `Semaine` tinyint(4) NOT NULL,
  `NbEntrees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONS POUR LA TABLE `STATISTIQUE`:
--   `CodeFilm`
--       `FILM` -> `CodeFilm`
--

--
-- Déchargement des données de la table `STATISTIQUE`
--

INSERT INTO `STATISTIQUE` (`CodeFilm`, `Annee`, `Semaine`, `NbEntrees`) VALUES
('LGETL', 2011, 5, 6000),
('PRWMN', 1990, 30, 5000),
('PRWMN', 1995, 15, 2500);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ABONNEMENT`
--
ALTER TABLE `ABONNEMENT`
  ADD PRIMARY KEY (`CodeAbonnement`),
  ADD KEY `FK_ABONNEMENT_FORMULE` (`NumeroFormule`);

--
-- Index pour la table `AVIS`
--
ALTER TABLE `AVIS`
  ADD PRIMARY KEY (`CodeFilm`,`NumeroAvis`);

--
-- Index pour la table `CENSURE`
--
ALTER TABLE `CENSURE`
  ADD PRIMARY KEY (`CodeCensure`);

--
-- Index pour la table `FILM`
--
ALTER TABLE `FILM`
  ADD PRIMARY KEY (`CodeFilm`),
  ADD KEY `FK_FILM_PERSONNE` (`CodeRealisateur`),
  ADD KEY `FK_FILM_LANGUE` (`CodeLangueVO`),
  ADD KEY `FK_FILM_CENSURE` (`CodeCensure`);

--
-- Index pour la table `FILM_ACTEUR`
--
ALTER TABLE `FILM_ACTEUR`
  ADD PRIMARY KEY (`CodeFilm`,`CodeActeur`),
  ADD KEY `FK_FILMACTEUR__ACTEUR` (`CodeActeur`);

--
-- Index pour la table `FILM_GENRE`
--
ALTER TABLE `FILM_GENRE`
  ADD PRIMARY KEY (`CodeFilm`,`CodeGenre`),
  ADD KEY `FK_FILMGENRE_GENRE` (`CodeGenre`);

--
-- Index pour la table `FORMULE`
--
ALTER TABLE `FORMULE`
  ADD PRIMARY KEY (`NumeroFormule`);

--
-- Index pour la table `GENRE`
--
ALTER TABLE `GENRE`
  ADD PRIMARY KEY (`CodeGenre`);

--
-- Index pour la table `LANGUE`
--
ALTER TABLE `LANGUE`
  ADD PRIMARY KEY (`CodeLangue`);

--
-- Index pour la table `PERSONNE`
--
ALTER TABLE `PERSONNE`
  ADD PRIMARY KEY (`CodePersonne`);

--
-- Index pour la table `SALLE`
--
ALTER TABLE `SALLE`
  ADD PRIMARY KEY (`NumeroSalle`);

--
-- Index pour la table `SEANCE`
--
ALTER TABLE `SEANCE`
  ADD PRIMARY KEY (`DateSeance`,`NumeroSalle`,`HeureDebutSeance`),
  ADD KEY `FK_SEANCE_SALLE` (`NumeroSalle`),
  ADD KEY `FK_SEANCE_FILM` (`CodeFilm`);

--
-- Index pour la table `STATISTIQUE`
--
ALTER TABLE `STATISTIQUE`
  ADD PRIMARY KEY (`CodeFilm`,`Annee`,`Semaine`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ABONNEMENT`
--
ALTER TABLE `ABONNEMENT`
  ADD CONSTRAINT `FK_ABONNEMENT_FORMULE` FOREIGN KEY (`NumeroFormule`) REFERENCES `FORMULE` (`NumeroFormule`);

--
-- Contraintes pour la table `AVIS`
--
ALTER TABLE `AVIS`
  ADD CONSTRAINT `FK_AVIS_FILM` FOREIGN KEY (`CodeFilm`) REFERENCES `FILM` (`CodeFilm`);

--
-- Contraintes pour la table `FILM`
--
ALTER TABLE `FILM`
  ADD CONSTRAINT `FK_FILM_CENSURE` FOREIGN KEY (`CodeCensure`) REFERENCES `CENSURE` (`CodeCensure`),
  ADD CONSTRAINT `FK_FILM_LANGUE` FOREIGN KEY (`CodeLangueVO`) REFERENCES `LANGUE` (`CodeLangue`),
  ADD CONSTRAINT `FK_FILM_PERSONNE` FOREIGN KEY (`CodeRealisateur`) REFERENCES `PERSONNE` (`CodePersonne`);

--
-- Contraintes pour la table `FILM_ACTEUR`
--
ALTER TABLE `FILM_ACTEUR`
  ADD CONSTRAINT `FK_FILMACTEUR_FILM` FOREIGN KEY (`CodeFilm`) REFERENCES `FILM` (`CodeFilm`),
  ADD CONSTRAINT `FK_FILMACTEUR__ACTEUR` FOREIGN KEY (`CodeActeur`) REFERENCES `PERSONNE` (`CodePersonne`);

--
-- Contraintes pour la table `FILM_GENRE`
--
ALTER TABLE `FILM_GENRE`
  ADD CONSTRAINT `FK_FILMGENRE_FILM` FOREIGN KEY (`CodeFilm`) REFERENCES `FILM` (`CodeFilm`),
  ADD CONSTRAINT `FK_FILMGENRE_GENRE` FOREIGN KEY (`CodeGenre`) REFERENCES `GENRE` (`CodeGenre`);

--
-- Contraintes pour la table `SEANCE`
--
ALTER TABLE `SEANCE`
  ADD CONSTRAINT `FK_SEANCE_FILM` FOREIGN KEY (`CodeFilm`) REFERENCES `FILM` (`CodeFilm`),
  ADD CONSTRAINT `FK_SEANCE_SALLE` FOREIGN KEY (`NumeroSalle`) REFERENCES `SALLE` (`NumeroSalle`);

--
-- Contraintes pour la table `STATISTIQUE`
--
ALTER TABLE `STATISTIQUE`
  ADD CONSTRAINT `FK_STATISTIQUE_FILM` FOREIGN KEY (`CodeFilm`) REFERENCES `FILM` (`CodeFilm`);
  
COMMIT;


