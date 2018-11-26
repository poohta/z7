-- phpMyAdmin SQL Dump
-- version home.pl
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 27 Lis 2018, 00:21
-- Wersja serwera: 5.7.21-20-log
-- Wersja PHP: 5.6.34

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `28891702_lab7`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idu` int(11) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `datagodzina` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idu` (`idu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2 AUTO_INCREMENT=38 ;

--
-- Zrzut danych tabeli `logs`
--

INSERT INTO `logs` (`id`, `idu`, `ip`, `datagodzina`) VALUES
(20, 8, '89.64.20.64', '2018-11-26 22:33:27'),
(22, 9, '89.64.20.64', '2018-11-26 22:34:46'),
(23, 8, '89.64.20.64', '2018-11-26 22:45:03'),
(24, 8, '89.64.20.64', '2018-11-26 22:48:15'),
(25, 8, '89.64.20.64', '2018-11-26 22:48:44'),
(26, 8, '89.64.20.64', '2018-11-26 22:52:28'),
(37, 9, '89.64.20.64', '2018-11-27 00:10:46');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logserror`
--

CREATE TABLE IF NOT EXISTS `logserror` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idu` int(11) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `datagodzina` varchar(25) DEFAULT NULL,
  `proba` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idu` (`idu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `logserror`
--

INSERT INTO `logserror` (`id`, `idu`, `ip`, `datagodzina`, `proba`) VALUES
(2, 10, '89.64.20.64', '', '0'),
(3, 11, '89.64.20.64', '', '0'),
(4, 8, '89.64.20.64', '', '0'),
(5, 12, '89.64.20.64', '', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `haslo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin2 AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `haslo`) VALUES
(3, 'memek', 'TwojStary'),
(4, 'adr', 'adr'),
(5, 'dan', 'dan'),
(6, 'starywstal', 'ulany'),
(7, 'grad', 'grad'),
(8, 'Bob', 'bob'),
(9, 'Steve', 'steve'),
(10, 'John', 'john'),
(11, 'Tommy', 'tommy'),
(12, 'Jack', 'jack');

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`idu`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `logserror`
--
ALTER TABLE `logserror`
  ADD CONSTRAINT `logserror_ibfk_1` FOREIGN KEY (`idu`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
