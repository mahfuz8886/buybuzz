-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 05:59 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buybuzz`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `cart_item_id` int(5) NOT NULL,
  `quantity` int(5) DEFAULT NULL,
  `total_cost` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cate_id` int(3) NOT NULL,
  `cate_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`) VALUES
(1, 'men'),
(2, 'women'),
(3, 'kids'),
(4, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` decimal(6,2) DEFAULT NULL,
  `p_img` varchar(500) DEFAULT NULL,
  `p_quantity` int(3) DEFAULT NULL,
  `cate_id` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_price`, `p_img`, `p_quantity`, `cate_id`) VALUES
(2, 'Formal Shirt', '1400.00', 'frmalshrt.jpeg', 6, '1'),
(4, 'Jeans Pant', '500.00', 'jeans.jpg', 20, '1'),
(9, 'Diapers', '350.00', 'diaper.jpg', 20, '3'),
(10, 'Feeder', '150.00', 'feeder.jpg', 20, '3'),
(11, 'Baby Dress', '500.00', 'b_dress.jpg', 10, '3'),
(13, 'Brown Belt', '500.00', 'brbelt.jpg', 2, '4'),
(14, 'Wallet', '700.00', 'wallet.jpg', 10, '4'),
(15, 'Sunglass', '500.00', 'sunglass.jpg', 5, '4'),
(16, 'Ladies Bag', '1500.00', 'lbag.jpg', 5, '4'),
(18, 'Polo T- Shirt', '750.00', 'download.jpg', 700, '1'),
(19, 'Baby T-Shirt', '1200.00', 'b3.jpg', 10, '3'),
(20, 'Half Sleeve Shirt', '700.00', 'cs1.jpg', 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `ridUsers` int(2) NOT NULL,
  `pimgUsers` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `uidUsers`, `emailUsers`, `pwdUsers`, `ridUsers`, `pimgUsers`) VALUES
(1, 'zihad123', 'zihad@gmail.com', '$2y$10$RIy78g2PgwxMYvSmlsYgJu9PB8sfcUFqqg24sMMlSsa/XbsYsuCW2', 1, 'cartoon.jpg'),
(2, 'mahfuz123', 'mahfuz@gmail.com', '$2y$10$6hbrtYPWvxSRqvLYReth3eckG2SEE7n.zjcv2AYmqBveqtOCqgpoi', 0, 'mahfuz.jpg'),
(5, 'ahosan123', 'ahosan@gmail.com', '$2y$10$9HZkMmQKeztUgH.yv6xaiumf3diOV/A8PElKDQTpoK3eHINoxPa3a', 0, 'moon.jpg'),
(6, 'obaydullah69', 'ob@gmail.com', '$2y$10$v6svw.jDkw/MGhYeV29pl.GqSa2p8Ly91MfkJQEag5taEOwyxl1i6', 0, 'ob.jpg'),
(7, 'shuvo123', 'shuvo@gmail.com', '$2y$10$griOMshdrErdC2vRSuQ1uukXPkX557bYqg4dvqeAyfCeP3eOPBzfa', 0, 'shuvo.jpg'),
(8, 'rkb', 'rkb@gmail.com', '$2y$10$euBH5i80TXkbPhl9SMxNTOh.IAZuRE6VSSBo4wbFj2D53BDb.hXBy', 0, 'rkb.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`cart_item_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `cart_item_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
