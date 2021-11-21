-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 06:44 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutora`
--

-- --------------------------------------------------------

--
-- Table structure for table `course data`
--

CREATE TABLE `course data` (
  `Course ID` int(11) NOT NULL,
  `Course Name` int(11) NOT NULL,
  `Content` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courselist`
--

CREATE TABLE `courselist` (
  `entryID` int(10) NOT NULL,
  `courseID` varchar(15) NOT NULL,
  `courseName` varchar(20) NOT NULL,
  `enrollmentKey` varchar(20) NOT NULL,
  `numberOfEnrollments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course management`
--

CREATE TABLE `course management` (
  `ID` int(11) NOT NULL,
  `Session Name` varchar(20) NOT NULL,
  `File` int(11) NOT NULL,
  `File Uploaded Date` int(11) NOT NULL,
  `Lecture ID` int(11) NOT NULL,
  `Lecturer Name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(11) NOT NULL,
  `coursename` varchar(30) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`id`, `coursename`) VALUES
(1, 'Business Administration'),
(2, 'Information Technology'),
(3, 'Neuro Science'),
(4, 'Mechatronics'),
(5, 'Chemical Enginnering'),
(6, 'Civil Engineering'),
(7, 'Child Psychology'),
(8, 'Software Engineering'),
(9, 'Artificial Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_list' s
--

CREATE TABLE `faculty_list` (
  `id` int(11) NOT NULL,
  `faculty` varchar(20) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_list`
--

INSERT INTO `faculty_list` (`id`, `faculty`) VALUES
(3, 'IT'),
(4, 'Medicine'),
(5, 'Engineering'),
(6, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `ID` int(11) NOT NULL,
  `Faculty` varchar(20) NOT NULL,
  `Faculty ID` varchar(10) NOT NULL,
  `Course Name` varchar(30) NOT NULL,
  `Course ID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`ID`, `Faculty`, `Faculty ID`, `Course Name`, `Course ID`) VALUES
(6, 'Business', 'BUSFAC', 'Business Administration', 'BA2021'),
(7, 'IT', 'ITFAC', 'Information Technology', 'IT2021'),
(8, 'Medicine', 'MEDFAC', 'Neuro Science', 'NEU2021'),
(9, 'Engineering', 'ENGFAC', 'Mechatronics', 'MECHENG2021'),
(10, 'Engineering', 'ENGFAC', 'Chemical Enginnering', 'CHEMENG2021'),
(11, 'Engineering', 'ENGFAC', 'Civil Engineering', 'CIVILENG202'),
(12, 'Medicine', 'MEDFAC', 'Child Psychology', 'PSYMED2021'),
(13, 'IT', 'ITFAC', 'Software Engineering', 'SE2021'),
(14, 'IT', 'ITFAC', 'Artificial Intelligenece', 'AI2021');

-- --------------------------------------------------------

--
-- Table structure for table `student data`
--

CREATE TABLE `student data` (
  `Student ID` varchar(10) NOT NULL,
  `Student Name` int(11) NOT NULL,
  `Faculty ID` int(11) NOT NULL,
  `Course ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student tracking table`
--

CREATE TABLE `student tracking table` (
  `Student ID` int(11) NOT NULL,
  `Student Name` int(11) NOT NULL,
  `Faculty ID` int(11) NOT NULL,
  `Course ID` int(11) NOT NULL,
  `Upload` int(11) NOT NULL,
  `Upload Date` int(11) NOT NULL,
  `Remark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_tracker`
--

CREATE TABLE `student_tracker` (
  `ID` int(11) NOT NULL,
  `studentID` varchar(20) DEFAULT NULL,
  `Week1` int(11) DEFAULT NULL,
  `Week2` int(11) DEFAULT NULL,
  `Week3` int(11) DEFAULT NULL,
  `Week4` int(11) DEFAULT NULL,
  `Week5` int(11) DEFAULT NULL,
  `Week6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_tracker`
--

INSERT INTO `student_tracker` (`ID`, `studentID`, `Week1`, `Week2`, `Week3`, `Week4`, `Week5`, `Week6`) VALUES
(2, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(11, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(14, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courselist`
--
ALTER TABLE `courselist`
  ADD PRIMARY KEY (`entryID`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_list`
--
ALTER TABLE `faculty_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_tracker`
--
ALTER TABLE `student_tracker`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courselist`
--
ALTER TABLE `courselist`
  MODIFY `entryID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `faculty_list`
--
ALTER TABLE `faculty_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_tracker`
--
ALTER TABLE `student_tracker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
