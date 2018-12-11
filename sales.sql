-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 12:33 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `fname`, `lname`, `password`) VALUES
(1, 'Jan Vince ', 'Kyamko', 121616),
(2, 'ven', 'nen', 2);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hist_id` int(11) NOT NULL,
  `editor` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `edited` varchar(50) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hist_id`, `editor`, `remarks`, `edited`, `dateTime`, `product_id`, `pid`) VALUES
(155, 'Jan Vince Kyamko', 'edited by:', 'Cocacola', '2018-03-22 04:58:27', 0, 0),
(156, 'Jan Vince Kyamko', 'edited by:', 'Cocacola', '2018-03-22 05:00:36', 0, 0),
(157, 'Jan Vince Kyamko', 'edited by:', 'hennesy', '2018-03-22 05:00:50', 0, 0),
(158, 'Jan Vince Kyamko', 'edited by:', 'Royal', '2018-03-22 05:02:15', 0, 0),
(159, 'Jan Vince Kyamko', 'edited by:', 'Sprite', '2018-03-22 05:02:26', 0, 0),
(160, 'Jan Vince Kyamko', 'edited by:', 'Jack Daniels', '2018-03-22 05:03:08', 0, 0),
(167, 'vennen', 'edited by:', 'Pattat', '2018-03-22 07:03:33', 0, 0),
(168, 'vennen', 'edited by:', 'Egg', '2018-03-22 07:03:41', 0, 0),
(169, '', 'deleted by', 'Royal', '2018-03-22 09:04:17', 0, 0),
(170, '', 'deleted by', 'hennesy', '2018-03-22 09:04:23', 0, 0),
(171, 'vennen', 'edited by:', 'Bun', '2018-03-22 09:26:31', 0, 0),
(172, '', 'deleted by', '', '2018-03-24 03:41:52', 0, 0),
(173, '', 'deleted by', '', '2018-03-24 03:42:47', 0, 0),
(174, 'Jan Vince Kyamko', 'edited by:', 'Cheese Ball', '2018-03-24 03:43:23', 0, 0),
(175, '', 'deleted by', '', '2018-03-24 03:43:25', 0, 0),
(176, 'Jan Vince Kyamko', 'edited by:', 'Cheese Ball', '2018-03-24 03:45:57', 0, 0),
(177, 'Jan Vince Kyamko', 'deleted by', 'Cocacola', '2018-07-04 02:01:29', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `int_id` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shift` varchar(10) NOT NULL,
  `expenses` float NOT NULL,
  `cash_rem` float NOT NULL,
  `sp_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `prod_name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` double NOT NULL,
  `unit_sold` int(11) NOT NULL,
  `total_amt` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `prod_name`, `type`, `quantity`, `price`, `unit_sold`, `total_amt`) VALUES
(43, 'Pattat', 'Desserts', 0, 12, 20, 0),
(44, 'Bun', 'Food', 0, 5, 5, 0),
(49, 'Sprite', 'Beverage', 5, 15, 5, 0),
(50, 'Royal', 'Beverage', 10, 16, 0, 0),
(51, 'Egg', 'Beverage', 10, 12, 0, 0),
(52, 'Sparkle', 'Food', 10, 12, 0, 0),
(53, 'Coffee', 'Beverage', 20, 100, 0, 0),
(59, 'choco cake', 'Desserts', 23, 25, 0, 0),
(60, 'Choco Lanay', 'Desserts', 23, 9, 0, 0),
(61, 'Jack Daniels', 'Beverage', 20, 1000, 0, 0),
(62, 'hennesy', 'Beverage', 84, 1000, 0, 0),
(66, 'Cheese Ball', 'Desserts', 0, 0, 10, 0),
(67, 'choco cake', 'Desserts', 10, 300, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `sp_id` int(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact_num` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`sp_id`, `fname`, `lname`, `password`, `age`, `gender`, `contact_num`, `photo`) VALUES
(2, 'Kim', 'Nengasca', '', 21, 'Female', '095555555', 'images/2_icon-image-128.png'),
(3, 'Jan Vince', 'Kyamko', '', 22, 'Male', '0995632131', 'images/_2_27661980_10204423750471486_1950919147_n.jpg'),
(4, 'Pablo', 'Escobar', '', 50, 'Male', '3123123213', ''),
(5, 'kim', 'qwq', '', 12, 'Female', '34434343', ''),
(6, 'dasdasd', 'sadasd', '21313', 50, 'Male', '13123213', 'images/_3_103666044-RTX2AQXH.530x298.jpg'),
(7, 'fdsfdsf', 'fdsfdsf', '123', 50, 'Male', '321432432', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hist_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`int_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `salesperson`
--
ALTER TABLE `salesperson`
  MODIFY `sp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`int_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`int_id`) REFERENCES `salesperson` (`sp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
