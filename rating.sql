-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2020 at 12:25 AM
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
-- Database: `rating`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `url` varchar(200) NOT NULL,
  `votes` int(255) NOT NULL DEFAULT '0',
  `description` varchar(1000) NOT NULL DEFAULT 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `user_id`, `url`, `votes`, `description`, `date`, `category`) VALUES
(19, 1, 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 66, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(20, 2, 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 45, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(21, 1, 'https://images.unsplash.com/photo-1525609004556-c46c7d6cf023?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 179, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(22, 1, 'https://images.unsplash.com/photo-1573950940509-d924ee3fd345?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 160, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(23, 1, 'https://images.unsplash.com/photo-1514316454349-750a7fd3da3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 76, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(24, 1, 'https://images.unsplash.com/photo-1567818735868-e71b99932e29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 48, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(25, 1, 'https://images.unsplash.com/photo-1583121274602-3e2820c69888?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 36, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(26, 1, 'https://images.unsplash.com/photo-1553440569-bcc63803a83d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 38, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(27, 1, 'https://images.unsplash.com/photo-1569240651738-2c9ec2f50f42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 47, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(28, 1, 'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 46, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(29, 1, 'https://images.unsplash.com/photo-1536685712909-6ac3633e0812?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 32, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(30, 1, 'https://images.unsplash.com/photo-1501514367484-a5804478bf64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 45, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(31, 2, 'https://images.unsplash.com/photo-1591293836027-e05b48473b67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 29, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(32, 2, 'https://images.unsplash.com/photo-1498595664159-2df8dee7e63c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(33, 2, 'https://images.unsplash.com/photo-1481628006330-476f1e161a05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 31, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(34, 3, 'https://images.unsplash.com/photo-1548428683-37bebc8e630e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 26, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(35, 1, 'https://images.unsplash.com/photo-1544736826-61c35a3511dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 28, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(36, 2, 'https://images.unsplash.com/photo-1473832986350-f2eb0d0d41c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 27, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(37, 2, 'https://images.unsplash.com/photo-1525588165514-76d17b9a51f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 21, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(38, 1, 'https://images.unsplash.com/photo-1598379930661-b0c5701f8eb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 27, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(39, 3, 'https://images.unsplash.com/photo-1586349573701-fe27f1145fcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 25, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(40, 1, 'https://images.unsplash.com/photo-1560087979-50372b825cb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 21, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(41, 3, 'https://images.unsplash.com/photo-1567947121469-241e6493f5ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(42, 3, 'https://images.unsplash.com/photo-1595272832315-ce58b3df56ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(43, 3, 'https://images.unsplash.com/photo-1542312940-2b6aaa1b28eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'Photography'),
(44, 1, 'https://images.unsplash.com/photo-1531503142345-91a2368273a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(45, 3, 'https://images.unsplash.com/photo-1531503142345-91a2368273a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(46, 1, 'https://images.unsplash.com/photo-1435542694298-2a6c6763f38e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(47, 1, 'https://images.unsplash.com/photo-1531959218902-f71eff1be85c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(48, 1, 'https://images.unsplash.com/photo-1489513963600-afa31b458fec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(49, 1, 'https://images.unsplash.com/photo-1512511034912-262270ef0a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(50, 1, 'https://images.unsplash.com/photo-1542987701-f632f9a72044?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(51, 1, 'https://images.unsplash.com/photo-1433855565974-c895724ebcba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(52, 1, 'https://images.unsplash.com/photo-1468186437657-5d6ea3cd526b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(53, 1, 'https://images.unsplash.com/photo-1523414482125-f9638bdc4d04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(54, 1, 'https://images.unsplash.com/photo-1440850347891-2af777e3f581?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(55, 1, 'https://images.unsplash.com/photo-1513960102528-6bf90d2d146c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(56, 1, 'https://images.unsplash.com/photo-1438116356317-4a94d22e3f15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(57, 1, 'https://images.unsplash.com/photo-1457383457550-47a5cfdbab17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(58, 1, 'https://images.unsplash.com/photo-1476468875881-7981a47c4eda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(59, 1, 'https://images.unsplash.com/photo-1474524955719-b9f87c50ce47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(60, 1, 'https://images.unsplash.com/photo-1518096766731-7a3591fa1668?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(61, 1, 'https://images.unsplash.com/photo-1429497419816-9ca5cfb4571a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(62, 1, 'https://images.unsplash.com/photo-1476299318273-bb702b5495c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(63, 1, 'https://images.unsplash.com/photo-1446476333178-ee7ca8188f82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(64, 1, 'https://images.unsplash.com/photo-1508300024267-15685281f78e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'birds'),
(65, 1, 'https://images.unsplash.com/photo-1512607138614-afef095b4390?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(66, 1, 'https://images.unsplash.com/photo-1506883968894-6e7738ccfc05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 20, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(67, 1, 'https://images.unsplash.com/photo-1518554908584-8435af0289c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(68, 1, 'https://images.unsplash.com/photo-1524214786335-66456317bde6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(69, 1, 'https://images.unsplash.com/photo-1517835578095-8d4e372b831b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(70, 1, 'https://images.unsplash.com/photo-1494094892896-7f14a4433b7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 14, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(71, 1, 'https://images.unsplash.com/photo-1489628443677-552b17700861?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(72, 1, 'https://images.unsplash.com/photo-1475856717448-9689907d696a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(73, 1, 'https://images.unsplash.com/photo-1532443642992-ddfd4a44dd7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 13, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars'),
(74, 1, 'https://images.unsplash.com/photo-1468962786167-fbc55c2cd852?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MDU3Mn0', 17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2020-10-20 21:05:53', 'cars');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `pass`) VALUES
(1, 'Rishi', 'rishi@gmail.com', 'passs'),
(2, 'Finisher', 'finisher@gmail.com', 'passs'),
(3, 'Sus', 'sus@gmail.com', 'passs'),
(4, 'Gigi', 'gigi@gmail.com', 'passs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
