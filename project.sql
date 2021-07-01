-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 01, 2021 at 03:27 PM
-- Server version: 5.7.20-log
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patientId` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contactNumber` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `bloodGroup` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `anyMajorDisease` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientId`, `name`, `contactNumber`, `age`, `gender`, `bloodGroup`, `address`, `anyMajorDisease`) VALUES
('1', 'piyush', '8103277287', '21', 'Male', 'A+', 'Green park colony', 'no'),
('10', 'Aman choudhary', '9425666765', '34', 'Male', 'AB-', 'Mumbai', 'no'),
('11', 'ashok choudhary', '986979786', '64', 'Male', 'ashoknagar', 'fever', 'Typhoid'),
('2', 'Ayush', '8871866652', '23', 'Male', 'A+', 'DIG', 'no'),
('3', 'palak', '9425666765', '28', 'o-', 'indore,india', 'typhphoid', 'female'),
('5', 'niketan mishra', '12345678', '34', 'Male', 'AB-', 'lnct college', 'malaria'),
('6', 'Jeevan choudhary', '9893321788', '52', 'Male', 'A+', 'Bhopal', 'no'),
('8', 'Sangeeta', '9893321788', '48', 'Female', 'A+', 'Bhopal,MP', 'weakness');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

DROP TABLE IF EXISTS `patientreport`;
CREATE TABLE IF NOT EXISTS `patientreport` (
  `patientID` varchar(10) NOT NULL,
  `symptom` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `medicines` varchar(200) DEFAULT NULL,
  `wardReq` varchar(5) DEFAULT NULL,
  `typeWard` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` (`patientID`, `symptom`, `diagnosis`, `medicines`, `wardReq`, `typeWard`) VALUES
('1', 'fever', 'injection', 'Azithromycin', 'NO', ''),
('10', 'fever', 'pills', 'paracetamol', 'YES', 'Single'),
('11', 'fever', 'pills', 'paracetamol', 'YES', 'Single'),
('3', 'cold and cough', 'rest', 'paracetamol', 'YES', 'Single'),
('6', 'cold', 'viral fever', 'paracetamol', 'YES', 'Single'),
('8', 'cough', 'pills', 'paracetamol', 'YES', 'General');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
