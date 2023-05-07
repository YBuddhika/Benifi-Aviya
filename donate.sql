-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 11:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donate`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `orgname` varchar(100) NOT NULL,
  `orgtype` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beneficiary`
--

INSERT INTO `beneficiary` (`id`, `email`, `password`, `fullname`, `orgname`, `orgtype`, `address`, `contact`, `city`, `designation`) VALUES
(1, 'shamindiadimali@gmail.com', '$2y$10$wt5dlsTiAiobr1wz0VnGIOrTQHDKJKKDTS3fYM2m0C4ifE3E0UuZe', '', '', '', '', '', '', ''),
(2, 'nirmanidias@gmail.com', '$2y$10$eipVJTdR57X.WJ4bMDCfrOEuHpHQlofRW1cG7yiOeJgqkmhpTYGAe', '', '', '', '', '', '', ''),
(3, 'anu@gmail.com', '$2y$10$3nui2WBT56Bu/hvdapwkZ.PKEpvrtbpxUHBF.SwgCc9UZGq92I7pm', '', '', '', '', '', '', ''),
(4, 'ybuddhika8saw@gmail.com', '$2y$10$XYzh8RMEqbuISIKGd4lgF.cB89Zc0b4IZgSg2M9FnzxvJrH8kGgv6', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eventname` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `totalcost` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  `contactnumber` int(11) NOT NULL,
  `duedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventname`, `description`, `totalcost`, `budget`, `contactnumber`, `duedate`) VALUES
('sda', 'csxc', 22, 11, 213123, '2022-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `individual_beneficiary`
--

CREATE TABLE `individual_beneficiary` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organization_beneficiary`
--

CREATE TABLE `organization_beneficiary` (
  `id` int(11) NOT NULL,
  `orgname` varchar(100) NOT NULL,
  `orgtype` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(20) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quantity` int(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `duedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `categories`, `description`, `quantity`, `type`, `contact`, `city`, `duedate`) VALUES
(1, 'money', 'I donate money for elders home', 12, 'financial', '0782917132', 'Galle', '2022-11-29'),
(2, 'money', 'I love money', 2, 'financial', '0785419064', 'colombo', '0000-00-00'),
(3, 'food', 'I want to donate food for children', 23, 'non financial', '0912345678', 'Pannipitiya', '0000-00-00'),
(4, 'money', 'bnj', 7, 'fef', '0912345678', 'Galle', '2022-12-28'),
(5, 'money', 'i want to donate money', 3, 'fef', '0912345678', 'colombo', '2022-12-09'),
(6, 'money', 'bejm', 23, 'defr4', '0785419064', 'Pannipitiya', '2022-11-29'),
(7, 'money', 'bhwbmwc', 7, 'defr4', '0785419064', 'Pannipitiya', '2022-12-28'),
(8, 'food', 'hgdsk', 5, 'gg', '0912345678', 'Pannipitiya', '2022-12-29'),
(9, 'food', 'jfbehmj', 3, 'gg', '0785419064', 'Galle', '2023-01-06'),
(10, 'money', 'yu3lhul', 2, 'commerce', '0785419064', 'colombo', '2022-12-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_beneficiary`
--
ALTER TABLE `individual_beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_beneficiary`
--
ALTER TABLE `organization_beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beneficiary`
--
ALTER TABLE `beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `individual_beneficiary`
--
ALTER TABLE `individual_beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organization_beneficiary`
--
ALTER TABLE `organization_beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
