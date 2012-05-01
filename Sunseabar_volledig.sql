-- phpMyAdmin SQL Dump
-- version 3.4.10.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 01 mei 2012 om 16:33
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
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` int(11) NOT NULL,
  `image_path` varchar(150) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `default_homepage_image` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `images`
--

INSERT INTO `images` (`id`, `description`, `image_path`, `menu_item_id`, `default_homepage_image`) VALUES
(2, 0, 'client/uploads/2.jpg', 0, 0),
(3, 0, 'client/uploads/1.jpg', 0, 0),
(4, 0, 'client/uploads/bla3.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_cat`
--

CREATE TABLE IF NOT EXISTS `menu_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(65) NOT NULL,
  `parent` int(11) NOT NULL,
  `link` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `menu_cat`
--

INSERT INTO `menu_cat` (`id`, `name`, `parent`, `link`) VALUES
(1, 'Voorgerechten', 0, 'voorgerechten'),
(2, 'Hoofdgerechten', 0, 'hoofdgerechten'),
(3, 'Nagerechten', 0, 'nagerechten');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_item`
--

CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `price` float NOT NULL,
  `catID` int(12) NOT NULL,
  `link` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Gegevens worden uitgevoerd voor tabel `menu_item`
--

INSERT INTO `menu_item` (`id`, `title`, `content`, `price`, `catID`, `link`) VALUES
(1, 'Een meter lekker eten', 'Laat je verrassen, een verzameling van hapjes en lekkernijen, geserveerd met oer & oosters brood.', 26, 1, 'metereten'),
(2, 'Carpaccio', 'Rundercarpaccio met Parmezaanse kaas, rucola en een truffelmayonaise', 10.8, 1, 'carpaccio'),
(3, 'Scampi''s "Pil Pil"', 'Gebakken in de olijfolie, knoflook en Chili pepper, geserveerd met brood om te dopen', 11.5, 1, 'scampi'),
(4, 'Salade gerookte zalm ', 'Frisse salade met gerookte zalm, kappertjes, rode ui, tomaat en een dressing van mosterd & dille geserveerd met brood', 9.8, 1, 'zalmsalade'),
(5, 'Salade warme geit', 'Een mooi warm geitenkaasje op oerbrood, met honing, appel, sla, geroosterde paprika, pittenmix en een balsamico dressing', 9.8, 1, 'warmegeit'),
(6, 'Caesar salad', 'Romeinse sla aangemaakt met een dressing van Parmezaanse kaas, malse kipfilet, bacon, croutons, rode ui, paprika en komkommer, geserveerd met brood', 9.8, 1, 'caesarsalad'),
(7, 'Spicy tuna salad', 'Diverse soorten sla met een pittige tonijnsalade, kappertjes, augurk, rode ui, paprika en komkommer geserveerd met brood', 9.8, 1, 'tunasalad'),
(8, 'Pommodorisoep', 'Verse pommodoriesoup met een toefje creme fraiche', 4.5, 1, 'pommodorisoep'),
(9, 'Parijse uiensoep', 'Goed gevulde uiensoep van rode ui, gegratineerd met kaas', 5, 1, 'uiensoep'),
(10, 'Catch of the day', 'Steeds weer een andere vangst, de prijs is vast, tenzij anders staat vermeld op onze krijtborden', 18.5, 2, 'catchoftheday'),
(11, 'MacSunSea plate', 'Een sesambol met een heerlijke huisgemaakte burger, bedekt met een plakje Cheddar kaas, sla, tomaat, augurk, uienringen en onze befaamde hamburgersaus', 13.5, 2, 'macsunsea'),
(12, 'Sate', 'Varkenshaassate zoals ie hoort met atjar, kroepoek en satesaus', 16.5, 2, 'sate'),
(13, 'Chicken oriental', 'Malse reepjes gekruide kipfilet en sla in een ambachtelijk pitabroodje, geserveerd met aioli', 14, 2, 'chickenoriental'),
(14, 'Ribeye', 'Malse runderribeye vers van het mes, geserveerd met kruidenboter. Voor de echte vleesliefhebber!', 22.5, 2, 'ribeye'),
(15, 'Tournedos', 'Heerlijke malse tournedos van ossenhaas met een romige pepersaus', 25.5, 2, 'tournedos'),
(16, 'Zalm', 'Verse zalmfilet met mosterdsaus op een bedje van kruiden papperdelle en gewokte spinazie', 18.5, 2, 'zalm'),
(17, 'Shrimp', 'Gewokte shrimp met noodles, knapperige wokgroenten, cashewnoten en een teriyaki saus', 16.5, 2, 'shrimp'),
(18, 'Pasta pesto', 'Papperdelle met verse knapperige groente, geschaafde Parmezaan, rucola en een huisgemaakte pestosaus', 14.5, 2, 'pastapesto'),
(19, 'Appeltaart', 'Verse appeltaart met vanille-ijs en slagroom', 3.5, 3, 'appeltaart'),
(20, 'Gezond', 'Biologische yoghurt met cruesli, honing en vers fruit', 5, 3, 'gezond'),
(21, 'Dame blanche a la SunSea', 'Vanille-ijs met chocoladesaus en slagroom', 6, 3, 'dameblanche'),
(22, 'Eton Mess', 'Een klassiek Engels dessert bestaande uit een mengsel van aardbeien, stukjes van meringue en creme anglaise', 6.5, 3, 'etonmess'),
(23, 'Stracciatella cadeautje', 'Een gebakje van krokante bladerdeeg, gevuld met pure chocolademousse en vanillebavaroise, chocoladeschotsen en cacao, voor de echte zoetekauw', 7.5, 3, 'stracciatella');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
  `content` int(11) NOT NULL,
  `in_menu` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `link` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `twittercache`
--

CREATE TABLE IF NOT EXISTS `twittercache` (
  `id` bigint(30) NOT NULL,
  `text` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `twittercache`
--

INSERT INTO `twittercache` (`id`, `text`) VALUES
(194048334137262081, 'Onze nieuwe zomerkaart is klaar. Volop genieten van good old oldies en heerlijke nieuwe gerechten... kijk op http://ow.ly/akF7U'),
(192605181643468800, '13 mei Moederdag... Verwen moeders (en jezelf) http://fb.me/vnILTpvw'),
(193685833994350592, 'Onze nieuwe zomerkaart is klaar. Volop genieten van good old oldies en heerlijke nieuwe gerechten... kijk op http://t.co/ObCVpJes');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
