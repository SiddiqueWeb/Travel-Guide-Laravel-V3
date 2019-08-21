-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 12:56 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_guide`
--

-- --------------------------------------------------------

--
-- Table structure for table `postdata`
--

CREATE TABLE `postdata` (
  `PlaceName` varchar(50) COLLATE utf8_bin NOT NULL,
  `PlaceAddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `TravelCost` varchar(10) COLLATE utf8_bin NOT NULL,
  `Status` varchar(15) COLLATE utf8_bin NOT NULL,
  `Discription` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `postdata`
--

INSERT INTO `postdata` (`PlaceName`, `PlaceAddress`, `TravelCost`, `Status`, `Discription`) VALUES
('Gazipur Resort', 'Mawna , sreepur', '1500', 'Active', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(20) COLLATE utf8_bin NOT NULL,
  `Email` varchar(30) COLLATE utf8_bin NOT NULL,
  `Gender` varchar(10) COLLATE utf8_bin NOT NULL,
  `Password` varchar(15) COLLATE utf8_bin NOT NULL,
  `Type` varchar(10) COLLATE utf8_bin NOT NULL,
  `Status` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Email`, `Gender`, `Password`, `Type`, `Status`) VALUES
('Abu Bakar Siddique', 'aiubsiddique@gmail.com', 'Male', 'siddique', 'Admin', 'Active'),
('Md Alamin', 'alamin@gmail.com', 'male', 'alamin', 'GUser', 'Active'),
('Bodrul islam', 'bodrul@gmail.com', 'male', 'bodrul', 'Scout', 'Active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
