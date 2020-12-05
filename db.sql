-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2020 at 07:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(9) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `image`) VALUES
(1, 'Barack Obama', 'https://images-na.ssl-images-amazon.com/images/I/517rNbKKc9L._SY498_BO1,204,203,200_.jpg'),
(2, 'Donald Trump', 'https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5babef3da7ea4342a948c024%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1314%26cropX2%3D2845%26cropY1%3D222%26cropY2%3D1752'),
(3, 'Joe Biden', 'https://putthison.com/wp-content/uploads/2020/08/Screen-Shot-2020-08-21-at-12.44.43-PM.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'duynx', '$2y$10$4WQ4/J3r.pHgjDckUMzKOOlgRixpmYuNM8waguayZpjgauSDX9OQi', '2020-12-05 11:15:40'),
(2, 'maianh', '$2y$10$/voq0lWwlODXPL8lmqVpYOGnS9pIl4ffPvDhIUjwp26hRBWBEqJfO', '2020-12-05 11:52:17'),
(3, 'duynx2', '$2y$10$IIBPVI3bNmthM6FbNuAH8.m/JT/DjFE/RFIkHS.CUA4jmLlntCooS', '2020-12-05 12:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(9) NOT NULL,
  `user_id` int(9) DEFAULT NULL,
  `item_id` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `item_id`) VALUES
(1, 1, 2),
(3, 1, 2),
(5, 2, 2),
(6, 2, 3),
(7, 2, 1),
(8, 2, 1),
(9, 2, 1),
(10, 2, 3),
(11, 2, 3),
(12, 2, 3),
(13, 2, 3),
(14, 2, 3),
(15, 2, 3),
(16, 2, 2),
(17, 2, 1),
(18, 2, 1),
(19, 2, 1),
(20, 2, 2),
(21, 2, 2),
(22, 2, 1),
(23, 2, 2),
(24, 2, 3),
(25, 2, 2),
(26, 2, 1),
(27, 2, 1),
(28, 2, 2),
(29, 2, 2),
(30, 2, 2),
(31, 2, 2),
(32, 2, 1),
(33, 2, 2),
(34, 2, 3),
(35, 2, 1),
(36, 2, 2),
(37, 2, 2),
(38, 2, 1),
(39, 2, 2),
(40, 2, 1),
(41, 2, 2),
(42, 2, 2),
(43, 2, 2),
(44, 2, 2),
(45, 2, 2),
(46, 2, 2),
(47, 2, 2),
(48, 2, 2),
(49, 2, 2),
(50, 2, 2),
(51, 2, 2),
(52, 2, 2),
(53, 2, 2),
(54, 2, 2),
(55, 2, 2),
(56, 2, 2),
(57, 2, 2),
(58, 2, 2),
(59, 2, 2),
(60, 2, 2),
(61, 2, 2),
(62, 2, 2),
(63, 2, 2),
(64, 2, 2),
(65, 2, 2),
(66, 2, 2),
(67, 2, 3),
(68, 2, 3),
(69, 2, 3),
(70, 2, 3),
(71, 2, 3),
(72, 2, 3),
(73, 2, 3),
(74, 2, 3),
(75, 2, 3),
(76, 2, 3),
(77, 2, 3),
(78, 2, 3),
(79, 2, 3),
(80, 2, 3),
(81, 2, 3),
(82, 2, 3),
(83, 2, 3),
(84, 2, 3),
(85, 2, 3),
(86, 2, 3),
(87, 2, 1),
(88, 2, 1),
(89, 2, 1),
(90, 2, 2),
(91, 2, 3),
(92, 2, 3),
(93, 2, 3),
(94, 2, 3),
(95, 2, 3),
(96, 2, 3),
(97, 2, 3),
(98, 2, 3),
(99, 2, 1),
(100, 2, 2),
(101, 2, 2),
(102, 2, 2),
(103, 2, 3),
(104, 2, 3),
(105, 2, 2),
(106, 2, 1),
(107, 2, 2),
(108, 2, 2),
(109, 2, 2),
(110, 2, 1),
(111, 2, 1),
(112, 2, 3),
(113, 2, 3),
(114, 2, 3),
(115, 2, 3),
(116, 2, 2),
(117, 2, 3),
(118, 2, 3),
(119, 2, 2),
(120, 2, 2),
(121, 2, 3),
(122, 2, 3),
(123, 2, 3),
(124, 2, 2),
(125, 2, 2),
(126, 2, 3),
(127, 2, 2),
(128, 2, 2),
(129, 2, 2),
(130, 2, 2),
(131, 2, 2),
(132, 3, 2),
(133, 3, 2),
(134, 3, 3),
(135, 3, 2),
(136, 3, 2),
(137, 3, 2),
(138, 3, 2),
(139, 3, 2),
(140, 3, 2),
(141, 3, 2),
(142, 3, 2),
(143, 3, 2),
(144, 3, 2),
(145, 3, 2),
(146, 3, 2),
(147, 3, 2),
(148, 3, 2),
(149, 3, 2),
(150, 3, 3),
(151, 3, 3),
(152, 3, 3),
(153, 3, 2),
(154, 3, 3),
(155, 3, 2),
(156, 3, 3),
(157, 3, 2),
(158, 3, 3),
(159, 3, 2),
(160, 3, 2),
(161, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
