-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 07:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contacts_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contactID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contactID`, `userID`, `name`, `phoneNumber`, `email`, `company`, `website`, `description`) VALUES
(1, 1, 'John Smith', '+1 (555) 123-4567', 'john.smith@example.com', 'ABC Corp', 'www.abc-corp.com', 'Sales Manager in the US'),
(2, 2, 'Jane Doe', '+44 20 1234 5678', 'jane.doe@example.co.uk', 'XYZ Ltd', 'www.xyz-ltd.co.uk', 'Marketing Director in the UK'),
(3, 3, 'Carlos García', '+34 91 234 5678', 'carlos.garcia@example.es', 'Company Z', 'www.companyz.es', 'CEO in Spain'),
(4, 4, 'Anna Müller', '+49 30 1234 5678', 'anna.muller@example.de', 'Firma A', 'www.firma-a.de', 'Product Manager in Germany'),
(5, 1, 'Maria Rossi', '+39 02 1234 5678', 'maria.rossi@example.it', 'Azienda B', 'www.azienda-b.it', 'CTO in Italy'),
(6, 2, 'Satoshi Tanaka', '+81 3 1234 5678', 'satoshi.tanaka@example.jp', 'Tech Inc', 'www.tech-inc.jp', 'Lead Developer in Japan'),
(7, 3, 'Lucas Dupont', '+33 1 23 45 67 89', 'lucas.dupont@example.fr', 'Entreprise C', 'www.entreprise-c.fr', 'CFO in France'),
(8, 4, 'Linda Smith', '+1 (555) 987-6543', 'linda.smith@example.com', 'Tech Solutions', 'www.techsolutions.com', 'COO in the US'),
(9, 1, 'Nguyễn Văn A', '+84 28 1234 5678', 'nguyen.vana@example.vn', 'Company X', 'www.congtyx.vn', 'Product Manager in Vietnam'),
(10, 2, 'Elena González', '+34 91 876 5432', 'elena.gonzalez@example.es', 'Empresa Y', 'www.empresa-y.es', 'Sales Manager in Spain');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstName`, `lastName`, `username`, `password`) VALUES
(1, 'Alice', 'Johnson', 'alice@example.com', 'hashed_password_5'),
(2, 'Bob', 'Williams', 'bob@example.com', 'hashed_password_6'),
(3, 'Emily', 'Davis', 'emily@example.com', 'hashed_password_7'),
(4, 'Michael', 'Brown', 'michael@example.com', 'hashed_password_8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`),
  ADD KEY `fk_user` (`userID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`userID`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
