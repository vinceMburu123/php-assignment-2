-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 03:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campaign_feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `feedback` text NOT NULL,
  `rating` int(11) NOT NULL,
  `submission_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedback`, `rating`, `submission_date`) VALUES
(1, '', '', '', 0, '2024-10-23 07:50:35'),
(2, '', '', '', 0, '2024-10-23 07:51:14'),
(3, '', '', '', 0, '2024-10-23 07:52:08'),
(4, '', '', '', 0, '2024-10-23 07:52:09'),
(5, 'Vincent ', 'judevinny@gmail.com', '3', 4, '2024-10-23 07:57:39'),
(6, 'Jude', 'vmburu911@gmail.com', 'nice', 5, '2024-10-23 09:38:12'),
(7, 'Vincent ', 'muchokivincent@zetech.ac.ke', 'Awesome', 5, '2024-10-23 09:45:49'),
(8, 'Vincent ', 'muchokivincent@zetech.ac.ke', 'Awesome', 4, '2024-10-23 09:47:03'),
(9, 'vmburu911@gmail.com', 'student@gmail.com', '3', 4, '2024-10-23 09:59:39'),
(10, 'v', 'student@gmail.com', '3', 4, '2024-10-23 09:59:52'),
(11, 'v', 'student@gmail.com', '3', 4, '2024-10-23 10:04:01'),
(12, 'david soita', 'Admin@gmail.com', 'Wonderful', 5, '2024-10-23 10:09:39'),
(13, 'david soita', 'Admin@gmail.com', 'Wonderful', 5, '2024-10-23 10:12:36'),
(14, 'david soita', 'Admin@gmail.com', 'Wonderful', 5, '2024-10-23 10:12:40'),
(15, 'Fredrick otieno', 'fred@gmail.com', 'Wonderful', 5, '2024-10-23 10:16:13'),
(16, 'Fredrick otieno', 'fred@gmail.com', 'Wonderful', 5, '2024-10-23 10:19:37'),
(17, 'patrick  mwangi', 'fred@gmail.com', 'Wonderful', 5, '2024-10-23 16:39:55'),
(18, 'patrick  mwangi', 'fred@gmail.com', 'Wonderful', 5, '2024-10-23 16:43:02'),
(19, 'patrick  mwangi', 'fred@gmail.com', 'Wonderful', 5, '2024-10-23 17:03:50'),
(20, 'kennedy Maina', 'ken@gamil.com', 'Terrible', 5, '2024-10-23 17:41:40'),
(21, 'Fredrick otieno', 'fred@gmail.com', 'GLorious', 5, '2024-10-24 12:00:38'),
(22, 'Fredrick otieno', 'fred@gmail.com', 'GLorious', 5, '2024-10-24 12:06:35'),
(23, 'Fredrick otieno', 'fred@gmail.com', 'GLorious', 5, '2024-10-24 12:07:12'),
(24, 'david grace', 'gracedavid@gmail.com', 'Not bad', 5, '2024-10-24 13:49:41'),
(25, 'david grace', 'gracedavid@gmail.com', 'Not bad', 5, '2024-10-24 14:00:18'),
(26, 'david grace', 'gracedavid@gmail.com', 'Not bad', 5, '2024-10-24 14:00:27'),
(27, 'vincent mburu', 'muchokivincent@zetech.ac.ke', 'Excellent Service', 5, '2024-10-24 14:01:47'),
(28, 'david grace', 'judevinny@gmail.com', 'Perfect', 5, '2024-10-24 14:03:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
