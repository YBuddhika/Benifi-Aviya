-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 10:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donateus`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Money'),
(2, 'Food'),
(8, 'Medicine'),
(17, 'Stationary Items');

-- --------------------------------------------------------

--
-- Table structure for table `corp_don`
--

CREATE TABLE `corp_don` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `district` int(11) NOT NULL,
  `acc_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `corp_don`
--

INSERT INTO `corp_don` (`id`, `comp_name`, `emp_name`, `emp_id`, `designation`, `zipcode`, `district`, `acc_status`, `user_id`) VALUES
(9, 'ABC.co', 'K.A.N.Weerasinghe1', '20021128', 'Manager', 'Alawwa1', 9, 1, 27),
(10, 'ADE.co', 'S.M.Y.D.Samarakoon', '20021128', 'Manager', 'Alawwa', 19, 1, 29),
(11, 'KS Pvt Ltd', 'KS', 'E001', 'President', 'Colombo', 6, 1, 49);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `dist_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `dist_name`) VALUES
(1, '- SELECT -   '),
(2, 'Ampara\r\n'),
(3, 'Anuradhapura  '),
(4, 'Badulla'),
(5, 'Batticaloa'),
(6, 'Colombo'),
(7, 'Galle'),
(8, 'Gampaha'),
(9, 'Hambantota'),
(10, 'Jaffna'),
(11, 'Kalutara'),
(12, 'Kandy'),
(13, 'Kegalle'),
(14, 'Kilinochchi'),
(15, 'Kurunegala'),
(16, 'Mannar'),
(17, 'Matale'),
(18, 'Matara'),
(19, 'Monaragala'),
(20, 'Mulativu'),
(21, 'Nuwara Eliya'),
(22, 'Polonnaruwa'),
(23, 'Puttalam '),
(24, 'Ratnapura'),
(25, 'Tricomalee'),
(26, 'Vavuniya');

-- --------------------------------------------------------

--
-- Table structure for table `donation_history`
--

CREATE TABLE `donation_history` (
  `id` int(11) NOT NULL,
  `time_stamp` date NOT NULL DEFAULT current_timestamp(),
  `date_of_completion` date NOT NULL,
  `status` int(1) NOT NULL,
  `category` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `don_id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_history`
--

INSERT INTO `donation_history` (`id`, `time_stamp`, `date_of_completion`, `status`, `category`, `quantity`, `amount`, `type`, `don_id`, `req_id`) VALUES
(1, '2023-02-20', '2023-02-22', 0, 2, 5, 0, 1, 41, 2),
(2, '2023-02-23', '2023-02-24', 1, 1, 0, 2500, 0, 26, 2),
(3, '2023-02-25', '2023-02-25', 1, 1, 0, 2500, 0, 26, 6),
(4, '2023-02-25', '2023-02-26', 1, 2, 5, 0, 1, 41, 2),
(5, '2023-02-25', '2023-02-27', 0, 2, 5, 0, 1, 41, 2),
(6, '2023-02-25', '2023-02-28', 1, 1, 0, 2500, 0, 26, 6);

-- --------------------------------------------------------

--
-- Table structure for table `donation_req`
--

CREATE TABLE `donation_req` (
  `id` int(11) NOT NULL,
  `request_title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `NIC` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `published_date` date NOT NULL,
  `due_date` date NOT NULL,
  `req_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `proof_document` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `rejection_note` varchar(255) NOT NULL,
  `rejected_date` date NOT NULL,
  `completed_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_req`
--

INSERT INTO `donation_req` (`id`, `request_title`, `name`, `NIC`, `description`, `contact`, `zipcode`, `cat_id`, `status`, `published_date`, `due_date`, `req_type`, `user_id`, `proof_document`, `thumbnail`, `rejection_note`, `rejected_date`, `completed_date`) VALUES
(1, 'I need books for the new school term 2023', 'nnnnn', '993303666V', 'I\'m writing to you to ask you to support me by giving me some writing books for my new school term in 2023. I\'m in grade 5. Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 1, 0, '2022-11-01', '2022-11-07', 1, 42, 'don_cat3.png', '', '', '0000-00-00', '0000-00-00'),
(2, 'I need books for the new school term 2023', '', '', 'I\'m writing to you to ask you to support me by giving me some writing books for my new school term in 2023. I\'m in grade 5. Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 1, 3, '2023-01-09', '2023-01-18', 1, 55, 'don_cat3.png', '', '', '0000-00-00', '2023-05-01'),
(3, 'I need food for my family', '', '', 'I need food for my family. We hardly get a full meal and now my kids are sick without having a proper diet. Please give me if you have any extra food(dry ingredients). Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 1, 2, '2023-02-08', '2023-02-16', 1, 55, 'don_cat2.png', '', 'Proof document is not valid', '2023-02-09', '0000-00-00'),
(4, 'I need books for the new school term 2023', '', '', 'I\'m writing to you to ask you to support me by giving me some writing books for my new school term in 2023. I\'m in grade 5. Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 1, 3, '2023-02-11', '2023-02-20', 1, 42, 'don_cat3.png', '', '', '0000-00-00', '2023-02-19'),
(5, 'I need Rs. 1000/= to buy new books for the new school term 2023', '', '', 'I\'m writing to you to ask you to support me by giving me some money to buy writing books for my new school term in 2023. I\'m in grade 5. Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 2, 0, '2023-02-13', '2023-02-15', 0, 42, 'don_cat3.png', '', '', '0000-00-00', '0000-00-00'),
(6, 'I need Rs. 1000/= to buy new books for the new school term 2023', '', '', 'I\'m writing to you to ask you to support me by giving me some money to buy writing books for my new school term in 2023. I\'m in grade 5. Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 2, 3, '2023-02-13', '2023-02-15', 0, 42, 'don_cat3.png', '', '', '0000-00-00', '2023-05-01'),
(7, 'I need Rs. 1000/= to buy new books for the new school term 2023', '', '', 'I\'m writing to you to ask you to support me by giving me some money to buy writing books for my new school term in 2023. I\'m in grade 5. Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 2, 2, '2023-02-13', '2023-02-15', 0, 42, 'don_cat3.png', '', 'Proof document is not valid', '2023-02-13', '0000-00-00'),
(8, 'I need Rs. 1000/= to buy new books for the new school term 2023', '', '', 'I\'m writing to you to ask you to support me by giving me some money to buy writing books for my new school term in 2023. I\'m in grade 5. Just a small donation of you can help me a lot. Please help me if you can. Thank you.', 0, '', 2, 3, '2023-02-13', '2023-02-15', 0, 42, 'don_cat3.png', '', '', '0000-00-00', '2023-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `published_date` date NOT NULL DEFAULT current_timestamp(),
  `due_date` date NOT NULL,
  `completed_date` date NOT NULL,
  `rejected_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `budget` int(11) NOT NULL,
  `received` int(11) NOT NULL,
  `proof_letter` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `bank_pass_book` varchar(255) NOT NULL,
  `bank_acc_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `event_org_id` int(11) NOT NULL,
  `rejection_note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_title`, `description`, `location`, `published_date`, `due_date`, `completed_date`, `rejected_date`, `status`, `budget`, `received`, `proof_letter`, `thumbnail`, `bank_pass_book`, `bank_acc_number`, `bank_name`, `event_org_id`, `rejection_note`) VALUES
(1, 'Suwa Mithuru', 'Hehe', 'Colombo', '2023-02-10', '2023-02-28', '0000-00-00', '0000-00-00', 0, 10000, 0, '', '', '', '', '', 33, ''),
(2, 'Hitha Mithuro', 'Hehe', 'Colombo', '2023-02-10', '2023-02-28', '2023-05-01', '0000-00-00', 3, 10000, 2000, '', '', '', '', '', 45, ''),
(3, 'Suwa Mithuru', 'Hehe', 'Colombo', '2023-02-10', '2023-02-28', '0000-00-00', '2023-02-11', 2, 10000, 0, '', '', '', '', '', 45, 'Details are not valid'),
(4, 'Suwa Mithuru', 'Hehe', 'Colombo', '2023-02-10', '2023-02-28', '2023-02-27', '0000-00-00', 3, 10000, 9000, '', '', '', '', '', 45, ''),
(5, 'Hitha Mithurooooooo', 'Hehe hehe', 'Colombo', '2023-05-01', '2023-05-17', '0000-00-00', '0000-00-00', 1, 8000, 2000, '', '', '', '', '', 45, '');

-- --------------------------------------------------------

--
-- Table structure for table `event_donation_history`
--

CREATE TABLE `event_donation_history` (
  `id` int(11) NOT NULL,
  `date_of_completion` date NOT NULL,
  `amount` int(11) NOT NULL,
  `don_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_donation_history`
--

INSERT INTO `event_donation_history` (`id`, `date_of_completion`, `amount`, `don_id`, `event_id`) VALUES
(1, '2023-05-01', 2000, 26, 5),
(2, '2023-05-02', 1000, 27, 5),
(3, '2023-05-03', 1000, 49, 5),
(4, '2023-05-03', 2000, 28, 5);

-- --------------------------------------------------------

--
-- Table structure for table `event_org`
--

CREATE TABLE `event_org` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `NIC` varchar(255) NOT NULL,
  `community_name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `district` int(11) NOT NULL,
  `acc_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `proof_document` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_org`
