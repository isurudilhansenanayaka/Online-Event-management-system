-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 01:55 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `addv_image`
--

CREATE TABLE `addv_image` (
  `addv_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_owner`
--

CREATE TABLE `add_owner` (
  `addv_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `addv_id` int(11) NOT NULL,
  `keytag` varchar(255) NOT NULL,
  `titile` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`addv_id`, `keytag`, `titile`, `area`, `description`, `date`) VALUES
(5, 'gfdsb', 'dd', 'vcx', 'xx', '0000-00-00'),
(8, 'aa', 'nbvc', 'nnn', 'tfdx', '0000-00-00'),
(9, 'aa', 'nbvc', 'nnn', 'tfdx', '0000-00-00'),
(10, 'aa', 'nbvc', 'nnn', 'tfdx', '0000-00-00'),
(11, 'aa', 'nbvc', 'nnn', 'tfdx', '0000-00-00'),
(12, 'aa', 'nbvc', 'nnn', 'tfdx', '0000-00-00'),
(13, 'aa', 'nbvc', 'nnn', 'tfdx', '2018-11-23'),
(14, 'aa', 'nbvc', 'nnn', 'tfdx', '2018-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `QuestionNo` int(11) NOT NULL,
  `StoreType` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`QuestionNo`, `StoreType`, `ItemName`, `CustomerName`, `Question`, `Answer`) VALUES
(1, 'SkinCare', 'Soap', 'Thuhini Lourdes', 'Can i buy more than 1000', 'Yes Madam definitely you can. But You have to Make the order before 1 week of the delivery date. For more details contact 0717005121');

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE `catering` (
  `EventCode` varchar(255) NOT NULL,
  `EventName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering`
--

INSERT INTO `catering` (`EventCode`, `EventName`, `Discription`, `Price`, `Image`) VALUES
('c001', 'Geetha catering', 'Evening party', '7000.00', 'catering1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customerorders`
--

CREATE TABLE `customerorders` (
  `OrderNo` int(11) NOT NULL,
  `StoreType` varchar(255) NOT NULL,
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustomerEmail` varchar(255) NOT NULL,
  `ContactNo` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Payment` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerorders`
--

INSERT INTO `customerorders` (`OrderNo`, `StoreType`, `ItemCode`, `ItemName`, `CustomerName`, `CustomerEmail`, `ContactNo`, `Address`, `Quantity`, `Payment`, `status`) VALUES
(2, 'SkinCare', 'S001', 'Soap', 'Thuhini', 'admin@gmail.com', '0717005121', 'Weligama', '4', '1000', 1),
(3, 'SkinCare', 'S002', 'Shampoo', 'Wathsara Daluwatta', 'wvd.51461@gmail.com', '0717005121', 'Weligama', '4', '5000', 1),
(4, 'SkinCare', 'S001', 'Soap', 'Kaumini Hansika', 'kaumini@gmail.com', '07178456952', 'Beruwala\r\nEgodawatta', '3', '750', 0);

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `EventCode` varchar(255) NOT NULL,
  `EventName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`EventCode`, `EventName`, `Discription`, `Price`, `Image`) VALUES
('D001', 'Free Lanka pvt.', 'good one', '1000.00', 'free.png');

-- --------------------------------------------------------

--
-- Table structure for table `dj`
--

CREATE TABLE `dj` (
  `EventCode` varchar(255) NOT NULL,
  `EventName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dj`
--

INSERT INTO `dj` (`EventCode`, `EventName`, `Discription`, `Price`, `Image`) VALUES
('D002', 'DJ wedding', 'For wedding', '15000.00', 'dj34.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hair`
--

CREATE TABLE `hair` (
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hair`
--

INSERT INTO `hair` (`ItemCode`, `ItemName`, `Discription`, `Price`, `Image`) VALUES
('h001', 'hairserum', 'good for the hair', '2100.00', 'hairserum.Jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `lighting`
--

CREATE TABLE `lighting` (
  `EventCode` varchar(255) NOT NULL,
  `EventName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lighting`
--

INSERT INTO `lighting` (`EventCode`, `EventName`, `Discription`, `Price`, `Image`) VALUES
('L001', 'Krish lighting', 'Evening party', '10000.00', 'ligh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `makeup`
--

CREATE TABLE `makeup` (
  `EventCode` varchar(255) NOT NULL,
  `EventName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makeup`
--

INSERT INTO `makeup` (`EventCode`, `EventName`, `Discription`, `Price`, `Image`) VALUES
('s001', 'saloon keshi', 'For wedding', '15000.00', 'keshisaloon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `men`
--

CREATE TABLE `men` (
  `EventCode` varchar(255) NOT NULL,
  `EventName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `men`
--

INSERT INTO `men` (`EventCode`, `EventName`, `Discription`, `Price`, `Image`) VALUES
('c001', 'wedding cake', 'For wedding', '10000.00', 'cake1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionNo` int(11) NOT NULL,
  `StoreType` varchar(255) NOT NULL,
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustomerEmail` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QuestionNo`, `StoreType`, `ItemCode`, `ItemName`, `CustomerName`, `CustomerEmail`, `Question`, `status`) VALUES
(1, 'SkinCare', 'S001', 'Soap', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'Can i buy more than 1000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `name`, `email`, `password`, `type`) VALUES
(1, 'Thuhini', 'admin@gmail.com', '111111', 'Admin'),
(4, 'Kaumini Hansika', 'kaumini@gmail.com', '111111', 'Customer'),
(5, 'Admin', 'UCSC', 'UCSC', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addv_image`
--
ALTER TABLE `addv_image`
  ADD PRIMARY KEY (`addv_id`);

--
-- Indexes for table `add_owner`
--
ALTER TABLE `add_owner`
  ADD PRIMARY KEY (`user_id`,`addv_id`),
  ADD KEY `addv_id` (`addv_id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`addv_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`QuestionNo`);

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`EventCode`);

--
-- Indexes for table `customerorders`
--
ALTER TABLE `customerorders`
  ADD PRIMARY KEY (`OrderNo`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`EventCode`);

--
-- Indexes for table `dj`
--
ALTER TABLE `dj`
  ADD PRIMARY KEY (`EventCode`);

--
-- Indexes for table `hair`
--
ALTER TABLE `hair`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `lighting`
--
ALTER TABLE `lighting`
  ADD PRIMARY KEY (`EventCode`);

--
-- Indexes for table `makeup`
--
ALTER TABLE `makeup`
  ADD PRIMARY KEY (`EventCode`);

--
-- Indexes for table `men`
--
ALTER TABLE `men`
  ADD PRIMARY KEY (`EventCode`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `addv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customerorders`
--
ALTER TABLE `customerorders`
  MODIFY `OrderNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
