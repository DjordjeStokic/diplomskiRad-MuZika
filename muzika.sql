-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 01:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzika`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Eggs', 2, 4, 'assets/images/artwork/clearday.jpg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello World', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg'),
(8, 'Generationwhy', 6, 11, 'assets/images/artwork/ZhuGenerationwhy.jpg'),
(9, 'The Gereg', 7, 1, 'assets/images/artwork/theHuLogo.jpg'),
(10, 'Pursuit', 8, 7, 'assets/images/artwork/GesaffelsteinPursuit.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mickey Mouse'),
(2, 'Goofy'),
(3, 'Bart Simpson'),
(4, 'Homer'),
(5, 'Bruce Lee'),
(6, 'ZHU'),
(7, 'The Hu'),
(8, 'Gesaffelstein');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'House');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'PlejlistaPrva', 'djordje1998', '2019-11-18 00:00:00'),
(3, ' Proba', 'djordje1998', '2020-12-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 31, 1, 0),
(2, 40, 1, 1),
(3, 48, 1, 2),
(4, 48, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 1, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 10),
(2, 'A new beginning', 1, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 5),
(3, 'Better Days', 1, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 12),
(4, 'Buddy', 1, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 13),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 8),
(6, 'Going Higher', 2, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 29),
(7, 'Funny Song', 2, 4, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 11),
(8, 'Funky Element', 2, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 24),
(9, 'Extreme Action', 2, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 28),
(10, 'Epic', 2, 4, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 16),
(11, 'Energy', 2, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 22),
(12, 'Dubstep', 2, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 21),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 4),
(14, 'Happy Rock', 3, 6, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 10),
(15, 'Jazzy Frenchy', 3, 6, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 8),
(16, 'Little Idea', 3, 6, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 12),
(17, 'Memories', 3, 6, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 8),
(18, 'Moose', 4, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 2),
(19, 'November', 4, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 6),
(20, 'Of Elias Dream', 4, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 3),
(21, 'Pop Dance', 4, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 10),
(22, 'Retro Soul', 4, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 10),
(23, 'Sad Day', 5, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 9),
(24, 'Sci-fi', 5, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 2),
(25, 'Slow Motion', 5, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 3),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 18),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 14),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 12),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 7),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 18),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 14),
(32, 'Destinations', 8, 10, 7, '3:36', 'assets/music/Gesaffelstein/Gesaffelstein-Destinations.mp3', 1, 5),
(33, 'Hate or Glory', 8, 10, 7, '4:48', 'assets/music/Gesaffelstein/Gesaffelstein-Hate-or-Glory.mp3', 2, 4),
(34, 'Obsession', 8, 10, 7, '4:09', 'assets/music/Gesaffelstein/Gesaffelstein-Obsession.mp3', 3, 4),
(35, 'Omega', 8, 10, 7, '5:00', 'assets/music/Gesaffelstein/Gesaffelstein-omega.mp3', 4, 2),
(36, 'OPR', 8, 10, 7, '3:59', 'assets/music/Gesaffelstein/Gesaffelstein-OPR.mp3', 5, 2),
(37, 'Pursuit', 8, 10, 7, '4:07', 'assets/music/Gesaffelstein/Gesaffelstein-Pursuit.mp3', 6, 2),
(38, 'Trans', 8, 10, 7, '4:33', 'assets/music/Gesaffelstein/Gesaffelstein-Trans.mp3', 7, 1),
(39, 'Viol', 8, 10, 7, '5:46', 'assets/music/Gesaffelstein/Gesaffelstein-Viol.mp3', 8, 2),
(40, 'Shireg Shireg', 7, 9, 1, '5:47', 'assets/music/The-HU/The-HU-Shireg-Shireg.mp3', 1, 8),
(41, 'Shoog Shoog', 7, 9, 1, '4:01', 'assets/music/The-HU/The-HU-Shoog-Shoog.mp3', 2, 6),
(42, 'The Gereg', 7, 9, 1, '4:54', 'assets/music/The-HU/The-HU-The-Gereg.mp3', 3, 5),
(43, 'The Great Chinggis Khaan', 7, 9, 1, '4:32', 'assets/music/The-HU/The-HU-The-Great-Chinggis-Khaan.mp3', 4, 3),
(44, 'The Legend of Mother Swan', 7, 9, 1, '5:25', 'assets/music/The-HU/The-HU-The-Legend-of-Mother-Swan.mp3', 5, 3),
(45, 'The Same', 7, 9, 1, '5:27', 'assets/music/The-HU/The-HU-The-Same.mp3', 6, 3),
(46, 'Wolf Totem', 7, 9, 1, '5:38', 'assets/music/The-HU/The-HU-Wolf-Totem.mp3', 7, 1),
(47, 'Yuve Yuve Yu', 7, 9, 1, '4:43', 'assets/music/The-HU/The-HU-Yuve-Yuve-Yu.mp3', 8, 1),
(48, 'Generationwhy', 6, 8, 11, '3:53', 'assets/music/ZHU/ZHU-Generationwhy.mp3', 1, 5),
(49, 'Good-Life', 6, 8, 11, '4:32', 'assets/music/ZHU/ZHU-Good-Life.mp3', 2, 2),
(50, 'ZHU-Hometown-Girl', 6, 8, 11, '4:13', 'assets/music/ZHU/ZHU-Hometown-Girl.mp3', 3, 3),
(51, 'In The Morning', 6, 8, 11, '4:09', 'assets/music/ZHU/ZHU-In-The-Morning.mp3', 4, 2),
(52, 'Money', 6, 8, 11, '5:08', 'assets/music/ZHU/ZHU-Money.mp3', 5, 3),
(53, 'Palm of My Hand', 6, 8, 11, '6:15', 'assets/music/ZHU/ZHU-Palm-of-My-Hand.mp3', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`, `role`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png', 'user'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png', 'user'),
(3, 'djordje1998', 'Djordje', 'Stokic', 'Dj100kic@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-18 00:00:00', 'assets/images/profile-pics/head_emerald.png', 'admin'),
(4, 'Teodora96', 'Teodora', 'Mijailovic', 'Teodora@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-09-18 00:00:00', 'assets/images/profile-pics/head_emerald.png', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
