--
-- Base de données : TC2-1_pepinieriste
--
CREATE DATABASE IF NOT EXISTS `TC2-1_pepinieriste` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `TC2-1_pepinieriste`;

-- --------------------------------------------------------

--
-- Structure de la table GENRE
--

CREATE TABLE GENRE (
  codeGenre char(3) NOT NULL,
  libGenre varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table GENRE
--

INSERT INTO GENRE (codeGenre, libGenre) VALUES('arb', 'Arbres d\'ornement');
INSERT INTO GENRE (codeGenre, libGenre) VALUES('bul', 'Bulbes');
INSERT INTO GENRE (codeGenre, libGenre) VALUES('mas', 'Plantes à massif');
INSERT INTO GENRE (codeGenre, libGenre) VALUES('ros', 'Rosiers');

-- --------------------------------------------------------

--
-- Structure de la table PRODUIT
--

CREATE TABLE PRODUIT (
  codeProd char(3) NOT NULL,
  designation varchar(50) NOT NULL,
  prix decimal(5,2) DEFAULT NULL,
  genre char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table PRODUIT
--

INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('b01', '3 bulbes de bégonias', 5.00, 'bul');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('b02', '10 bulbes de dahlias', 12.00, 'bul');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('b03', '50 glaïeuls', 9.00, 'bul');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('b04', '40 iris heure bleue', 19.00, NULL);
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('b05', 'Perce neige:calibre 5/6 sachet 10 bulbes', NULL, NULL);
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('m01', 'Lot de 3 marguerites', 5.00, 'mas');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('m02', 'Pour un bouquet de 6 pensées', 6.00, 'mas');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('m03', 'Mélange varié de 10 plantes à massif', 15.00, 'mas');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('r01', '1 pied spécial grandes fleurs', 20.00, 'ros');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('r02', 'Une variété sélectionnée pour son parfum', 9.00, 'ros');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('r03', 'Rosier arbuste', 8.00, 'ros');
INSERT INTO PRODUIT (codeProd, designation, prix, genre) VALUES('r04', 'Rosier grandes fleurs Leo Ferre', NULL, 'ros');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table GENRE
--
ALTER TABLE GENRE
  ADD PRIMARY KEY (codeGenre);

--
-- Index pour la table PRODUIT
--
ALTER TABLE PRODUIT
  ADD PRIMARY KEY (codeProd),
  ADD KEY produit_ibfk_1 (genre);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table PRODUIT
--
ALTER TABLE PRODUIT
  ADD CONSTRAINT produit_ibfk_1 FOREIGN KEY (genre) REFERENCES GENRE (codeGenre);
COMMIT;

