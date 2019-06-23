-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 11:18 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bgroup`
--

CREATE TABLE `bgroup` (
  `bgroup_id` int(11) NOT NULL,
  `bgroupname` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bgroup`
--

INSERT INTO `bgroup` (`bgroup_id`, `bgroupname`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctors_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctors_id`, `fname`, `lname`, `uname`, `pass`) VALUES
(0, 'atiya', 'masuda', 'atiya', 'atiya'),
(0, 'atiya', 'masuda', 'atiya', 'atiya');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `doctors_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `d_add` date NOT NULL,
  `schedule` int(10) NOT NULL,
  `bgroup_id` int(1) NOT NULL,
  `height` decimal(16,2) NOT NULL,
  `weight` decimal(16,2) NOT NULL,
  `operation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `doctors_id`, `name`, `reg_no`, `age`, `gender_id`, `address`, `disease`, `d_add`, `schedule`, `bgroup_id`, `height`, `weight`, `operation`) VALUES
(1, 0, 'Siddika', 4, 23, 2, 'Noakhali', 'Miniscus', '2019-03-29', 7, 1, '5.00', '60.00', 0),
(3, 0, 'rina', 1, 34, 2, 'raozan', 'fracture', '2019-03-29', 1, 1, '5.60', '56.00', 0),
(6, 0, 'titli', 3, 23, 2, 'ghgh', 'hgjhg', '2019-03-29', 5, 1, '5.00', '56.00', 0),
(7, 0, 'farhan', 2, 23, 1, ' fgjgjvjhg', ' gfjhgh', '2019-03-06', 4, 4, '5.60', '60.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule` int(11) NOT NULL,
  `sc_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule`, `sc_name`) VALUES
(1, '9am-10am'),
(2, '10am-11am'),
(3, '4pm-5pm'),
(4, '5pm-6pm'),
(5, '6pm-7pm'),
(6, '7pm-8pm'),
(7, '8pm-9pm'),
(8, '9pm-10pm');

-- --------------------------------------------------------

--
-- Table structure for table `schedulet`
--

CREATE TABLE `schedulet` (
  `schedule` int(11) NOT NULL,
  `sc_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedulet`
--

INSERT INTO `schedulet` (`schedule`, `sc_name`) VALUES
(0, '9pm-10pm'),
(1, '9am-10am'),
(2, '10am-11am'),
(3, '4pm-5pm'),
(4, '5pm-6pm'),
(5, '6pm-7pm'),
(6, '7pm-8pm'),
(7, '8pm-9pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bgroup`
--
ALTER TABLE `bgroup`
  ADD PRIMARY KEY (`bgroup_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD UNIQUE KEY `schedule` (`schedule`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule`);

--
-- Indexes for table `schedulet`
--
ALTER TABLE `schedulet`
  ADD PRIMARY KEY (`schedule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
