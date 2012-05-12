-- phpMyAdmin SQL Dump
-- version 3.4.10.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 12 mei 2012 om 12:14
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
-- Tabelstructuur voor tabel `arrangement_cat`
--

CREATE TABLE IF NOT EXISTS `arrangement_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(65) NOT NULL,
  `parent` int(11) NOT NULL,
  `link` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `arrangement_cat`
--

INSERT INTO `arrangement_cat` (`id`, `name`, `parent`, `link`) VALUES
(1, 'Family!', 0, 'family'),
(2, 'BBQ!', 0, 'bbq'),
(3, 'Feest!', 0, 'feest'),
(4, 'Drinks!', 0, 'drinks'),
(5, 'Meetings!', 0, 'meetings');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `arrangement_item`
--

CREATE TABLE IF NOT EXISTS `arrangement_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `price` float NOT NULL,
  `arrID` int(12) NOT NULL,
  `link` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Gegevens worden uitgevoerd voor tabel `arrangement_item`
--

INSERT INTO `arrangement_item` (`id`, `title`, `content`, `price`, `arrID`, `link`) VALUES
(1, 'Day at the Beach', 'Het arrangement bestaat uit:\r\n\r\nEasy lunch,\r\n\r\nOp het buffet staan heerlijk belegde luxe broodjes en sandwiches van wit en oerbrood. De broodjes worden rijkelijk belegd met kaas, vlees, vis en salades.\r\n\r\n\r\nBBQ Premium,\r\n\r\nTwee stokjes saté van de haas, hamburger, Spaans bbq-worstje en een stukje gemarineerde kip, aangevuld met kartoffelsalade, een frisse groene salade met o.a. rucola en een wisselende seizoenssalade, uiteraard met dagverse producten. Bijgerechten: Homemade aïoli en cocktailsaus. Kroepoek, gebakken uitjes, fruitsalade van het seizoen en ovenvers brood met kruidenboter.\r\n\r\nOnbeperkt drankjes uit ons basic dranken assortiment gedurende vier uur\r\n(koffie, thee, tapbier, huiswijn, frisdranken)', 49.5, 1, 'dayatthebeach'),
(2, 'Night at the Beach', 'Het arrangement bestaat uit:\r\n\r\nBorrel met Bites\r\n\r\nBites: Gehaktballetjes, zalmtortilla’s, quesadilla’s, kipfingers, mozzarella-tomaat spiesjes en kleine saucijzenbroodjes.\r\n\r\nBBQ Premium,        \r\n\r\nTwee stokjes saté van de haas, hamburger, Spaans bbq-worstje en een stukje gemarineerde kip, aangevuld         met kartoffelsalade, een frisse groene salade met o.a. rucola en een wisselende seizoenssalade, uiteraard met dagverse producten. Bijgerechten: Homemade aïoli en cocktailsaus. Kroepoek, gebakken uitjes, fruitsalade van het seizoen en ovenvers brood met kruidenboter.\r\n\r\nGrand Dessert\r\n\r\nOnbeperkt drankjes uit ons Basic Dranken Assortiment gedurende vier uur.\r\n(Koffie, Thee, Tapbier, Huiswijn, Frisdranken)', 49.5, 1, 'nightatthebeach'),
(3, 'Sunsea Borrel arrangement', 'Het SunSea Borrel Arrangement, 3 uur, €25,00 p.p. Vanaf 10 personen.\r\n\r\nEen compleet borrelarrangement van drie uur. Food & Drinks included. Ideaal te combineren met een activiteit van ons eventburo Summit Sports! \r\n\r\nHet arrangement bestaat uit; \r\n\r\nGedurende drie uur onbeperkt drankjes uit ons basic assortiment. Daarbij serveren wij diverse hapjes zoals bittergarnituur en onze welbekende meter eten. Deze wordt geserveerd met brood. \r\n\r\nInbegrepen:\r\n\r\n2 stuks bittergarnituur p.p\r\n1 meter per 4 pers.\r\n3 uur Drankjes uit Basic Assortiment. \r\n(Koffie, Thee, Tapbier, Huiswijn, Frisdrank) \r\n\r\nKinderen tot 10 jaar krijgen 50% reductie\r\nToeslag extra uur € 6,00\r\nToeslag exclusieve koffies zoals cappuccino’s en Latte Macchiato’s , 2e open wijn en andere bieren van de tap € 6,00\r\n\r\n', 25, 4, 'borrel'),
(4, 'Barbecue Premium', 'Barbecue Premium (5 stukjes p.p.) minimaal 10 pers, € 19,50 p.p.\r\n\r\nTwee stokjes saté van de haas, hamburger, Spaans bbq-worstje en een stukje gemarineerde kip, aangevuld met kartoffelsalade, een frisse groene salade met o.a. rucola en een wisselende seizoenssalade, uiteraard met dagverse producten. Bijgerechten: Homemade aïoli en cocktailsaus. Kroepoek, gebakken uitjes, fruitsalade van het seizoen en ovenvers brood met kruidenboter.', 19.5, 2, 'bbqpremium'),
(5, 'Barbecue de Luxe', 'Barbecue de Luxe (6 stukjes p.p.) minimaal 10 pers, € 25,00 p.p. \r\n\r\nSaté van de haas, pepersteak, Chili worstje, hamburger en een selectie van vissoorten. Aangevuld met kartoffelsalade, zomersalade op basis van appel, augurk en komkommer, luxe fruitsalade, frisse groene salade met o.a. rucola en een wisselende seizoen salade allen met dagverse producten. Bijgerechten: Homemade aïoli en cocktailsaus, kroepoek, gebakken uitjes, ovenvers brood met kruidenboter en frites met mayonaise.', 25, 2, 'bbqdeluxe'),
(6, 'Barbecue Superior', 'Barbecue Superior (6 stukjes p.p.) minimaal 10 pers, € 28,00 p.p.\r\n\r\nPepersteak,  lamsrack en saté van de haas, visje van de afslag, en gamba’s. Aangevuld met kartoffelsalade, zomersalade op basis van appel, augurk en komkommer, luxe fruitsalade, frisse groene salade met o.a. rucola, Griekse salade en een wisselende seizoen salade, allen met dagverse producten. Bijgerechten: Homemade aïoli en cocktailsaus, kroepoek, gebakken uitjes, ovenvers brood met kruidenboter en roseval aardappels uit de oven met rozemarijn en knoflook. ', 28, 2, 'bbqsuperior'),
(7, 'Satebuffet', 'Satébuffet, (2 stukjes p.p.) minimaal 10 pers, € 14,00 p.p.\r\n\r\nTwee stokjes varkenshaassaté met pindasaus, brood, aïoli, atjar tjampoer, kroepoek, gebakken uitjes, kartoffelsalade, en een frisse groene salade. \r\n\r\nSupplement: friet met mayonaise € 1,50 /  verse fruitsalade € 2,00', 14, 2, 'satebuffet'),
(8, 'Party!', 'Party!, 4-uurs arrangement, € 25,00 p.p. (vanaf 40 personen)\r\n\r\nOns instap model, echter wel een compleet arrangement. Het arrangement bestaat uit:\r\n\r\nOnbeperkt drankjes, uit ons basic assortiment. (koffie, thee, tapbier, huiswijn en frisdranken) Tweemaal een rondgang met bittergarnituur (Bitterballen, kaastengels, groenteloempia’s en mini-frikadellen) Ter afsluiting een puntzakje friet.\r\n\r\n(Uitbreiding van dit arrangement met DJ, € 34,00 p.p., vanaf 80 personen)', 25, 3, 'party'),
(9, 'Let''s really Party!', 'Let’s Really Party!, 4-uurs arrangement, € 27,50 p.p. (vanaf 40 personen)\r\n\r\nEen vervolg op ons eerste arrangement, alleen uitgebreider. Het arrangement bestaat uit:\r\n\r\nOnbeperkt drankjes uit ons basic assortiment. (koffie, thee, tapbier, huiswijn en frisdranken) Tweemaal een rondgang met bittergarnituur. (Bitterballen, kaastengels, groenteloempia’s en mini-frikadellen) Afgewisseld met tweemaal een rondgang met bites. (gehaktballetjes, zalmtortilla’s, quesadilla’s, kipfingers, mozzarella-tomaat spiesjes en kleine saucijzenbroodjes.)\r\n\r\nTer afsluiting een puntzakje friet. (Uitbreiding van dit arrangement met DJ, € 36,50 p.p., vanaf 80 personen)', 27.5, 3, 'reallyparty'),
(10, 'Let''s Truly Party!', 'Let’s Truly Party!, 4-uurs arrangement, € 32,50 p.p. (vanaf 40 personen)\r\n\r\nHet meest complete arrangement vol met bubbels, drankjes en lekkernijen. Het arrangement bestaat uit:\r\n\r\nOntvangst met Prosecco. Onbeperkt drankjes uit ons basic assortiment. (koffie, thee, tapbier, huiswijn en frisdranken) Tweemaal rondgang bittergarnituur. (Bitterballen, kaastengels, groenteloempia’s en mini- frikadellen)\r\n', 32.5, 3, 'trulyparty'),
(11, 'Pakket basic', 'Drank schenken wij op basis van nacalculatie (ieder geschonken drankje wordt digitaal bijgehouden) of de drankjes worden geschonken op basis van afkoop (een van tevoren vastgesteld bedrag per persoon per uur). Naast de wijze van calculeren vragen wij u ook  een keuze te maken welk drankenpakket er mag worden geschonken.\r\n\r\nPakket Basic: Onbeperkt koffie, thee, frisdrank, tapbier en huiswijn € 6,00 p.p.p.u.\r\n\r\nWilt u graag buitenlands gedistilleerd serveren aan uw gasten dan adviseren wij alleen voor deze drankjes te kiezen voor nacalculatie, van een Bacardi-cola wordt dan alleen de Bacardi op nacalculatie gefactureerd. In de meeste gevallen zal dit leiden tot een kleine nacalculatie. Uiteraard kunnen wij ook een afkoopbedrag bepalen, wij informeren u graag. \r\n\r\nAfkooparrangementen gelden voor groepen vanaf 20 personen voor minimaal 4 uur.\r\n\r\n(uitzonderingen worden per evenement bekeken).\r\n\r\nLosse consumptiebonnen (Basic pakket),  € 2,40 p. stuk\r\n\r\n\r\nBubbels\r\n\r\nEen gelegenheid vraagt veelal om een feestelijk drankje. Het meest populaire drankje is  een glas Prosecco. De prijs die wij hiervoor hanteren is € 3,80 per glas. Naast Prosecco kunnen wij ook mooie champagnes of diverse cocktails schenken.\r\n', 6, 4, 'pakketbasic'),
(12, 'Pakket luxe', 'Drank schenken wij op basis van nacalculatie (ieder geschonken drankje wordt digitaal bijgehouden) of de drankjes worden geschonken op basis van afkoop (een van tevoren vastgesteld bedrag per persoon per uur). Naast de wijze van calculeren vragen wij u ook  een keuze te maken welk drankenpakket er mag worden geschonken.\r\n\r\nPakket luxe: Onbeperkt pakket Basic plus binnenlands gedistilleerd, cappuccino, espresso en verse jus d Orange € 6,50 p.p.p.u.\r\n\r\nWilt u graag buitenlands gedistilleerd serveren aan uw gasten dan adviseren wij alleen voor deze drankjes te kiezen voor nacalculatie, van een Bacardi-cola wordt dan alleen de Bacardi op nacalculatie gefactureerd. In de meeste gevallen zal dit leiden tot een kleine nacalculatie. Uiteraard kunnen wij ook een afkoopbedrag bepalen, wij informeren u graag. \r\n\r\nAfkooparrangementen gelden voor groepen vanaf 20 personen voor minimaal 4 uur.\r\n\r\n(uitzonderingen worden per evenement bekeken).\r\n\r\nLosse consumptiebonnen (Basic pakket),  € 2,40 p. stuk\r\n\r\n\r\nBubbels\r\n\r\nEen gelegenheid vraagt veelal om een feestelijk drankje. Het meest populaire drankje is  een glas Prosecco. De prijs die wij hiervoor hanteren is € 3,80 per glas. Naast Prosecco kunnen wij ook mooie champagnes of diverse cocktails schenken.', 6.5, 4, 'pakketluxe'),
(13, 'Pakket superior', 'Drank schenken wij op basis van nacalculatie (ieder geschonken drankje wordt digitaal bijgehouden) of de drankjes worden geschonken op basis van afkoop (een van tevoren vastgesteld bedrag per persoon per uur). Naast de wijze van calculeren vragen wij u ook  een keuze te maken welk drankenpakket er mag worden geschonken.\r\n\r\nPakket Superior: Onbeperkt pakket de luxe plus latte Macchiato, speciaalbieren van de tap, en onze tweede open wijn € 7,00 p.p.p.u.\r\n\r\nWilt u graag buitenlands gedistilleerd serveren aan uw gasten dan adviseren wij alleen voor deze drankjes te kiezen voor nacalculatie, van een Bacardi-cola wordt dan alleen de Bacardi op nacalculatie gefactureerd. In de meeste gevallen zal dit leiden tot een kleine nacalculatie. Uiteraard kunnen wij ook een afkoopbedrag bepalen, wij informeren u graag. \r\n\r\nAfkooparrangementen gelden voor groepen vanaf 20 personen voor minimaal 4 uur.\r\n\r\n(uitzonderingen worden per evenement bekeken).\r\n\r\nLosse consumptiebonnen (Basic pakket),  € 2,40 p. stuk\r\n\r\n\r\nBubbels\r\n\r\nEen gelegenheid vraagt veelal om een feestelijk drankje. Het meest populaire drankje is  een glas Prosecco. De prijs die wij hiervoor hanteren is € 3,80 per glas. Naast Prosecco kunnen wij ook mooie champagnes of diverse cocktails schenken.', 7, 4, 'pakketsuperior'),
(14, 'Basic Meeting', '4 uur vergaderen aan zee, inclusief lunch.\r\n\r\nHet arrangement bestaat uit:\r\n\r\nOntvangst met koffie en thee\r\nGedurende de vergadering verse koffie of thee geserveerd op het vergaderbuffet en ververst op uw verzoek\r\nSourcy pure (plat & sprankelend)\r\nBlocnote, pennen en pepermunt – geserveerd op de vergadertafel(s)\r\nGratis gebruik van ons ‘wifi access point’\r\nFlip-over en stiften\r\nScherm en beamer\r\nEasy Lunch\r\nWij serveren heerlijk belegde luxe broodjes en sandwiches wit en oerbrood rijkelijk belegd met kaas, vlees, vis en salades. Bij de lunch serveren wij een drankje naar keuze (geen alcohol) en een stukje fruit.\r\n\r\nBasic Meeting Arrangement, € 34,50 p.p. (minimaal 10 personen)', 34.5, 5, 'basicmeeting'),
(15, 'Comfort Meeting', '6 uur vergaderen aan zee, inclusief Lunch.\r\n\r\nHet arrangement bestaat uit:\r\n\r\nOntvangst met koffie en thee\r\nGedurende de vergadering verse koffie of thee geserveerd op het vergaderbuffet en ververst op uw verzoek\r\nSourcy pure (plat & sprankelend)\r\nBlocnote, pennen en pepermunt – geserveerd op de vergadertafel(s)\r\nGratis gebruik van ons ‘wifi access point’\r\nFlip-over en stiften\r\nScherm en beamer\r\nEasy Lunch\r\nWij serveren heerlijk belegde luxe broodjes en sandwiches wit en oerbrood rijkelijk belegd met kaas, vlees, vis en salades. Bij de lunch serveren wij een drankje naar keuze (geen alcohol)en een stukje fruit\r\n\r\nFrisdranken ronde met chocola of een waterijsje. \r\nComfort Meeting-, € 42,50 p.p.', 42.5, 5, 'comfortmeeting'),
(16, 'Luxe Meeting', '8 uur vergaderen aan zee, inclusief  lunch en een 3 gangen Diner\r\n\r\nHet arrangement bestaat uit:\r\n\r\nOntvangst met koffie en thee\r\nGedurende de vergadering verse koffie of thee geserveerd op het vergaderbuffet en ververst op uw verzoek\r\nSourcy pure (plat & sprankelend)\r\nBlocnote, pennen en pepermunt – geserveerd op de vergadertafel(s)\r\nGratis gebruik van ons ‘wifi access point’\r\nFlip-over en stiften\r\nScherm en beamer\r\nEasy Lunch\r\nWij serveren heerlijk belegde luxe broodjes en sandwiches wit en oerbrood rijkelijk belegd met kaas, vlees, vis en salades. Bij de lunch serveren wij een drankje naar keuze (geen alcohol)en een stukje fruit\r\n\r\nFrisdranken ronde met chocola of een waterijsje\r\nTer afsluiting serveren wij een 3-gangen Diner inclusief 2 drankjes.\r\nVoorgerecht:\r\n\r\nStapelaartje, een combinatie van pluksla, gerookte zalm en gebakken gamba’s, licht aangemaakt met cocktailsaus of rundercarpaccio met een truffelmayonaise parmezaanschotsen en rucola.\r\n\r\nHoofdgerecht:\r\n\r\nHollandse biefstuk met bospaddenstoelensaus of een visje van de afslag geserveerd op een bedje van knapperige groenten, daarnaast serveren wij friet en salade\r\n\r\nDessert:\r\n\r\nEton Mess, een klassiek engels dessert bestaande uit een mengsel van aardbeiden, stukjes merinque en creme Anglasie\r\n\r\nof de welbekende Dame Blanche al la SunSea, vanilleijs met chocoladesaus en slagroom. \r\n\r\nDame blanche a la SunSea, Vanille-ijs met chocoladesaus en slagroom of Eton Mess, een\r\n\r\nklassiek Engels dessert bestaande uit een mengsel van aardbeien, stukjes meringue en crème Anglaise\r\n\r\nLuxe meeting Arrangement, € 79,50 p.p.', 79.5, 5, 'luxemeeting'),
(17, 'Basisfaciliteiten vergaderen', 'Verse koffie of thee geserveerd op het vergaderbuffet en ververst op uw verzoek\r\nSourcy pure (plat & sprankelend)\r\nBlocnote, pennen en pepermunt – geserveerd op de vergadertafel(s)\r\nGratis gebruik van ons ‘wifi access point’\r\nFlip-over\r\nKosten:\r\n\r\nTot 2 uur: € 19,00 p.p.\r\n\r\nTot 4 uur: € 24,00 p.p.\r\n\r\nTot 6 uur: € 29,00 p.p.\r\n\r\nTot 8 uur: € 33,00 p.p.\r\n\r\nHuren beamer: € 89,00 per dag\r\n\r\nGenoemde prijzen zijn inclusief BTW', 19, 5, 'basisfaciliteiten'),
(18, 'Presentaties', 'Voor groepen vanaf 35 personen hebben wij een speciaal presentatie arrangement samengesteld.\r\n\r\nHierbij worden alle overbodige faciliteiten weggelaten waardoor de prijs per persoon gunstiger wordt.\r\n\r\nHet arrangement bestaat uit:\r\n\r\nGedurende drie uur exclusieve ruimte met stoelen in theateropstelling.\r\nGratis gebruik van ons ‘wifi access point’\r\nFlip-over en stiften\r\nScherm, beamer en geluid\r\nFlesje Sourcy onder iedere stoel\r\n Presentatie arrangement, € 15,00 p.p. \r\n', 15, 5, 'presentaties');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(150) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `default_homepage_image` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `images`
--

