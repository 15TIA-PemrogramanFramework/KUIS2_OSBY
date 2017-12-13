-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2017 at 03:52 PM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuis_1059osby`
--

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id` bigint(20) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jeniskelamin` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `ipk_1059_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id`, `alamat`, `jeniskelamin`, `name`, `ipk_1059_id`) VALUES
(1, 'Berdikari', 'laki', 'Osby', 1),
(3, 'Pagaruyung', 'laki', 'Dhiemas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ipk_1059`
--

CREATE TABLE `ipk_1059` (
  `id` bigint(20) NOT NULL,
  `dosen` varchar(255) DEFAULT NULL,
  `matakuliah` varchar(100) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ipk_1059`
--

INSERT INTO `ipk_1059` (`id`, `dosen`, `matakuliah`, `nilai`) VALUES
(1, 'MRA', 'Framework', 90),
(2, 'MMZ', 'Framework Web', 89);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_biw5flpjbleyhddb247omsovk` (`name`),
  ADD KEY `FKca9f561vruw46lr7xg0j1efgm` (`ipk_1059_id`);

--
-- Indexes for table `ipk_1059`
--
ALTER TABLE `ipk_1059`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mf6dctmijucj2gyuhag2r2n9x` (`matakuliah`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ecpoy0i2uoe6t80e19rvgv69e` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ipk_1059`
--
ALTER TABLE `ipk_1059`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `identitas`
--
ALTER TABLE `identitas`
  ADD CONSTRAINT `FKca9f561vruw46lr7xg0j1efgm` FOREIGN KEY (`ipk_1059_id`) REFERENCES `ipk_1059` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
