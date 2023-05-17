-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2020 at 04:53 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `no` int(11) NOT NULL,
  `Invoice_No` int(11) NOT NULL,
  `ProductCode` varchar(10) NOT NULL,
  `ProductName` varchar(25) NOT NULL,
  `SalesPrice` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `TAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`no`, `Invoice_No`, `ProductCode`, `ProductName`, `SalesPrice`, `quantity`, `TAmount`) VALUES
(0, 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `InvoiceNo` int(11) NOT NULL,
  `Pieces` int(11) NOT NULL,
  `SubBalance` double NOT NULL,
  `Discount` double NOT NULL,
  `TotalBalance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`InvoiceNo`, `Pieces`, `SubBalance`, `Discount`, `TotalBalance`) VALUES
(1, 3, 1490, 0, 1490),
(3, 2, 800, 0, 800),
(5, 1, 600, 0, 600),
(6, 1, 600, 0, 600),
(7, 1, 240, 0, 240),
(8, 4, 3020, 0, 3020),
(9, 1, 1000, 0, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `CName` varchar(25) NOT NULL,
  `CTP` int(11) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `ProductCode` varchar(10) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `unitePrice` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TAmount` double NOT NULL,
  `OrderBy` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `CName`, `CTP`, `NIC`, `ProductCode`, `ProductName`, `unitePrice`, `Quantity`, `TAmount`, `OrderBy`) VALUES
(3, 'dinidu', 717501464, '981990277', 'PC004', 'Mary Bicuit', 40, 2, 80, 'What app'),
(8, 'lahoru', 714143605, '971990277', 'PC006', 'CreamCacker', 100, 80, 8000, 'What app'),
(9, 'lahoru', 714143605, '971990277', 'PC009', 'LifeboyShampoo', 6, 30, 180, 'What app'),
(11, 'Dilaka', 714666605, '971990277', 'PC005', 'BabySoap', 60, 3, 180, 'What app'),
(12, 'Aysha', 711111111, '1111111111', 'PC006', 'CreamCacker', 100, 3, 300, 'What app'),
(13, 'Aysha', 711111111, '1111111111', 'PC008', 'Sunsilk', 6, 6, 36, 'What app'),
(14, 'Harsha', 2147483647, '222222222', 'PC008', 'Sunsilk', 6, 6, 36, 'What app'),
(15, 'Harsha', 2147483647, '222222222', 'PC006', 'CreamCacker', 100, 6, 600, 'What app'),
(16, 'Harsha', 722222222, '222222222', 'PC004', 'Mary Bicuit', 40, 10, 400, 'What app'),
(17, 'Harsha', 722222222, '222222222', 'PC008', 'Sunsilk', 6, 5, 30, 'What app'),
(18, 'viranga', 733333333, '222222222', 'PC007', 'KohobaSoap', 60, 60, 3600, 'What app'),
(19, 'viranga', 733333333, '222222222', 'PC007', 'KohobaSoap', 60, 20, 1200, 'What app');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductCode` varchar(10) NOT NULL,
  `ProductName` varchar(25) NOT NULL,
  `GroupName` varchar(15) NOT NULL,
  `PurchasePrice` double NOT NULL,
  `SalesPrice` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `ReOrderLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductCode`, `ProductName`, `GroupName`, `PurchasePrice`, `SalesPrice`, `Quantity`, `ReOrderLevel`) VALUES