INSERT INTO `images` (`id`, `image_path`, `menu_item_id`, `default_homepage_image`) VALUES
(2, 'client/uploads/2.jpg', 0, 0),
(3, 'client/uploads/1.jpg', 0, 0),
(4, 'client/uploads/bla3.jpg', 0, 1);

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
(193685833994350592, 'Onze nieuwe zomerkaart is klaar. Volop genieten van good old oldies en heerlijke nieuwe gerechten... kijk op http://t.co/ObCVpJes'),
(196880199969808384, 'Enjoy this beautiful queensday......'),
(200284441887776768, 'Aanstaande zondag 13 mei, een heerlijke verwendag onze moeders.'),
(199869907100377088, 'Footvolley Tornooi 2012, zaterdag 14 juli, Wijk aan Zee. Meer info volgt!!'),
(199867597800484864, 'Aanstaande zondag 12 mei, een heerlijke verwendag onze moeders. http://t.co/UKPEC7Kd'),
(199867587771904001, 'Aanstaande zondag 12 mei, een heerlijke verwendag onze moeders. http://t.co/yH8vyG2I'),
(199867555144413186, 'Aanstaande zondag 12 mei, een heerlijke verwendag onze moeders. http://t.co/H9IGjCls'),
(199863036918513667, 'http://t.co/k5cnytQ9'),
(198797934446387201, 'http://t.co/AXV6pzTJ'),
(197956338305863680, 'http://t.co/WIXkc6Ef'),
(197956143027453953, 'http://t.co/04Hn58RY');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
