-- phpMyAdmin SQL Dump
-- version 3.4.10.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 04 apr 2012 om 19:19
-- Serverversie: 5.5.22
-- PHP-Versie: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Sunseabar`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CMS`
--

CREATE TABLE IF NOT EXISTS `CMS` (
  `ID` int(11) NOT NULL,
  `PaginaTitel` varchar(120) NOT NULL,
  `Parent-pagina` varchar(120) NOT NULL,
  `Pagina-inhoud` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Fotos`
--

CREATE TABLE IF NOT EXISTS `Fotos` (
  `FotoID` int(11) NOT NULL,
  `InHomePageSlider` tinyint(1) NOT NULL,
  `FilePath` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ProductCategorien`
--

CREATE TABLE IF NOT EXISTS `ProductCategorien` (
  `CatID` int(11) NOT NULL,
  `CatNaam` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Producten`
--

CREATE TABLE IF NOT EXISTS `Producten` (
  `ProductID` int(11) NOT NULL,
  `ProductNaam` varchar(120) NOT NULL,
  `ProductOmschrijving` varchar(120) NOT NULL,
  `CatID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ProductFotos`
--

CREATE TABLE IF NOT EXISTS `ProductFotos` (
  `ProductID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
