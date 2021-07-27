-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 02:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stores`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `StoreAddress` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserID`, `Firstname`, `Lastname`, `Phone`, `Email`, `StoreAddress`, `Username`, `Password`) VALUES
(9, 'أحمد', 'محمد', 537643287, 'admin@gmail.com', 'عفيف- السعودية', 'أحمد محمد', '3c2f2a2e6ca008f4d79ddace50156ad4aec63e95'),
(10, 'يوسف', 'علي', 534276543, 'youssef@gmail.com', 'الرياض', 'يوسف1233', '9df7193f565bbb348c325b0c89717cf24bad92d8');

-- --------------------------------------------------------

--
-- Table structure for table `bill_purchase`
--

CREATE TABLE `bill_purchase` (
  `bill_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` int(11) NOT NULL,
  `stockid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_purchase`
--

INSERT INTO `bill_purchase` (`bill_id`, `date`, `total`, `stockid`) VALUES
(1, '2021-03-26', 36000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_return`
--

CREATE TABLE `bill_return` (
  `bill_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` date NOT NULL,
  `VAT` int(11) NOT NULL,
  `total_vat` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_return`
--

INSERT INTO `bill_return` (`bill_id`, `total`, `date`, `VAT`, `total_vat`, `ownerid`, `sale_id`) VALUES
(1, 4400, '2021-03-26', 660, 5060, 9, 68);

-- --------------------------------------------------------

--
-- Table structure for table `bill_sale`
--

CREATE TABLE `bill_sale` (
  `bill_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` date NOT NULL,
  `VAT` int(11) NOT NULL,
  `total_vat` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_sale`
--

INSERT INTO `bill_sale` (`bill_id`, `total`, `date`, `VAT`, `total_vat`, `ownerid`) VALUES
(15, 5500, '2021-03-26', 825, 6325, 9),
(16, 6600, '2021-03-26', 990, 7590, 9);

-- --------------------------------------------------------

--
-- Table structure for table `casher`
--

CREATE TABLE `casher` (
  `UserID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `StoreAddress` varchar(255) NOT NULL,
  `AccountActivity` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `casher`
--

INSERT INTO `casher` (`UserID`, `Firstname`, `Lastname`, `Phone`, `Email`, `StoreAddress`, `AccountActivity`, `Username`, `Password`, `ownerid`) VALUES
(4, 'علي', 'أسامة', 536587534, 'ali@gmail.com', 'الرياض - السعودية', 0, 'علي أسامة22', '036d4bb2569833b28f7e1e6bd42143a0781f6d2c', 9),
(5, 'محمود', 'علي', 534930321, 'mahmoud@gmail.com', 'الرياض - السعودية', 0, 'محمود علي', '3285fed812c7e25985d079d79cbbe75dbcf7cdbd', 9),
(6, 'بهاء', 'فتحي', 534876534, 'bahaa@gmail.com', 'الرياض - السعودية', 0, 'بهاء11235', '12f924c96930b88864f897907ec7aaadc08f68ba', 9),
(7, 'أسامة', 'علي', 54324234, 'osama@gmail.com', 'الراياض - السعودية', 0, 'أسامة33', '668786a2ce587e1e18add50a6c105a3b97ca27a9', 9),
(8, 'مؤمن', 'حسن', 543223423, 'momen@gmail.com', 'الرياض - السعودية', 0, 'مؤمن44', 'fb42d92c89c3a59da14642848c4ca61c404de0f0', 9),
(12, 'لؤي', 'خلف', 543987645, 'loay@gmail.com', 'الرياض - السعودية', 0, 'لؤي22', '5638b3266fcb8ace87d1df980a4cfdb5b09cb142', 9),
(13, 'ابراهيم', 'علي', 543875654, 'ibrahim@gmail.com', 'الرياض - السعودية', 0, 'ابراهيم22', 'd155c057e6f390b59c6fd71ff11543df2d255730', 9),
(14, 'صلاح', 'راضي', 546784324, 'salah@gmail.com', 'الرايض - السعودية', 0, 'صلاح23', '5768ddd958cab9370b4cd7027f735997f097392a', 9),
(15, 'زين', 'علي', 534675324, 'casher@gmail.com', 'السعودية - عفيف', 0, 'زين12345', '3fe42383c80a20d5a3d6f0ca29aaf72c3a880e31', 9);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `Name`, `Email`, `message`) VALUES
(2, 'علي محمد', 'ali@gmail.com', 'أنا لا أقدر أتسوق'),
(3, 'علي محمد', 'ali@gmail.com', 'أنا لا أقدر أتسوق');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `Productname` varchar(255) NOT NULL,
  `Totalquantity` int(11) NOT NULL DEFAULT '0',
  `Availablequantity` int(11) NOT NULL DEFAULT '0',
  `purchaseUnitprice` int(11) NOT NULL,
  `saleUnitprice` int(11) NOT NULL,
  `StockID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Productname`, `Totalquantity`, `Availablequantity`, `purchaseUnitprice`, `saleUnitprice`, `StockID`) VALUES
(22, 'نوكيا', 41, 41, 1200, 1100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `PurchaseID` int(11) NOT NULL,
  `PurchaseDate` date NOT NULL,
  `Total_price_of_purchase` int(11) NOT NULL,
  `StockID` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`PurchaseID`, `PurchaseDate`, `Total_price_of_purchase`, `StockID`, `bill_id`) VALUES
(91, '2021-03-26', 24000, 1, 1),
(92, '2021-03-26', 12000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `Productname` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `purchaseUnitprice` int(11) NOT NULL,
  `Totalprice` int(11) NOT NULL,
  `PurchaseID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `stockid` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`Productname`, `Quantity`, `purchaseUnitprice`, `Totalprice`, `PurchaseID`, `ProductID`, `stockid`, `bill_id`) VALUES
('نوكيا', 20, 1200, 24000, 91, 22, 1, 1),
('نوكيا', 10, 1200, 12000, 92, 22, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SalesID` int(11) NOT NULL,
  `SaleDate` date NOT NULL,
  `Total_Net_price_of_sale` int(11) NOT NULL,
  `VAT` int(11) NOT NULL,
  `Total_price_with_VAT` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SalesID`, `SaleDate`, `Total_Net_price_of_sale`, `VAT`, `Total_price_with_VAT`, `ownerid`, `bill_id`) VALUES
(68, '2021-03-26', 3300, 495, 3795, 9, 15),
(69, '2021-03-26', 2200, 330, 2530, 9, 15),
(70, '2021-03-26', 1100, 165, 1265, 9, 16),
(71, '2021-03-26', 5500, 825, 6325, 9, 16);

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `Productname` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `sale_Unit_price` int(11) NOT NULL,
  `Total_price` int(11) NOT NULL,
  `SaleID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`Productname`, `Quantity`, `sale_Unit_price`, `Total_price`, `SaleID`, `ProductID`, `bill_id`) VALUES
('نوكيا', 3, 1100, 3300, 68, 22, 15),
('نوكيا', 2, 1100, 2200, 69, 22, 15),
('نوكيا', 1, 1100, 1100, 70, 22, 16),
('نوكيا', 5, 1100, 5500, 71, 22, 16);

-- --------------------------------------------------------

--
-- Table structure for table `sale_return`
--

CREATE TABLE `sale_return` (
  `SaleReturnID` int(11) NOT NULL,
  `SaleID` int(11) NOT NULL,
  `SaleReturndate` date NOT NULL,
  `Total_Net_price_of_Sale_Return` int(11) NOT NULL,
  `VAT` int(11) NOT NULL,
  `Total_price_with_VAT` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_return`
--

INSERT INTO `sale_return` (`SaleReturnID`, `SaleID`, `SaleReturndate`, `Total_Net_price_of_Sale_Return`, `VAT`, `Total_price_with_VAT`, `ownerid`, `bill_id`) VALUES
(69, 68, '2021-03-26', 2200, 330, 2530, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sale_returns_details`
--

CREATE TABLE `sale_returns_details` (
  `Productname` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Sale_Return_unit_price` int(11) NOT NULL,
  `Total_price` int(11) NOT NULL,
  `SaleReturnID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_returns_details`
--

INSERT INTO `sale_returns_details` (`Productname`, `Quantity`, `Sale_Return_unit_price`, `Total_price`, `SaleReturnID`, `ProductID`, `bill_id`) VALUES
('نوكيا', 2, 1100, 2200, 69, 22, 1),
('نوكيا', 2, 1100, 2200, 69, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `StockID` int(11) NOT NULL,
  `Stockname` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`StockID`, `Stockname`, `ownerid`) VALUES
(1, 'أجهزة الكترونية', 9),
(5, 'ألعاب أطفال', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `E-mail` (`Email`);

--
-- Indexes for table `bill_purchase`
--
ALTER TABLE `bill_purchase`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `stockid` (`stockid`);

--
-- Indexes for table `bill_return`
--
ALTER TABLE `bill_return`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `ownerid` (`ownerid`);

--
-- Indexes for table `bill_sale`
--
ALTER TABLE `bill_sale`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `ownerid` (`ownerid`);

--
-- Indexes for table `casher`
--
ALTER TABLE `casher`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `E-mail` (`Email`),
  ADD KEY `ownerid` (`ownerid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `product_ibfk_1` (`StockID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`PurchaseID`),
  ADD KEY `Stock ID` (`StockID`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD KEY `Product ID` (`ProductID`),
  ADD KEY `Purchase ID` (`PurchaseID`),
  ADD KEY `stockid` (`stockid`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SalesID`),
  ADD KEY `ownerid` (`ownerid`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD KEY `Product ID` (`ProductID`),
  ADD KEY `Sale ID` (`SaleID`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD PRIMARY KEY (`SaleReturnID`),
  ADD KEY `ownerid` (`ownerid`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `sale_returns_details`
--
ALTER TABLE `sale_returns_details`
  ADD KEY `ret1` (`ProductID`),
  ADD KEY `Sale Return ID` (`SaleReturnID`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`StockID`),
  ADD KEY `ownerid` (`ownerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bill_purchase`
--
ALTER TABLE `bill_purchase`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_return`
--
ALTER TABLE `bill_return`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_sale`
--
ALTER TABLE `bill_sale`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `casher`
--
ALTER TABLE `casher`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `PurchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `SalesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `sale_return`
--
ALTER TABLE `sale_return`
  MODIFY `SaleReturnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `StockID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_purchase`
--
ALTER TABLE `bill_purchase`
  ADD CONSTRAINT `bill_purchase_ibfk_1` FOREIGN KEY (`stockid`) REFERENCES `stock` (`StockID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_return`
--
ALTER TABLE `bill_return`
  ADD CONSTRAINT `bill_return_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `admin` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_sale`
--
ALTER TABLE `bill_sale`
  ADD CONSTRAINT `bill_sale_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `admin` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `casher`
--
ALTER TABLE `casher`
  ADD CONSTRAINT `casher_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `admin` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`StockID`) REFERENCES `stock` (`StockID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`StockID`) REFERENCES `stock` (`StockID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `bill_purchase` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_details_ibfk_2` FOREIGN KEY (`PurchaseID`) REFERENCES `purchases` (`PurchaseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_details_ibfk_3` FOREIGN KEY (`bill_id`) REFERENCES `bill_purchase` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `admin` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `bill_sale` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD CONSTRAINT `sales_details_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_details_ibfk_2` FOREIGN KEY (`SaleID`) REFERENCES `sales` (`SalesID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_details_ibfk_3` FOREIGN KEY (`bill_id`) REFERENCES `bill_sale` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD CONSTRAINT `sale_return_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `admin` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_return_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `bill_return` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_returns_details`
--
ALTER TABLE `sale_returns_details`
  ADD CONSTRAINT `sale_returns_details_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_returns_details_ibfk_2` FOREIGN KEY (`SaleReturnID`) REFERENCES `sale_return` (`SaleReturnID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_returns_details_ibfk_3` FOREIGN KEY (`bill_id`) REFERENCES `bill_return` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `admin` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
