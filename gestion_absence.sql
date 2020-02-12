-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 12 fév. 2020 à 12:31
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_absence`
--

-- --------------------------------------------------------

--
-- Structure de la table `badge`
--

DROP TABLE IF EXISTS `badge`;
CREATE TABLE IF NOT EXISTS `badge` (
  `idBadge` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idBadge`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `badger`
--

DROP TABLE IF EXISTS `badger`;
CREATE TABLE IF NOT EXISTS `badger` (
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `idClasse` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `module` varchar(5) NOT NULL,
  PRIMARY KEY (`idClasse`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`idClasse`, `nom`, `module`) VALUES
(1, 'LPDIMFI', 'LPDIM'),
(2, 'LPDIMAPP', 'LPDIM'),
(4, 'DUT INFO 1', 'DUT 1'),
(5, 'DUT INFO 2', 'DUT 2');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `idCours` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(70) NOT NULL,
  `module` varchar(10) NOT NULL,
  PRIMARY KEY (`idCours`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`idCours`, `nom`, `module`) VALUES
(105, 'service web mobile', 'LPDIMAPP'),
(2, 'M1206', 'DUT 1'),
(3, 'M2206', 'DUT 1'),
(4, 'M1103', 'DUT 1'),
(5, 'M2103', 'DUT 1'),
(6, 'M1104', 'DUT 1'),
(7, 'M1105', 'DUT 1'),
(8, 'M1106', 'DUT 1'),
(9, 'M1207', 'DUT 1'),
(10, 'M2106', 'DUT 1'),
(36, 'OS7', 'DUT 2'),
(12, 'M1101', 'DUT 1'),
(13, 'M1201', 'DUT 1'),
(14, 'M1202', 'DUT 1'),
(34, 'M3204', 'DUT 2'),
(16, 'M1102', 'DUT 1'),
(37, 'M3103', 'DUT 2'),
(18, 'M2202', 'DUT 1'),
(19, 'M2102', 'DUT 1'),
(20, 'M1205', 'DUT 1'),
(21, 'M2205', 'DUT 1'),
(38, 'M3104', 'DUT 2'),
(35, 'M3301', 'DUT 2'),
(24, 'M2204', 'DUT 1'),
(25, 'M2201', 'DUT 1'),
(26, 'M2105', 'DUT 1'),
(27, 'M2104', 'DUT 1'),
(28, 'M2207', 'DUT 1'),
(30, 'M2101', 'DUT 1'),
(31, 'M2203', 'DUT 1'),
(32, 'M1204', 'DUT 1'),
(33, 'M1203', 'DUT 1'),
(39, 'M3105', 'DUT 2'),
(40, 'M4104', 'DUT 2'),
(41, 'M4105', 'DUT 2'),
(42, 'M3202', 'DUT 2'),
(43, 'M4102', 'DUT 2'),
(44, 'M4101', 'DUT 2'),
(45, 'M3101', 'DUT 2'),
(46, 'M3102', 'DUT 2'),
(47, 'M3303', 'DUT 2'),
(48, 'M3205', 'DUT 2'),
(49, 'M4203', 'DUT 2'),
(50, 'M4103', 'DUT 2'),
(51, 'M3201', 'DUT 2'),
(52, 'M3203', 'DUT 2'),
(53, 'M4201', 'DUT 2'),
(54, 'M4202', 'DUT 2'),
(55, 'OS8', 'DUT 2'),
(56, 'M3206', 'DUT 2'),
(57, 'M4204', 'DUT 2'),
(58, 'M3106', 'DUT 2'),
(59, 'anglais', 'LPDIMFI'),
(60, 'anglais', 'LPDIMAPP'),
(61, 'conception site web_outil num', 'LPDIMFI'),
(62, 'conception site web_outil num', 'LPDIMAPP'),
(63, 'services internet_dockers', 'LPDIMFI'),
(64, 'gestion de projet', 'LPDIMFI'),
(65, 'intégration avancée', 'LPDIMFI'),
(66, 'framework', 'LPDIMFI'),
(67, 'framework', 'LPDIMAPP'),
(68, 'java approfondi', 'LPDIMAPP'),
(69, 'ERP', 'LPDIMFI'),
(111, 'ERP', 'LPDIMAPP'),
(71, 'services internet_dockers', 'LPDIMAPP'),
(72, 'tech avancées (Node JS, Angular)', 'LPDIMFI'),
(73, 'tech avancées (Node JS, Angular)', 'LPDIMAPP'),
(74, 'vie entreprise_comm', 'LPDIMFI'),
(112, 'Système d\'exploitation', 'LPDIMAPP'),
(76, 'vie entreprise_comm', 'LPDIMAPP'),
(100, 'CMS UI/UX', 'LPDIMFI'),
(101, 'CMS UI/UX', 'LPDIMAPP'),
(102, 'optimisation RGBD', 'LPDIMFI'),
(79, 'système d\'exploitation', 'LPDIMFI'),
(80, 'génie logiciel', 'LPDIMAPP'),
(81, 'service web mobile', 'LPDIMFI'),
(104, 'intégration avancée', 'LPDIMAPP'),
(83, 'aspects législatifs', 'LPDIMFI'),
(84, 'aspects législatifs', 'LPDIMAPP'),
(85, 'administration système', 'LPDIMFI'),
(107, 'développement web PHP', 'LPDIMFI'),
(106, 'BD web', 'LPDIMFI'),
(88, 'référencement avancé', 'LPDIMFI'),
(89, 'référencement avancé', 'LPDIMAPP'),
(90, 'java approfondi', 'LPDIMFI'),
(91, 'base de la programmation web', 'LPDIMFI'),
(92, 'base de la programmation web', 'LPDIMAPP'),
(93, 'dev mobile', 'LPDIMFI'),
(94, 'dev mobile', 'LPDIMAPP'),
(95, 'programmation java', 'LPDIMAPP'),
(110, 'programmation java', 'LPDIMFI'),
(113, 'Sécurité internet', 'LPDIMAPP'),
(98, 'gestion de projet', 'LPDIMAPP'),
(99, 'développement web PHP', 'LPDIMAPP'),
(103, 'optimsation RGBD', 'LPDIMAPP'),
(108, 'administration système', 'LPDIMAPP'),
(109, 'BD web', 'LPDIMAPP'),
(114, 'Sécurité internet', 'LPDIMFI'),
(115, 'Génie logiciel', 'LPDIMFI');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `idEtu` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `formation` varchar(15) NOT NULL,
  `nbr_absence` int(11) NOT NULL,
  `absence_justifiee` varchar(3) NOT NULL,
  `classe_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `etat` varchar(10) NOT NULL,
  PRIMARY KEY (`idEtu`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`idEtu`, `prenom`, `nom`, `formation`, `nbr_absence`, `absence_justifiee`, `classe_id`, `badge_id`, `etat`) VALUES
(1, 'Jérémy', 'Dupuis', 'LpDIMFI', 4, '4', 1, 1, 'present'),
(2, 'Julien', 'Genel', 'LpDIMFI', 0, '0', 1, 1, 'present'),
(3, 'Théo', 'Planck', 'LpDIMFI', 3, '0', 1, 1, 'present'),
(4, 'Gabriel', 'Nguyen', 'LpDIMFI', 3, '0', 1, 1, 'present');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `idGroupe` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `classe_id` int(11) NOT NULL,
  PRIMARY KEY (`idGroupe`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`idGroupe`, `nom`, `classe_id`) VALUES
(1, 'DUT1 TPA', 4),
(2, 'DUT1 TPB', 4),
(3, 'DUT1 TPC', 4),
(4, 'DUT1 TPD', 4),
(5, 'DUT1 TPE', 4),
(6, 'DUT1 TD1', 4),
(7, 'DUT1 TD2', 4),
(8, 'DUT1 TD3', 4),
(9, 'DUT2 TPA', 5),
(10, 'DUT2 TPB', 5),
(11, 'DUT2 TPC', 5),
(12, 'DUT2 TPD', 5),
(13, 'DUT2 TD1', 5),
(14, 'DUT2 TD2', 5),
(15, 'DUT2 APP', 5);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `idProf` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idProf`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`idProf`, `idUser`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61);

