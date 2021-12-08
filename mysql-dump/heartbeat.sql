-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 07:43 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heartbeat`
--

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `guid` char(36) NOT NULL,
  `description` varchar(255) NOT NULL,
  `max_timeout` int(11) NOT NULL DEFAULT 60,
  `last_seen` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `alert_sent_mail` tinyint(4) NOT NULL DEFAULT 0,
  `alert_sent_discord` tinyint(4) NOT NULL DEFAULT 0,
  `enabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`guid`, `description`, `max_timeout`, `last_seen`, `type`, `alert_sent_mail`, `alert_sent_discord`, `enabled`) VALUES
('ede88b30-1ba0-431a-9775-acfdf2ac0f57', 'client-1', 15, NULL, NULL, 0, 0, 1),
('2d15c391-6646-44f3-8ed7-604ab60cddb5', 'client-2', 60, NULL, NULL, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`guid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
