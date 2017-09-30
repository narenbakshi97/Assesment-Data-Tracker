-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2017 at 06:23 PM
-- Server version: 5.7.18-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `baseline`
--

CREATE TABLE `baseline` (
  `id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `c1` int(11) DEFAULT NULL,
  `c2` int(11) DEFAULT NULL,
  `c3` int(11) DEFAULT NULL,
  `c4` int(11) DEFAULT NULL,
  `c5` int(11) DEFAULT NULL,
  `c6` int(11) DEFAULT NULL,
  `c7` int(11) DEFAULT NULL,
  `c8` int(11) DEFAULT NULL,
  `c9` int(11) DEFAULT NULL,
  `c10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `baseline`
--

INSERT INTO `baseline` (`id`, `sid`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`) VALUES
(1, 's01', 90, 87, 85, 78, 91, NULL, NULL, NULL, NULL, NULL),
(2, 's02', NULL, 69, NULL, 76, NULL, 89, NULL, 81, NULL, 71),
(3, 's03', 81, NULL, 82, NULL, 84, NULL, 72, NULL, 77, NULL),
(4, 's04', NULL, NULL, NULL, NULL, NULL, 68, 69, 63, 73, 79),
(5, 's05', 87, 89, 91, NULL, NULL, 76, NULL, NULL, 79, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `continuous`
--

CREATE TABLE `continuous` (
  `id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `c1` int(11) DEFAULT NULL,
  `c2` int(11) DEFAULT NULL,
  `c3` int(11) DEFAULT NULL,
  `c4` int(11) DEFAULT NULL,
  `c5` int(11) DEFAULT NULL,
  `c6` int(11) DEFAULT NULL,
  `c7` int(11) DEFAULT NULL,
  `c8` int(11) DEFAULT NULL,
  `c9` int(11) DEFAULT NULL,
  `c10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `continuous`
--

INSERT INTO `continuous` (`id`, `sid`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`) VALUES
(1, 's01', 78, 81, 91, 71, 69, NULL, NULL, NULL, NULL, NULL),
(2, 's02', NULL, 61, NULL, 79, NULL, 82, NULL, 87, NULL, 79),
(3, 's03', 84, NULL, 81, NULL, 91, NULL, 79, NULL, 90, NULL),
(4, 's04', NULL, NULL, NULL, NULL, NULL, 88, 79, 69, 77, 99),
(5, 's05', 77, 81, 71, NULL, NULL, 75, NULL, NULL, 82, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `course code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `course code`) VALUES
(1, 'course1', 'c1'),
(2, 'course2', 'c2'),
(3, 'course3', 'c3'),
(4, 'course4', 'c4'),
(5, 'course5', 'c5'),
(6, 'course6', 'c6'),
(7, 'course7', 'c7'),
(8, 'course8', 'c8'),
(9, 'course9', 'c9'),
(10, 'course10', 'c10');

-- --------------------------------------------------------

--
-- Table structure for table `endline`
--

CREATE TABLE `endline` (
  `id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `c1` int(11) DEFAULT NULL,
  `c2` int(11) DEFAULT NULL,
  `c3` int(11) DEFAULT NULL,
  `c4` int(11) DEFAULT NULL,
  `c5` int(11) DEFAULT NULL,
  `c6` int(11) DEFAULT NULL,
  `c7` int(11) DEFAULT NULL,
  `c8` int(11) DEFAULT NULL,
  `c9` int(11) DEFAULT NULL,
  `c10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `endline`
--

INSERT INTO `endline` (`id`, `sid`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`) VALUES
(1, 's01', 69, 78, 65, 98, 71, NULL, NULL, NULL, NULL, NULL),
(2, 's02', NULL, 89, NULL, 66, NULL, 81, NULL, 61, NULL, 77),
(3, 's03', 89, NULL, 72, NULL, 94, NULL, 62, NULL, 97, NULL),
(4, 's04', NULL, NULL, NULL, NULL, NULL, 88, 79, 61, 72, 59),
(5, 's05', 78, 81, 92, NULL, NULL, 79, NULL, NULL, 71, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `midline`
--

CREATE TABLE `midline` (
  `id` int(11) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `c1` int(11) DEFAULT NULL,
  `c2` int(11) DEFAULT NULL,
  `c3` int(11) DEFAULT NULL,
  `c4` int(11) DEFAULT NULL,
  `c5` int(11) DEFAULT NULL,
  `c6` int(11) DEFAULT NULL,
  `c7` int(11) DEFAULT NULL,
  `c8` int(11) DEFAULT NULL,
  `c9` int(11) DEFAULT NULL,
  `c10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `midline`
--

INSERT INTO `midline` (`id`, `sid`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`) VALUES
(1, 's01', 69, 88, 81, 71, 68, NULL, NULL, NULL, NULL, NULL),
(2, 's02', NULL, 92, NULL, 71, NULL, 81, NULL, 91, NULL, 81),
(3, 's03', 92, NULL, 68, NULL, 72, NULL, 72, NULL, 77, NULL),
(4, 's04', NULL, NULL, NULL, NULL, NULL, 58, 65, 79, 71, 81),
(5, 's05', 81, 80, 74, NULL, NULL, 72, NULL, NULL, 79, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `batch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `sid`, `name`, `batch`) VALUES
(1, 's01', 'student1', 'batch-1'),
(2, 's02', 'student2', 'batch-1'),
(3, 's03', 'student3', 'batch-2'),
(4, 's04', 'student4', 'batch-2'),
(5, 's05', 'student5', 'batch-2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baseline`
--
ALTER TABLE `baseline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `continuous`
--
ALTER TABLE `continuous`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endline`
--
ALTER TABLE `endline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `midline`
--
ALTER TABLE `midline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baseline`
--
ALTER TABLE `baseline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
