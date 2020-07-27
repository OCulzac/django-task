-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 27, 2020 at 09:05 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b2broker`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget_b2bwallet`
--

DROP TABLE IF EXISTS `budget_b2bwallet`;
CREATE TABLE IF NOT EXISTS `budget_b2bwallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(15) NOT NULL,
  `balance` decimal(36,18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget_b2bwallet`
--

INSERT INTO `budget_b2bwallet` (`id`, `label`, `balance`) VALUES
(1, 'BTC', '2430.000000000000000000'),
(2, 'ETH', '105.730000000000000000'),
(3, 'BAT', '3020.350000055400000000'),
(4, 'XRP', '55.980000000000000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
