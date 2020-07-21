-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 07:54 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_senefoot`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `idCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) NOT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `nom`) VALUES
(1, 'Senior'),
(2, 'Cadet');

-- --------------------------------------------------------

--
-- Table structure for table `equipe`
--

CREATE TABLE IF NOT EXISTS `equipe` (
  `idEquipe` int(11) NOT NULL AUTO_INCREMENT,
  `nomEquipe` varchar(250) NOT NULL,
  `imageEquipe` varchar(250) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  PRIMARY KEY (`idEquipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `equipe`
--

INSERT INTO `equipe` (`idEquipe`, `nomEquipe`, `imageEquipe`, `idCategorie`) VALUES
(3, 'Casa', 'images/logo_casa.png', 1),
(4, 'Diambars', 'images/logo_diambar.png', 1),
(5, 'Stade de Mbour', 'images/logo_stade_mbour.jpg', 2),
(6, 'Ndiambour', 'images/logo_ndiambour.png', 1),
(7, 'DSC', 'images/logo_dsc.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rencontre`
--

CREATE TABLE IF NOT EXISTS `rencontre` (
  `idRencontre` int(11) NOT NULL AUTO_INCREMENT,
  `lieu` varchar(200) NOT NULL,
  `prixTicket` varchar(200) NOT NULL,
  `nomEquipeDomicile` varchar(200) NOT NULL,
  `nomEquipeExterieur` varchar(200) NOT NULL,
  `scoreEquipeDomicile` varchar(11) NOT NULL,
  `scoreEquipeExterieur` varchar(11) NOT NULL,
  `statut` varchar(200) NOT NULL,
  PRIMARY KEY (`idRencontre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rencontre`
--

INSERT INTO `rencontre` (`idRencontre`, `lieu`, `prixTicket`, `nomEquipeDomicile`, `nomEquipeExterieur`, `scoreEquipeDomicile`, `scoreEquipeExterieur`, `statut`) VALUES
(1, 'Stade Alboury ', '1500', 'Ndiambour', 'Casa', '0', '0', 'Direct'),
(2, 'Stade Leopold Sedar Senghor', '2000', 'DSC', 'Diambars', '1', '2', 'Direct'),
(3, 'Mbour', '500', 'Stade de Mbour', 'DSC', '', '', 'Programme'),
(4, 'Stade Amitie', '1000', 'Casa ', 'Diambars', '', '', 'Programme'),
(5, 'Stade Alboury', '1200', 'Niambour', 'DSC', '', '', 'Programme');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
