-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 02:30 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(10) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Emp_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Username`, `Password`, `Emp_ID`) VALUES
(111, 'sifat', '08091999', 1001),
(222, 'rifat', '0809', 1002),
(333, 'shumona', 'abcd', 1003),
(444, 'shome', 'efgh', 1004),
(555, 'sadia', 'ijkl', 1005),
(666, 'shiblu', 'mnop', 1006),
(777, 'shumsum', 'qrst', 1007),
(888, 'raihan', 'uvwx', 1008),
(999, 'protity', 'yzab', 1009),
(1010, 'swakshar', 'cdef', 1010);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Depart_Number` int(10) NOT NULL,
  `Depart_Name` varchar(100) NOT NULL,
  `Manager_ID` int(10) DEFAULT NULL,
  `Manager_StartDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Depart_Number`, `Depart_Name`, `Manager_ID`, `Manager_StartDate`) VALUES
(5001, 'CSE', 1003, '2011-01-20'),
(5002, 'CSE', 1005, '2012-02-25'),
(5003, 'EEE', 1005, '2014-03-26'),
(5004, 'BBA', 1002, '2017-07-19'),
(5005, 'MKT', 1007, '2010-05-05'),
(5006, 'CSE', 1005, '2018-05-14'),
(5007, 'CSE', 1010, '2015-02-02'),
(5008, 'EEE', 1010, '2013-02-24'),
(5009, 'CSE', 1010, '2019-05-15'),
(5010, 'BBA', 1009, '2013-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(10) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone_No` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Birth_Date` date NOT NULL,
  `Salary` int(10) NOT NULL,
  `Gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `Fname`, `Lname`, `Address`, `Phone_No`, `Email`, `Birth_Date`, `Salary`, `Gender`) VALUES
(1001, 'sifat', 'anwar', '61/1shahajabpur,dhaka', '01890315682', 'sifat.anwar@gmail.com', '1999-08-22', 15000, 'male'),
(1002, 'rifat', 'anwar', '63/3shahajabpur,dhaka', '01990315882', 'rifat@gmail.com', '1999-09-08', 20000, 'male'),
(1003, 'shumona', 'sahida', '63/6uttara,dhaka', '01890374565', 'shome@gmail.com', '1997-08-25', 22000, 'female'),
(1004, 'shome', 'sahida', '783/3uttara,dhaka', '01627004077', 'shome@gmail.com', '1995-02-19', 23500, 'female'),
(1005, 'sadia', 'sahida', '683/3uttara-12,dhaka', '01916781234', 'sadia@gmail.com', '1991-03-15', 26000, 'female'),
(1006, 'shiblu', 'hasan', '753/3uttara-11,dhaka', '01970316782', 'shible.rahman@gmail.com', '1999-08-08', 28000, 'male'),
(1007, 'shumsum', 'nahar', '689/3badda,dhaka', '01626516478', 'shumsun.nahar@gmail.com', '1993-01-01', 35000, 'female'),
(1008, 'raihan', 'hossian', '676/5banani-8,dhaka', '01971316982', 'raihan@gmail.com', '2000-05-05', 41000, 'male'),
(1009, 'protity', 'jahan', '634/3uttara-7,dhaka', '01724560358', 'protity@gmail.com', '2001-10-10', 43000, 'female'),
(1010, 'swakshar', 'talukder', '73/3Gulshan-1,dhaka', '01823749146', 'talukdar@gmail.com', '1997-05-04', 55000, 'male'),
(1016, 'Tony', 'Stark', 'New York', '1478932555', 'tstark@yahoo.com', '0000-00-00', 56000, 'male'),
(1020, 'Shotorupa', 'Sarkar', 'Kharampatti ,Kishoreganj, Dhaka', '0145666663333', 'shotorupa@gmail.com', '1997-03-20', 100000, 'Female'),
(5200, 'kloo', 'aerr', 'loiuyyyy', '14563333', 'mkl@wee', '1991-06-14', 14500, 'female'),
(10015, 'Steve', 'Rogers', 'Queens', '8126547523', 'strogers@gmail.com', '0000-00-00', 48000, '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `Account_No` int(10) NOT NULL,
  `E_ID` int(10) NOT NULL,
  `Absent` int(10) DEFAULT NULL,
  `Loan_cut` double(10,2) DEFAULT NULL,
  `Overtime` double(10,2) DEFAULT NULL,
  `Seasonal_Bonus` double(10,2) DEFAULT NULL,
  `Other_Bonus` double(10,2) DEFAULT NULL,
  `Total_Payment` double(10,2) DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`Account_No`, `E_ID`, `Absent`, `Loan_cut`, `Overtime`, `Seasonal_Bonus`, `Other_Bonus`, `Total_Payment`, `Payment_Date`) VALUES
(16007, 1001, 2, 0.00, 1000.00, 2000.00, 1000.00, 19000.00, NULL),
(16008, 1002, 0, 0.00, 1500.00, 2000.00, 1000.00, 24500.00, NULL),
(16009, 1003, 0, 1000.00, 1600.00, 2500.00, 1500.00, 26600.00, NULL),
(16010, 1004, 2, 0.00, 1000.00, 1500.00, 1000.00, 27000.00, NULL),
(16011, 1005, 0, 0.00, 1200.00, 3000.00, 2000.00, 32200.00, NULL),
(16001, 1006, 1, 500.00, 1400.00, 1500.00, 1000.00, 30400.00, NULL),
(16002, 1007, 0, 1000.00, 1500.00, 2000.00, 1000.00, 38500.00, NULL),
(16003, 1008, 0, 1000.00, 1000.00, 2500.00, 1500.00, 45000.00, NULL),
(16004, 1009, 2, 0.00, 2000.00, 1500.00, 2000.00, 48500.00, NULL),
(16005, 1010, 2, 0.00, 1500.00, 2000.00, 1500.00, 60000.00, NULL),
(45200, 1020, 0, 0.00, 1500.00, 2000.00, 1500.00, 105000.00, '2020-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `Emp_Id` int(10) NOT NULL,
  `Dept_Num` int(10) NOT NULL,
  `Hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`Emp_Id`, `Dept_Num`, `Hours`) VALUES
(1001, 5001, 8),
(1002, 5005, 9),
(1003, 5002, 10),
(1004, 5004, 11),
(1005, 5003, 9),
(1006, 5008, 8),
(1007, 5007, 9),
(1008, 5006, 8),
(1009, 5009, 10),
(1010, 5010, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Depart_Number`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
