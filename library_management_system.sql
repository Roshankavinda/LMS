-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 12:16 AM
-- Server version: 10.4.10-MariaDB
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
-- Database: `library management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publishYear` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `name`, `author`, `publishYear`) VALUES
(1, 'Madol Doova', 'Martin Wickramasinghe', 1947),
(2, 'Programming Languages', 'None', 2000),
(3, 'Business', 'None', 2001),
(4, 'Logic', 'None', 2000),
(5, 'Oliver Twist', 'Charles Dickens', 1838);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `bookID` int(20) NOT NULL,
  `studentID` int(20) NOT NULL,
  `issueDate` varchar(20) NOT NULL,
  `dueDate` varchar(20) NOT NULL,
  `returnBook` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`bookID`, `studentID`, `issueDate`, `dueDate`, `returnBook`) VALUES
(1, 1, '08-11-2020', '11-11-2020', 'YES'),
(2, 1, '09-11-2020', '13-11-2020', 'No'),
(5, 3, '09-11-2020', '13-11-2020', 'YES'),
(4, 2, '09-11-2020', '12-11-2020', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentName` varchar(50) NOT NULL,
  `studentID` int(20) NOT NULL,
  `email` text NOT NULL,
  `faculty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentName`, `studentID`, `email`, `faculty`) VALUES
('Roshan', 1, 'roshan@gmail.com', 'Computing Faculty'),
('Hiruni', 2, 'hiruni@gmail.com', 'Business Faculty'),
('Ewantha ', 3, 'ewantha@gmail.com', 'Engineering Faculty'),
('Ishini', 4, 'ishini@gmail.com', 'Business Faculty'),
('Ayomal', 5, 'ayomal@gmail.com', 'Computing Faculty'),
('Flash', 6, 'flash@gmail.com', 'Business Faculty'),
('Kamal', 7, 'kamal@gmail.com', 'Engineering Faculty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
