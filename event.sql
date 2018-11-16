-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 04:50 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `bathandbody`
--

CREATE TABLE `bathandbody` (
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bathandbody`
--

INSERT INTO `bathandbody` (`ItemCode`, `ItemName`, `Discription`, `Price`, `Image`) VALUES
('b001', 'bodywash', 'smooth', '1800.00', 'bodywash.jpg');

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
  `DecoCode` varchar(255) NOT NULL,
  `DecoName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`DecoCode`, `DecoName`, `Discription`, `Price`, `Image`) VALUES
('D001', 'Free Lanka pvt.', 'good one', '1000.00', 'free.png');

-- --------------------------------------------------------

--
-- Table structure for table `fragrance`
--

CREATE TABLE `fragrance` (
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fragrance`
--

INSERT INTO `fragrance` (`ItemCode`, `ItemName`, `Discription`, `Price`, `Image`) VALUES
('f001', 'perfume', 'good fragrance', '2300', 'fragrens.jpg');

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
-- Table structure for table `makeup`
--

CREATE TABLE `makeup` (
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makeup`
--

INSERT INTO `makeup` (`ItemCode`, `ItemName`, `Discription`, `Price`, `Image`) VALUES
('l001', 'lipstic', 'good colors', '1500', 'lipstic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `men`
--

CREATE TABLE `men` (
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `men`
--

INSERT INTO `men` (`ItemCode`, `ItemName`, `Discription`, `Price`, `Image`) VALUES
('men001', 'soap', 'suitable for men', '1500', 'ps.jpg');

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
-- Table structure for table `skin`
--

CREATE TABLE `skin` (
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skin`
--

INSERT INTO `skin` (`ItemCode`, `ItemName`, `Discription`, `Price`, `Image`) VALUES
('s002', 'maskara', 'Good for face', '2300', 'maskara.jpg');

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
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`QuestionNo`);

--
-- Indexes for table `bathandbody`
--
ALTER TABLE `bathandbody`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `customerorders`
--
ALTER TABLE `customerorders`
  ADD PRIMARY KEY (`OrderNo`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`DecoCode`);

--
-- Indexes for table `fragrance`
--
ALTER TABLE `fragrance`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `hair`
--
ALTER TABLE `hair`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `makeup`
--
ALTER TABLE `makeup`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `men`
--
ALTER TABLE `men`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionNo`);

--
-- Indexes for table `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerorders`
--
ALTER TABLE `customerorders`
  MODIFY `OrderNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QuestionNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
