-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2025 at 06:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `foodID` int(5) NOT NULL,
  `foodTypeID` int(6) NOT NULL,
  `foodName` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`foodID`, `foodTypeID`, `foodName`, `price`) VALUES
(23, 38, 'Green Tea', 4.50),
(456, 55, 'V Drink', 3.00),
(2343, 38, 'Green Tea 2', 5.50),
(33001, 33, 'Flat White', 6.30),
(33002, 33, 'Latte', 7.60),
(33005, 33, 'Long black', 7.98),
(38001, 38, 'Ceylon Tea', 7.80),
(38002, 38, 'Dimah Green', 6.75),
(78001, 78, 'Mutton Roll', 7.65),
(78002, 78, 'Ulunthu Vadai', 8.75),
(78003, 78, 'Samosa', 7.90),
(99001, 99, 'Pol Arrack', 79.99);

-- --------------------------------------------------------

--
-- Table structure for table `foodtypes`
--

CREATE TABLE `foodtypes` (
  `foodTypeID` int(5) NOT NULL,
  `foodType` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foodtypes`
--

INSERT INTO `foodtypes` (`foodTypeID`, `foodType`) VALUES
(33, 'Coffee'),
(38, 'Tea'),
(55, 'Energy Drink'),
(78, 'Snacks'),
(99, 'Alcohol');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `food_id` int(5) NOT NULL,
  `food_type` varchar(55) NOT NULL,
  `food_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`food_id`, `food_type`, `food_name`, `price`) VALUES
(1, 'coffee', 'cappuccino', 5.50),
(2, 'coffee', 'latte', 5.50),
(3, 'coffee', 'chai latte', 5.50),
(4, 'coffee', 'mocchacino', 5.50),
(5, 'coffee', 'hot chocolate', 5.50),
(6, 'tea', 'chai', 5.00),
(7, 'tea', 'chamomile', 5.00),
(8, 'tea', 'earl grey', 5.00),
(9, 'tea', 'green tea', 5.00),
(10, 'tea', 'english tea', 5.00),
(11, 'savoury treats', 'egg/fish/chicken/veg roll', 4.50),
(12, 'savoury treats', 'egg/fish/chicken/veg pastry', 4.50),
(13, 'savoury treats', 'uludhu vadai', 4.50),
(14, 'savoury treats', 'fish/meat bun', 4.50),
(15, 'savoury treats', 'veg/fish cutlet', 4.50),
(16, 'savoury treats', 'veg/meat roti', 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(55) NOT NULL,
  `prefName` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `food` text NOT NULL,
  `quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `prefName`, `email`, `food`, `quantity`) VALUES
(62, 'John', 'peter@a.b', 'earl grey', 1),
(63, 'yyy', 'peter@a.b', 'fish/meat bun', 3),
(64, 'Anonymous', 'john@gmail.com', 'veg/fish cutlet', 3),
(65, 'Not Sue', 'sue@a.b', 'chai latte', 5),
(66, 'Not Sue either', 'sue@a.b', 'uludhu vadai', 7),
(67, 'Not Rajesh', 'rajesh@hotmail.com', 'chai latte', 22),
(68, 'Anonymous', 'ganeshan8@hotmail.com', 'cappuccino', 3),
(69, 'Anonymous', 'undefined', 'cappuccino', 3),
(70, 'Anonymous', 'undefined', 'veg/meat roti', 3),
(71, 'Anonymous', 'ganeshan8@hotmail.com', 'cappuccino', 3),
(72, 'Anonymous', 'ganeshan8@hotmail.com', 'cappuccino', 3),
(73, 'Anonymous', 'ganeshan8@hotmail.com', 'cappuccino', 3),
(74, 'u', 'ganeshan8@hotmail.com', 'cappuccino', 6),
(75, 'yyy', 'ganeshan8@hotmail.com', 'cappuccino', 1),
(76, 'Anonymous', 'ganeshan8@hotmail.com', 'cappuccino', 3),
(77, 'www', 'ganeshan8@hotmail.com', 'veg/fish cutlet', 3),
(78, 'Anonymous', 'ganeshan8@hotmail.com', 'cappuccino', 3),
(79, 'Anonymous', 'ganeshan8@hotmail.com', 'uludhu vadai', 2),
(80, 'Tariq', 'tariq@yahoo.com', 'cappuccino', 2),
(81, 'Tariq', 'tariq@yahoo.com', 'chai', 2),
(82, 'Tariq 2', 'tariq@yahoo.com', 'mocchacino', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(5) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `email`, `password`) VALUES
(25, 'Ganeshan', 'ganeshan8@hotmail.com', '1234'),
(26, 'Peter', 'peter@a.b', '1234'),
(27, 'John', 'john@gmail.com', '1234'),
(28, 'Sue Thompson', 'sue@a.b', '1234'),
(29, 'Rajesh Khan', 'rajesh@hotmail.com', '1234'),
(30, 'tariq', 'tariq@yahoo.com', '12345'),
(31, 'sara', 'sara@fs.co.nz', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`foodID`),
  ADD UNIQUE KEY `foodID` (`foodID`),
  ADD KEY `fk_foodTypeID` (`foodTypeID`);

--
-- Indexes for table `foodtypes`
--
ALTER TABLE `foodtypes`
  ADD PRIMARY KEY (`foodTypeID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD UNIQUE KEY `food_id` (`food_id`),
  ADD UNIQUE KEY `food_id_2` (`food_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `indexemail` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `fk_foodTypeID` FOREIGN KEY (`foodTypeID`) REFERENCES `foodtypes` (`foodTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
