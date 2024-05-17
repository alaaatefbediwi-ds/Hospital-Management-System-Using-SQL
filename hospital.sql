-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 12:34 AM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `Doc_Charge` float NOT NULL,
  `Room_Charge` float NOT NULL,
  `Med_Charge` float NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `Doc_Charge`, `Room_Charge`, `Med_Charge`, `PID`) VALUES
(1, 6000, 4200, 620, 1),
(2, 3210, 2600, 168, 3),
(3, 6200, 10500, 912.5, 2),
(4, 1500, 2100, 360, 6),
(5, 10500, 14700, 5800, 5),
(6, 1200, 1400, 270, 4),
(7, 15000, 15400, 1200, 7);

-- --------------------------------------------------------

--
-- Table structure for table `consults`
--

CREATE TABLE `consults` (
  `PID` int(11) NOT NULL,
  `Emp_SSN` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consults`
--

INSERT INTO `consults` (`PID`, `Emp_SSN`) VALUES
(1, '223556'),
(1, '229366'),
(2, '223556'),
(3, '223533'),
(4, '223533'),
(5, '223556'),
(5, '226553'),
(7, '226553'),
(7, '229366');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Specialization` varchar(20) NOT NULL,
  `Emp_SSN` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Specialization`, `Emp_SSN`) VALUES
('Hospice Medicine', '223533'),
('emergency medical se', '223556'),
('Hospice Medicine', '226553'),
('General Surgery', '229366');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_SSN` varchar(14) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `First_name` varchar(15) NOT NULL,
  `Emp_Salary` float NOT NULL,
  `city` varchar(10) NOT NULL,
  `town` varchar(10) NOT NULL,
  `street` varchar(10) NOT NULL,
  `Last_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_SSN`, `DOB`, `Gender`, `First_name`, `Emp_Salary`, `city`, `town`, `street`, `Last_name`) VALUES
