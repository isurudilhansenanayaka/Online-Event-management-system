-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 08:44 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer`
--
CREATE DATABASE IF NOT EXISTS `customer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `customer`;

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
(1, 'SkinCare', 'Soap', 'Thuhini Lourdes', 'Can i buy more than 1000', 'Yes Madam definitely you can. But You have to Make the order before 1 week of the delivery date. For more details contact 0717005121'),
(2, 'Men', 's', 'Thuhini Lourdes', 'Can i make the the price affordable', 'Ys u can'),
(3, 'SkinCare', 'Soap', 'Kaumini Hansika', 'Cn i order more than 1000', 'yes you can madam'),
(4, 'SkinCare', 'Soap', 'Kaumini Hansika', 'Cn i order more than 1000', 'yes you can madam'),
(5, 'Fragrance', 'fan', 'Thuhini Lourdes', 'Helo helo nama mokadda oage', 'MAge nama wathz'),
(6, 'SkinCare', 'Shampoo', 'Thuhini Lourdes', 'hello', 'oo kiyanna'),
(7, 'SkinCare', 'Shampoo', 'Thuhini Lourdes', 'abc', 'def'),
(8, 'SkinCare', 'Soap', 'Kaumini Hansika', 'hello', 'hello madam');

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
('men001', 'soap', 'suitable for men', '1500', 'mensoap.jpg');

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
(1, 'SkinCare', 'S001', 'Soap', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'Can i buy more than 1000', 1),
(2, 'Men', 's', 's', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'Can i make the the price affordable', 1),
(3, 'SkinCare', 'S001', 'Soap', 'Kaumini Hansika', 'kaumini@gmail.com', 'Cn i order more than 1000', 1),
(4, 'SkinCare', 'S001', 'Soap', 'Kaumini Hansika', 'kaumini@gmail.com', 'Cn i order more than 1000', 1),
(5, 'Fragrance', 'f', 'fan', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'Helo helo nama mokadda oage', 1),
(6, 'SkinCare', 'S002', 'Shampoo', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'hello', 1),
(7, 'SkinCare', 'S002', 'Shampoo', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'abc', 1),
(8, 'SkinCare', 'S001', 'Soap', 'Kaumini Hansika', 'kaumini@gmail.com', 'hello', 1),
(9, 'SkinCare', 's001', 'cleansing', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'hi', 0);

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
(3, 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', '111111', 'Customer'),
(4, 'Kaumini Hansika', 'kaumini@gmail.com', '111111', 'Customer'),
(5, 'Admin', 'UCSC', 'UCSC', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `wellness`
--

CREATE TABLE `wellness` (
  `ItemCode` varchar(255) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wellness`
--

INSERT INTO `wellness` (`ItemCode`, `ItemName`, `Discription`, `Price`, `Image`) VALUES
('w001', 'brush', 'good one', '1000.00', 'brush.jpg');

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
-- Indexes for table `wellness`
--
ALTER TABLE `wellness`
  ADD PRIMARY KEY (`ItemCode`);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `event`
--
CREATE DATABASE IF NOT EXISTS `event` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `event`;

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
(1, 'SkinCare', 'Soap', 'Thuhini Lourdes', 'Can i buy more than 1000', 'Yes Madam definitely you can. But You have to Make the order before 1 week of the delivery date. For more details contact 0717005121'),
(2, 'Men', 's', 'Thuhini Lourdes', 'Can i make the the price affordable', 'Ys u can'),
(3, 'SkinCare', 'Soap', 'Kaumini Hansika', 'Cn i order more than 1000', 'yes you can madam'),
(4, 'SkinCare', 'Soap', 'Kaumini Hansika', 'Cn i order more than 1000', 'yes you can madam'),
(5, 'Fragrance', 'fan', 'Thuhini Lourdes', 'Helo helo nama mokadda oage', 'MAge nama wathz'),
(6, 'SkinCare', 'Shampoo', 'Thuhini Lourdes', 'hello', 'oo kiyanna'),
(7, 'SkinCare', 'Shampoo', 'Thuhini Lourdes', 'abc', 'def'),
(8, 'SkinCare', 'Soap', 'Kaumini Hansika', 'hello', 'hello madam');

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
('D001', 'Free Lanka pvt.', 'good one', '1000.00', 'brush.jpg');

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
('men001', 'soap', 'suitable for men', '1500', 'mensoap.jpg');

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
(1, 'SkinCare', 'S001', 'Soap', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'Can i buy more than 1000', 1),
(2, 'Men', 's', 's', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'Can i make the the price affordable', 1),
(3, 'SkinCare', 'S001', 'Soap', 'Kaumini Hansika', 'kaumini@gmail.com', 'Cn i order more than 1000', 1),
(4, 'SkinCare', 'S001', 'Soap', 'Kaumini Hansika', 'kaumini@gmail.com', 'Cn i order more than 1000', 1),
(5, 'Fragrance', 'f', 'fan', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'Helo helo nama mokadda oage', 1),
(6, 'SkinCare', 'S002', 'Shampoo', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'hello', 1),
(7, 'SkinCare', 'S002', 'Shampoo', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'abc', 1),
(8, 'SkinCare', 'S001', 'Soap', 'Kaumini Hansika', 'kaumini@gmail.com', 'hello', 1),
(9, 'SkinCare', 's001', 'cleansing', 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', 'hi', 0);

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
(3, 'Thuhini Lourdes', 'm.thuhinilourdes@gmail.com', '111111', 'Customer'),
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `fmsmy`
--
CREATE DATABASE IF NOT EXISTS `fmsmy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmsmy`;

-- --------------------------------------------------------

--
-- Table structure for table `addbillitem`
--

CREATE TABLE `addbillitem` (
  `Bill_Number` char(50) NOT NULL,
  `Item_Code` char(20) NOT NULL,
  `Amount` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` varchar(100) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `User_Name`, `Password`) VALUES
('emp1', 'sa', '12'),
('emp3', 'pasan', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_Number` char(50) NOT NULL,
  `Date` date NOT NULL,
  `Cashier_Id` char(50) NOT NULL,
  `Total` int(100) NOT NULL,
  `Cashier_Emp_Id` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Id` char(20) NOT NULL,
  `Course_Name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `Course_Id` char(20) NOT NULL,
  `St_Id` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `Id` char(20) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farmshopemployee`
--

CREATE TABLE `farmshopemployee` (
  `Id` char(20) NOT NULL,
  `First_Name` char(20) NOT NULL,
  `Last_Name` char(20) NOT NULL,
  `Tele_Number` char(20) NOT NULL,
  `Email` char(20) NOT NULL,
  `Address` char(50) NOT NULL,
  `Salary` char(50) NOT NULL,
  `Username` char(20) NOT NULL,
  `Password` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmshopemployee`
--

INSERT INTO `farmshopemployee` (`Id`, `First_Name`, `Last_Name`, `Tele_Number`, `Email`, `Address`, `Salary`, `Username`, `Password`) VALUES
('120', 'Sam', 'Livera', '0711491219', 'htag9320@gmail.com', 'terteyetyt', '25000', 'sam123', 'tgthh'),
('ds123', 'sasadara', 'pasan', '0702808565', 'fff@gmail.com', 'aefrwgetrh', '45688', 'sasadara', '123'),
('fgfht', 'gkjgk', 'kdfkj', 'dfogj', 'okog@gmail.com', 'ogorg', 'jejee', 'sasa', 'sasa'),
('fhhg', 'yuhj', 'ugyyk', '5656', 'ghgj@gmail.com', 'gyuyiu', '45656', 'sssa', 'sssa'),
('gdh', 'fhg', 'hgjh', '4656', 'fgh@gmail.com', 'etrdh', '553', 'mnmn', 'ummma'),
('rash', 'sdfd', 'fhfh', '353', 'dg@gmail.com', 'fdhg', 'fhfh', 'popopo', 'oppo');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Code` char(20) NOT NULL,
  `Name` char(50) NOT NULL,
  `Price` char(50) NOT NULL,
  `Amount` int(50) NOT NULL,
  `Unit` char(50) NOT NULL,
  `Discount` char(50) DEFAULT NULL,
  `Image` int(50) NOT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Code`, `Name`, `Price`, `Amount`, `Unit`, `Discount`, `Image`, `Type`) VALUES
('fru1', 'ffbbvbv', '70', 1, 'kg', '0', 68, 'Fruit'),
('fru2', 'ffbbvbv', '70', 1, 'kg', '0', 69, 'Fruit'),
('fru3', 'ffbbvbv', '70', 1, 'kg', '0', 70, 'Fruit'),
('fru4', 'ffbbvbv', '70', 1, 'kg', '0', 72, 'Fruit'),
('fru49', 'Mango', '200', 1, 'kg', '0', 77, 'Fruit'),
('fru5', 'ffbbvbv', '70', 1, 'kg', '0', 73, 'Fruit'),
('veg2', 'Tomato', '70', 200, 'g', '20', 60, 'Vegetable'),
('veg3', 'broccoli', '70', 1, 'kg', '0', 62, 'Vegetable'),
('veg398', 'Cucumber', '65', 1, 'kg', '0', 79, 'Vegetable'),
('veg399', 'Cucumber', '65', 1, 'kg', '0', 76, 'Vegetable'),
('veg4', 'Pumpkin', '50', 200, 'g', '0', 64, 'Vegetable'),
('veg55', 'brigal', '86', 1, 'kg', '0', 75, 'Vegetable'),
('veg59', 'Potatos', '59', 1, 'kg', '0', 78, 'Vegetable');

-- --------------------------------------------------------

--
-- Table structure for table `load_shop_items`
--

CREATE TABLE `load_shop_items` (
  `Item_Code` char(20) NOT NULL,
  `Load_Num` char(20) NOT NULL,
  `Amount` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `load_stores_items`
--

CREATE TABLE `load_stores_items` (
  `Item_Code` char(20) NOT NULL,
  `Load_Num` char(20) NOT NULL,
  `Amount` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loading_shop`
--

CREATE TABLE `loading_shop` (
  `Load_No` char(20) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loading_stores_invoice`
--

CREATE TABLE `loading_stores_invoice` (
  `Load_No` char(20) NOT NULL,
  `Date` date DEFAULT NULL,
  `Income` int(100) DEFAULT NULL,
  `Reg_Farmer_Or_Farm_Id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `productName` varchar(30) NOT NULL,
  `type` varchar(40) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`productName`, `type`, `quantity`, `price`) VALUES
('avacado', 'fruits', '1', 25),
('banana', 'fruits', '1', 6),
('brinjol', 'vegetables', '1kg', 90),
('Cabbage', 'vegetables', '1kg', 150),
('Carrot', 'vegetables', '1kg', 200),
('cashews', 'others', '1kg', 180),
('chicken', 'others', '1kg', 325),
('cocoa', 'fruits', '1', 30),
('curd', 'milkproduct', '1', 50),
('dhall', 'vegetables', '1kg', 120),
('eggs', 'others', '1', 17),
('grapes', 'fruits', '1', 3.5),
('guava', 'fruits', '1', 50),
('juice', 'milkproduct', '1', 80),
('leaks', 'vegetables', '1kg', 140),
('milkCup', 'milkproduct', '1', 60),
('orange', 'fruits', '1', 30),
('pineapple', 'fruits', '1', 100),
('Radish', 'vegetables', '1kg', 120),
('soy nuts', 'others', '1kg', 220),
('Turnip', 'vegetables', '1kg', 140),
('yougurt', 'milkproduct', '1', 35);

-- --------------------------------------------------------

--
-- Table structure for table `regfarmerorder`
--

CREATE TABLE `regfarmerorder` (
  `OrderNumber` int(20) NOT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Item_Code` char(20) DEFAULT NULL,
  `Amount` int(20) DEFAULT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT NULL,
  `Reg_Farmer_Id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registeredfarmer`
--

CREATE TABLE `registeredfarmer` (
  `Id` char(20) NOT NULL,
  `First_Name` char(20) NOT NULL,
  `Last_Name` char(20) NOT NULL,
  `Gender` char(10) NOT NULL,
  `Tele_Number` char(20) NOT NULL,
  `Email` char(20) DEFAULT NULL,
  `Address` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeredfarmer`
--

INSERT INTO `registeredfarmer` (`Id`, `First_Name`, `Last_Name`, `Gender`, `Tele_Number`, `Email`, `Address`) VALUES
('farmer1', 'dasun', 'kasun', 'male', '46456546', 'dggchg@emailcom', '23dgfdfdsgfg');

-- --------------------------------------------------------

--
-- Table structure for table `registeredshop`
--

CREATE TABLE `registeredshop` (
  `nic` char(20) NOT NULL,
  `fn` varchar(100) NOT NULL,
  `ln` varchar(100) NOT NULL,
  `pn` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `un` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeredshop`
--

INSERT INTO `registeredshop` (`nic`, `fn`, `ln`, `pn`, `address`, `email`, `un`, `pw`) VALUES
('11', '', 'shd', '4455', 'dghjb', 'sghg', 'aaa', 'aaa'),
('123', '', 'sdkcj', '46868878', 'ahxhchc', 'ajfujsj', 'hhh', 'ppp'),
('1234', '', '', '4676898', 'ahsjjc', 'ajsjc', 'aaa', 'lll'),
('123454321v', 'sasadara', 'suravi', '4511236585', '261/3 puwakwatta weligama ', 'patabandige@gmail.com', 'suravi', 'sen123456'),
('3556', 'Isurundi', 'Daluwatta', '0715478963', 'weligama', 'anjana@gmail.com', 'anji', 'anji'),
('881245543', 'Roshan', 'R', '0712225855', '', '', 'rnr', '123'),
('952811282v', '', 'ranaweera', '215674', 'sgshdgsf', 'zsgsvs', 'janidu', 'jony'),
('956020768V', '', 'Rasadari', '0718679886', 'weligama', 'anjanarasadari@gmail.com', 'Anjana', 'Anjana'),
('956v', 'Anjana', 'Rasadari', '071452136', 'weligama', 'anjana@gmail.com', 'Anjana', '78'),
('98788668V', 'sasadara', 'jayaweera ', '4846867', 'ahfjczj', 'ahzhxhccjc', 'sa', '12'),
('gbbgdbg', 'bbvfvf', 'fvfd', 'fdfv', 'fvfgf', 'ffgfg', 'sasa', 'sasa');

-- --------------------------------------------------------

--
-- Table structure for table `regshoporder`
--

CREATE TABLE `regshoporder` (
  `OrderNumber` int(100) NOT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Item_Code` char(20) DEFAULT NULL,
  `Amount` varchar(20) DEFAULT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT NULL,
  `Reg_Shop_Id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regshoporder`
--

INSERT INTO `regshoporder` (`OrderNumber`, `Date`, `Item_Code`, `Amount`, `Verified`, `Delivered`, `Reg_Shop_Id`) VALUES
(11, '8/8/1910', 'veg2', '20', 0, 0, '952811282v'),
(17, '6/5/1904', 'veg2', '2', 0, 0, '956020768V'),
(18, '1/1/1905', 'veg399', '1', 0, 0, '956020768V'),
(23, '5/5/1904', 'fru1', '23', 0, 0, '98788668V'),
(34, '6/5/1904', 'veg4', '23g', 0, 0, 'gbbgdbg'),
(35, '6/5/1904', 'veg4', '77kg', 0, 0, 'gbbgdbg');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `Code` char(20) NOT NULL,
  `Amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `Cart_Id` char(20) NOT NULL,
  `Total_Cost` int(50) DEFAULT NULL,
  `Shop_Id` char(20) DEFAULT NULL,
  `Date_Wanted` date DEFAULT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT NULL,
  `Reg_Shop_Id` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcartitems`
--

CREATE TABLE `shoppingcartitems` (
  `Shopping_Cart_Id` char(20) NOT NULL,
  `Item_Code` char(20) NOT NULL,
  `Amount` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `Code` char(20) NOT NULL,
  `Amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `St_Id` char(20) NOT NULL,
  `St_Name` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `name`) VALUES
(29, '20161016122151.jpg'),
(28, '20161016122151.jpg'),
(27, 'FB_IMG_1477801633877.jpg'),
(26, 'cola.jpg'),
(25, 'se.jpg'),
(24, 'slide_1.jpg'),
(23, 'Rahula_College_Crest_Color.svg.png'),
(30, '20161016122151.jpg'),
(31, '20161016122151.jpg'),
(32, '20161016121825.jpg'),
(33, '20161016121825.jpg'),
(34, '20161016121825.jpg'),
(35, '20161016121825.jpg'),
(36, '20161016121825.jpg'),
(37, '20161016121825.jpg'),
(38, 'Rcm.jpg'),
(39, 'FB_IMG_1478665009387.jpg'),
(40, 'FB_IMG_1475901990374.jpg'),
(41, 'IMG_20161109_222134.jpg'),
(42, 'FB_IMG_1473601414050.jpg'),
(43, 'FB_IMG_1477801633877.jpg'),
(44, 'FB_IMG_1480226764219.jpg'),
(45, 'images (47).jpg'),
(46, 'Snapshot.png'),
(47, 'Untitled.png'),
(48, 'cola.jpg'),
(49, 'Rahula_College_Crest_Color.svg.png'),
(50, 'se.jpg'),
(51, 'Rcm.jpg'),
(52, 'slide_1.jpg'),
(53, 'se2.jpg'),
(54, 'se2.jpg'),
(55, 'cola.jpg'),
(56, 'cola.jpg'),
(57, 'Rahula_College_Crest_Color.svg.png'),
(58, 'download.jpg'),
(59, 'download.jpg'),
(60, '1371616351150 (1).jpeg'),
(61, '800px_COLOURBOX1712223.jpg'),
(62, '800px_COLOURBOX1712223.jpg'),
(63, 'imagvbvnes.jpg'),
(64, 'imagvbvnes.jpg'),
(65, 'imagexvs.jpg'),
(66, 'imagescbvb.jpg'),
(67, 'imafhghges.jpg'),
(68, 'imagevbbhgs.jpg'),
(69, 'imagesgfg.jpg'),
(70, 'imagfgghes.jpg'),
(71, 'imagefhks.jpg'),
(72, 'imagefhks.jpg'),
(73, 'infbhgdex.jpg'),
(74, '227049676.jpg'),
(75, '533049552-612x612.jpg'),
(76, 'imagcbes.jpg'),
(77, 'imafhghges.jpg'),
(78, 'images.jpg'),
(79, 'Couve_Flor_135.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_amount` float DEFAULT NULL,
  `order_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_amount`, `order_datetime`) VALUES
(19, '75', '0000-00-00', 'Hasee Amarathunga', 'Galle Road,Colombo 06.', 415, '2018-09-09 00:00:00'),
(23, '120', '0000-00-00', 'Isuru', '', 3300, '2018-09-10 19:54:51'),
(24, '113', '2018-09-10', 'JPS Sasadara', 'Galle road, Colombo 06.', 1500, '2018-09-11 06:01:20'),
(26, '2145', '2018-09-13', 'Sam', 'hsda', 3360, '2018-09-14 01:26:45'),
(27, '223', '2018-09-12', 'dsun', '', 1240, '2018-09-15 15:18:17'),
(28, '78', '2018-09-10', 'sahas', '', 392, '2018-09-15 15:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_price` decimal(10,2) NOT NULL,
  `order_item_actual_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`order_item_id`, `order_id`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_actual_amount`) VALUES
(44, 19, 'banana', '20.00', '12.00', '240.00'),
(45, 19, 'yougurt', '5.00', '35.00', '175.00'),
(63, 23, 'milkCup', '12.00', '150.00', '1800.00'),
(64, 23, 'banana', '50.00', '6.00', '300.00'),
(65, 23, 'cocoa', '10.00', '20.00', '200.00'),
(66, 23, 'Carrot', '10.00', '50.00', '500.00'),
(67, 23, 'Cabbage', '5.00', '100.00', '500.00'),
(94, 27, 'yougurt', '8.00', '145.00', '1160.00'),
(95, 27, 'banana', '4.00', '20.00', '80.00'),
(96, 28, 'grapes', '7.00', '56.00', '392.00'),
(97, 24, 'Carrot', '15.00', '75.00', '1125.00'),
(98, 24, 'banana', '5.00', '5.00', '25.00'),
(99, 24, 'yougurt', '10.00', '35.00', '350.00'),
(100, 26, 'Cabbage', '20.00', '150.00', '3000.00'),
(101, 26, 'Cabbage', '20.00', '150.00', '3000.00'),
(102, 26, 'orange', '3.00', '120.00', '360.00'),
(103, 26, 'orange', '3.00', '120.00', '360.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addbillitem`
--
ALTER TABLE `addbillitem`
  ADD PRIMARY KEY (`Bill_Number`,`Item_Code`),
  ADD KEY `Item_Code` (`Item_Code`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_Number`),
  ADD KEY `Cashier_Emp_Id` (`Cashier_Emp_Id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_Id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`Course_Id`,`St_Id`),
  ADD KEY `St_Id` (`St_Id`);

--
-- Indexes for table `farmshopemployee`
--
ALTER TABLE `farmshopemployee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `load_shop_items`
--
ALTER TABLE `load_shop_items`
  ADD PRIMARY KEY (`Item_Code`,`Load_Num`),
  ADD KEY `Load_Num` (`Load_Num`);

--
-- Indexes for table `load_stores_items`
--
ALTER TABLE `load_stores_items`
  ADD PRIMARY KEY (`Item_Code`,`Load_Num`),
  ADD KEY `Load_Num` (`Load_Num`);

--
-- Indexes for table `loading_shop`
--
ALTER TABLE `loading_shop`
  ADD PRIMARY KEY (`Load_No`);

--
-- Indexes for table `loading_stores_invoice`
--
ALTER TABLE `loading_stores_invoice`
  ADD PRIMARY KEY (`Load_No`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`productName`);

--
-- Indexes for table `regfarmerorder`
--
ALTER TABLE `regfarmerorder`
  ADD PRIMARY KEY (`OrderNumber`),
  ADD KEY `Item_Code` (`Item_Code`),
  ADD KEY `Reg_Farmer_Id` (`Reg_Farmer_Id`);

--
-- Indexes for table `registeredfarmer`
--
ALTER TABLE `registeredfarmer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registeredshop`
--
ALTER TABLE `registeredshop`
  ADD PRIMARY KEY (`nic`);

--
-- Indexes for table `regshoporder`
--
ALTER TABLE `regshoporder`
  ADD PRIMARY KEY (`OrderNumber`),
  ADD KEY `Item_Code` (`Item_Code`),
  ADD KEY `Reg_Shop_Id` (`Reg_Shop_Id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`Cart_Id`),
  ADD KEY `Reg_Shop_Id` (`Reg_Shop_Id`);

--
-- Indexes for table `shoppingcartitems`
--
ALTER TABLE `shoppingcartitems`
  ADD PRIMARY KEY (`Shopping_Cart_Id`,`Item_Code`),
  ADD KEY `Item_Code` (`Item_Code`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`St_Id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regfarmerorder`
--
ALTER TABLE `regfarmerorder`
  MODIFY `OrderNumber` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regshoporder`
--
ALTER TABLE `regshoporder`
  MODIFY `OrderNumber` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addbillitem`
--
ALTER TABLE `addbillitem`
  ADD CONSTRAINT `addbillitem_ibfk_1` FOREIGN KEY (`Bill_Number`) REFERENCES `bill` (`Bill_Number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addbillitem_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`Cashier_Emp_Id`) REFERENCES `farmshopemployee` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`Course_Id`) REFERENCES `course` (`Course_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`St_Id`) REFERENCES `student` (`St_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `load_shop_items`
--
ALTER TABLE `load_shop_items`
  ADD CONSTRAINT `load_shop_items_ibfk_1` FOREIGN KEY (`Load_Num`) REFERENCES `loading_stores_invoice` (`Load_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `load_shop_items_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `load_stores_items`
--
ALTER TABLE `load_stores_items`
  ADD CONSTRAINT `load_stores_items_ibfk_1` FOREIGN KEY (`Load_Num`) REFERENCES `loading_stores_invoice` (`Load_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `load_stores_items_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regfarmerorder`
--
ALTER TABLE `regfarmerorder`
  ADD CONSTRAINT `regfarmerorder_ibfk_1` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regfarmerorder_ibfk_2` FOREIGN KEY (`Reg_Farmer_Id`) REFERENCES `registeredfarmer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regshoporder`
--
ALTER TABLE `regshoporder`
  ADD CONSTRAINT `regshoporder_ibfk_1` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regshoporder_ibfk_2` FOREIGN KEY (`Reg_Shop_Id`) REFERENCES `registeredshop` (`nic`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`Reg_Shop_Id`) REFERENCES `registeredshop` (`nic`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shoppingcartitems`
--
ALTER TABLE `shoppingcartitems`
  ADD CONSTRAINT `shoppingcartitems_ibfk_1` FOREIGN KEY (`Shopping_Cart_Id`) REFERENCES `shoppingcart` (`Cart_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shoppingcartitems_ibfk_2` FOREIGN KEY (`Item_Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`Code`) REFERENCES `items` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `grpass34hospital`
--
CREATE DATABASE IF NOT EXISTS `grpass34hospital` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grpass34hospital`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `checkp`
--
CREATE TABLE `checkp` (
`Dname` varchar(37)
,`pno` char(3)
,`prescription` varchar(37)
,`DateTime` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dconsultant`
--
CREATE TABLE `dconsultant` (
`Did` char(3)
,`Dname` varchar(37)
,`wno` char(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `docpatient`
--

CREATE TABLE `docpatient` (
  `Did` char(3) NOT NULL,
  `pno` char(3) NOT NULL,
  `prescription` varchar(37) DEFAULT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `docpatient`
--

INSERT INTO `docpatient` (`Did`, `pno`, `prescription`, `DateTime`) VALUES
('D01', '100', 'igjhgjbvb\r\nhjh\r\nhvjhb', '2016-05-27 03:57:00'),
('D01', '101', 'efwrry.\r\ndxfhgdtuy.\r\nzdfst.', '2016-03-11 08:00:01'),
('D02', '101', 'wertwtwr.asfewe.srter\r\n', '2016-03-01 12:59:00'),
('D03', '100', 'etwrt\r\nsfgdry\r\nsdfgsrt\r\n', '2016-03-01 12:59:00'),
('D03', '105', 'iukijkjknm ', '2016-05-27 03:57:00'),
('D04', '105', 'srgdfg.srtret.sfrgdy.', '2016-03-11 08:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Did` char(3) NOT NULL,
  `RegNo` varchar(17) NOT NULL,
  `Dname` varchar(37) DEFAULT NULL,
  `address` varchar(37) DEFAULT NULL,
  `Tpno` char(10) DEFAULT NULL,
  `specialty` varchar(17) DEFAULT NULL,
  `wno` char(2) DEFAULT NULL,
  `consultant` varchar(3) DEFAULT NULL,
  `EPhysician` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Did`, `RegNo`, `Dname`, `address`, `Tpno`, `specialty`, `wno`, `consultant`, `EPhysician`) VALUES
('D01', '2016/CM/101', 'Duleep Alwis', '12/4A,Peiris Rd,Mt.Lavinia', '0112723120', 'ENT', '01', 'yes', 'no'),
('D02', '2016/PM/005', 'Dilina D.', '11A,ERA Rd,Maha-Nuwara', '0718529634', 'DER', '02', 'no', 'no'),
('D03', '2016/PM/007', 'Ayesh', '13Q,QWE Rd,Rathmalana', '0712589634', 'DER', '02', 'yes', 'yes'),
('D04', '2016/PM/009', 'Chathuri', '15D,ASD Rd,Malabe', '0718529634', 'DFG', '01', 'no', 'yes'),
('D05', '2016/JM/005', 'Jinthu A.', '13V,FGH Rd,Jaffna', '0712587419', 'YUI', '03', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dspecialist`
--
CREATE TABLE `dspecialist` (
`Did` char(3)
,`Dname` varchar(37)
,`specialty` varchar(17)
,`wno` char(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `extphys`
--
CREATE TABLE `extphys` (
`Did` char(3)
,`Regno` varchar(17)
,`Dname` varchar(37)
,`wno` char(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pno` char(3) NOT NULL,
  `pname` varchar(37) DEFAULT NULL,
  `address` varchar(37) DEFAULT NULL,
  `Tpno` char(10) DEFAULT NULL,
  `age` char(3) DEFAULT NULL,
  `recom_by` varchar(23) DEFAULT NULL,
  `wno` varchar(3) NOT NULL,
  `Did` char(3) DEFAULT NULL,
  `appBy` char(3) NOT NULL,
  `admitd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pno`, `pname`, `address`, `Tpno`, `age`, `recom_by`, `wno`, `Did`, `appBy`, `admitd`) VALUES
('100', 'Pansilu nilaweera', '11/1Z,Mihindu mawatha,Dehiwala ', '0718529634', '37', '2016/CM/007', '01', 'D03', 'D03', '2016-03-05'),
('101', 'Akila Rangoda', '12A/A,Alawwa,Maharagama', '0112563987', '21', '2016/JM/003', '02', 'D02', 'D01', '2016-03-07'),
('102', 'Kamal K.', '19D,yui Rd,Kaluthara', '0715896327', '23', '2016/CM/007', '03', 'D02', 'D05', '2016-05-03'),
('105', 'Dinithi W.', '77H,Raja mawatha,Rathmalana', '0726398745', '23', '2016/JM/003', '03', 'D02', 'D02', '2016-05-23'),
('121', 'Nayana', '123A,YHJ Rd,Borella', '0112589637', '23', '2016/CM/007', '03', 'D01', 'D03', '2016-05-03'),
('123', 'sgsfgs', 'sgdsfgsfg', '1234567890', '37', '', '03', 'D03', 'D01', '2016-03-05'),
('345', 'Dimuthi', '111J,REW Rd,Ambalangoda', '0715896327', '21', '2016/CM/007', '03', 'D03', 'D05', '2016-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `pattreat`
--

CREATE TABLE `pattreat` (
  `treno` varchar(5) NOT NULL,
  `pno` varchar(3) NOT NULL,
  `result` varchar(57) DEFAULT NULL,
  `DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pattreat`
--

INSERT INTO `pattreat` (`treno`, `pno`, `result`, `DateTime`) VALUES
('T0001', '101', 'iuytihjk\r\nkjbkj\r\nhjkhi', '2017-05-23 01:05:03'),
('T0001', '105', 'hfdhg\r\nghv\r\nnhb\r\n', '2016-03-11 08:01:05'),
('T0002', '101', 'ghjgv\r\nhvj\r\nmnjmn\r\n', '2016-03-05 09:57:03'),
('T0002', '105', 'jhjhgfhgf', '2016-03-11 08:01:05');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ptestr`
--
CREATE TABLE `ptestr` (
`pno` char(3)
,`tname` varchar(17)
,`date` date
,`time` time
,`result` varchar(23)
);

-- --------------------------------------------------------

--
-- Table structure for table `testr`
--

CREATE TABLE `testr` (
  `pno` char(3) NOT NULL,
  `tno` char(3) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `result` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testr`
--

INSERT INTO `testr` (`pno`, `tno`, `date`, `time`, `result`) VALUES
('100', 'T02', '2016-05-13', '00:00:12', 'ertert.\r\nasfadf.\r\nzdfs\r'),
('105', 'T01', '2016-05-13', '13:05:00', 'qwerty.\r\nwedvcx.\r\nytuio');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `tno` varchar(5) NOT NULL,
  `tname` varchar(17) DEFAULT NULL,
  `Did` char(3) NOT NULL,
  `Rno` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`tno`, `tname`, `Did`, `Rno`) VALUES
('T01', 'Blood', 'D01', '001'),
('T02', 'Urine', 'D02', '003'),
('T03', 'Eye', 'D05', '005'),
('T04', 'Brain', 'D04', '007'),
('T05', 'Heart', 'D03', '001'),
('T07', 'ryp', 'D03', '005');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treno` varchar(5) NOT NULL,
  `trename` varchar(37) DEFAULT NULL,
  `Did` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treno`, `trename`, `Did`) VALUES
('T0001', 'Physiotherapy', 'D01'),
('T0002', 'Head treatment', 'D02'),
('T0003', 'Leg', 'D04');

-- --------------------------------------------------------

--
-- Stand-in structure for view `treatmentd`
--
CREATE TABLE `treatmentd` (
`trename` varchar(37)
,`pno` varchar(3)
,`result` varchar(57)
,`DateTime` datetime
,`Dname` varchar(37)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `treatmentv`
--
CREATE TABLE `treatmentv` (
`treno` varchar(5)
,`trename` varchar(37)
,`Did` char(3)
,`Dname` varchar(37)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(5) NOT NULL,
  `username` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL,
  `level` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`) VALUES
('D01', 'alwis', 'a123', 'doctor'),
('D05', 'Buddi', 'b123', 'reception'),
('E01', 'duleep', 'd123', 'admin'),
('E03', 'sajun', 's321', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `wno` char(2) NOT NULL,
  `wname` varchar(13) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`wno`, `wname`, `capacity`) VALUES
('01', 'Moncology', 55),
('02', 'Pediatrics', 50),
('03', 'Maternity', 50),
('04', 'xyz', 50);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wardpat`
--
CREATE TABLE `wardpat` (
`wno` char(2)
,`wname` varchar(13)
,`capacity` int(11)
,`patients` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `checkp`
--
DROP TABLE IF EXISTS `checkp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `checkp`  AS  select `d`.`Dname` AS `Dname`,`p`.`pno` AS `pno`,`p`.`prescription` AS `prescription`,`p`.`DateTime` AS `DateTime` from (`doctor` `d` join `docpatient` `p`) where (`d`.`Did` = `p`.`Did`) ;

-- --------------------------------------------------------

--
-- Structure for view `dconsultant`
--
DROP TABLE IF EXISTS `dconsultant`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dconsultant`  AS  select `doctor`.`Did` AS `Did`,`doctor`.`Dname` AS `Dname`,`doctor`.`wno` AS `wno` from `doctor` where (`doctor`.`consultant` = 'yes') ;

-- --------------------------------------------------------

--
-- Structure for view `dspecialist`
--
DROP TABLE IF EXISTS `dspecialist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dspecialist`  AS  select `doctor`.`Did` AS `Did`,`doctor`.`Dname` AS `Dname`,`doctor`.`specialty` AS `specialty`,`doctor`.`wno` AS `wno` from `doctor` where (`doctor`.`specialty` <> 'null') ;

-- --------------------------------------------------------

--
-- Structure for view `extphys`
--
DROP TABLE IF EXISTS `extphys`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `extphys`  AS  select `doctor`.`Did` AS `Did`,`doctor`.`RegNo` AS `Regno`,`doctor`.`Dname` AS `Dname`,`doctor`.`wno` AS `wno` from `doctor` where (`doctor`.`EPhysician` = 'yes') ;

-- --------------------------------------------------------

--
-- Structure for view `ptestr`
--
DROP TABLE IF EXISTS `ptestr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ptestr`  AS  select `testr`.`pno` AS `pno`,`tests`.`tname` AS `tname`,`testr`.`date` AS `date`,`testr`.`time` AS `time`,`testr`.`result` AS `result` from (`tests` join `testr`) where (`tests`.`tno` = `testr`.`tno`) ;

-- --------------------------------------------------------

--
-- Structure for view `treatmentd`
--
DROP TABLE IF EXISTS `treatmentd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `treatmentd`  AS  select `treatment`.`trename` AS `trename`,`pattreat`.`pno` AS `pno`,`pattreat`.`result` AS `result`,`pattreat`.`DateTime` AS `DateTime`,`doctor`.`Dname` AS `Dname` from ((`treatment` join `pattreat`) join `doctor`) where ((`doctor`.`Did` = `treatment`.`Did`) and (`treatment`.`treno` = `pattreat`.`treno`)) ;

-- --------------------------------------------------------

--
-- Structure for view `treatmentv`
--
DROP TABLE IF EXISTS `treatmentv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `treatmentv`  AS  select `treatment`.`treno` AS `treno`,`treatment`.`trename` AS `trename`,`treatment`.`Did` AS `Did`,`doctor`.`Dname` AS `Dname` from (`treatment` join `doctor`) where (`doctor`.`Did` = `treatment`.`Did`) ;

-- --------------------------------------------------------

--
-- Structure for view `wardpat`
--
DROP TABLE IF EXISTS `wardpat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wardpat`  AS  select `ward`.`wno` AS `wno`,`ward`.`wname` AS `wname`,`ward`.`capacity` AS `capacity`,count(`patient`.`pno`) AS `patients` from (`ward` left join `patient` on((`ward`.`wno` = `patient`.`wno`))) group by `ward`.`wno` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `docpatient`
--
ALTER TABLE `docpatient`
  ADD PRIMARY KEY (`Did`,`pno`,`DateTime`),
  ADD KEY `x2` (`pno`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Did`),
  ADD UNIQUE KEY `RegNo` (`RegNo`),
  ADD KEY `x` (`wno`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pno`),
  ADD KEY `Did` (`Did`),
  ADD KEY `x7` (`appBy`),
  ADD KEY `x9` (`wno`);

--
-- Indexes for table `pattreat`
--
ALTER TABLE `pattreat`
  ADD PRIMARY KEY (`treno`,`pno`),
  ADD KEY `y4` (`pno`);

--
-- Indexes for table `testr`
--
ALTER TABLE `testr`
  ADD PRIMARY KEY (`pno`,`tno`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`tno`),
  ADD KEY `y` (`Did`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treno`),
  ADD KEY `y3` (`Did`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`wno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `docpatient`
--
ALTER TABLE `docpatient`
  ADD CONSTRAINT `x2` FOREIGN KEY (`pno`) REFERENCES `patient` (`pno`) ON DELETE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `x` FOREIGN KEY (`wno`) REFERENCES `ward` (`wno`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `x9` FOREIGN KEY (`wno`) REFERENCES `ward` (`wno`) ON UPDATE NO ACTION;

--
-- Constraints for table `pattreat`
--
ALTER TABLE `pattreat`
  ADD CONSTRAINT `y4` FOREIGN KEY (`pno`) REFERENCES `patient` (`pno`) ON DELETE CASCADE;

--
-- Constraints for table `testr`
--
ALTER TABLE `testr`
  ADD CONSTRAINT `x1` FOREIGN KEY (`pno`) REFERENCES `patient` (`pno`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `y2` FOREIGN KEY (`Did`) REFERENCES `doctor` (`Did`) ON UPDATE NO ACTION;

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `y3` FOREIGN KEY (`Did`) REFERENCES `doctor` (`Did`) ON DELETE SET NULL ON UPDATE NO ACTION;
--
-- Database: `hospital_sys`
--
CREATE DATABASE IF NOT EXISTS `hospital_sys` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospital_sys`;

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `emp_id` int(11) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consultants`
--

INSERT INTO `consultants` (`emp_id`, `ward_no`, `name`, `password`) VALUES
(0, 1, 'das', '123'),
(1, 2, 'asd', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `emp_id` int(11) NOT NULL,
  `mbbs_no` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`emp_id`, `mbbs_no`, `name`, `password`) VALUES
(1, 'D1', 'asd', ''),
(3, 'D3', 'ert', ''),
(4, 'D4', 'dsfsdf', ''),
(11, 'D2', 'isuru dilhan', '123');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `physician` varchar(100) NOT NULL,
  `consultant` int(11) NOT NULL,
  `description` text NOT NULL,
  `ward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `nic`, `name`, `contact`, `address`, `age`, `gender`, `physician`, `consultant`, `description`, `ward`) VALUES
(1, '22222', 'zzzzzzzz', '23243', 'ascdcsd', 'fsdf', 'male', 'asdfd', 0, 'dsfsdfs', 0),
(3, '1684651v', 'Sunil', '07148652', '5ssdfsdf', '89', 'male', 'acdd', 0, 'asdasda', 0),
(4, '1684651vsdf', 'Sunilsdaf', '07148652sdf', '5ssdfsdf', '89', 'male', 'acdd', 0, 'asdasda', 0),
(5, '213143', 'sunil 2', 'fdf', 'sdf', '1233', 'male', 'acsd', 0, 'dcsdcdsf', 0),
(6, '213143', 'sunil 2', 'fdf', 'sdf', '1233', 'male', 'acsd', 0, 'dcsdcdsf', 0),
(7, '213143', 'sunil 2', 'fdf', 'sdf', '1233', 'male', 'acsd', 0, 'dcsdcdsf', 0),
(9, '', '', '', '', '', 'male', '', 0, '', 0),
(10, '', '', '', '', '', 'male', '', 0, '', 0),
(11, '', '', '', '', '', 'male', '', 0, '', 0),
(13, 'df', 'abcd', 'asd', 'adx', '', 'male', '', 0, '', 0),
(14, '4234', 'jkdskfhs', '234', 'as', 'sds', 'male', '', 0, '', 0),
(15, '', '', '', '', '', 'male', '', 0, '', 0),
(17, '', 'ffygfy', '', '', '', 'male', '', 0, '', 0),
(18, 'eert', 'qwewerwet', '', '', '', 'male', '', 0, '', 1),
(19, '', 'patient 1', '', '', '', 'male', '', 0, '', 0),
(20, '', 'Patient 2', '', '', '', 'male', '', 0, '', 0),
(21, '', '', '', '', '', 'male', '', 0, '', 0),
(22, '', 'patient 3', '', '', '', 'male', '', 0, '', 0),
(23, '', 'w', '', '', '', 'male', '', 0, '', 0),
(24, '34341', 'sfa', '123', '23dd', '12', 'male', 'def', 0, 'qwer', 2),
(30, '123123', 'z1', '23123', '12dwede', '1', 'male', 'dscr', 0, 'qwe3e3', 2),
(31, '123123', 'z2', '21312', 'dasd', '12', 'male', 'sdaf', 0, 'frgfbcvdd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_on_patients`
--

CREATE TABLE `test_on_patients` (
  `t_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `duedate` date NOT NULL,
  `consultant` varchar(100) NOT NULL,
  `examiner` varchar(100) NOT NULL,
  `result` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_on_patients`
--

INSERT INTO `test_on_patients` (`t_id`, `p_id`, `duedate`, `consultant`, `examiner`, `result`) VALUES
(3, 14, '2013-03-03', 'cfdsf', 'asd', 'Upcoming'),
(4, 22, '2013-03-06', 'sdasd', 'asdad', 'Upcoming'),
(10, 13, '2013-03-06', 'abc', 'qwe', 'Upcoming');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `test_id` int(11) NOT NULL,
  `test_name` varchar(200) NOT NULL,
  `doc_incharge` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`test_id`, `test_name`, `doc_incharge`) VALUES
(3, 'sdaf', 'sdf'),
(4, 'asfaf', 'dfsdf'),
(5, 'fdbgdb', 'sd'),
(6, ' fff', 'gtgsd'),
(7, 'dhyy', 'e4t'),
(8, 'dhyfdy', 'edf4t'),
(9, 'asf', 'vvc'),
(10, 'asfdf', 'vvfdfc'),
(11, 'dsgdfg', 'cxv'),
(12, 'dsgdffffg', 'fcxv'),
(13, '2', '3');

-- --------------------------------------------------------

--
-- Stand-in structure for view `top`
--
CREATE TABLE `top` (
`t_id` int(11)
,`p_id` int(11)
,`result` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `ward_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `max_patients` int(11) NOT NULL,
  `max_staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`ward_no`, `name`, `max_patients`, `max_staff`) VALUES
(0, '', 0, 0),
(1, 'aaaa', 12, 4),
(2, 'www', 44, 5),
(22, 'wwww', 12, 2);

-- --------------------------------------------------------

--
-- Structure for view `top`
--
DROP TABLE IF EXISTS `top`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `top`  AS  select `test_on_patients`.`t_id` AS `t_id`,`test_on_patients`.`p_id` AS `p_id`,`test_on_patients`.`result` AS `result` from `test_on_patients` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `ward_no` (`ward_no`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `ward` (`ward`),
  ADD KEY `consultant` (`consultant`);

--
-- Indexes for table `test_on_patients`
--
ALTER TABLE `test_on_patients`
  ADD PRIMARY KEY (`t_id`,`p_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`ward_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `consultants`
--
ALTER TABLE `consultants`
  ADD CONSTRAINT `consultants_ibfk_1` FOREIGN KEY (`ward_no`) REFERENCES `ward` (`ward_no`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`ward`) REFERENCES `ward` (`ward_no`),
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`consultant`) REFERENCES `consultants` (`emp_id`);

--
-- Constraints for table `test_on_patients`
--
ALTER TABLE `test_on_patients`
  ADD CONSTRAINT `test_on_patients_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `patient` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_on_patients_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `tests` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `my_database`
--
CREATE DATABASE IF NOT EXISTS `my_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `my_database`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `nikan`
--
CREATE DATABASE IF NOT EXISTS `nikan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nikan`;
--
-- Database: `nsbm`
--
CREATE DATABASE IF NOT EXISTS `nsbm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nsbm`;

-- --------------------------------------------------------

--
-- Table structure for table `bus1yrar`
--

CREATE TABLE `bus1yrar` (
  `IndexNo` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus1yrar`
--

INSERT INTO `bus1yrar` (`IndexNo`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('2017bs001', 'Sahiru', 'Nyana', '1995/05/28', '956362148v', 'Male', '2017', 'February', 'Ampara', 'Sahiru@gmail.com', '0758585632'),
('2017bs002', 'Kasuni', 'Dais', '1995/12/30', '9536258933v', 'Female', '2018', 'February', 'Athurugiriya', 'Kasuni@gmail.com', '07852361258'),
('2017bs003', 'Nuwan', 'Perera', '1994/02/23', '955236655v', 'Male', '2018', 'July', 'Mathale', 'Nuwan@gmail.com', '07456325455'),
('2017bs004', 'Lahiru', 'Gamage', '1996/01/15', '96654154v', 'Male', '2018', 'July', 'Moratuwa', 'Lahiru@gmail.com', '0754654584'),
('2017bs005', 'Dasun', 'Shanaka', '1996/01/03', '9603645621v', 'Male', '2018', 'February', 'Kurunegala', 'Dasun@gmail.com', '0756544156'),
('2017bs006', 'Aruna', 'Dharshana', '1997/05/23', '978569324v', 'Male', '2018', 'February', 'Nugegoda', 'Aruna@gmail.com', '0754585963');

-- --------------------------------------------------------

--
-- Table structure for table `bus2year`
--

CREATE TABLE `bus2year` (
  `Index` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(10) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus2year`
--

INSERT INTO `bus2year` (`Index`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('2016bs001', 'Janani', 'Hewage', '1996/08/29', '96586324v', 'Female', '2017', 'February', 'Kolonnawa', 'Janani@gmail.com', '0758585632'),
('2016bs010', 'Rohith', 'Sharma', '1996/02/12', '953625143v', 'Male', '2017', 'February', 'Chennai', 'Rohith@gmail.com', '0756325147'),
('2016bs012', 'Asan', 'Ali', '195/02/23', '953624172v', 'Male', '2017', 'July', 'Wellwatta', 'Asan@gmail.com', '0758569321'),
('w', 'w', 'w', 'w', 'w', 'Male', 'w', 'February', 'w', 'w', 'w');

-- --------------------------------------------------------

--
-- Table structure for table `bus3year`
--

CREATE TABLE `bus3year` (
  `Index` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(40) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus3year`
--

INSERT INTO `bus3year` (`Index`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('2015bs003', 'Amila', 'Silva', '1196/05/03', '953625147v', 'Male', '2016', 'February', 'Dabana', 'Amila@gmail.com', '0748596123'),
('2016bs002', 'Adeesha', 'Udamini', '1194/08/12', '945214523v', 'Female', '2016', 'July', 'Rajagiriya', 'Adeesha@gmail.com', '07542236954'),
('u', 'u', 'u', 'u', 'u', 'Male', 'u', 'February', 'u', 'u', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `bus4year`
--

CREATE TABLE `bus4year` (
  `Index` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(15) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus4year`
--

INSERT INTO `bus4year` (`Index`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('2014bs004', 'Tissa', 'Perera', '1994/06/23', '', 'Male', '2015', 'July', 'Polonnaruwa', 'Tissa@gmail.com', '078523614'),
('2014bs005', 'Mahela', 'Jayawardhana', '1192/05/01', '9258632501v', 'Male', '2015', 'July', 'Kaduwela', 'Mahela@gmail.com', '0758632145'),
('2015bs005', 'Pala', 'Kusum', '1996/05/23', '95366222v', 'Male', '2015', 'February', 'Yala', 'Pala@gmail.com', '07585863214'),
('c', 'c', 'c', 'c', 'c', 'Male', 'c', 'February', 'c', 'c', 'c'),
('wg', 'g', 'g', 'gg', 'g', 'Male', 'g', 'February', 'g', 'g', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `eng1year`
--

CREATE TABLE `eng1year` (
  `Index` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(40) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eng1year`
--

INSERT INTO `eng1year` (`Index`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('2015en004', 'Natasha', 'Perera', '1994/05/23', '953625458v', 'Female', '2016', 'February', 'Kelaniya', 'Natasha@gmail.com', '0742536120'),
('2015en009', 'Teena', 'Vinta', '1996/01/18', '965823641v', 'Male', '2017', 'July', 'Athurugiriya', 'Teena@gmail.com', '075253614'),
('2015en012', 'Kavi', 'Hansi', '1194/09/03', '948574269v', 'Female', '2016', 'July', 'Katana', 'Kavi@gmail.com', '0725252698'),
('2016en006', 'Pethum', 'Nimesh', '1996/02/02', '962536256v', 'Male', '2017', 'February', 'Matara', 'Pethum@gmail.com', '0711245785'),
('2017en001', 'Harsha', 'Nuwan', '1996/02/23', '962536289v', 'Male', '2017', 'February', 'Maradana', 'Harsha@gmail.com', '0785858630'),
('2017en002', 'Kasuni', 'Gayanika', '1996/08/19', '963663586v', 'Female', '2018', 'July', 'Wattala', 'Kasuni@gmail.com', '078521456'),
('2017en005', 'Dasun', 'Shanaka', '1997/05/28', '975248899v', 'Male', '2018', 'February', 'Polgahawela', 'Dasun@gmail.com', '0785214452'),
('2017en006', 'Sachini', 'Ganga', '1997/05/13', '975869452v', 'Female', '2018', 'February', 'Galle', 'Sachini@gmail.com', '0711289654'),
('2017en017', 'Nipinsala', 'Dais', '1996/08/15', '925858693v', 'Female', '2018', 'February', 'Kandy', 'Nipinsala@gmail.com', '0754545693'),
('a', 'a', 'a', 'a', 'a', 'Male', 'a', 'February', 'a', 'a', 'a'),
('aaaaaaaaa', 'a', 'a', 'aa', 'a', 'Male', 'a', 'February', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `eng2year`
--

CREATE TABLE `eng2year` (
  `Index` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(40) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eng2year`
--

INSERT INTO `eng2year` (`Index`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('00', 'aaaa', 'a', 'aa', 'aa', 'Male', 'a', 'February', 'aaa', 'aa', 'a'),
('2016en003', 'Akila', 'Dasun', '1195/12/31', '958632145v', 'Male', '2017', 'July', 'Katharagama', 'Akila@gmail.com', '0112586642'),
('2016en004', 'Dilki', 'Seelawansha', '0995/09/16', '956325789v', 'Male', '2016', 'July', 'Malabe', 'Dilki@gmail.com', '0754885696');

-- --------------------------------------------------------

--
-- Table structure for table `eng3year`
--

CREATE TABLE `eng3year` (
  `Index` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(40) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eng3year`
--

INSERT INTO `eng3year` (`Index`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('2015en001', 'Dinesh', 'Chandimal', '1994/04/10', '947858692v', 'Male', '2016', 'July', 'Kuruwita', 'Dinesh@gmail.com', '0725858621'),
('ww', 'ww', 'ww', 'ww', 'ww', 'Male', 'ww', 'February', 'ww', 'ww', 'ww');

-- --------------------------------------------------------

--
-- Table structure for table `eng4year`
--

CREATE TABLE `eng4year` (
  `Index` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(40) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Tel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eng4year`
--

INSERT INTO `eng4year` (`Index`, `FirstName`, `LastName`, `DOB`, `NIC`, `Gender`, `IntakeYear`, `IntakeMonth`, `Address`, `Email`, `Tel`) VALUES
('2014en001', 'Ranil', 'Perera', '1992/03/18', '920369784v', 'Male', '2015', 'February', 'Nuwaragama', 'Ranil@gmail.com', '0754874236'),
('2014en002', 'Sunil', 'Gawaskar', '1992/05/09', '962536589v', 'Male', '2014', 'February', 'Homagama', 'Sunil@gmail.com', '0785858685'),
('2014en003', 'Iresha', 'Malshani', '1996/07/18', '962456289v', 'Female', '2014', 'July', 'Kotahena', 'Iresha@gmail.com', '0755885630'),
('a', 'aa', 'a', 'a', 'a', 'Male', 'a', 'February', 'a', 'aa', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `RegNo` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `RoomNum` varchar(40) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Faculty` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `CourseType` varchar(20) NOT NULL,
  `Nic` varchar(25) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Email` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`RegNo`, `FirstName`, `LastName`, `RoomNum`, `Address`, `Gender`, `Faculty`, `Year`, `CourseType`, `Nic`, `Subject`, `Email`, `mobile`) VALUES
('cs/003', 'Kumara ', 'Rathnayake', 'R026', 'Maradana', 'Male', 'Computing', '1St Year', 'Master', '853666512v', 'sub1', 'Kumara@gmailcom', '0752125144'),
('r', 'r', 'r', 'rr', 'r', 'Male', 'Faculty', '1St Year', 'Master', 'r', 'r', 'r', 'r');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `IndexNo` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `CourseType` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`IndexNo`, `FirstName`, `LastName`, `DOB`, `Gender`, `IntakeYear`, `IntakeMonth`, `CourseType`, `Address`, `Email`, `Mobile`) VALUES
('2017cs010', 'Pehesara', 'Kumara', '1995/08/23', 'Male', '2018', 'February', 'Becholor', 'Dabadeniya', 'Pehesara@gmial.com', '0785214850'),
('2017cs011', 'Anushka', 'Sharma', '1997/01/23', 'Female', '2018', 'February', 'Becholor', 'Kolkata', 'Anushka', '0745236954'),
('2017cs017', 'anuki', 'gamage', '1994/08/06', 'Female', '2018', 'February', 'Master', 'Mathara', 'anuki@gmail.com', '0778956258'),
('2017cs020', 'Mala', 'Kumari', '1996/06/09', 'Female', '2018', 'July', 'Becholor', 'Kadana', 'Mala@gmail.com', '0778936254'),
('2017cs026', 'Virat', 'Kholi', '1996/08/31', 'Male', '2018', 'July', 'Becholor', 'Mumbai', 'Vitat@gmail.com', '0752368519'),
('2017cs099', 'Sumal', 'Silva', '1965/06/20', 'Male', '2018', 'February', 'Master', 'Colombo-03', 'Ranil.@nsbm.lk', '0723658625'),
('2017cs102', 'Kira', 'Sandun', '1995/02/12', 'Male', '2018', 'July', 'Becholor', 'Eheliyagoda', 'Kira@Gmail.com', '0752536956');

-- --------------------------------------------------------

--
-- Table structure for table `student2year`
--

CREATE TABLE `student2year` (
  `IndexNo` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `CourseType` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student2year`
--

INSERT INTO `student2year` (`IndexNo`, `FirstName`, `LastName`, `gender`, `IntakeYear`, `IntakeMonth`, `CourseType`, `Address`, `Email`, `Mobile`) VALUES
('2016cs102', 'Kasun', 'Rajitha', 'Male', '2017', 'July', 'Becholor', 'Colombo06', 'Kasun@gmail.com', '0752632146'),
('2016h', 'h', 'h', 'Male', '2200', 'February', 'Becholor', 'kkk', 'xdx', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `student3year`
--

CREATE TABLE `student3year` (
  `IndexNo` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `CourseType` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student3year`
--

INSERT INTO `student3year` (`IndexNo`, `FirstName`, `LastName`, `Gender`, `IntakeYear`, `IntakeMonth`, `CourseType`, `Address`, `Email`, `Mobile`) VALUES
('2015cs006', 'Waruni', 'Perera', 'Female', '2016', 'July', 'Becholor', 'Colombo', 'Waruni@gmail.com', '0112586930'),
('2015cs009', 'Isuru', 'Udana', 'Male', '2016', 'February', 'Becholor', 'Rathnapura', 'Isuru@gmail.com', '0452536852'),
('2015hh', 'by', '/ffff', 'Male', 'Computing', 'February', 'Becholor', 'biiiiii', 'biii', 'biii');

-- --------------------------------------------------------

--
-- Table structure for table `student4year`
--

CREATE TABLE `student4year` (
  `IndexNo` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `IntakeYear` varchar(20) NOT NULL,
  `IntakeMonth` varchar(20) NOT NULL,
  `CourseType` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student4year`
--

INSERT INTO `student4year` (`IndexNo`, `FirstName`, `LastName`, `Gender`, `IntakeYear`, `IntakeMonth`, `CourseType`, `Address`, `Email`, `Mobile`) VALUES
('2014', 'll', 'affffffff', 'Male', 'Computing', 'February', 'Becholor', 'ap', 'a', 'a'),
('2014cs003', 'Anura', 'Gayan', 'Male', '2015', 'July', 'Master', 'Putthalama', 'anura@gmail.com', '0745869320'),
('2014cs004', 'Achintha', 'Premadasa', 'Male', '2015', 'July', 'Becholor', 'Galle', 'Achintha@gmail.com', '0751410202'),
('2014cs005', 'Samadhi', 'Ekanayake', 'Female', '2015', 'February', 'Becholor', 'Awissawella', 'Samadhi@gmail.com', '0112568243'),
('2014en005', 'Chalani', 'Hashani', 'Female', '2015', 'July', 'Master', 'Homagama', 'Chalani@gmail.com', '0710866495');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus1yrar`
--
ALTER TABLE `bus1yrar`
  ADD PRIMARY KEY (`IndexNo`);

--
-- Indexes for table `bus2year`
--
ALTER TABLE `bus2year`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `bus3year`
--
ALTER TABLE `bus3year`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `bus4year`
--
ALTER TABLE `bus4year`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `eng1year`
--
ALTER TABLE `eng1year`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `eng2year`
--
ALTER TABLE `eng2year`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `eng3year`
--
ALTER TABLE `eng3year`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `eng4year`
--
ALTER TABLE `eng4year`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`RegNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`IndexNo`);

--
-- Indexes for table `student2year`
--
ALTER TABLE `student2year`
  ADD PRIMARY KEY (`IndexNo`);

--
-- Indexes for table `student3year`
--
ALTER TABLE `student3year`
  ADD PRIMARY KEY (`IndexNo`);

--
-- Indexes for table `student4year`
--
ALTER TABLE `student4year`
  ADD PRIMARY KEY (`IndexNo`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"angular_direct":"direct","relation_lines":"true","snap_to_grid":"off"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"event","table":"decoration"},{"db":"customer","table":"users"},{"db":"event","table":"wellness"},{"db":"fmsmy","table":"admin"},{"db":"fmsmy","table":"farmshopemployee"},{"db":"fmsmy","table":"farm"},{"db":"fmsmy","table":"enrollment"},{"db":"fmsmy","table":"course"},{"db":"fmsmy","table":"bill"},{"db":"fmsmy","table":"addbillitem"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'nsbm', 'student', '[]', '2018-06-23 14:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-06-01 14:10:10', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `userdb`
--
CREATE DATABASE IF NOT EXISTS `userdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `userdb`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `last_login`, `is_deleted`) VALUES
(1, 'Anushka', 'Vithana', 'anushka@bestjobslk.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(2, 'Asanka', 'Perera', 'asanka@bestjobslk.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(4, 'Suranga', 'Ranatunga', 'suranga@bestjobslk.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(5, 'Amal', 'Jayawickrema', 'amal@bestjobslk.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(6, 'Buddika', 'Hiripitiya', 'buddika@bestjobslk.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(7, 'Dileep', 'Kariyawasam', 'dileep@bestjobslk.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
