-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 05:08 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Booknumber` ()  select *from Book$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `studentnumber` ()  select *from student$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Sec_question` varchar(40) NOT NULL,
  `Answer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Password`, `Sec_question`, `Answer`) VALUES
('aaa', 'bbb', '12345', 'WHAT SCHOOL YOU ATTENDED ?', 'srs'),
('admin', 'Ram', '12345', 'WHAT SCHOOL YOU ATTENDED ?', 'VCET'),
('shr', 'shravan', '12345', 'WHAT SCHOOL YOU ATTENDED ?', 'vcet'),
('ves', 'vishnu', '12345', 'WHAT SCHOOL YOU ATTENDED ?', 'srs'),
('vishnu', 'vishnu es', '24', 'WHAT SCHOOL YOU ATTENDED ?', 'srs'),
('vishnues', 'vishnu es', '12345', 'IN WHAT CITY WERE YOU BORN ?', 'puttur');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Publisher` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Pages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_ID`, `Name`, `Edition`, `Publisher`, `Price`, `Pages`) VALUES
(41, 'Marketing Management', 9, 'Pearson', 899, 900),
(92, 'Lateral Thinking', 4, 'Penguin', 295, 272),
(104, 'Computer Organization', 5, 'McGraw Hill', 620, 828),
(169, 'Financial Accounting ', 7, 'Vibrant Publishers', 230, 122),
(357, 'Digital Design', 1, 'Pearson', 554, 768),
(372, 'Java', 8, 'Mc Graw Hill', 483, 1152),
(413, 'Operations Management', 6, 'Pearson', 552, 816),
(435, 'Data structures', 8, 'pearson', 450, 800),
(454, 'Operating System', 2, 'Wiley', 603, 920),
(458, 'Let Us Python', 3, 'BPB', 204, 256),
(515, 'Cost Accounting', 3, ' Vibrant Publishers', 499, 130),
(567, 'Artificial Intelligence', 1, ' Wiley', 525, 340),
(578, 'computer networks', 7, 'pearson', 500, 900),
(602, 'data structers ', 4, 'pearson', 620, 800),
(609, 'Linux ', 8, 'Createspace', 600, 1021),
(615, 'Made In China', 1, 'HarperCollins', 250, 352),
(628, 'Agile Project Management ', 2, ' Wiley', 599, 450),
(635, 'Block Chain ', 6, 'Khanna Publishing', 125, 128),
(713, 'Project Management', 3, 'Vibrant Publishers', 989, 164),
(734, 'Discrete Mathematics', 4, 'McGraw Hill', 291, 400),
(767, 'General Knowledge', 9, ' Lucent Publication', 172, 410),
(782, 'Cloud Computing', 5, 'Notion', 195, 118),
(816, 'Human Resource ', 7, 'McGraw Hill', 517, 912),
(851, 'Machine Learning ', 7, 'Wiley', 539, 432),
(891, 'Business Strategy', 9, 'Vbrant', 499, 136),
(922, 'Sociology', 5, 'S Chand', 556, 945),
(940, 'Python', 1, 'McGraw Hill', 471, 720),
(945, 'Quantitative Aptitude', 5, 'S Chand', 537, 960),
(977, 'Compilers', 1, 'Pearson', 255, 966),
(986, 'Blockchain', 7, 'Shroff/O\'Reilly', 525, 172);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Book_ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Publisher` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  `Student_Id` varchar(20) NOT NULL,
  `SName` varchar(20) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `Course` varchar(7) NOT NULL,
  `Branch` varchar(7) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  `DateofIssue` varchar(25) NOT NULL,
  `Duedate` varchar(20) NOT NULL,
  `Issue_Time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`Book_ID`, `Name`, `Edition`, `Publisher`, `Price`, `Pages`, `Student_Id`, `SName`, `FName`, `Course`, `Branch`, `Year`, `Semester`, `DateofIssue`, `Duedate`, `Issue_Time`) VALUES
(357, 'Digital Design', 1, 'Pearson', 554, 768, '4VP17CS033', 'Nikhil Raj', 'Narayan', 'BE', 'CSE', 3, 5, '10 Dec, 2019', '25 Dec, 2019', '11:02:35.000000'),
(435, 'Data structures', 8, 'pearson', 450, 800, '4VP17CS030', 'Manoj shetty ', 'Mahabala shetty', 'BE', 'CSE', 3, 5, '3 Dec, 2019', '18 Dec, 2019', '10:04:23.000000'),
(635, 'Block Chain ', 6, 'Khanna Publishing', 125, 128, '4VP17CS033', 'Nikhil Raj', 'Narayan', 'BE', 'CSE', 3, 5, '9 Dec, 2019', '24 Dec, 2019', '10:44:27.000000'),
(851, 'Machine Learning ', 7, 'Wiley', 539, 432, '4VP18CS402', 'Lavin Kumar', 'Ramesh', 'BE', 'CSE', 3, 5, '7 Dec, 2019', '22 Dec, 2019', '12:07:33.000000');

