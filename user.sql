-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 08:40 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `gender`) VALUES
(1, 'daisy', 'daisy@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male'),
(2, 'martin', 'martin@gmail.com', 'adcaec3805aa912c0d0b14a81bedb6ff', 'male'),
(3, 'Brian', 'brianswanya@gmail.com', '6562c5c1f33db6e05a082a88cddab5ea', 'Male'),
(4, 'Whitney', 'whitney@gmail.com', 'e3b592dfca1c8225200d2d7e6649d909', 'Female'),
(5, 'lora', 'daisyonchiri98@gmail.co.com', 'e9510081ac30ffa83f10b68cde1cac07', 'Female'),
(6, 'nelly', 'nellybowen6@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Female'),
(7, 'August', 'daisyonchiri98@gmail.c', 'e807f1fcf82d132f9bb018ca6738a19f', 'Male'),
(8, 'akapa', 'akapa98@gmail.com', '9e1e06ec8e02f0a0074f2fcc6b26303b', 'Female'),
(9, 'Peter  Kimeli', 'kimeli@gmail.com', '08e0750210f66396eb83957973705aad', 'Male'),
(10, 'kimeli', 'kimeli20@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Male'),
(11, 'camp', 'daisyonchiri98@gmail.com', 'df4b892324bbb648f27734b55c206b4b', 'Male'),
(12, 'Whitney onchiri', 'whitneyonchiri98@gmail.com', '9fab6755cd2e8817d3e73b0978ca54a6', 'Female'),
(13, 'michael kagiri', 'dkutstudents@gmail.com', 'e35cf7b66449df565f93c607d5a81d09', 'Male'),
(14, 'joy njeri', 'joynjeri@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
