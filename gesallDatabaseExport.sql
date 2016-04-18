-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 19 jan 2016 kl 17:14
-- Serverversion: 5.6.17
-- PHP-version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `gesall`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eventName` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `eventDate` date NOT NULL,
  `eventTime` time NOT NULL,
  `eventPlace` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `eventDesc` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=22 ;

--
-- Dumpning av Data i tabell `event`
--

INSERT INTO `event` (`id`, `timeStamp`, `eventName`, `eventDate`, `eventTime`, `eventPlace`, `eventDesc`) VALUES
(1, '2015-12-14 10:48:05', 'about blank på Strand', '2016-02-10', '19:00:00', 'Debaser Strand', 'about bland kommer spela sin nya ep som släpps senare i februari kom och drick en öl och tjyvlyssna på det här råkoola bandet.'),
(2, '2015-12-14 10:45:22', 'about blank Spelning', '2016-01-08', '20:00:00', 'Debaser Medis', 'Jag och mitt band, about blank, har våran första spelning i januari, kom gärna och kolla, det är gratis inträde och kmr bli awesome!'),
(3, '2015-12-21 19:52:14', 'coding night', '2015-12-21', '21:00:00', 'hemma', 'hohoho cooding'),
(4, '2015-12-14 10:39:30', 'Föreläsning 2 PROG3', '2015-12-16', '13:00:00', 'Aula NOD', 'Fortsättning standardbiblioteket sdt.'),
(5, '2015-12-14 10:41:41', 'Föreläsning 3 PROG3', '2015-12-18', '13:00:00', 'Aula NOD', 'Fortsättning standardbiblioteket sdt.'),
(6, '2015-12-14 10:38:23', 'Föreläsning PROG3', '2015-12-15', '13:00:00', 'Aula NOD', 'Fortsättning standardbiblioteket sdt.'),
(7, '2015-12-21 21:49:24', 'Julafton', '2015-12-24', '08:00:00', 'Pärorna', 'mat och gott!'),
(8, '2015-12-22 12:14:54', 'Juldagen', '2015-12-25', '08:00:00', 'Juls Peers', 'mat'),
(9, '2015-12-21 21:38:48', 'Late Night', '2015-12-21', '23:00:00', 'hemma', 'lalal'),
(10, '2015-12-14 10:31:31', 'Mini Julafton med vänner!', '2015-12-22', '18:00:00', 'Hökarängen', 'Kom och fira jul med dina vänner, julmat och julklappslekar osv. '),
(11, '2015-12-14 10:26:44', 'My b-day prrrrty!', '2016-11-19', '18:00:00', 'Uddvägen 12, 131 55 Nacka', 'Kom och festaloss med mig på min 25e födelsedag. Det är ett tag kvar men jag börjar peppa nu! Mer info kmr.'),
(12, '2015-12-14 10:36:32', 'Nyårs feeeezzt', '2015-12-31', '21:00:00', 'Secret Location', 'Den fetaste nyårsfesten du kan tänka dig kommer att äga rum detta är, den hemliga lokalen kmr blow your mind! SES DÄR PRRTY PPL!'),
(13, '2016-01-10 20:47:12', 'release party Ö-A', '2016-01-20', '19:00:00', 'Götgatan', 'Kom på relase party för blablas nya kollektion. Det finns tilltugg och drinx.  '),
(14, '2016-01-10 20:57:00', 'wow prrty', '2016-01-18', '20:00:00', 'Secret Location', 'fetaste festen i år!\r\nPlats kommer vid ett senare tillfälle för de som är reggade.\r\nhttp://www.festen.se '),
(15, '2016-01-13 21:28:04', 'event1', '2016-01-14', '13:00:00', 'exempel', 'exempel event ett!'),
(16, '2016-01-13 21:28:38', 'event0', '2016-01-13', '22:00:00', 'gl', 'hf'),
(17, '2016-01-13 21:29:27', 'evvent', '2016-01-13', '23:00:00', 'ndj', 'fjdjf'),
(18, '2016-01-13 21:47:10', 'evet2', '2016-01-15', '20:00:00', 'här', 'fezt'),
(19, '2016-01-13 21:48:34', 'Filmkväll', '2016-01-16', '18:00:00', 'Hos mig', 'Lite käk och film!'),
(20, '2016-01-13 21:49:55', 'Star Wars-maraton', '2016-01-17', '10:00:00', 'Vägvägen 6, 102 13 Stockholm', 'Alla Star Wars filmerna på en gång, massa popcorn och skoj!'),
(21, '2016-01-13 21:51:21', 'Dans-fest', '2016-01-19', '18:00:00', 'Diskogatan 12', 'Kan du dansa i flera timmar i sträck? Välkommen till detta partaj, inga sittplatser finns.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
