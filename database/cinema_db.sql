-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2020 at 08:46 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+02:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingTable`
--

CREATE TABLE IF NOT EXISTS `bookingTable` (
  `bookingID` int(11) NOT NULL,
  `movieName` varchar(100) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingTable`
--

INSERT INTO `bookingTable` (`bookingID`, `movieName`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`) VALUES
(19, 'Bad Boys For Life', 'main-hall', '3d', '13-3', '15-00', 'Bardh', 'Korca', '38345873399'),
(22, 'Jumanji', 'vip-hall', 'imax', '13-3', '18-00', 'Lirigzona', 'Rexha', '38349256256');



--
-- Table structure for table `feedbackTable`
--

CREATE TABLE IF NOT EXISTS `feedbackTable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackTable`
--

INSERT INTO `feedbackTable` (`msgID`, `senderfName`, `senderlName`, `sendereMail`, `senderfeedback`) VALUES
(1, 'Nderim', 'Murati', 'nderim@mail.com', 'Tungjatjeta'),
(2, 'Besar', 'Tasholli', 'besartasholli@gmail.com', 'Pershendetje');
(3, 'Qendrim', 'Rexhepi', 'qendrim@gmail.com', 'Pershendetje'),

-- --------------------------------------------------------

--
-- Table structure for table `movieTable`
--

CREATE TABLE IF NOT EXISTS `movieTable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieTable`
--

INSERT INTO `movieTable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`) VALUES
(1, 'img/movie1-poster-badboysforlife.jpg', 'Bad Boys For Life 2', ' Action, Adventure ', 220, '2020-02-10', 'Will Smith', 'Martin Lawrence'),
(2, 'img/movie2-poster-007.jpg', 'No Time To Die - 007  ', 'Action', 110, '2020-02-18', 'Daniel Craig'),
(3, 'img/movie3-poster-jumanji.jpg', 'JUMANJI 2 ', 'Comedy, Action, Adventure', 110, '2020-01-29', 'Dwayne John, Jack Black', 'Kevin Hart, Karen Gillan'),
(4, 'img/movie4-poster-extraction.jpg', 'EXTRACTION ', 'Action', 105, '2020-04-24', ' Chris Hemsworth', 'Russo Brothers, Joe Russo, Sam Hargrave'),
(5, 'img/movie5-poster-venom.jpg', 'Venom', 'Fantasy,Action', 132, '2018-10-05', 'Tom Hardy', 'Michelle Williams, Woody Harrelson, Jenny Slate'),
(6, 'img/movie6-poster-endgame.jpg', 'AVANGERS Endgame', 'Fantasy, Action, Thriller', 107, '2020-01-04', 'Robert Downey Jr.', 'Scarlett Johansson, Chris Hemsworth, Chris Evans, Mark Ruffalo ');
(7, 'img/movie7-poster-capone.jpg', 'AL CAPONE  ', 'Action', 110, '2020-03-18', 'Tom Hardy'),
(8, 'img/movie8-poster-madmaxfuryroad.jpg', 'MAD MAX FURY ROAD  ', 'Action, Fantasy', 110, '2015-04-12', 'Tom Hardy'),
(9, 'img/movie9-poster-johnwick3.jpg', 'John Wick 3  ', 'Action', 110, '2019-10-27', 'Keanu Reeves'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingTable`
--

ALTER TABLE `bookingTable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `bookingID_2` (`bookingID`),
  ADD KEY `bookingID_3` (`bookingID`),
  ADD KEY `bookingID_4` (`bookingID`);

--
-- Indexes for table `feedbackTable`
--
ALTER TABLE `feedbackTable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `movieTable`
--
ALTER TABLE `movieTable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingTable`
--
ALTER TABLE `bookingTable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `feedbackTable`
--
ALTER TABLE `feedbackTable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `movieTable`
--
ALTER TABLE `movieTable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

