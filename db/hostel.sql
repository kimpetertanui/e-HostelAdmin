-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 12:57 PM
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
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `price` varchar(100) NOT NULL,
  `room_no` int(10) DEFAULT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(10) NOT NULL,
  `location` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `name`, `capacity`, `location`) VALUES
(797, 'Batian', 152, 'Found in Dedan Kimathi University'),
(987, 'Kens Hostel', 1500, 'near Kimathi univeristy'),
(1234, 'Tamaal Complex', 200, 'Around Dedan Kimathi'),
(3052, 'Catholic Ladies Host', 384, 'Found around Dedan Kimathi University'),
(6788, 'Embassy Hostel', 200, '2 Km away from Dedan Kimathi Universsity.Along mweiga Road'),
(7865, 'Classic Hostel', 400, 'Found in Nyeri Town');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`user_id`, `username`, `full_name`, `password_hash`, `salt`, `created_date`) VALUES
(1, 'kim', 'kim', '$2y$10$ZprDEtwKbPwjFOMYMW1K4.67q1lBQ0qODUEHn0cqs7gH8kyVqO1SS', 'b6c636184db4a456f8d18331d4f5d3aaf896cdc2c82a975fe3abc75f881aa6c0', '2019-09-16 19:30:34'),
(2, 'kim', 'kim', '$2y$10$PZKtWLNr8DpZpp856rpJO.ANYZSjfICvKwHqwCibrYRd0KuWKl8Ky', 'd4dac9888fcb6e182aafda6d5702fe0a50f6801dc9e83165c5f76d604e377962', '2019-09-16 19:30:34'),
(3, 'kim', 'kim', '$2y$10$KdQJQBSobSJftmcelp8zt.DR7w7CAGZ7psXclcD6rCgS2nbk4u152', '0a4298e0dd4ef3dd631020ee28108b062d25b4d7d3db3e6ab838f6c2a21f419a', '2019-09-16 19:31:28'),
(4, 'kimeli', 'Peter Kimeli', '$2y$10$PFmQLMsUFLuBUaIjMBEHKOpN.nLTfCBhGFC44wRAcCM3eecLg.tUC', 'd91bbf208013b5cc4bb09f9e1d0fa4e7e9659b9a0a1d79a708430b8ac4a2c4d9', '2019-09-16 21:09:38'),
(5, 'kim', 'Peter', '$2y$10$tie2jUyCjItscfIeiiSsLuhm7alJBzbhghoL059/HqJFAH.U9Orfu', '1128873d0e89e5e53023bfe21845f98e4f996977c16959aa0d7c1d448e0ed1d2', '2019-09-16 21:10:40'),
(6, 'kim', 'Peter', '$2y$10$tDeA6TCi9UmRDxbcN1IQO.yyjY16482mcLYI4sgZRxH9DuSkS4Jye', '1c859462fd5235597572d7008ed043969b5ff7a9bd02c9202b7c86e4a9b157c6', '2019-09-16 21:11:21'),
(7, 'kim', 'kim', '$2y$10$z/V6jMWi11.DSycCxGb83ebP1XTgy0SKmDRvuE.QQXWI3LXaM48pC', '1d096fbd8765ffe6154a71296ce8ee6428ebcac47c9057e9db8f7c607be47c25', '2019-09-16 21:14:48'),
(8, 'kibet', 'John', '$2y$10$Qx/T8HOp4kQIgt./xKdCNO03O18Yt.J6WEZhDfJ4tus.WTsa.sFy2', '3cd72dda713425355669c0b00cc8e2e8c11256bbfaa61de94a440f35c0cda680', '2019-09-16 21:16:16'),
(9, 'kimelipeter20@gmail.com', 'Peter Kimeli Tanui', '$2y$10$ssA0Kbg50zwczJcBHsxaFuftzeYfw/qJV6QyI.0WAYQk2jd2vTWdy', '5d63b7c3561224dab9c7757f90c15c8e01b282e35e490c85960c520eefe2c101', '2019-09-16 21:19:51'),
(10, 'radio', 'Radio', '$2y$10$AjjRG6OxhLBEx586u/78ou/4UfwfWU2fgMSqWZAxLOD5njrPul8fC', '117c2013571a42864873a6015a89eb4f469d7768d240cc75af3103b34705f523', '2019-09-17 07:28:23'),
(11, 'radio', 'Radio', '$2y$10$aVvf3ejyk3YvBsqOJAKv0OxNsNEGa9tXWSx7/mLeGG0N8olx4/CUC', '46f93253fab52f963143620ff21cc0973af4a60541c9be25532be541d93afe65', '2019-09-17 07:28:23'),
(12, 'kevin', 'Kevin Kibet', '$2y$10$qaGzpd3R1ggrbrlFSuxfgOAJL9nkK5hS9CikuCVpYMOVWlzqElOZu', 'ce722b643f5de93d20e50809da5e2d7d1a8d8cca071c22790e0097c5b703c175', '2019-09-17 07:53:41'),
(13, 'mercy.chepngeno', 'mercy chepngeno', '$2y$10$eRttp29FCmuDUApYKPFQzuVj.tJ3TB9JwT/MAPvx2jtuYCDcfM5QW', '183bad23f099e7f008832f22eb27a6dce900b2776f329324c4e6776e0e9a751f', '2019-09-26 13:16:49'),
(14, 'mercy.chepngeno', 'mercy chepngeno', '$2y$10$oe0Obf5eChL7TD5qDSQ1qOyQXoCUYAnQ5vV4lhPVP.ZpR9tfW4kee', 'c9688a449c8e6155400bc1da7a843a091a11425bba6a85bdd35de466c58eacdf', '2019-09-26 13:16:49'),
(15, 'siz', 'mercy mercy', '$2y$10$Jcbp67dJhsTs2APMBmBR/.qjI5T/1yhSALJhNkw/b1/6KIIJKHF8e', '9163b66404e000b6c4c4997594ecb50c74dd5ead1084f095794f517cdcf19dc0', '2019-09-26 13:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa`
--

CREATE TABLE `mpesa` (
  `resultCode` varchar(100) NOT NULL,
  `merchantRequestID` varchar(1000) NOT NULL,
  `mpesaReceiptNumber` varchar(1000) NOT NULL,
  `amount` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id_number` int(5) NOT NULL,
  `TransactionType` varchar(40) DEFAULT NULL,
  `TransID` varchar(40) DEFAULT NULL,
  `TransTime` varchar(40) DEFAULT NULL,
  `TransAmount` double DEFAULT NULL,
  `BusinessShortCode` varchar(15) DEFAULT NULL,
  `BillRefNumber` varchar(40) DEFAULT NULL,
  `MSISDN` varchar(40) DEFAULT NULL,
  `FirstName` varchar(40) DEFAULT NULL,
  `MiddleName` varchar(40) DEFAULT NULL,
  `LastName` varchar(40) DEFAULT NULL,
  `OrgAccountBalance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `clmSerie` int(11) NOT NULL,
  `clmTextArea` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_no` int(10) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `room_details` varchar(1000) NOT NULL,
  `price` int(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'available',
  `hostel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_no`, `room_name`, `room_details`, `price`, `status`, `hostel_id`) VALUES
(1, '1A', 'Self Contained and capacity is 2', 4000, 'available', 1234),
(2, '2B', 'Bed Sitter and capacity is 4', 4000, 'available', 3052),
(3, ' 2A', '3 bedroom,swimming pool,bathtub,hot water,kitchen', 6000, 'occupied', 1234),
(4, '3A', 'bathroom,2 bedroom,kitchen ,water,shower', 3000, 'vacant', 1234),
(5, 'NB135', 'Nine-foot ceilings, southern exposure, outdoor living spaces, maximized insulation', 6000, 'occupied', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `id_no` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_no`, `email`, `id_no`, `password`) VALUES
(1, 'Felix Maina', '0701456782', '33456789', 'felix@gmail.com', '12345678'),
(2, 'Caro Maina', '0712345678', '12355778', 'caro@gmaol.com', '12345678'),
(3, 'amos rono', '0706918505', '34046117', 'amosrono@gmail.com', '34046117'),
(4, 'mimi', '078954327', '12345678', 'mimi@user@gmail.com', '12345'),
(5, 'kimz nett', '072345678', '09876543', 'nett@mail.com', '12345'),
(6, 'carolle nganga', '12346u88', 'carollenganga254@gma', '', '1wer567'),
(7, 'carolle nganga', '087543122', 'carollenganga254@gma', '1234556', '123455'),
(8, 'carolle nganga', '087543122', 'carollenganga254@gma', '1234556', '123455'),
(9, 'Rose Jebet', '0789q23455', 'jim@gmail.com', '32456789', '12345678'),
(10, 'Test User', '0712345678', 'testuseregmail.com', '12345678', '12345678'),
(11, 'Waatangi Kimani', '0712365424', 'kimaniuser@gmail.com', '12345678', '123456789'),
(12, 'vsgsg', '1234556', 'ggg@gmail.com', '1233334', '1223334'),
(13, 'hsjjsj', '8383844', 'fsfsf@gmail.com', '134445', '12344'),
(14, 'Test use', '0789456789', 'testuser@yahoo.com', '12345678', '12345678'),
(15, 'user user', 'user', 'user@gmail.com', '12334444', '122334'),
(16, 'Meshack Kimutai', '0718908494', '12345678', 'meshack@gmail.com', '12345678'),
(17, 'John Lenyangapuo', '0725157234', '34563215', 'john@gmail.com', '1234ttt'),
(18, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(19, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(20, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(21, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(22, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(23, 'daisy onchiri', '789654321', '0789654', 'daisy@gmail.com', '123456'),
(24, 'Cheptoo Jeptoo', '0700583441', '39550012', 'jeptoo2000@gmail.com', '133334');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD KEY `room_no` (`room_no`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mpesa`
--
ALTER TABLE `mpesa`
  ADD PRIMARY KEY (`resultCode`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`clmSerie`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_no`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id_number` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `clmSerie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_no` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `hostel_id` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
