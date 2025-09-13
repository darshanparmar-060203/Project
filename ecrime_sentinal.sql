-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3300
-- Generation Time: Sep 07, 2025 at 09:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecrime_sentinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `relation` varchar(50) NOT NULL,
  `complaint` text NOT NULL,
  `complaint_date` date NOT NULL,
  `incident_date` date NOT NULL,
  `complaint_type` enum('hacking','financialFraud','socialMediaHarassment') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `dob`, `gender`, `email`, `phone`, `address`, `username`, `password`, `created_at`) VALUES
(1, 'eDropzone', '2004-01-12', 'Male', 'naitikmorkar@gmail.com', '7861005937', 'dindayal society', 'naitikmorkar@gmail.com', '$2y$10$O6eff5UElPtNDY8.XOuXLO6RZUm6g/wyOeabS3WQczv/d/UNCCpdq', '2025-08-17 10:11:14'),
(3, 'naitik', '2025-08-10', 'Male', 'darshnamorker@gmail.com', '5645895645', 'dindayal society', '.sentinal', '$2y$10$cclp9eKEDn/UZYGKnCS/dO5OczNtK6SXcz5lkjcEzJ7jp8i4RoEB6', '2025-08-18 05:20:39'),
(4, 'naitik', '2025-08-10', 'Male', 'abc@gmail.com', '9865645987', 'dindayal society', '.sentinal78', '$2y$10$T90XsHqczcq28N9cN.OWcug6RNQMw4.F7xOkyMeSG4Yu2CT1oRVrO', '2025-08-24 11:48:53'),
(7, 'Raj', '2025-08-10', 'Male', 'xyz@gmail.com', '9865645985', 'dindayal society', '.sentina478', '$2y$10$nOjPWiGyUIZ9OkkHX1GyjOe7AF0sXixLiRW50m3UOyv5GhJ0OPW0S', '2025-08-26 06:49:36'),
(8, 'Abvcv', '2025-08-13', 'Male', 'qsdwtf@gmail.com', '9586545856', 'SURAT (M CORP.) (PART) 8 R', 'sentinalcorp', '$2y$10$HoRHWn22wHyiTTzpHFYIsuJw1AunkHxX.R226umJf/dhrlOw7Wg56', '2025-08-26 06:55:28'),
(9, 'Abvcvfdwdw', '2025-08-13', 'Male', 'qsdwdtf@gmail.com', '9586345856', 'SURAT (M CORP.) (PART) 8 R', '656mwdih', '$2y$10$2FdodgrjMxRT649kY/ped.H6CERVl65k9.Vam5K6k.DJ5BTNef9mS', '2025-08-26 07:11:34'),
(12, 'ABcd', '2025-08-07', 'Male', '56@gmail.com', '0786100593', 'dindayal society', 'sentifenalcorp', '$2y$10$ZcmVM4Tikk3H8/w0NJXulOGX2HOWYqJRFVXroYYvVVQFrpFXB2CeW', '2025-08-26 07:27:25'),
(13, 'ABcdwd', '2025-08-07', 'Male', 'naitikmodrkar@gmail.com', '9565686569', 'dindayal society', '656mwdihdwd.sentinal', '$2y$10$MZluiwf87FCMpZdagZL8P.r9EOmamv1Ebd9A3/k1u2VJb/4YQ.1Ja', '2025-09-07 07:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `reg_admin`
--

CREATE TABLE `reg_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg_admin`
--

INSERT INTO `reg_admin` (`id`, `name`, `dob`, `gender`, `email`, `phone`, `address`, `username`, `password`, `created_at`) VALUES
(1, 'ABcdwd', '2025-08-07', 'Male', 'naitikmodrkar@gmail.com', '9565686569', 'dindayal society', '656mwdihdwd.sentinel', '$2y$10$cqOYXEfqLVSb.sHHt0vQLOHSNNdOubCKqEmh7DHNt1widG85jZI3C', '2025-09-07 07:44:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `reg_admin`
--
ALTER TABLE `reg_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reg_admin`
--
ALTER TABLE `reg_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
