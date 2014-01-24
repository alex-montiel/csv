-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 23 Janvier 2014 à 08:24
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `entreprise`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(10) DEFAULT NULL,
  `nom_contact` varchar(40) DEFAULT NULL,
  `prenom_contact` varchar(40) DEFAULT NULL,
  `adresse` varchar(32) DEFAULT NULL,
  `suite` varchar(32) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `ville` varchar(26) DEFAULT NULL,
  `societe` varchar(40) DEFAULT NULL,
  `APE` varchar(4) DEFAULT NULL,
  `pays` varchar(5) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `telephone2` varchar(20) DEFAULT NULL,
  `telecopie` varchar(20) DEFAULT NULL,
  `portable` varchar(20) DEFAULT NULL,
  `site_web` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `origine` int(11) DEFAULT '0',
  `observations` longtext,
  `date_creation` datetime DEFAULT NULL,
  `prospect` tinyint(1) DEFAULT '0',
  `demandeur` tinyint(1) DEFAULT '0',
  `offreur` tinyint(1) DEFAULT '0',
  `investisseur` tinyint(1) DEFAULT '0',
  `prescripteur` tinyint(1) DEFAULT '0',
  `autre` tinyint(1) DEFAULT '0',
  `confrere` tinyint(1) DEFAULT NULL,
  `date_dernier_contact` datetime DEFAULT NULL,
  `fonction` varchar(40) DEFAULT NULL,
  `nom_responsable` varchar(32) DEFAULT NULL,
  `origine_contact` varchar(30) DEFAULT NULL,
  `support_publicitaire` varchar(50) DEFAULT NULL,
  `contact_origine` int(11) DEFAULT '0',
  `accord_financier_origine` varchar(50) DEFAULT NULL,
  `notaire` tinyint(1) DEFAULT NULL,
  `syndic` tinyint(1) DEFAULT NULL,
  `forme_juridique` varchar(10) DEFAULT NULL,
  `agent` varchar(5) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL,
  `RCS` varchar(50) DEFAULT NULL,
  `lieu_RCS` varchar(50) DEFAULT NULL,
  `siege` varchar(50) DEFAULT NULL,
  `id_agence` int(11) NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id_contact`, `civilite`, `nom_contact`, `prenom_contact`, `adresse`, `suite`, `cp`, `ville`, `societe`, `APE`, `pays`, `telephone`, `telephone2`, `telecopie`, `portable`, `site_web`, `email`, `origine`, `observations`, `date_creation`, `prospect`, `demandeur`, `offreur`, `investisseur`, `prescripteur`, `autre`, `confrere`, `date_dernier_contact`, `fonction`, `nom_responsable`, `origine_contact`, `support_publicitaire`, `contact_origine`, `accord_financier_origine`, `notaire`, `syndic`, `forme_juridique`, `agent`, `capital`, `RCS`, `lieu_RCS`, `siege`, `id_agence`) VALUES
(1, 'M.', 'RONFLARD', 'Andr', '45 Chemin des Petits Ruaux', '', '37390', 'SAINT ROCH', 'BIJOUTERIE RONFLARD', '', 'FRA', '02 47 42 23 33', '', '', '06 07 28 03 22', '', '', 0, 'SCI A3P', '0000-00-00 00:00:00', 0, 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 'Pr', '', 'PROSPECTION', '', 10, '100 % + rentr', 0, 0, 'SCPI', '', '', '', '', 'TOURS', 0),
(2, 'M.', 'BARTHELEMY', 'Alain', '14 quai Marmoutier', '', '37079', 'TOURS CEDEX 2', 'PHOTOCOM', '', 'FRA', '02 47 85 43 43', '', '', '06 07 04 64 60', '', 'barthelemy@photocom.fr', 0, '', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 'DIRECTION GENERALE', '', 'PROSPECTION', '', 10, '100%', 0, 0, '', '', '', '', '', 'TOURS', 0),
(3, 'M.', 'GUIMARD', 'Martin', '8 rue Denoyelle', '', '37000', 'TOURS', 'AGF ASSURFINANCE', '', 'FRA', '', '', '', '06 07 29 91 71', '', 'guimard@gff.fr', 0, '', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 'Conseiller en Gestion Patrimoniale', '', '', '', 0, '', 0, 0, '', '', '', '', '', 'TOURS', 0),
(4, 'M.', 'HERBRETEAU', 'Gabriel', '29 chemin des Mollies', 'canton de Gen', '1293', 'BELLEVUE', '', '', '', '00 41 79 234 0834', '', '00 33 247 66 3314', '', '', '', 0, 'BELLEVUE est en SUISSE', '0000-00-00 00:00:00', 0, 0, 1, 1, 0, 1, 0, '0000-00-00 00:00:00', '', '', '', '', 0, '', 0, 0, '', '', '', '', '', 'TOURS', 0),
(5, 'Mme', 'LIMOUSIN', '', '', '', '', '', 'EMERGENCE', '', '', '02 47 31 88 88', '', '', '', '', '', 0, '', '0000-00-00 00:00:00', 0, 0, 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 'Secr', '', '', '', 0, '', 0, 0, '', '', '', '', '', 'TOURS', 0),
(6, 'M.', 'BRONDOLIN', 'Carlo', '19 rue de la Monnaie', '', '37000', 'TOURS', 'LEONARD DE VINCI SARL', '553A', 'FRA', '02 47 61 07 88', '', '', '', '', '', 0, 'PROPRIETAIRE DES MURS COMMERCIAUX VIA SCI CANDOLA (1 bis rue du Petit Pr', '0000-00-00 00:00:00', 0, 0, 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 'GERANT', '', '', '', 0, '', 0, 0, '', '', '', '', '', 'TOURS', 0),
(7, 'M.', 'REBEIX', 'Philippe', '13, rue de J', '', '37000', 'TOURS', 'MANPOWER', '', 'FRA', '02 47 31 24 52', '02 47 31 24 50', '02 47 31 24 51', '06 13 53 52 70', '', 'agence.tours-les-halles@manpower.fr', 0, '', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'Responsable agence industrie', '', '', '', 0, '', 0, 0, '', '', '', '', '', 'TOURS', 0),
(8, 'M.', 'GAUTARD', 'Jean-Pierre', '113 rue des Halles', 'BP 1508', '37015', 'TOURS CEDEX 1', 'GAUTARD IMMOBILIER', '', 'FRA', '02 47 76 60 15', '02 47 76 60 00', '02 47 76 00 30', '06  80 38 25 02', '', '', 0, '', '0000-00-00 00:00:00', 0, 0, 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 'Directeur', '', '', '', 0, '', 0, 0, '', '', '', '', '', 'TOURS', 0),
(9, 'M.', 'CAMBOU', '', '', '', '', '', 'ALTIMA', '', 'FRA', '', '', '', '06 09 70 49 29', '', '', 0, '1er  CONTACT LIE A OFFRE "FAUTEUILS BERNARD" -> PARCAY MESLAY', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', '', '', '', 0, '', 0, 0, '', '', '', '', '', '', 0),
(16, 'M.', 'Hoeve', 'Minne', '', '', '37700', 'La Ville-aux-Dames', '', NULL, 'franc', '', '', '', '', '', NULL, 0, '', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, '', NULL, '', '', 0, '', 0, 0, '', NULL, '', '', '', '', 11),
(17, 'M.', 'HOEVE', 'Minne', '', '', '', '', '', NULL, 'franc', '', '', '', '', '', NULL, 0, '', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, '', NULL, '', '', 0, '', 0, 0, '', NULL, '', '', '', '', 11),
(18, 'M.', 'HOEVE', 'Minne', 'dsfsdq', 'sqdfsd', '37000', '', '', NULL, 'franc', '02148577', '', '', '', '', NULL, 0, '', NULL, 0, 0, 0, 1, 0, 0, 0, NULL, '', NULL, '', '', 0, '', 0, 0, 'sarl', NULL, '', '', '', '', 11),
(19, 'M.', 'Frot', 'Xavier', NULL, NULL, '75000', 'Paris', NULL, NULL, 'Franc', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2012-01-13 08:58:14', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11),
(20, 'M.', 'Montiel', 'Alexandre', '16 rue test', '', '37270', 'Montlouis-sur-Loire', 'Test', NULL, 'franc', '0598652385', '0689563241', '0698563256', '0298863505', 'hujsfghn@test.com', NULL, 0, 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', NULL, 0, 1, 0, 0, 0, 0, 0, NULL, 'Testeur', NULL, '', '', 0, '', 0, 0, 'eurl', NULL, '52000', '', '', 'Tours', 11),
(21, 'civilite', 'nom_contact', 'prenom_contact', 'adresse', 'suite', 'cp', 'ville', 'societe', 'APE', 'pays', 'telephone', 'telephone2', 'telecopie', 'portable', 'site_web', 'email', 0, 'observations', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'fonction', 'nom_responsable', 'origine_contact', 'support_publicitaire', 0, 'accord_financier_origine', 0, 0, 'forme_juri', 'agent', 'capital', 'RCS', 'lieu_RCS', 'siege', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
