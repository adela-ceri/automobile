-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 09:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 2, 8, 1),
(2, 3, 7, 1),
(3, 4, 7, 1),
(4, 4, 16, 1),
(5, 2, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Nissan', 'nissan'),
(2, 'BMW', 'bmw'),
(3, 'Audi', 'audi'),
(4, 'Mercedes Benz', 'mercedes-benz');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(3, 4, 'Mercedes Benz GLE', ' GLE e zeze ', 'mercedes-benz-gle', 100000, 'mercedes-benz-gle.jpg', '0000-00-00', 0),
(4, 4, 'Mercedes Benz G-SL', 'Mercedes Benz G-SL', 'mercedes-benz-g-sl', 120000, 'mercedes-benz-g-sl.jpg', '2019-06-18', 1),
(5, 4, 'Mercedes Benz GLA', 'Beautiful Mercedes Benz GLA', 'mercedes-benz-gla', 150000, 'mercedes-benz-gla.jpeg', '0000-00-00', 0),
(6, 4, 'Mercedes Benz CLA', 'mercedes benz clase cla', 'mercedes-benz-cla', 100000, 'mercedes-benz-cla.jpg', '0000-00-00', 0),
(7, 1, 'Nissan  NISMO', 'nissan nismo 2015', 'nissan-nismo', 90000, 'nissan-nismo.jpg', '2021-01-18', 1),
(8, 1, 'Nissan Patrol', 'Nissan patrol Nismo', 'nissan-patrol', 120000, 'nissan-patrol.jpeg', '2019-06-17', 1),
(9, 1, 'Nissan', 'Nissan', 'nissan', 130000, 'nissan.jpg', '0000-00-00', 0),
(10, 1, 'Nissan Navara', 'nissan navaraaa', 'nissan-navara', 130000, 'nissan-navara.jpg', '0000-00-00', 0),
(11, 2, 'BMW X7', 'bmw x7-2019', 'bmw-x7', 185000, 'bmw-x7.jpg', '0000-00-00', 0),
(12, 2, 'BMW X6', 'bmv x6 white', 'bmw-x6', 100000, 'bmw-x6.jpg', '0000-00-00', 0),
(13, 2, 'BMW  M3', 'Bmw m3 blue, sport', 'bmw-m3', 120000, 'bmw-m3.jpg', '0000-00-00', 0),
(14, 2, 'BMW  Z4', 'bmw z4', 'bmw-z4', 120000, 'bmw-z4.jpg', '0000-00-00', 0),
(15, 3, 'Audi Q8', 'Audi Q8 2019', 'audi-q8', 175000, 'audi-q8.jpg', '2021-01-18', 3),
(16, 3, 'Audi Q5', 'Audi Q5 2020', 'audi-q5', 200000, 'audi-q5.jpg', '2021-01-18', 1),
(17, 3, 'Audi A8', 'Audi A8\r\n', 'audi-a8', 100000, 'audi-a8.jpg', '0000-00-00', 0),
(18, 3, 'Audi', 'Audi blue', 'audi', 90000, 'audi.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$uTCAZSx2nVIlUf.RS9Mk1e1p/U0m5mC4QQCfYmr2OS/QENr8RGTje', 1, 'admin', 'admin', '2019-06-17'),
(2, 'adela.ceri@gmail.com', '$2y$10$tFr.mbalUCIDljqFsobSBeKO5/KdPLH72XOi/PH7tHZPLr5Z/WcP6', 0, 'adela', 'ceri', '2019-06-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