('215899', '2000-01-29', 'male', 'Abdallah', 4100, 'alex', 'agami', 'elsamalihy', 'Hussien'),
('219256', '1999-01-22', 'female', 'Samah', 3500, 'giza', 'el-alamin', 'elbahaa-st', 'Hassan'),
('219666', '1998-09-10', 'male', 'Youssef', 3200, 'alex', 'moharrem b', 'eskandrany', 'Ahmed'),
('222210', '1988-08-29', 'female', 'Alaa', 9310, 'alex', 'dekhila', 'komy', 'Atef'),
('223533', '1970-09-10', 'male', 'saad', 9310, 'alex', 'abo-gair', 'saad-zaghl', 'Ahmed'),
('223556', '1980-05-19', 'female', 'merna', 9310, 'cairo', 'madinet-na', 'hanofil', 'tarek'),
('223633', '1975-05-15', 'male', 'Mohammed', 7500, 'cairo', 'Madinet-Na', 'saad-zaghl', 'Ahmed'),
('224444', '1989-10-10', 'female', 'mariam', 9310, 'giza', 'asher-rama', 'elsafa', 'AbdelKader'),
('224888', '1999-03-30', 'male', 'Ali', 9310, 'alex', 'smouha', 'fawzy-moaz', 'Ebrahim'),
('226553', '1960-01-10', 'male', 'youness', 9310, 'alex', 'agami', 'betash', 'Hussien'),
('229366', '1955-11-22', 'male', 'hossam', 9310, 'alex', 'sidi-gaber', 'elsawy-str', 'Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `employee_emp_phone`
--

CREATE TABLE `employee_emp_phone` (
  `Emp_Phone` varchar(17) NOT NULL,
  `Emp_SSN` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_emp_phone`
--

INSERT INTO `employee_emp_phone` (`Emp_Phone`, `Emp_SSN`) VALUES
('01005653521', '222210'),
('01006548955', '223633'),
('01008777954', '223556'),
('01112056444', '223533'),
('01126335999', '226553'),
('01203871544', '224888'),
('01204545152', '223556'),
('01206695352', '224444'),
('01245887412', '229366');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_salaries`
-- (See below for the actual view)
--
CREATE TABLE `employee_salaries` (
`Emp_SSN` varchar(14)
,`Emp_Salary` float
);

-- --------------------------------------------------------

--
-- Table structure for table `given`
--

CREATE TABLE `given` (
  `PID` int(11) NOT NULL,
  `T_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `given`
--

INSERT INTO `given` (`PID`, `T_Code`) VALUES
(1, 2400520),
(2, 2400414),
(3, 2300570),
(4, 2400120),
(4, 2400520),
(5, 2300570),
(6, 2400120),
(6, 2400516),
(7, 2300512),
(7, 2400414);

-- --------------------------------------------------------

--
-- Table structure for table `governs`
--

CREATE TABLE `governs` (
  `Emp_SSN` varchar(14) NOT NULL,
  `R_Num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `governs`
--

INSERT INTO `governs` (`Emp_SSN`, `R_Num`) VALUES
('222210', 1),
('222210', 2),
('222210', 4),
('224444', 3),
('224888', 2),
('224888', 3),
('224888', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `Department` varchar(16) NOT NULL,
  `Emp_SSN` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Department`, `Emp_SSN`) VALUES
('Surgery', '222210'),
('Sugery', '224444'),
('Emergency', '224888');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PID` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `F_name` varchar(15) NOT NULL,
  `city` varchar(10) NOT NULL,
  `street` varchar(10) NOT NULL,
  `town` varchar(10) NOT NULL,
  `P_Gender` varchar(7) NOT NULL,
  `Blood_Type` varchar(3) NOT NULL,
  `Disease` varchar(15) NOT NULL,
  `L_name` varchar(15) NOT NULL,
  `R_Num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PID`, `DOB`, `F_name`, `city`, `street`, `town`, `P_Gender`, `Blood_Type`, `Disease`, `L_name`, `R_Num`) VALUES
(1, '2003-12-23', 'Aya', 'alex', 'khirallah', 'agami', 'female', 'A', 'Pregnancy', 'Atef', 1),
(2, '2003-12-23', 'Safwat', 'alex', 'baraka', 'Dekhila', 'female', 'A+', 'heart disease', 'Atef', 1),
(3, '2002-10-13', 'Asmaa', 'alex', 'elshamy', 'sidi-beshr', 'female', 'B-', 'Corona', 'Atef', 2),
(4, '1995-11-01', 'Mohammed', 'alex', 'oraby stre', 'mandara', 'male', 'A+', 'injuiry', 'Amin', 4),
(5, '2010-12-23', 'Atef', 'alex', 'elkomy', 'manshia', 'male', 'B+', 'blood pressure', 'Ahmed', 3),
(6, '2015-05-07', 'Ismaiel', 'alex', 'qaset kare', 'sidi-gaber', 'male', 'B+', 'heart disease', 'Nasser', 3),
(7, '1990-12-12', 'Amr', 'alex', 'thawra', 'syouf', 'male', 'A-', 'Anemia', 'Atef', 4);

-- --------------------------------------------------------

--
-- Table structure for table `patient_p_phone`
--

CREATE TABLE `patient_p_phone` (
  `P_Phone` varchar(17) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_p_phone`
--

INSERT INTO `patient_p_phone` (`P_Phone`, `PID`) VALUES
('01000502699', 7),
('01006544204', 3),
('01125444899', 1),
('012036555489', 2),
('01213870165', 4),
('01279090196', 6),
('01286690910', 5);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `R_Num` int(11) NOT NULL,
  `R_Type` varchar(10) NOT NULL,
  `R_Status` varchar(10) NOT NULL,
  `R_Name` varchar(15) NOT NULL,
  `R_Charge` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`R_Num`, `R_Type`, `R_Status`, `R_Name`, `R_Charge`) VALUES
(1, 'VIP', 'complete', 'emergency_1', 2100),
(2, 'ordinary', 'not-comple', 'hospice medicin', 650),
(3, 'VIP', 'not-comple', 'emergency_2', 2100),
(4, 'ordinary', 'completed', 'after-operation', 1400);

-- --------------------------------------------------------

--
-- Table structure for table `take_care_of`
--

CREATE TABLE `take_care_of` (
  `Emp_SSN` varchar(14) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `take_care_of`
--

INSERT INTO `take_care_of` (`Emp_SSN`, `PID`) VALUES
('215899', 4),
('215899', 6),
('215899', 7),
('219256', 2),
('219256', 3),
('219666', 2),
('223633', 1),
('223633', 6);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `T_Charge` float NOT NULL,
  `T_Code` int(11) NOT NULL,
  `T_Name` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`T_Charge`, `T_Code`, `T_Name`, `Quantity`) VALUES
(7.5, 2300512, 'catafast', 4),
(29.5, 2300570, 'cataflam', 1),
(110.75, 2400120, 'berostoc', 1),
(160.5, 2400414, 'Torbin', 5),
(67.25, 2400516, 'Borofin', 3),
(58, 2400520, 'alomeen', 6);

-- --------------------------------------------------------

--
-- Table structure for table `ward_boy`
--

CREATE TABLE `ward_boy` (
  `Emp_SSN` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ward_boy`
--

INSERT INTO `ward_boy` (`Emp_SSN`) VALUES
('215899'),
('219256'),
('219666'),
('223633');

-- --------------------------------------------------------

--
-- Structure for view `employee_salaries` exported as a table
--
DROP TABLE IF EXISTS `employee_salaries`;
CREATE TABLE`employee_salaries`(
    `Emp_SSN` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
    `Emp_Salary` float NOT NULL
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_no`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `consults`
--
ALTER TABLE `consults`
  ADD PRIMARY KEY (`PID`,`Emp_SSN`),
  ADD KEY `Emp_SSN` (`Emp_SSN`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Emp_SSN`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_SSN`);

--
-- Indexes for table `employee_emp_phone`
--
ALTER TABLE `employee_emp_phone`
  ADD PRIMARY KEY (`Emp_Phone`,`Emp_SSN`),
  ADD KEY `Emp_SSN` (`Emp_SSN`);

--
-- Indexes for table `given`
--
ALTER TABLE `given`
  ADD PRIMARY KEY (`PID`,`T_Code`),
  ADD KEY `T_Code` (`T_Code`);

--
-- Indexes for table `governs`
--
ALTER TABLE `governs`
  ADD PRIMARY KEY (`Emp_SSN`,`R_Num`),
  ADD KEY `R_Num` (`R_Num`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`Emp_SSN`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `R_Num` (`R_Num`);

--
-- Indexes for table `patient_p_phone`
--
ALTER TABLE `patient_p_phone`
  ADD PRIMARY KEY (`P_Phone`,`PID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`R_Num`);

--
-- Indexes for table `take_care_of`
--
ALTER TABLE `take_care_of`
  ADD PRIMARY KEY (`Emp_SSN`,`PID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`T_Code`);

--
-- Indexes for table `ward_boy`
--
ALTER TABLE `ward_boy`
  ADD PRIMARY KEY (`Emp_SSN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient` (`PID`);

--
-- Constraints for table `consults`
--
ALTER TABLE `consults`
  ADD CONSTRAINT `consults_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient` (`PID`),
  ADD CONSTRAINT `consults_ibfk_2` FOREIGN KEY (`Emp_SSN`) REFERENCES `doctor` (`Emp_SSN`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Emp_SSN`) REFERENCES `employee` (`Emp_SSN`);

--
-- Constraints for table `employee_emp_phone`
--
ALTER TABLE `employee_emp_phone`
  ADD CONSTRAINT `employee_emp_phone_ibfk_1` FOREIGN KEY (`Emp_SSN`) REFERENCES `employee` (`Emp_SSN`);

--
-- Constraints for table `given`
--
ALTER TABLE `given`
  ADD CONSTRAINT `given_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient` (`PID`),
  ADD CONSTRAINT `given_ibfk_2` FOREIGN KEY (`T_Code`) REFERENCES `treatment` (`T_Code`);

--
-- Constraints for table `governs`
--
ALTER TABLE `governs`
  ADD CONSTRAINT `governs_ibfk_1` FOREIGN KEY (`Emp_SSN`) REFERENCES `nurse` (`Emp_SSN`),
  ADD CONSTRAINT `governs_ibfk_2` FOREIGN KEY (`R_Num`) REFERENCES `room` (`R_Num`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`Emp_SSN`) REFERENCES `employee` (`Emp_SSN`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`R_Num`) REFERENCES `room` (`R_Num`);

--
-- Constraints for table `patient_p_phone`
--
ALTER TABLE `patient_p_phone`
  ADD CONSTRAINT `patient_p_phone_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient` (`PID`);

--
-- Constraints for table `take_care_of`
--
ALTER TABLE `take_care_of`
  ADD CONSTRAINT `take_care_of_ibfk_1` FOREIGN KEY (`Emp_SSN`) REFERENCES `ward_boy` (`Emp_SSN`),
  ADD CONSTRAINT `take_care_of_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `patient` (`PID`);

--
-- Constraints for table `ward_boy`
--
ALTER TABLE `ward_boy`
  ADD CONSTRAINT `ward_boy_ibfk_1` FOREIGN KEY (`Emp_SSN`) REFERENCES `employee` (`Emp_SSN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