--
-- Triggers `issue`
--
DELIMITER $$
CREATE TRIGGER `itime` BEFORE INSERT ON `issue` FOR EACH ROW BEGIN
set new.Issue_Time=CURRENT_TIME;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `Student_ID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `Course` varchar(5) NOT NULL,
  `Branch` varchar(7) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `BName` varchar(50) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Publisher` varchar(15) NOT NULL,
  `Price` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  `DOI` varchar(25) NOT NULL,
  `Duedate` varchar(25) NOT NULL,
  `DOR` varchar(20) NOT NULL,
  `Return_Time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`Student_ID`, `Name`, `FName`, `Course`, `Branch`, `Year`, `Semester`, `Book_ID`, `BName`, `Edition`, `Publisher`, `Price`, `Pages`, `DOI`, `Duedate`, `DOR`, `Return_Time`) VALUES
('4VP17CS001', 'Karthik', 'Vasanth ', 'BE', 'CSE', 3, 5, 357, 'Digital Design', 1, 'Pearson', 554, 768, '1 Dec, 2019', '15 Dec, 2019', '11 Dec, 2019', '10:05:32.000000'),
('4VP18CS001', 'ram', 'suresh', 'BE', 'cs', 2, 3, 413, 'Operations Management', 6, 'Pearson', 552, 816, '11 Dec, 2019', '25 Dec, 2019', '11 Dec, 2019', '15:18:34.000000'),
('4VP17CS074', 'Soumya shet', 'Sathyanarayan', 'BE', 'CSE', 3, 5, 458, 'Let Us Python', 3, 'BPB', 204, 256, '30 Nov, 2019', '14 Dec, 2019', '30 Nov, 2019', '14:55:44.000000'),
('4VP17CS001', 'Karthik', 'Vasanth ', 'BE', 'CSE', 3, 5, 578, 'computer networks', 7, 'pearson', 500, 900, '11 Nov, 2019', '13 Nov, 2019', '3 Dec, 2019', '10:12:48.000000'),
('4VP17CS033', 'Nikhil Raj', 'Narayan', 'BE', 'CSE', 3, 5, 628, 'Agile Project Management ', 2, ' Wiley', 599, 450, '9 Dec, 2019', '24 Dec, 2019', '9 Dec, 2019', '10:45:31.000000');

--
-- Triggers `returns`
--
DELIMITER $$
CREATE TRIGGER `rtime` BEFORE INSERT ON `returns` FOR EACH ROW BEGIN 
SET new.Return_Time=CURRENT_TIME;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Father` varchar(20) NOT NULL,
  `Course` varchar(5) NOT NULL,
  `Branch` varchar(7) NOT NULL,
  `Year` int(11) NOT NULL,
  `Semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Name`, `Father`, `Course`, `Branch`, `Year`, `Semester`) VALUES
('4VP16CS030', 'Divya shenoy', 'Vinodh shenoy', 'BE', 'CSE', 4, 7),
('4VP17CS001', 'Karthik', 'Vasanth ', 'BE', 'CSE', 3, 5),
('4VP17CS030', 'Manoj shetty ', 'Mahabala shetty', 'BE', 'CSE', 3, 5),
('4VP17CS031', 'Manu HL', 'Lokesh', 'BE', 'CSE', 3, 5),
('4VP17CS033', 'Nikhil Raj', 'Narayan', 'BE', 'CSE', 3, 5),
('4VP17CS048', 'Sankalpalatha', 'Shridhar', 'BE', 'CSE', 3, 5),
('4VP17CS055', 'Sandesh KS', 'K Sadananda', 'BE', 'CSE', 3, 5),
('4VP17CS057', 'Rachana', 'Nagaraja', 'BE', 'CSE', 3, 5),
('4VP17CS060', 'Shashank K', 'Sampath Kumar', 'BE', 'CSE', 3, 5),
('4VP17CS074', 'Soumya shet', 'Sathyanarayan', 'BE', 'CSE', 3, 5),
('4VP17CS079', 'Sweekruthi', 'Manjunath', 'BE', 'CSE', 3, 5),
('4VP17EC031', 'Vijayashree', 'Narayan', 'BE', 'EC', 3, 5),
('4VP17EC038', 'Vijayananda', 'Narayan', 'BE', 'EC', 3, 5),
('4VP17ME003', 'Akash', 'Ramakrishnan', 'BE', 'ME', 3, 5),
('4VP17ME039', 'Ninad HR', 'Raghuram Bhat', 'BE', 'ME', 3, 5),
('4VP17ME073', 'Rohan', 'Sunil ', 'BE', 'ME', 3, 5),
('4VP18CS001', 'ram', 'suresh', 'BE', 'cs', 2, 3),
('4VP18CS402', 'Lavin Kumar', 'Ramesh', 'BE', 'CSE', 3, 5),
('4VP18CV021', 'Sohan', 'Satyanarayana', 'BE', 'CV', 2, 3),
('4VP18CV056', 'Shaila', 'Dayanand', 'BE', 'CV', 2, 3),
('4VP19CV042', 'Sneha', 'Satyanarayana', 'BE', 'CV', 1, 1),
('4VP19ME041', 'Megha', 'Ganapati', 'BE', 'ME', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`Book_ID`) USING BTREE;

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`Book_ID`),
  ADD UNIQUE KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
