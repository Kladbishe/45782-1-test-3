-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 04, 2025 at 07:28 AM
-- Server version: 9.4.0
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_meetings`
--
CREATE DATABASE IF NOT EXISTS `dev_meetings` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dev_meetings`;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `teems_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `description` text NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `teems_id`, `start_date`, `end_date`, `description`, `room`, `created_at`, `updated_at`) VALUES
('bf67713b-b94f-11f0-983b-5a8aa6089220', 'bf65a536-b94f-11f0-983b-5a8aa6089220', '2025-11-04 09:00:00', '2025-11-04 10:00:00', 'UI sprint planning', 'Blue Room', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf677971-b94f-11f0-983b-5a8aa6089220', 'bf65abaa-b94f-11f0-983b-5a8aa6089220', '2025-11-04 10:15:00', '2025-11-04 11:30:00', 'React components discussion', 'New York Room', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf677c12-b94f-11f0-983b-5a8aa6089220', 'bf65aca3-b94f-11f0-983b-5a8aa6089220', '2025-11-04 11:45:00', '2025-11-04 13:00:00', 'Mobile release preparation', 'Large Board Room', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf677dd4-b94f-11f0-983b-5a8aa6089220', 'bf65acdf-b94f-11f0-983b-5a8aa6089220', '2025-11-05 09:00:00', '2025-11-05 10:15:00', 'API architecture updates', 'Room A', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf677ff0-b94f-11f0-983b-5a8aa6089220', 'bf65ad10-b94f-11f0-983b-5a8aa6089220', '2025-11-05 10:30:00', '2025-11-05 11:30:00', 'Server monitoring improvements', 'Room B', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf67811c-b94f-11f0-983b-5a8aa6089220', 'bf65a536-b94f-11f0-983b-5a8aa6089220', '2025-11-06 09:00:00', '2025-11-06 09:45:00', 'Design system updates', 'Blue Room', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf678222-b94f-11f0-983b-5a8aa6089220', 'bf65abaa-b94f-11f0-983b-5a8aa6089220', '2025-11-06 10:00:00', '2025-11-06 11:00:00', 'Performance optimization', 'Room C', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf67831c-b94f-11f0-983b-5a8aa6089220', 'bf65aca3-b94f-11f0-983b-5a8aa6089220', '2025-11-06 11:15:00', '2025-11-06 12:15:00', 'UI bug review', 'Room D', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf678420-b94f-11f0-983b-5a8aa6089220', 'bf65acdf-b94f-11f0-983b-5a8aa6089220', '2025-11-07 09:00:00', '2025-11-07 10:30:00', 'Database schema redesign', 'Room E', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf67851b-b94f-11f0-983b-5a8aa6089220', 'bf65ad10-b94f-11f0-983b-5a8aa6089220', '2025-11-07 10:45:00', '2025-11-07 11:45:00', 'Docker optimization', 'Room F', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf678611-b94f-11f0-983b-5a8aa6089220', 'bf65a536-b94f-11f0-983b-5a8aa6089220', '2025-11-08 09:00:00', '2025-11-08 10:15:00', 'UX review', 'Blue Room', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf678708-b94f-11f0-983b-5a8aa6089220', 'bf65abaa-b94f-11f0-983b-5a8aa6089220', '2025-11-08 10:30:00', '2025-11-08 11:45:00', 'Hooks and context deep dive', 'New York Room', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf6787f8-b94f-11f0-983b-5a8aa6089220', 'bf65aca3-b94f-11f0-983b-5a8aa6089220', '2025-11-08 12:00:00', '2025-11-08 13:15:00', 'iOS and Android parity check', 'Large Board Room', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf6788e8-b94f-11f0-983b-5a8aa6089220', 'bf65acdf-b94f-11f0-983b-5a8aa6089220', '2025-11-09 09:00:00', '2025-11-09 10:30:00', 'API authentication logic', 'Room G', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf6789da-b94f-11f0-983b-5a8aa6089220', 'bf65ad10-b94f-11f0-983b-5a8aa6089220', '2025-11-09 10:45:00', '2025-11-09 12:00:00', 'CI/CD deployment pipeline', 'Room H', '2025-11-04 07:27:41', '2025-11-04 07:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `teems`
--

CREATE TABLE `teems` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teems`
--

INSERT INTO `teems` (`id`, `name`, `created_at`, `updated_at`) VALUES
('bf65a536-b94f-11f0-983b-5a8aa6089220', 'Team UI', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf65abaa-b94f-11f0-983b-5a8aa6089220', 'Team React', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf65aca3-b94f-11f0-983b-5a8aa6089220', 'Team Mobile', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf65acdf-b94f-11f0-983b-5a8aa6089220', 'Team Backend', '2025-11-04 07:27:41', '2025-11-04 07:27:41'),
('bf65ad10-b94f-11f0-983b-5a8aa6089220', 'Team DevOps', '2025-11-04 07:27:41', '2025-11-04 07:27:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teems_id` (`teems_id`);

--
-- Indexes for table `teems`
--
ALTER TABLE `teems`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`teems_id`) REFERENCES `teems` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
