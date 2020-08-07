-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Aug 2020 um 17:57
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr13_maxstrauss_bigevents`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200805094927', '2020-08-07 10:53:05', 974);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phonenumber`, `address`, `url`, `type`) VALUES
(1, 'Wiener Symphoniker', '2020-08-24 19:45:00', 'It is the most productive orchestra in the world and a specialist in Brahms, Bruckner, Mahler and Richard Strauss – with performances in the Musikverein, Konzerthaus and Theater an der Wien.', 'https://www.wien.info/media/images/50757-wiener-konzerthaus-musik-symphoniker-konzertsaal-klassik-3to2.jpeg/image_teaser', 500, 'symphoniker@test.at', 2147483647, 'Musikvereinsplatz 1, 1010 Wien', 'www.wienersymphoniker.at', 'Music'),
(4, 'Winnetou und der Ölprinz', '2020-09-15 13:35:00', 'Die Abenteuer von Winnetou begeisterten Generationen und haben bis heute nichts an ihrer Faszination verloren. Mit den Karl May Festspielen Winzendorf in Niederösterreich wird der Wilde Westen wieder zum Leben erweckt.', 'https://www.viennaticketoffice.com/multimedia/images/big/3/8/6/7/8/386781i2.jpg', 220, 'test@test.at', 123456789, 'Steinbruch 1 2722 Winzendorf', 'http://www.festspiele-winzendorf.at/', 'Theatre'),
(6, 'Theater im Park am Belvedere', '2020-09-19 17:00:00', 'Freilichtbühne im zwei Hektar großen Privatgarten der Fürstlich Schwarzenberg’schen Familienstiftung.', 'https://events.wien.info/media/full/fb-cover2-mit-button.jpg', 100, 'info@events.wien.at', 123456789, 'Prinz-Eugen-Straße/Ecke Plößlgasse 1030 Wien', 'https://events.wien.info/en/129l/theater-im-park-am-belvedere/', 'Music'),
(8, 'Sommerkino Wien: Belvedere 21 - Visions of Reality', '2020-09-19 20:00:00', 'Heuer findet das beliebte Sommerkino erstmals im Skulpturengarten des Belvedere 21 statt und zeigt visionäre Werke.', 'https://image.film.at/images/cfs_landscape_616w_347h/4507277/belvedere21-sommerkino.jpg', 120, 'test@test.at', 123456789, 'Arsenalstraße 1, 1030 Wien', 'https://www.film.at/news/sommerkino-wien-belvedere-21-visions-of-reality/400965014', 'Movie'),
(10, 'Mord im Orientexpress', '2020-08-15 19:30:00', 'Eine gemütliche Fahrt im berühmten Orientexpress sollte es für Hercule Poirot werden, doch schon kurz nach der Abfahrt bleibt der Zug in der verschneiten Landschaft stecken. Die Anspannung steigt, als sich die weiße Winteridylle jäh blutrot färbt: Einer d', 'https://www.josefstadt.org/fileadmin/_processed_/e/3/csm_07_Mord_im_Orientexpress_bc34317d30.jpg', 600, 'test@test.at', 663443224, 'Rotenturmstraße 20, 1010 Wien', 'https://www.josefstadt.org/programm/stuecke/stueck/mord-im-orientexpress.html', 'Theatre'),
(11, 'Vienna Philharmonic', '2020-09-23 17:30:00', 'It is one of the best orchestras in the world; many think it is the best: the Vienna Philharmonic. It acts as ambassador of Viennese music around the globe - at concerts in Vienna, on tours and through broadcasts such as the New Year\'s Concert and the Sum', 'https://www.opera-online.com/media/images/picture/article/0000/0087/183/xl_try_0027_1.jpg?1391417409', 1500, 'info@opera-online.com', 15058190, 'Musikvereinsplatz 1, 1010 Wien', 'www.wiener-philharmoniker.at', 'Music'),
(12, 'Apollo', '2020-08-10 19:00:00', 'Apollo is the home of blockbusters, and is also one of the few places in the cinema where you can catch films in 3D. They occasionally show the films in their original version (most of the time with subtitles) so this is a good option if you’re looking to', 'https://www.viennawurstelstand.com/wp-content/uploads/2017/11/viennawurstelstand_apollo.png', 2, 'apollo@cineplexx.at', 2147483647, 'Gumpendorfer Straße 63, 1060 Vienna', 'www.cineplexx.at', 'Movie');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
