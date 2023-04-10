-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 01:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `regDate`) VALUES
(1, 'Yasmin', 'admin', 25473567289, 'Yasmin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-02-09 07:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbllaundryreq`
--

CREATE TABLE `tbllaundryreq` (
  `ID` int(10) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `DateofLaundry` date DEFAULT NULL,
  `TopWear` bigint(11) DEFAULT NULL,
  `BootomWear` bigint(11) DEFAULT NULL,
  `WoolenCloth` bigint(11) DEFAULT NULL,
  `Other` bigint(11) DEFAULT NULL,
  `Service` varchar(120) DEFAULT NULL,
  `PickupAddress` varchar(250) DEFAULT NULL,
  `ContactPerson` varchar(120) DEFAULT NULL,
  `Description` varchar(120) DEFAULT NULL,
  `Status` varchar(5) NOT NULL,
  `Othercharges` bigint(20) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `PaymentType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllaundryreq`
--

INSERT INTO `tbllaundryreq` (`ID`, `UserID`, `DateofLaundry`, `TopWear`, `BootomWear`, `WoolenCloth`, `Other`, `Service`, `PickupAddress`, `ContactPerson`, `Description`, `Status`, `Othercharges`, `postingDate`, `PaymentType`) VALUES
(24, 11, '2023-03-19', '4', '2', '1', '0', 'dropservice', '', '+25442993535', '', '3', 0, '2023-04-09 10:36:32', 'Cash on Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `tblpricelist`
--

CREATE TABLE `tblpricelist` (
  `Id` int(11) NOT NULL,
  `TopWear` bigint(10) DEFAULT NULL,
  `BottomWear` bigint(10) DEFAULT NULL,
  `Woolen` bigint(10) DEFAULT NULL,
  `Suit` bigint(10) DEFAULT NULL,
  `Duvet` bigint(10) DEFAULT NULL,
  `Curtains` bigint(10) DEFAULT NULL,
  `Carpets` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpricelist`
--

INSERT INTO `tblpricelist` (`Id`, `TopWear`, `BottomWear`, `Woolen`, `Suit`, `Duvet`, `Curtains`, `Carpets`) VALUES
(1, '400', '450', '500', '700', '1000', '550', '2400');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`Id`, `FullName`, `Email`, `MobileNumber`, `Password`, `regDate`) VALUES
(11, 'Yasmin', 'yasmin@gmail.com', 254742993535, 'f925916e2754e5e03f75dd58a5733251', '2023-03-02 12:14:58'),
(12, 'Mohamed', 'Mohamed12@gmail.com', 254722638300, 'd9c2bc7e9437a3b89ffc1e43e25f049c', '2023-03-03 12:32:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllaundryreq`
--
ALTER TABLE `tbllaundryreq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpricelist`
--
ALTER TABLE `tblpricelist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbllaundryreq`
--
ALTER TABLE `tbllaundryreq`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblpricelist`
--
ALTER TABLE `tblpricelist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