-- --------------------------------------------------------

--
-- Structure de la table `prof_classe`
--

DROP TABLE IF EXISTS `prof_classe`;
CREATE TABLE IF NOT EXISTS `prof_classe` (
  `idProf` int(11) NOT NULL,
  `idClasse` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prof_classe`
--

INSERT INTO `prof_classe` (`idProf`, `idClasse`) VALUES
(1, 1),
(2, 2),
(5, 4),
(6, 5),
(7, 1),
(7, 2),
(8, 4),
(9, 5),
(10, 4),
(4, 1),
(4, 2),
(4, 4),
(4, 5),
(11, 4),
(12, 4),
(12, 5),
(13, 1),
(13, 4),
(13, 5),
(14, 5),
(14, 1),
(15, 5),
(15, 1),
(16, 5),
(17, 1),
(17, 2),
(18, 2),
(18, 4),
(18, 5),
(3, 4),
(3, 5),
(19, 1),
(19, 2),
(19, 5),
(20, 4),
(20, 5),
(21, 2),
(22, 5),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(24, 4),
(24, 5),
(25, 1),
(25, 2),
(25, 4),
(25, 5),
(26, 5),
(27, 4),
(28, 4),
(29, 4),
(30, 1),
(31, 5),
(32, 4),
(32, 5),
(33, 1),
(33, 2),
(2, 4),
(2, 2),
(34, 1),
(34, 2),
(34, 4),
(34, 5),
(61, 4),
(61, 5),
(35, 4),
(35, 5),
(36, 4),
(37, 1),
(37, 2),
(37, 4),
(37, 5),
(38, 1),
(39, 4),
(40, 1),
(40, 2),
(40, 5),
(41, 4),
(42, 1),
(42, 2),
(43, 4),
(44, 4),
(44, 5),
(45, 1),
(46, 4),
(46, 5),
(47, 1),
(47, 2),
(47, 4),
(48, 4),
(49, 1),
(49, 4),
(49, 5),
(50, 2),
(51, 2),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(52, 4),
(52, 1),
(52, 2),
(53, 4),
(54, 4),
(55, 5),
(56, 2),
(57, 4),
(58, 4);

-- --------------------------------------------------------

--
-- Structure de la table `prof_cours`
--

DROP TABLE IF EXISTS `prof_cours`;
CREATE TABLE IF NOT EXISTS `prof_cours` (
  `idProf` int(11) NOT NULL,
  `idCours` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prof_cours`
--

INSERT INTO `prof_cours` (`idProf`, `idCours`) VALUES
(1, 1),
(5, 2),
(5, 3),
(6, 34),
(7, 59),
(7, 60),
(8, 2),
(8, 3),
(9, 35),
(10, 4),
(10, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 34),
(4, 61),
(4, 62),
(11, 12),
(12, 13),
(12, 14),
(12, 36),
(13, 5),
(13, 37),
(13, 34),
(13, 35),
(13, 63),
(14, 39),
(14, 51),
(14, 40),
(14, 64),
(15, 41),
(15, 65),
(16, 35),
(17, 66),
(17, 67),
(18, 28),
(18, 39),
(18, 42),
(18, 35),
(18, 43),
(18, 68),
(3, 16),
(3, 4),
(3, 25),
(3, 18),
(3, 45),
(19, 45),
(19, 44),
(19, 111),
(19, 69),
(19, 112),
(20, 19),
(20, 45),
(20, 46),
(21, 71),
(22, 46),
(22, 38),
(22, 44),
(23, 72),
(23, 73),
(24, 20),
(24, 9),
(24, 21),
(24, 47),
(24, 48),
(24, 49),
(24, 76),
(24, 74),
(25, 26),
(25, 50),
(25, 61),
(25, 62),
(25, 100),
(25, 101),
(25, 102),
(25, 103),
(26, 41),
(27, 26),
(27, 26),
(28, 2),
(28, 3),
(29, 24),
(29, 24),
(30, 79),
(31, 50),
(32, 25),
(32, 51),
(33, 113),
(33, 114),
(2, 12),
(2, 4),
(2, 19),
(2, 80),
(34, 7),
(34, 26),
(34, 50),
(34, 81),
(34, 105),
(34, 104),
(35, 19),
(35, 46),
(36, 20),
(36, 21),
(37, 33),
(37, 32),
(37, 9),
(37, 31),
(37, 28),
(37, 52),
(37, 53),
(37, 54),
(37, 83),
(37, 84),
(38, 85),
(39, 12),
(40, 41),
(40, 106),
(40, 109),
(40, 107),
(40, 108),
(41, 6),
(41, 10),
(42, 88),
(42, 89),
(43, 18),
(44, 4),
(44, 13),
(44, 14),
(44, 25),
(44, 51),
(44, 42),
(44, 35),
(44, 36),
(44, 55),
(45, 90),
(46, 3),
(46, 56),
(46, 57),
(47, 26),
(47, 91),
(47, 92),
(48, 16),
(49, 30),
(49, 35),
(49, 40),
(49, 93),
(50, 94),
(51, 95),
(1, 4),
(1, 9),
(1, 5),
(1, 58),
(1, 35),
(1, 110),
(1, 106),
(1, 109),
(52, 4),
(52, 9),
(52, 24),
(52, 28),
(52, 98),
(52, 115),
(53, 16),
(53, 4),
(59, 19),
(54, 38),
(54, 39),
(54, 43),
(55, 51),
(56, 99),
(57, 16),
(57, 4),
(58, 16),
(58, 5),
(58, 27);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `nomUser` varchar(40) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `nomUser`, `prenom`, `mdp`, `role`) VALUES
(1, 'synave.remi', 'synave', 'remi', '1', 'prof'),
(2, 'kerkeni.insaf', 'kerkeni', 'insaf', '2', 'admin'),
(3, 'delignieres.isabelle', 'Delignieres', 'Isabelle', '3', 'prof'),
(4, 'capitaine.dany', 'Capitaine', 'Dany', '4', 'prof'),
(5, 'anota.bertille', 'Anota', 'Bertille', '5', 'prof'),
(6, 'aufort.gauthier', 'Aufort', 'Gauthier', '6', 'prof'),
(7, 'barbe.aurelie', 'Barbe', 'Aurelie', '7', 'prof'),
(8, '', 'Batel', '', '8', 'prof'),
(9, 'bellembois.marine', 'Bellembois', 'Marine', '9', 'prof'),
(10, 'buisine.jerome', 'Buisine', 'Jérôme', '10', 'prof'),
(11, 'caron.nicolas', 'Caron', 'Nicolas', '11', 'prof'),
(12, 'chretien.bernard', 'Chretien', 'Bernard', '12', 'prof'),
(13, 'cozot.remi', 'Cozot', 'Rémi', '13', 'prof'),
(14, 'dagbert.jeremy', 'Dagbert', 'Jérémy', '14', 'prof'),
(15, 'deboom.christopher', 'Deboom', 'Christopher', '15', 'prof'),
(16, 'degrand.floriant', 'Degrand', 'Floriant', '16', 'prof'),
(17, 'delcloy.paul', 'Delcloy', 'Paul', '17', 'prof'),
(18, 'delepouille.samuel', 'Delepoulle', 'Samuel', '18', 'prof'),
(19, 'desquenne.julien', 'Desquenne', 'Julien', '19', 'prof'),
(20, 'desombre.thierry', 'Desombre', 'Thierry', '20', 'prof'),
(21, 'doutreleau.leo', 'Doutreleau', 'Léo', '21', 'prof'),
(22, 'dussart.dominique', 'Dussart', 'Dominique', '22', 'prof'),
(23, 'elwassifi.amine', 'El Wassifi', 'Amine', '23', 'prof'),
(24, 'fernandez.margherite', 'Fernandez', 'Margherite', '24', 'admin'),
(25, 'foveau.frederic', 'Foveau', 'Frederic', '25', 'prof'),
(26, 'fromentin.jean', 'Fromentin', 'Jean', '26', 'prof'),
(27, 'gallot.fabien', 'Gallot', 'Fabien', '27', 'prof'),
(28, 'gest.nelly', 'Gest', 'Nelly', '28', 'prof'),
(29, 'grioche.vincent', 'Grioche', 'Vincent', '29', 'prof'),
(30, 'hars.philippe', 'Hars', 'Philippe', '30', 'prof'),
(31, 'henichart.clement', 'Henichart', 'Clément', '31', 'prof'),
(32, 'herbez.christopher', 'Herbez', 'Christopher', '32', 'prof'),
(33, 'humetz.mathieu', 'Humetz', 'Mathieu', '33', 'prof'),
(34, 'kowalski.olivier', 'Kowalski', 'Olivier', '34', 'prof'),
(35, 'lams.jeanfrancois', 'Lams', 'Jean-François', '35', 'prof'),
(36, 'legrand.valerie', 'Legrand', 'Valérie', '36', 'prof'),
(37, 'letrez.severine', 'Letrez', 'Séverine', '37', 'prof'),
(38, 'macleave.yoann', 'Mac Cleave', 'Yoann', '38', 'prof'),
(39, 'mantel.julien', 'Mantel', 'Julien', '39', 'prof'),
(40, 'masson.kevin', 'Masson', 'Kévin', '40', 'prof'),
(41, 'merlot.jimmy', 'Merlot', 'Jimmy', '41', 'prof'),
(42, 'muguet.romain', 'Muguet', 'Romain', '42', 'prof'),
(43, 'ouldsais.elias', 'Ould Sais', 'Elias', '43', 'prof'),
(44, 'pacou.Anne', 'Pacou', 'Anne', '44', 'admin'),
(45, 'persyn.vincent', 'Persyn', 'Vincent', '45', 'prof'),
(46, 'petit.pauline', 'Petit', 'Pauline', '46', 'prof'),
(47, 'pollet.david', 'Pollet', 'David', '47', 'prof'),
(48, 'ringot.christian', 'Ringot', 'Christian', '48', 'prof'),
(49, 'rousselle.francois', 'Rousselle', 'François', '49', 'prof'),
(50, 'samyn.kevin', 'Samyn', 'Kévin', '50', 'prof'),
(51, 'saveant.guillaume', 'Saveant', 'Guillaume', '51', 'prof'),
(52, 'talon.benedicte', 'Talon', 'Bénédicte', '52', 'admin'),
(53, 'tentilllier.nicolas', 'Tentillier', 'Nicolas', '53', 'prof'),
(54, 'vandewiele.franck', 'Vandewiele', 'Franck', '54', 'prof'),
(55, 'vangrevelynghe.remi', 'Vangrevelynghe', 'Rémi', '56', 'prof'),
(56, 'vanneste.vincent', 'Vanneste', 'Vincent', '57', 'prof'),
(57, 'vasseur.simon', 'Vasseur', 'Simon', '59', 'prof'),
(58, 'warin.bruno', 'Warin', 'Bruno', '60', 'prof'),
(59, 'triplet.simon', 'Triplet', 'Simon', '61', 'prof'),
(61, 'ladelfa.valerie', 'La Delfa', 'Valerie', '61', 'prof');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
