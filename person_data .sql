-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 01:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `missing_person`
--

-- --------------------------------------------------------

--
-- Table structure for table `person_data`
--

CREATE TABLE `person_data` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `identification_mark` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `crimes_done` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person_data`
--

INSERT INTO `person_data` (`id`, `Name`, `father_name`, `mother_name`, `gender`, `dob`, `blood_group`, `identification_mark`, `nationality`, `religion`, `crimes_done`) VALUES
(1, 'ssa', '', '', 'sads', 'DOB', '', 'asdsa', 'asdsa', 'sdas', 'asdsd'),
(2, 'sada', '', '', 'asdas', 'None', '', 'asd', 'as', 'asdsd', 'assda'),
(3, 'sada', '', '', 'asdas', 'None', '', 'asd', 'as', 'asdsd', 'assda'),
(4, 'sdad', '', '', 'asd', '', '', 'sad', 'asd', 'asds', 'sad'),
(5, 'sachin', 'n', 's', 'male', '', 'b+', 'dsd', 'sdf', 'dsfd', 'dsf'),
(6, 'sachin1', 'f', 'd', 'male', '20-04-1999', 'rre', 'fggd', 'dfg', 'df', 'dfgf'),
(7, 'sachin2', 's', 'd', 's', '20-04-1999', 's', 'sdaas', 's', 'asd', 'sda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person_data`
--
ALTER TABLE `person_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person_data`
--
ALTER TABLE `person_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
