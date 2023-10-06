-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 12:54 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpdesk_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `hd_departments`
--

CREATE TABLE `hd_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hd_departments`
--

INSERT INTO `hd_departments` (`id`, `name`, `status`) VALUES
(8, 'Human Capital & Asset Admin', 1),
(9, 'Finance', 1),
(10, 'Assessment', 1),
(11, 'Documentation', 1),
(12, 'Management', 1),
(13, 'Transport', 1),
(14, 'Customer Service, Operation and Forwarding', 1),
(15, 'Bole Lemi Industry Park', 1),
(16, 'Cargo', 1),
(17, 'Garage', 1),
(18, 'Hawassa', 1),
(19, 'Dire Dawa', 1),
(20, 'Kality', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hd_tickets`
--

CREATE TABLE `hd_tickets` (
  `id` int(11) NOT NULL,
  `uniqid` varchar(20) NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `init_msg` text NOT NULL,
  `department` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `last_reply` int(11) NOT NULL,
  `user_read` int(11) NOT NULL,
  `admin_read` int(11) NOT NULL,
  `resolved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hd_tickets`
--

INSERT INTO `hd_tickets` (`id`, `uniqid`, `user`, `title`, `init_msg`, `department`, `date`, `last_reply`, `user_read`, `admin_read`, `resolved`) VALUES
(7, '63510763efe3e', 1, 'Wechat Desktop Application Failure', 'Fikadu Finance', 8, '1666254691', 1, 0, 1, 1),
(8, '635108e35260d', 5, 'HARD DISK DRIVE STORAGE LOW', 'HARD DISK DRIVE STORAGE LOW', 11, '1666255075', 5, 0, 0, 1),
(9, '63510a8f5861a', 5, 'Office Activation', 'Asrar Arega', 8, '1666255503', 5, 0, 1, 1),
(10, '635111dd2f36c', 5, 'Printer Print Quality is Low', 'Printer Print Quality is Low', 11, '1666257373', 5, 0, 0, 1),
(11, '6351520cc0143', 5, 'OS CURRUPT', 'OS CURRUPT', 8, '1666273804', 5, 0, 1, 1),
(12, '6352712ac0cae', 5, 'OS CURRUPT - 2 Desktops', 'OS CURRUPT - 2 Desktops', 17, '1666347306', 5, 0, 1, 1),
(13, '63527238262d7', 5, 'WIFI STRENGTH ISSUE', 'WIFI STRENGTH ISSUE', 17, '1666347576', 5, 0, 0, 1),
(14, '635a4ff0eb08f', 5, 'OS OUTDATED', 'SEMERE', 13, '1666863088', 5, 0, 1, 1),
(15, '635a5057d8ccf', 5, 'OS OUTDATED', 'YONI - FORWARDING', 14, '1666863191', 5, 0, 1, 1),
(16, '6360b6e97f4dc', 5, 'WINDOWS / OFFICE ACTIVATION - EDOSA', 'WINDOWS / OFFICE ACTIVATION', 8, '1667282665', 5, 0, 1, 1),
(17, '6360b7070c2ea', 5, 'OS PERFORMANCE SLOW - MULATU.M', 'OS PERFORMANCE SLOW', 8, '1667282695', 5, 0, 1, 1),
(18, '6360bef9802cb', 5, 'Pave system email report is not working - BEREKET', 'Pave system email report is not working - BEREKET', 14, '1667284729', 5, 0, 0, 1),
(19, '6360bf12db8d5', 5, 'Pave system email report is not working - MULATU.M', 'Pave system email report is not working - MULATU.M', 14, '1667284754', 5, 0, 0, 1),
(20, '6363b299e107b', 5, 'INTERNET CONNECTION DOWN', 'INTERNET CONNECTION DOWN', 14, '1667478169', 5, 0, 0, 1),
(21, '6363b2a3ca207', 5, 'INTERNET CONNECTION DOWN', 'INTERNET CONNECTION DOWN', 9, '1667478179', 5, 0, 0, 1),
(22, '6363b2bfef3c7', 5, 'SOFTWARE INSTALLATION', 'SOFTWARE INSTALLATION', 13, '1667478207', 5, 0, 0, 1),
(23, '6363d01ee5320', 5, 'NO DISPLAY', 'NO DISPLAY', 17, '1667485726', 5, 0, 0, 1),
(24, '6368c5d6dccc7', 5, 'OS OUTDATED, SYTEM PERFORMANCE ISSUE', 'OS OUTDATED, SYTEM PERFORMANCE ISSUE', 14, '1667810774', 5, 0, 0, 1),
(25, '6368c60443c85', 5, 'OS CORRUPT', 'OS CORRUPT', 11, '1667810820', 5, 0, 1, 1),
(26, '6368d570579ee', 5, 'OFFICE ACTIVATION', 'OFFICE ACTIVATION', 8, '1667814768', 5, 0, 0, 1),
(27, '636a58dfccf71', 5, 'SYTEM PERFORMANCE ISSUE', 'SYTEM PERFORMANCE ISSUE', 14, '1667913951', 5, 0, 0, 1),
(28, '636a58feba467', 5, 'OS OUTDATED', 'OS OUTDATED', 13, '1667913982', 5, 0, 0, 1),
(29, '636a592ccebc1', 5, 'PRINTER DRIVER', 'PRINTER DRIVER', 13, '1667914028', 5, 0, 1, 1),
(30, '636a596b185c1', 5, 'INTERNET OUTAGE', 'INTERNET OUTAGE', 14, '1667914091', 5, 0, 0, 1),
(31, '636a598427f9a', 5, 'INTERNET OUTAGE', 'INTERNET OUTAGE', 9, '1667914116', 5, 0, 0, 1),
(32, '636a59d934776', 5, 'SOFTWARE INSTALLATION', 'SOFTWARE INSTALLATION', 14, '1667914201', 5, 0, 0, 1),
(33, '636a6279c90bb', 5, 'PC SETUP', 'PC SETUP', 13, '1667916409', 5, 0, 1, 1),
(34, '636b9a1316a8e', 5, 'OS UPDATE', 'OS UPDATE', 8, '1667996179', 5, 0, 0, 1),
(35, '636b9a2b68cbe', 5, 'OFFICE ACTIVATION', 'OFFICE ACTIVATION', 8, '1667996203', 5, 0, 0, 1),
(36, '636b9a555b1b0', 5, 'OFFICE CRASH', 'OFFICE CRASH', 8, '1667996245', 5, 0, 0, 1),
(37, '6386f838ed0c1', 5, 'LCD BACKLIGHT', 'LCD BACKLIGHT', 10, '1669789752', 5, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hd_ticket_replies`
--

CREATE TABLE `hd_ticket_replies` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `ticket_id` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hd_users`
--

CREATE TABLE `hd_users` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(250) NOT NULL,
  `user_type` enum('admin','user') NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hd_users`
--

INSERT INTO `hd_users` (`id`, `email`, `password`, `create_date`, `name`, `user_type`, `status`) VALUES
(2, 'tesfayenuhamin@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-10-25 23:24:46', 'Nuhamin Tesfaye', 'admin', 1),
(5, 'binisol71@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-10-20 11:33:11', 'Biniyam Mekonnen', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hd_departments`
--
ALTER TABLE `hd_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_tickets`
--
ALTER TABLE `hd_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_ticket_replies`
--
ALTER TABLE `hd_ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_users`
--
ALTER TABLE `hd_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hd_departments`
--
ALTER TABLE `hd_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hd_tickets`
--
ALTER TABLE `hd_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hd_ticket_replies`
--
ALTER TABLE `hd_ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hd_users`
--
ALTER TABLE `hd_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
