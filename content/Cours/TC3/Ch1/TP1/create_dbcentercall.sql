--
-- Base de données :  dbcentercall
--
DROP DATABASE IF EXISTS dbcentercall;
CREATE DATABASE IF NOT EXISTS dbcentercall DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE dbcentercall;

-- --------------------------------------------------------

--
-- Structure de la table clients
--

DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
  numeroClient int(11) NOT NULL,
  civilite varchar(12) DEFAULT NULL,
  nom varchar(20) DEFAULT NULL,
  prenom varchar(20) DEFAULT NULL,
  adresse varchar(40) DEFAULT NULL,
  codePostal varchar(7) DEFAULT NULL,
  ville varchar(30) DEFAULT NULL,
  pays varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table clients
--

INSERT INTO clients (numeroClient, civilite, nom, prenom, adresse, codePostal, ville, pays) VALUES
(4, 'Mademoiselle', 'GAGNERON', 'Aurélie', '4 rue Laënnec', '01200', 'MONTANGES', 'France'),
(6, 'Madame', 'DUPRE', 'Stéphanie', '87 rue Ernest Renan', '35480', 'GUIPRY', 'France'),
(10, 'Mademoiselle', 'DULLAC', 'Martine', '17 avenue Albert Camus', '35200', 'MARSEILLE', 'France'),
(13, 'Monsieur', 'BRIGAND', 'Manuel', '46 rue Emile Zola', '30000', 'NIMES', 'France'),
(15, 'Mademoiselle', 'DUMARC', 'Sandrine', '31 rue André Desilles', '33000', 'BORDEAUX', 'France'),
(18, 'Monsieur', 'BOURGE', 'Nicolas', 'Le Chêne Tord', '92340', 'BOURG LA REINE', 'France'),
(21, 'Monsieur', 'FOULON', 'Yann', '7 Allée de Bréquigny', '72000', 'LE MANS', 'France'),
(22, 'Monsieur', 'FOURET', 'Samuel', '45 rue de l\'Ise', '22000', 'SAINT BRIEUC', 'France'),
(23, 'Mademoiselle', 'GARRET', 'Guénola', '8 Square de Londres', '53000', 'LAVAL', 'France'),
(24, 'Madame', 'JAMOTEAU', 'Fabienne', '2 rue Saint Michel', '44000', 'NANTES', 'France'),
(25, 'Monsieur', 'ROUSSEAU', 'Damien', '1 Square du Douro', '02400', 'NOGENTEL', 'France'),
(26, 'Monsieur', 'AUBIER', 'Barnabé', 'Les Ruelles', '35235', 'THORIGNE FOUILLARD', 'France'),
(27, 'Monsieur', 'HILARY', 'Lionel', '18 rue des Camélias', '54300', 'LUNEVILLE', 'France'),
(28, 'Madame', 'COIGNE', 'Katell', '11 rue de la Mare', '01100', 'APREMONT', 'France'),
(29, 'Monsieur', 'LINIZAN', 'Gérald', '19 rue Mozart', '35830', 'BETTON', 'France'),
(30, 'Monsieur', 'AUDUREAU', 'Manuel', '34 rue de Verdun', '34000', 'MONTPELLIER', 'France'),
(31, 'Monsieur', 'HERFROY', 'Sylvain', '2 rue Launay', '12200', 'SAVIGNAC', 'France'),
(32, 'Monsieur', 'COUPPE', 'Maxime', '42 rue César', '06000', 'NICE', 'France'),
(34, 'Madame', 'LEDUC', 'Christine', 'Villa des Résédas', '75003', 'PARIS', 'France'),
(36, 'Mademoiselle', 'RACAPE', 'Sylvie', '8 Square du Douro', '02100', 'GRICOURT', 'France'),
(37, 'Monsieur', 'MALOUIN', 'Hervé', '33 allée du Lac Onéga', '35200', 'MARSEILLE', 'France'),
(39, 'Monsieur', 'ROULIER', 'Jean Paul', '6 avenue du Canada', '35200', 'RENNES', 'France'),
(45, 'Madame', 'CADOREL', 'Louise', '23 route de Lorient', '03500', 'MONTORD', 'France'),
(50, 'Monsieur', 'LESCOUARN', 'Claude', '22 allée de Varsovie', '35200', 'RENNES', 'France'),
(51, 'Monsieur', 'AUDUREAU', 'Gildas', 'Les Ruelles', '04500', 'RIEZ', 'France'),
(52, 'Monsieur', 'BOURGE', 'Manuel', '34 rue de Verdun', '92500', 'RUEIL MALMAISON', 'France'),
(54, 'Monsieur', 'BRIGAND', 'Maurice', '2 rue Louis Blériot', '59000', 'LILLE', 'France'),
(56, 'Monsieur', 'COIGNE', 'Ludovic', '23 route de Lorient', '35700', 'RENNES', 'France'),
(59, 'Monsieur', 'COUPPEY', 'Maxime', '42 rue César', '01000', 'BOURG EN BRESSE', 'France'),
(62, 'Monsieur', 'DESBOIS', 'Stéphane', '5 allée des Tilleuls', '75005', 'PARIS', 'France'),
(63, 'Monsieur', 'DESROSIERS', 'Didier', '8 Square des Ormeaux', '91100', 'CORBEIL ESSONNES', 'France'),
(64, 'Monsieur', 'DULLAC', 'Antoine', '2 allée Antoinette', '35520', 'GUICHEN', 'France'),
(66, 'Monsieur', 'DUMARC', 'Martin', '17 avenue Albert Camus', '37220', 'TROGUES', 'France'),
(67, 'Monsieur', 'DUMAS', 'Stéphane', '31 rue André Desilles', '35000', 'RENNES', 'France'),
(68, 'Monsieur', 'LOUMAS', 'Geoffroy', '5 allée des Tilleuls', '75001', 'PARIS', 'France'),
(69, 'Monsieur', 'DESPRE', 'Stéphane', '87 rue Ernest Renan', '14400', 'CUSSY', 'France'),
(72, 'Monsieur', 'GRALIN', 'Emmanuel', '4 rue Rabelais', '35250', 'ST MEDARD/ILLE', 'France'),
(75, 'Monsieur', 'BARRET', 'Gweltaz', '8 Square de Londres', '33000', 'BORDEAUX', 'France'),
(76, 'Monsieur', 'PIGEON', 'Bruno', '64 rue Albert Camus', '35230', 'CREVIN', 'France'),
(77, 'Monsieur', 'GEFFROY', 'Laurent', '2 rue Launay', '35850', 'GEVEZE', 'France'),
(80, 'Monsieur', 'LEGORGE', 'Sébastien', '65 rue des Fossés', '35850', 'GEVEZE', 'France'),
(83, 'Monsieur', 'DEGOUIS', 'François', '11 rue des Peupliers', '75001', 'PARIS', 'France'),
(86, 'Monsieur', 'MESCOUARN', 'Claude', '22 allée de Varsovie', '27100', 'VAL DE REUIL', 'France'),
(87, 'Monsieur', 'INIZAN', 'Gérald', '19 rue Mozart', '75001', 'PARIS', 'France'),
(90, 'Monsieur', 'MONTHUREL', 'Simon', '3 Quai Chateaubriand', '67500', 'HAGUENAU', 'France'),
(92, 'Monsieur', 'NOUE', 'Hervé', '44 rue Saint Denis', '27300', 'BERNAY', 'France'),
(93, 'Monsieur', 'CHARLES', 'Julien', '44 rue Saint Denis', '35000', 'RENNES', 'France'),
(96, 'Monsieur', 'ROULLER', 'Jean Paul', '6 avenue du Canada', '35200', 'RENNES', 'France'),
(102, 'Monsieur', 'AUDUREAU', 'Barnabé', 'Les Ruelles', '35235', 'THORIGNE FOUILLARD', 'France'),
(103, 'Monsieur', 'BOURGE', 'Manuel', '34 rue de Verdun', '72150', 'COURDEMANCHE', 'France'),
(105, 'Monsieur', 'BRIGAND', 'Maurice', '2 rue Louis Blériot', '35360', 'MONTAUBAN DE BRETAGNE', 'France'),
(106, 'Monsieur', 'CADOREL', 'Maurice', '46 rue Emile Zola', '35170', 'BRUZ', 'France'),
(107, 'Monsieur', 'COIGNE', 'Louis', '23 route de Lorient', '78250', 'MEULAN', 'France'),
(108, 'Monsieur', 'COULARON', 'Killian', '11 rue de la Mare', '54000', 'NANCY', 'France'),
(110, 'Monsieur', 'COUPPEY', 'Maxime', '42 rue César', '92300', 'LEVALLOIS PERRET', 'France'),
(112, 'Monsieur', 'DAUMAS', 'Pol', '4 allée du Dauphiné', '29100', 'DOUARNENEZ', 'France'),
(114, 'Monsieur', 'DESROSIERS', 'Donatien', '8 Square des Ormeaux', '44150', 'ANCENIS', 'France'),
(115, 'Monsieur', 'DULLAC', 'Antoine', '2 allée Antoinette', '66150', 'ARLES SUR TECH', 'France'),
(116, 'Monsieur', 'DULLAC', 'Karim', '4 allée André Malraux', '14200', 'HEROUVILLE SAINT CLAIR', 'France'),
(117, 'Monsieur', 'DUMARC', 'Martin', '17 avenue Albert Camus', '92200', 'NEUILLY SUR SEINE', 'France'),
(119, 'Monsieur', 'LOUMAS', 'Erwann', '5 allée des Tilleuls', '75001', 'PARIS', 'France'),
(120, 'Monsieur', 'DESPRE', 'Stéphane', '87 rue Ernest Renan', '22100', 'LANVALLAY', 'France'),
(121, 'Monsieur', 'COULON', 'Yann', '7 Allée de Bréquigny', '78350', 'JOUY EN JOSAS', 'France'),
(122, 'Monsieur', 'LOURET', 'Samuel', '45 rue de l\'Ise', '35150', 'CORPS NUDS', 'France'),
(123, 'Monsieur', 'GRALIN', 'Emmanuel', '4 rue Rabelais', '72150', 'BRIVES', 'France'),
(124, 'Monsieur', 'SAGER', 'Aurélien', '4 rue Laënnec', '85100', 'LES SABLES D\'OLONNE', 'France'),
(126, 'Monsieur', 'BARRET', 'Gurvan', '8 Square de Londres', '26000', 'VALENCE', 'France'),
(127, 'Monsieur', 'PIGEON', 'Bruno', '64 rue Albert Camus', '35510', 'CHATEAUGIRON', 'France'),
(128, 'Monsieur', 'GEFFROY', 'Lillian', '2 rue Launay', '11000', 'CARCASSONNE', 'France'),
(129, 'Monsieur', 'JULIEN', 'Lionel', '18 rue des Camélias', '63000', 'CLERMONT FERRAND', 'France'),
(131, 'Monsieur', 'LEGORGE', 'Steven', '65 rue des Fossés', '35400', 'PARAME', 'France'),
(132, 'Monsieur', 'DURAND', 'Christian', 'Villa des Résédas', '35830', 'BETTON', 'France'),
(134, 'Monsieur', 'DEGOUIS', 'François', '11 rue des Peupliers', '75001', 'PARIS', 'France'),
(136, 'Monsieur', 'DULONG', 'Florent', '11 rue Paul Bert', '26100', 'ROMANS SUR ISERE', 'France'),
(137, 'Monsieur', 'MESCOUARN', 'Claude', '22 allée de Varsovie', '27400', 'CANAPPEVILLE', 'France'),
(138, 'Monsieur', 'INIZAN', 'Gérald', '19 rue Mozart', '750016', 'PARIS', 'France'),
(139, 'Monsieur', 'FALOUIN', 'Hervé', '33 allée du Lac Onéga', '03100', 'MONTLUCON', 'France'),
(141, 'Madame', 'MONTHUREL', 'Simone', '3 Quai Chateaubriand', '37000', 'TOURS', 'France'),
(142, 'Madame', 'POREL', 'Lucie', '11 rue du Hêtre', '85000', 'LA ROCHE SUR YON', 'France'),
(143, 'Mademoiselle', 'NOUE', 'Hermine', '44 rue Saint Denis', '10300', 'SAINTE SAVINE', 'France'),
(144, 'Mademoiselle', 'CHARLES', 'Joëlle', '44 rue Saint Denis', '10200', 'DOLANCOURT', 'France'),
(146, 'Mademoiselle', 'BADELOIS', 'Sylvie', '8 Square du Douro', '35200', 'RENNES', 'France'),
(148, 'Mademoiselle', 'MONTVOL', 'Doris', '1 Square du Douro', '35200', 'RENNES', 'France'),
(151, 'Mademoiselle', 'BANELIER', 'Géraldine', '27 rue Ambroise', '35170', 'BRUZ', 'France'),
(152, 'Mademoiselle', 'BIHAN', 'Juliette', '43 rue Etienne Pinault', '35000', 'RENNES', 'France'),
(154, 'Mademoiselle', 'ROULLER', 'Judith', '7 avenue du Canada', '35200', 'RENNES', 'France'),
(155, 'Mademoiselle', 'MONTVOL', 'Damiana', '2 Square du Douro', '35200', 'RENNES', 'France'),
(157, 'Mademoiselle', 'MAILLARD', 'Julie', 'La Chesnaie', '35235', 'THORIGNE FOUILLARD', 'France');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table clients
--
ALTER TABLE clients
  ADD PRIMARY KEY (numeroClient);
COMMIT;
