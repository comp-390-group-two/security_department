-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2019 at 01:36 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp390`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned`
--

CREATE TABLE `assigned` (
  `name` varchar(255) NOT NULL,
  `ssn` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `assigned_by` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigned`
--

INSERT INTO `assigned` (`name`, `ssn`, `phoneno`, `place`, `date`, `time_from`, `time_to`, `assigned_by`, `ID`) VALUES
('JERRY GITERU', 'ART45464', '1515 ', 'Field', '2019-05-28', '01:01', '19:00', 'ogoma', 15),
('ZACK OTIENO OGOMA', 'S13/12323/17', '07028303316 ', 'LOWERFIELD', '2019-05-28', '12:00', '02:05', 'ogoma', 16),
('JOHN BELLO', '11111111111', '020212122 ', 'LIBRARY', '2019-05-29', '06:00', '17:00', 'ogoma', 17),
('JERRY GITERU', 'ART45464', '1515 ', 'LOWERFIELD', '2019-05-29', '06:00', '19:00', 'ogoma', 18),
('David Malamu', '123', '070166874423 ', 'Field', '2019-05-29', '03:02', '05:02', 'ogoma', 19),
('vmbnkbmjhk', 'kgjhjgjgh', '000000000000 ', 'LIBRARY', '2019-06-03', '03:00', '18:00', 'ogoma', 20);

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE `clearance` (
  `regno` varchar(50) NOT NULL,
  `Reason_of_clearance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clearance`
--

INSERT INTO `clearance` (`regno`, `Reason_of_clearance`) VALUES
('', 'Study Completion'),
('', 'Study Completion'),
('S13_15356_16', 'Study Completion'),
('S13_15356_16', 'Others'),
('S13_15356_16', 'SUEU Election'),
('S13_15356_16', 'SUEU Election'),
('S13_15356_16', 'Others'),
('S13_15356_16', 'Study Completion'),
('S13_15356_16', 'Study Completion'),
('S13/15345/16', 'SUEU Election');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `number` int(11) NOT NULL,
  `date_of_occurrence` varchar(255) NOT NULL,
  `your_regno` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `specific_time_of_occurance` varchar(255) NOT NULL,
  `occurance` varchar(255) NOT NULL,
  `people_involved` varchar(255) NOT NULL,
  `Findings` varchar(300) NOT NULL,
  `Remarks` varchar(300) NOT NULL,
  `Handled_by` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`number`, `date_of_occurrence`, `your_regno`, `venue`, `specific_time_of_occurance`, `occurance`, `people_involved`, `Findings`, `Remarks`, `Handled_by`) VALUES
(32, '2019-05-14', 'S13_15356_16', 'Tatton', '12:00', 'I lost my laptop', 'I dont know', 'The laptop was found with a hawker in Njokerio ', 'Finished   ', 'admin'),
(33, '2019-05-27', 'S13_15356_16', 'Field', '01:00', 'HACKED MR KAMARI', 'TISGA', 'Displinary action to mr kanayri', ' case over ', 'admin'),
(34, '2019-05-28', 'S13/15356/16', 'Field', '12:12', 'I lost my laptop bag ', 'xxxx', 'The investigation found that cctv were not active', ' footage will be followed', ''),
(35, '2019-05-09', 's13/15349/16', 'Field', '16:03', 'lost phone', 'gor mahia fans', '', 'Finished  ', 'admin'),
(36, '2019-05-28', 'S13/15345/16', 'CBD', '12:00', 'THEFT', 'luke', 'THE  SUSPECT COMPREHENDED ,PHONE FOUND', 'Finished', ''),
(37, '2019-06-03', 's13/15349/16', 'CBD', '14:00', 'fchg', 'hfhfhgh', 'ccnnn', ' jbhjh', 'admin'),
(38, '2019-06-03', 'S13_15356_16', 'CBD', '17:06', 'I lost my phone in kabras', 'room mates', 'yeye huhuubjbjbjhbjhjj', 'kkkkk   ', 'admin'),
(39, '2019-06-02', 'S13/15356/16', 'Tatton', '12:00', 'BEATEN  BY FOOTBALLERS', 'FOOTBALLERS', 'FOOTBALLERS OF MATHS TO BE SUSPENDED', 'YOU WILL BE COMPENSATED  ', 'admin'),
(40, '2019-06-04', 's13/15349/16', 'Buruburu', '12:00', 'MISTAKENLY HIT', 'CHOKRA', 'vnvXNXnbMN', ' vxngcjb j', 'admin'),
(41, '2019-06-02', 'S13/15345/16', 'CBD', '22:59', 'I was harased in tsavo room 4', 'gym guys', 'gym guys found to be guilty', 'gym guys to be suspended', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `guards`
--

CREATE TABLE `guards` (
  `REGISTRATION_OFFICER` varchar(255) NOT NULL,
  `date` varchar(15) NOT NULL,
  `FULL_NAMES` varchar(255) NOT NULL,
  `SSNO` varchar(255) NOT NULL,
  `PHONE_NUMBER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guards`
--

INSERT INTO `guards` (`REGISTRATION_OFFICER`, `date`, `FULL_NAMES`, `SSNO`, `PHONE_NUMBER`) VALUES
('ogoma', '2019-05-30', 'JOHN BELLO', '11111111111', '020212122'),
('ogoma', '2019-05-29', 'David Malamu', '123', '070166874423'),
('null', '2019-05-29', 'HANDY OGWEL', 'A0067', '0712377'),
('ogoma', '2019-05-24', 'JERRY GITERU', 'ART45464', '1515'),
('ogoma', '2019-06-02', 'vmbnkbmjhk', 'kgjhjgjgh', '000000000000'),
('ogoma', '2019-05-29', 'ZACK OTIENO OGOMA', 'S13/12323/17', '07028303316');

-- --------------------------------------------------------

--
-- Table structure for table `o_officer`
--

CREATE TABLE `o_officer` (
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `o_officer`
--

INSERT INTO `o_officer` (`uname`, `password`) VALUES
('ogoma', 'wakaya');

-- --------------------------------------------------------

--
-- Table structure for table `securitystaff`
--

CREATE TABLE `securitystaff` (
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `securitystaff`
--

INSERT INTO `securitystaff` (`uname`, `password`) VALUES
('ogoma', 'wakaya');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `regno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`regno`, `name`, `faculty`, `password`) VALUES
('diel', 'diel', 'FEDCOS', 'diel'),
('S13/1212/2030', 'Ogonyo Gende', 'FEDCOS', 'S13/1212/2030'),
('S13/15332/16', 'VICK KIPLANGAT', 'Science', '123'),
('S13/15336/16', 'KEVIN OYANDA', 'Science', '?123@EU'),
('S13/15342/16', 'SHADY', 'Science', '1234'),
('S13/15345/16', 'JOHNSTONE SILUNYA', 'Science', 'S13/15345/16'),
('S13/15349/16', 'MALAMU DAVID', 'Science', 'malamu'),
('S13/15356/16', 'OGOMA ZACK', 'Science', 'S13/15356/16'),
('S13_15356_00', 'S13_15356_00', 'Science', 'S13_15356_00'),
('S13_15356_0000', 'S13_15356_00', 'FEDCOS', 'S13_15356_00'),
('S13_15356_10', 'S13_15356_10', 'Science', 'S13_15356_10'),
('S13_15356_16', 'ZACK OGOMA', 'Science', 'S13_15356_16'),
('S13_15356_19', 'S13_15356_19', 'Agriculture', 'S13_15356_19'),
('S13_15356_67', 'ZACK OTIENO OGOMA', 'Agriculture', 'S13_15356_67'),
('S13_15366_16', 'kip', 'Science', 'master'),
('S13_17990_16', 'S13_17990_16', 'S13_17990_16', 'S13_17990_16'),
('s14/15111/16', 'irene', 'Science', 'ogoma'),
('S14/15558/16', 'mamarwa philip', 'Agriculture', 'S14/15558/16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned`
--
ALTER TABLE `assigned`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `guards`
--
ALTER TABLE `guards`
  ADD PRIMARY KEY (`SSNO`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`);

--
-- Indexes for table `o_officer`
--
ALTER TABLE `o_officer`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned`
--
ALTER TABLE `assigned`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