--

INSERT INTO `event_org` (`id`, `full_name`, `NIC`, `community_name`, `designation`, `zipcode`, `district`, `acc_status`, `user_id`, `proof_document`) VALUES
(2, 'pulara nipuni', '987112362V', 'ACM SC of UCSC', 'treasurer', 'Matara', 18, 1, 33, ''),
(3, 'Weerasinghe K.A.N.P.', '987112365V', 'ACM SC of UCSC', 'VC', 'Colombo', 6, 1, 34, ''),
(4, 'KS', '983303666V', 'IEEE', 'President', 'Colombo', 6, 1, 45, ''),
(5, 'vhvh', '983308666V', 'IEEE', 'Design', 'Colombo', 6, 1, 46, ''),
(6, 'KS', '993303001V', 'IEEE', 'President', 'Colombo', 6, 1, 56, '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` date NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `donation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `description`, `timestamp`, `email`, `name`, `donation_id`) VALUES
(5, 'good', '0000-00-00', '', '', 0),
(6, 'fgbgsg', '0000-00-00', '', '', 0),
(7, 'hbh', '2023-03-05', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `financial_req`
--

CREATE TABLE `financial_req` (
  `id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `received_amount` int(11) NOT NULL,
  `bank_pass_book` varchar(255) NOT NULL,
  `bank_acc_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `financial_req`
--

INSERT INTO `financial_req` (`id`, `req_id`, `total_amount`, `received_amount`, `bank_pass_book`, `bank_acc_number`, `bank_name`) VALUES
(1, 5, 1000, 0, '', '', ''),
(2, 6, 1000, 200, '', '', ''),
(3, 7, 1000, 0, '', '', ''),
(4, 8, 1000, 800, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ind_ben`
--

CREATE TABLE `ind_ben` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `NIC` varchar(255) NOT NULL,
  `address_proof` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `district` int(11) NOT NULL,
  `acc_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `identity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ind_ben`
--

INSERT INTO `ind_ben` (`id`, `f_name`, `l_name`, `NIC`, `address_proof`, `address`, `zipcode`, `district`, `acc_status`, `user_id`, `identity`) VALUES
(1, 'K', 'S', '993303666V', '', '', 'Colombo', 1, 1, 42, ''),
(2, 'KL', 'LK', '993303665V', 'image 1.png', '', 'Colombo', 6, 1, 50, 'image 1.png');

-- --------------------------------------------------------

--
-- Table structure for table `ind_don`
--

CREATE TABLE `ind_don` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `NIC` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `district` int(11) NOT NULL,
  `acc_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ind_don`
--

INSERT INTO `ind_don` (`id`, `f_name`, `l_name`, `NIC`, `zipcode`, `district`, `acc_status`, `user_id`) VALUES
(12, 'nipuni123', 'pulara', '987112360V', 'Giriulla', 2, 1, 26),
(13, 'lara', 'wee', '987112361V', 'Alawwa', 16, 1, 28),
(14, 'KL', 'S', '993303666V', 'Colombo', 3, 1, 41),
(15, 'nhfjf', 'gngnn', '973303666V', 'Colombo', 3, 1, 47),
(16, 'K', 'S', '993303002V', 'Colombo', 6, 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `nfinancial_req`
--

CREATE TABLE `nfinancial_req` (
  `id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `received_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nfinancial_req`
--

INSERT INTO `nfinancial_req` (`id`, `req_id`, `item`, `quantity`, `received_quantity`) VALUES
(1, 2, '', 15, 10),
(2, 3, '', 5, 0),
(5, 1, '', 10, 0),
(6, 4, '', 10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `org_ben`
--

CREATE TABLE `org_ben` (
  `id` int(11) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_type` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `address_proof` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `district` int(11) NOT NULL,
  `acc_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `identity` varchar(255) NOT NULL,
  `first_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `org_ben`
--

INSERT INTO `org_ben` (`id`, `org_name`, `org_type`, `emp_name`, `emp_id`, `designation`, `address_proof`, `address`, `zipcode`, `district`, `acc_status`, `user_id`, `identity`, `first_login`) VALUES
(1, 'K Pvt Ltd', 0, 'K', 'E001', 'President', '', 'Untitled design (3).png', 'Colombo', 6, 1, 55, 'Untitled design (3).png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_user`
--

CREATE TABLE `reg_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `prof_img` varchar(255) NOT NULL,
  `tp_number` varchar(10) NOT NULL,
  `otp_code` int(11) NOT NULL,
  `otp_verify` int(11) NOT NULL,
  `verification_status` int(11) NOT NULL,
  `rejection_note` varchar(255) NOT NULL,
  `password_reset_hash` varchar(255) NOT NULL,
  `password_reset_expiry` int(11) NOT NULL,
  `backup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_user`
--

INSERT INTO `reg_user` (`id`, `email`, `password`, `user_type`, `prof_img`, `tp_number`, `otp_code`, `otp_verify`, `verification_status`, `rejection_note`, `password_reset_hash`, `password_reset_expiry`, `backup`) VALUES
(26, 'weerasinipuni614@gmail.com', '$2y$10$Yz7GplBm27zPQZqRdP76Oe6oUZABOejfAB1E.N2Zfy.0HITL0aV3G', 2, 'img_profile.png', '0788236049', 0, 1, 0, '', '', 2147483647, ''),
(27, 'yashodha.dhanushka@gmail.com', '$2y$10$KdTjtHgiT1tjhiixEjiw9OoxrOGXmqsrHm6.YgE.tBc6XlVWOd1Lu', 3, 'img_profile.png', '0789426156', 0, 1, 0, '', '', 2147483647, ''),
(28, 'sahashra.wicramasingha7@gmail.com', '$2y$10$QJTr0wjMpH/jOGSOpDksHOZG6ClUaH7gSJh95Zb7X1O3GHmO1PAgC', 2, 'img_profile.png', '0788236048', 0, 1, 1, '', '', 2147483647, ''),
(29, 'kushantha020@gmail.com', '$2y$10$zEF1JoZxZvDa8K.mdCb4GuzrLVhfbuIGXU.Op7zq4ERfSigY865uW', 3, 'img_profile.png', '0781234567', 0, 1, 1, '', '', 2147483647, ''),
(33, '1234@gmail.com', '$2y$10$WRZEAS72h91C3Zp/oaxlne1vkZo/K4XpXX58srEWLQ2KwVyeyGxlW', 6, 'img_profile1.jpeg', '0788236046', 0, 1, 1, '', '', 2147483647, ''),
(34, '4567@gmail.com', '$2y$10$J5.kSu.t44W3gUAVDN83WeQAFJo8VhB3ytyylBRSx9Oj8GIEbT4Jy', 6, 'img_profile1.jpeg', '0712415789', 0, 1, 1, '', '', 2147483647, ''),
(40, 'kushantha018@gmail.com', '$2y$10$EZIZAXaeRbmp2gf0asQ2L.6Qj2HzB38vhpbygwWcpqJJNKCkmlbam', 1, '', '0711234567', 0, 1, 1, '', '', 0, ''),
(41, 'kushantha14@gmail.com', '$2y$10$q9/JRZ0nVn9MGQYNlHkVpeRbHS.tOnCL3xt8Z4aMP8O1XefNQV0US', 2, 'img_profile.png', '0767128051', 0, 1, 1, '', '', 2147483647, ''),
(42, 'kushantha021@gmail.com', '$2y$10$m8iVqUQnMf1x2v0JbwkVwebYA1TvJTZEoV0zpx.ww1RKQ4R0EiSoi', 4, 'img_profile', '0767128050', 0, 1, 1, '', '', 2147483647, ''),
(43, 'kushantha18@gmail.com', '$2y$10$Qw3VzrhHmNUycO8W4NZNmOZldZnckNUBztHOLaQ30RgVMAAFoJCHm', 5, 'img_profile', '0782917132', 0, 1, 0, '', '', 2147483647, ''),
(44, 'kushantha8@gmail.com', '$2y$10$GrN/x2lRDPizrDKs8Ee9ZOvG8dUCeF7qN3GTsX/9kzL4rAwsuogfq', 5, 'img_profile', '0782917137', 0, 1, 0, '', '', 2147483647, ''),
(45, 'kushantha58@gmail.com', '$2y$10$DRe2FTwwtk748T1LTpwgnOOpcna7lTtck0h.VGMplvjzhGxsymaSS', 6, 'img_profile1.jpeg', '1234567890', 0, 1, 1, '', '', 2147483647, ''),
(46, 'kushantha08@gmail.com', '$2y$10$egJ2P7oLrAGJZ2f1PfiFzOaE7SOVINbAK1MbiOXoFg286sM4FNEVa', 6, 'img_profile1.jpeg', '011111111', 0, 1, 1, '', '', 2147483647, ''),
(47, 'kushantha0018@gmail.com', '$2y$10$Be/u0nJtLiQmyMioAhitcuMTNurm3uJyFhCOFrBnxWycuzBDIQAfC', 2, 'img_profile.png', '0767128052', 0, 1, 1, '', '', 2147483647, ''),
(48, 'kushantha2@gmail.com', '$2y$10$hRhwxFVvQqSC836QeYNTP.KeiSdXVx/CjMZpS0i.MsAXVEFaZRqny', 2, 'img_profile.png', '0767128053', 0, 1, 0, '', '', 2147483647, ''),
(49, 'kushantha3@gmail.com', '$2y$10$XZXJF4pdNoMudrg4DmXZP.wIsUvF4.ptATwKLAJOFo4.R.DBHjLfm', 3, 'img_profile.png', '0782917139', 0, 1, 1, '', '', 2147483647, ''),
(50, 'kushantha4@gmail.com', '$2y$10$xkI.kkI2qolnhLnZqg7njOaQddTWo/UFXcWh4du0hYiUuDaCBK1Vu', 4, 'img_profile.png', '0773124567', 0, 1, 0, '', '', 2147483647, ''),
(55, 'kushantha6@gmail.com', '$2y$10$wfo9X5v8G.jWhCqztJLs5uLBjbB80HsJP46DjNxZfRTLZ9gf/28a6', 5, 'img_profile.png', '0712345678', 0, 1, 1, '', '', 2147483647, ''),
(56, 'kushantha7@gmail.com', '$2y$10$BVoZBAcl.d3Jcb08OKH6Qee.s3Be7gM6pUXoY2010vVy.Wl8QEKsu', 6, 'img_profile1.jpeg', '1234567899', 0, 1, 0, '', '', 2147483647, '');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `meal` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `time_stamp` date NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `don_id` int(11) NOT NULL,
  `ben_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `date`, `month`, `year`, `meal`, `amount`, `time_stamp`, `status`, `don_id`, `ben_id`) VALUES
(16, '0000-00-00', 2, 2023, 1, 12, '2023-03-19', 1, 26, 44),
(17, '0000-00-00', 2, 2023, 2, 16, '2023-03-19', 2, 26, 44),
(18, '0000-00-00', 2, 2023, 3, 2, '2023-03-19', 1, 26, 44),
(19, '0000-00-00', 4, 2024, 3, 12, '2023-03-19', 4, 26, 44),
(20, '0000-00-00', 0, 2024, 1, 11, '2023-03-19', 3, 26, 44),
(21, '0000-00-00', 2, 2023, 1, 25, '2023-03-19', 1, 26, 44),
(22, '0000-00-00', 3, 2023, 1, 100, '2023-04-07', 2, 26, 44),
(23, '0000-00-00', 3, 2023, 3, 1000, '2023-04-07', 0, 26, 43);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corp_don`
--
ALTER TABLE `corp_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_history`
--
ALTER TABLE `donation_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `don_id` (`don_id`),
  ADD KEY `req_id` (`req_id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `donation_req`
--
ALTER TABLE `donation_req`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_org_id` (`event_org_id`);

--
-- Indexes for table `event_donation_history`
--
ALTER TABLE `event_donation_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `don_id` (`don_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `event_org`
--
ALTER TABLE `event_org`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_req`
--
ALTER TABLE `financial_req`
  ADD PRIMARY KEY (`id`),
  ADD KEY `req_id` (`req_id`);

--
-- Indexes for table `ind_ben`
--
ALTER TABLE `ind_ben`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nic` (`NIC`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ind_don`
--
ALTER TABLE `ind_don`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nic` (`NIC`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nfinancial_req`
--
ALTER TABLE `nfinancial_req`
  ADD PRIMARY KEY (`id`),
  ADD KEY `req_id` (`req_id`);

--
-- Indexes for table `org_ben`
--
ALTER TABLE `org_ben`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reg_user`
--
ALTER TABLE `reg_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `tp` (`tp_number`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ben_id` (`ben_id`),
  ADD KEY `don_id` (`don_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `corp_don`
--
ALTER TABLE `corp_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `donation_history`
--
ALTER TABLE `donation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donation_req`
--
ALTER TABLE `donation_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_donation_history`
--
ALTER TABLE `event_donation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_org`
--
ALTER TABLE `event_org`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `financial_req`
--
ALTER TABLE `financial_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ind_ben`
--
ALTER TABLE `ind_ben`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ind_don`
--
ALTER TABLE `ind_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nfinancial_req`
--
ALTER TABLE `nfinancial_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `org_ben`
--
ALTER TABLE `org_ben`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reg_user`
--
ALTER TABLE `reg_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donation_history`
--
ALTER TABLE `donation_history`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);

--
-- Constraints for table `event_donation_history`
--
ALTER TABLE `event_donation_history`
  ADD CONSTRAINT `event_donation_history_ibfk_1` FOREIGN KEY (`don_id`) REFERENCES `reg_user` (`id`),
  ADD CONSTRAINT `event_donation_history_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `update_request_status` ON SCHEDULE EVERY 1 MINUTE STARTS '2023-05-06 13:37:16' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
  UPDATE donation_req
  SET status = 3, completed_date = CURDATE() 
  WHERE due_date <= NOW() AND status = 1;
END$$

CREATE DEFINER=`root`@`localhost` EVENT `update_event_status` ON SCHEDULE EVERY 1 MINUTE STARTS '2023-05-06 13:38:12' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
  UPDATE events
  SET status = 3, completed_date = CURDATE() 
  WHERE due_date <= NOW() AND status = 1;
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