('PC001', 'Carrot', 'Vegetable', 40, 80, 20, 5),
('PC002', 'Falooda', 'Drinks', 100, 120, 54, 10),
('PC003', 'Fanta', 'Drinks', 30, 60, 17, 10),
('PC004', 'Mary Bicuit', 'Biscuit', 30, 40, 100, 50),
('PC005', 'BabySoap', 'Soap', 45, 60, 57, 50),
('PC006', 'CreamCacker', 'Biscuit', 85, 100, 70, 20),
('PC007', 'KohobaSoap', 'Soap', 50, 60, 28, 20),
('PC008', 'Sunsilk', 'Shampoo', 4, 6, 7, 10),
('PC009', 'LifeboyShampoo', 'Shampoo', 4, 6, 20, 10),
('PC010', 'Pumking', 'Vegetable', 50, 100, 20, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `InvoiceNo` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `ProductCode` varchar(10) NOT NULL,
  `ProductName` varchar(25) NOT NULL,
  `PurchasePrice` double NOT NULL,
  `SalesPrice` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `TAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`InvoiceNo`, `no`, `ProductCode`, `ProductName`, `PurchasePrice`, `SalesPrice`, `quantity`, `TAmount`) VALUES
(0, 0, '', '', 0, 0, 0, 0),
(1, 1, 'PC004', 'Mary Bicuit', 30, 200, 5, 1000),
(1, 2, 'PC005', 'BabySoap', 45, 150, 3, 450),
(1, 3, 'PC002', 'Falooda', 100, 20, 2, 40),
(2, 1, 'PC002', 'Falooda', 100, 20, 2, 40),
(2, 2, 'PC004', 'Mary Bicuit', 30, 200, 4, 800),
(3, 1, 'PC002', 'Falooda', 100, 20, 10, 200),
(3, 2, 'PC004', 'Mary Bicuit', 30, 200, 3, 600),
(4, 1, 'PC002', 'Falooda', 100, 20, 10, 200),
(5, 1, 'PC003', 'Fanta', 30, 60, 10, 600),
(6, 1, 'PC003', 'Fanta', 30, 60, 10, 600),
(7, 1, 'PC002', 'Falooda', 100, 120, 2, 240),
(8, 1, 'PC002', 'Falooda', 100, 120, 3, 360),
(8, 2, 'PC008', 'Sunsilk', 4, 6, 10, 60),
(8, 3, 'PC007', 'KohobaSoap', 50, 60, 10, 600),
(8, 4, 'PC006', 'CreamCacker', 85, 100, 20, 2000),
(9, 1, 'PC006', 'CreamCacker', 85, 100, 10, 1000),
(10, 1, 'PC007', 'KohobaSoap', 50, 60, 2, 120),
(10, 2, 'PC008', 'Sunsilk', 4, 6, 3, 18),
(10, 3, 'PC003', 'Fanta', 30, 60, 3, 180),
(11, 1, 'PC002', 'Falooda', 100, 120, 2, 240);

-- --------------------------------------------------------

--
-- Table structure for table `suppliedorder`
--

CREATE TABLE `suppliedorder` (
  `OrderID` int(11) NOT NULL,
  `CName` varchar(25) NOT NULL,
  `CTP` int(11) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `ProductCode` varchar(10) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `unitePrice` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TAmount` double NOT NULL,
  `OrderBy` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliedorder`
--

INSERT INTO `suppliedorder` (`OrderID`, `CName`, `CTP`, `NIC`, `ProductCode`, `ProductName`, `unitePrice`, `Quantity`, `TAmount`, `OrderBy`) VALUES
(0, '', 0, '', '', '', 0, 0, 0, ''),
(4, 'dinidu', 717501464, '981990277', 'PC002', 'Falooda', 120, 5, 600, 'What app'),
(10, 'Dilaka', 714666605, '971990277', 'PC004', 'Mary Bicuit', 40, 5, 200, 'What app'),
(0, '', 0, '', '', '', 0, 0, 0, ''),
(5, 'dinidu', 717501464, '981990277', 'PC008', 'Sunsilk', 6, 10, 60, 'What app'),
(20, 'viranga', 733333333, '222222222', 'PC004', 'Mary Bicuit', 40, 10, 400, 'What app'),
(7, 'lahoru', 714143605, '971990277', 'PC009', 'LifeboyShampoo', 6, 30, 180, 'What app'),
(0, '', 0, '', '', '', 0, 0, 0, ''),
(6, 'dinidu', 717501464, '981990277', 'PC007', 'KohobaSoap', 60, 2, 120, 'What app');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Name` varchar(20) NOT NULL,
  `post` varchar(15) NOT NULL,
  `ContacNo` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Name`, `post`, `ContacNo`, `UserName`, `Password`) VALUES
('Dinidu', 'Manager', 717501464, 'admin', 'admin'),
('Farzana', 'Cashier', 717501464, 'user1', 'user1'),
('John', 'DeliveryShop', 717501464, 'john', 'john'),
('Lahiru', 'Cashier', 717501464, 'user2', 'user2'),
('Prabath', 'Manager', 714113566, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`InvoiceNo`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
