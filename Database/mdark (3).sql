-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2025 at 02:39 PM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdark`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `SecondName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `FullName`, `Email`, `UserName`, `Password`, `FirstName`, `SecondName`, `LastName`) VALUES
(2021098543, 'Maha Youssef Omar', 'maha@example.com', 'maha_admin', 'admin303', 'Maha', 'Youssef', 'Omar'),
(2021123094, 'Yassin Khaled Zaid', 'yassin@example.com', 'yassin_admin', 'admin789', 'Yassin', 'Khaled', 'Zaid'),
(2021234879, 'Tariq Nasser Ahmed', 'tariq@example.com', 'tariq_admin', 'admin202', 'Tariq', 'Nasser', 'Ahmed'),
(2021432981, 'Zainab Hadi Mohammed', 'zainab@example.com', 'zainab_admin', 'admin505', 'Zainab', 'Hadi', 'Mohammed'),
(2021657324, 'Salem Ali Hassan', 'salem@example.com', 'salem_admin', 'admin404', 'Salem', 'Ali', 'Hassan'),
(2021674830, 'ABEER Yhaya hassan', 'aaa@example.com', 'aber-admim', 'aaa4562', 'ABEER', 'Yhaya', 'hassan '),
(2021764902, 'Rania Zaid Nasser', 'rania@example.com', 'rania_admin', 'admin707', 'Rania', 'Zaid', 'Nasser'),
(2021876521, 'Lina Sami Hadi', 'lina@example.com', 'lina_admin', 'admin101', 'Lina', 'Sami', 'Hadi'),
(2021983746, 'Omar Khaled Sami', 'omar@example.com', 'omar_admin', 'admin606', 'Omar', 'Khaled', 'Sami'),
(2021986503, 'Aisha Omar Salem', 'aisha@example.com', 'aisha_admin', 'admin456', 'Aisha', 'Omar', 'Salem');

-- --------------------------------------------------------

--
-- Table structure for table `adminstaff`
--

CREATE TABLE `adminstaff` (
  `StaffID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '2021098543'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adminstaff`
--

INSERT INTO `adminstaff` (`StaffID`, `Name`, `UserName`, `Password`, `Email`, `AdminID`) VALUES
(2021092657, 'Tamer Ali', 'tamer_staff', 'staff606', 'tamer@example.com', 2021098543),
(2021348572, 'Youssef Hadi', 'youssef_staff', 'staff404', 'youssef@example.com', 2021098543),
(2021674830, 'Amira Nasser', 'amira_staff', 'staff505', 'amira@example.com', 2021098543),
(2021748390, 'Leen Khaled', 'Leen_staff1', 'staff303', 'leila@example.com', 2021098543),
(2021857394, 'Sami Zaid', 'sami_staff', 'staff202', 'sami@example.com', 2021098543),
(2021876541, 'Rana Mohammed', 'Rana_staff', 'staff707', 'rima@example.com', 2021098543),
(2021903847, 'Nada Hassan', 'Nada_staff', 'staff789', 'fares@example.com', 2021098543),
(2021904726, 'Leila Khaled', 'leila_staff', 'staff303', 'leila@example.com', 2021098543),
(2021930478, 'Rima Mohammed', 'rima_staff', 'staff707', 'rima@example.com', 2021098543),
(2021986427, 'Fares Hassan', 'fares_staff', 'staff789', 'fares@example.com', 2021098543);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `AttendanceID` int(11) NOT NULL,
  `IsPersent` tinyint(1) DEFAULT NULL,
  `AttendanceDate` date DEFAULT NULL,
  `RegistrationID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`AttendanceID`, `IsPersent`, `AttendanceDate`, `RegistrationID`) VALUES
(1, 1, '2025-04-01', 1),
(2, 0, '2025-04-01', 2),
(3, 1, '2025-04-02', 3),
(4, 1, '2025-04-02', 4),
(5, 0, '2025-04-03', 5),
(6, 1, '2025-04-03', 6),
(7, 1, '2025-04-04', 7),
(8, 0, '2025-04-04', 8),
(9, 1, '2025-04-05', 9),
(10, 1, '2025-04-05', 9);

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `AwardID` int(11) NOT NULL,
  `Description` text,
  `AwardName` varchar(100) DEFAULT NULL,
  `AwardType` varchar(50) DEFAULT NULL,
  `AwardDate` date DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`AwardID`, `Description`, `AwardName`, `AwardType`, `AwardDate`, `StudentID`) VALUES
(1, 'Best in Mathematics', 'Math Excellence', 'Academic', '2025-03-15', 2022008765),
(2, 'Top Coder', 'Coding Champion', 'Technical', '2025-03-16', 2022004321),
(3, 'Science Fair Winner', 'Science Star', 'Exhibition', '2025-03-17', 2022009876),
(4, 'Literature Essay Winner', 'Lit Master', 'Academic', '2025-03-18', 2022015678),
(5, 'AI Project Award', 'AI Innovator', 'Technical', '2025-03-19', 2022014321),
(6, 'Math Olympiad 1st Place', 'Math Genius', 'Competition', '2025-03-20', 2022005678),
(7, 'Web Design Award', 'Web Wizard', 'Technical', '2025-03-21', 2022015678),
(8, 'Physics Experiment Winner', 'Physics Pro', 'Exhibition', '2025-03-22', 2022015678),
(9, 'Networking Skills', 'Network Star', 'Professional', '2025-03-23', 2022019876),
(10, 'Statistics Project', 'Stats Expert', 'Academic', '2025-03-24', 2022014321);

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `BudgetID` int(11) NOT NULL,
  `ActualAmount` decimal(10,2) DEFAULT NULL,
  `EstimatedAmount` decimal(10,2) DEFAULT NULL,
  `ApprovedDate` date DEFAULT NULL,
  `EventID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`BudgetID`, `ActualAmount`, `EstimatedAmount`, `ApprovedDate`, `EventID`) VALUES
(1, '5000.00', '6000.00', '2025-02-01', 1),
(2, '3000.00', '3500.00', '2025-02-02', 2),
(3, '2000.00', '2500.00', '2025-02-03', 3),
(4, '4000.00', '4500.00', '2025-02-04', 4),
(5, '6000.00', '7000.00', '2025-02-05', 5),
(6, '1500.00', '2000.00', '2025-02-06', 6),
(7, '2500.00', '3000.00', '2025-02-07', 7),
(8, '3500.00', '4000.00', '2025-02-08', 8),
(9, '4500.00', '5000.00', '2025-02-09', 9),
(10, '5500.00', '6000.00', '2025-02-10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `CalendarID` int(11) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `EventDateStart` date DEFAULT NULL,
  `EventDateEnd` date DEFAULT NULL,
  `EventID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`CalendarID`, `Location`, `EventDateStart`, `EventDateEnd`, `EventID`) VALUES
(1, 'Main Hall', '2025-04-15', '2025-04-16', 1),
(2, 'Science Lab', '2025-04-17', '2025-04-18', 2),
(3, 'Computer Lab', '2025-04-19', '2025-04-20', 3),
(4, 'Library', '2025-04-21', '2025-04-22', 4),
(5, 'Conference Room', '2025-04-23', '2025-04-24', 5),
(6, 'Auditorium', '2025-04-25', '2025-04-26', 6),
(7, 'Tech Lab', '2025-04-27', '2025-04-28', 7),
(8, 'Physics Lab', '2025-04-29', '2025-04-30', 8),
(9, 'Networking Room', '2025-05-01', '2025-05-02', 9),
(10, 'Seminar Hall', '2025-05-03', '2025-05-04', 10);

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `CertificateID` int(11) NOT NULL,
  `IssueDate` date DEFAULT NULL,
  `CertificateFile` text,
  `StudentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`CertificateID`, `IssueDate`, `CertificateFile`, `StudentID`) VALUES
(1, '2025-03-15', 'cert_math_001.pdf', 2022001234),
(2, '2025-03-16', 'cert_code_002.pdf', 2022004321),
(3, '2025-03-17', 'cert_science_003.pdf', 2022005678),
(4, '2025-03-18', 'cert_lit_004.pdf', 2022008765),
(5, '2025-03-19', 'cert_ai_005.pdf', 2022009876),
(6, '2025-03-20', 'cert_mathol_006.pdf', 2022012345),
(7, '2025-03-21', 'cert_web_007.pdf', 2022014321),
(8, '2025-03-22', 'cert_physics_008.pdf', 2022015678),
(9, '2025-03-23', 'cert_network_009.pdf', 2022018765),
(10, '2025-03-24', 'cert_stats_010.pdf', 2022019876);

-- --------------------------------------------------------

--
-- Table structure for table `communitypartner`
--

CREATE TABLE `communitypartner` (
  `PartnerID` int(11) NOT NULL,
  `PartnerName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `communitypartner`
--

INSERT INTO `communitypartner` (`PartnerID`, `PartnerName`, `Email`, `UserName`, `Password`, `Phone`, `AdminID`) VALUES
(2022101011, 'EduFoundation', 'edufound@example.com', 'edufound2', 'partner456', '123-456-7891', 2021983746),
(2022101012, 'TechCorp', 'techcorp@example.com', 'techcorp1', 'partner123', '123-456-7890', 2021983746),
(2022101013, 'ScienceHub', 'sciencehub@example.com', 'sciencehub3', 'partner789', '123-456-7892', 2021983746),
(2022101014, 'LitSociety', 'litsoc@example.com', 'litsoc4', 'partner101', '123-456-7893', 2021983746),
(2022101015, 'AIAlliance', 'aialliance@example.com', 'aialliance5', 'partner202', '123-456-7894', 2021983746),
(2022101016, 'MathLeague', 'mathleague@example.com', 'mathleague6', 'partner303', '123-456-7895', 2021983746),
(2022101017, 'WebMasters', 'webmasters@example.com', 'webmasters7', 'partner404', '123-456-7896', 2021983746),
(2022101019, 'PhysicsOrg', 'physicsorg@example.com', 'physicsorg8', 'partner505', '123-456-7897', 2021983746),
(2022101020, 'NetPros', 'netpros@example.com', 'netpros9', 'partner606', '123-456-7898', 2021983746),
(2022101021, 'StatsGroup', 'statsgroup@example.com', 'statsgroup10', 'partner707', '123-456-7899', 2021983746);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `CreditHours` int(11) DEFAULT NULL,
  `AvailableSeats` int(11) DEFAULT NULL,
  `CourseTime` varchar(50) DEFAULT NULL,
  `CourseDate` date DEFAULT NULL,
  `FacultyID` int(11) NOT NULL DEFAULT '2021085726'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseName`, `CreditHours`, `AvailableSeats`, `CourseTime`, `CourseDate`, `FacultyID`) VALUES
(101, 'Introduction to Programming', 3, 10, '08:00 AM - 10:00 AM', '2025-05-01', 2021085726),
(102, 'Database Systems', 4, 0, '10:00 AM - 12:00 PM', '2025-05-03', 2021085726),
(103, 'Data Structures', 3, 5, '01:00 PM - 03:00 PM', '2025-05-06', 2021085726),
(104, 'Computer Networks', 3, 3, '03:30 PM - 05:30 PM', '2025-05-10', 2021085726),
(105, 'Operating Systems', 4, 20, '06:00 PM - 08:00 PM', '2025-05-12', 2021085726),
(106, 'Web Development', 3, 1, '09:00 AM - 11:00 AM', '2025-05-15', 2021085726),
(107, 'Mobile App Design', 2, 8, '11:30 AM - 01:30 PM', '2025-05-18', 2021085726),
(108, 'Cybersecurity Basics', 3, 15, '02:00 PM - 04:00 PM', '2025-05-22', 2021085726),
(109, 'Artificial Intelligence', 4, 0, '04:30 PM - 06:30 PM', '2025-05-25', 2021085726),
(110, 'Cloud Computing', 3, 12, '07:00 PM - 09:00 PM', '2025-05-28', 2021085726);

-- --------------------------------------------------------

--
-- Table structure for table `escalations`
--

CREATE TABLE `escalations` (
  `Escalation_ID` int(11) NOT NULL,
  `Support_ID` int(11) DEFAULT NULL,
  `IT_ID` int(11) DEFAULT NULL,
  `Issue_Description` text,
  `Escalation_Date` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `escalations`
--

INSERT INTO `escalations` (`Escalation_ID`, `Support_ID`, `IT_ID`, `Issue_Description`, `Escalation_Date`, `Status`) VALUES
(1, 2022101001, 2021101234, 'Network connectivity issue', '2023-10-01', 'Open'),
(2, 2022101002, 2021104321, 'Database backup failed', '2023-10-02', 'In Progress'),
(3, 2022101003, 2021105678, 'System performance slow', '2023-10-03', 'Resolved'),
(4, 2022101004, 2021108765, 'Software bug in application', '2023-10-04', 'Open'),
(5, 2022101005, 2021109876, 'Security breach detected', '2023-10-05', 'Critical'),
(6, 2022101006, 2021112345, 'Website down', '2023-10-06', 'Resolved'),
(7, 2022101007, 2021114321, 'DevOps pipeline failed', '2023-10-07', 'In Progress'),
(8, 2022101008, 2021115678, 'Cloud server outage', '2023-10-08', 'Open'),
(9, 2022101009, 2021118765, 'IT support ticket unresolved', '2023-10-09', 'Resolved'),
(10, 2022101001, 2021119876, 'Product feature request', '2023-10-10', 'In Progress'),
(11, 2022101002, 2021101234, 'Email server down', '2023-10-11', 'Resolved'),
(12, 2022101003, 2021104321, 'Database query optimization', '2023-10-12', 'Open'),
(13, 2022101004, 2021105678, 'System upgrade required', '2023-10-13', 'In Progress'),
(14, 2022101005, 2021108765, 'Software license renewal', '2023-10-14', 'Resolved'),
(15, 2022101006, 2021109876, 'Security audit failed', '2023-10-15', 'Critical');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EventID` int(11) NOT NULL,
  `EventName` varchar(100) DEFAULT NULL,
  `EventType` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `OrganizerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EventID`, `EventName`, `EventType`, `Status`, `OrganizerID`) VALUES
(1, 'Tech Conference', 'Conference', 'Active', 1),
(2, 'Science Fair', 'Exhibition', 'Completed', 2),
(3, 'Coding Bootcamp', 'Workshop', 'Pending', 3),
(4, 'Literature Seminar', 'Seminar', 'Active', 4),
(5, 'AI Symposium', 'Conference', 'Completed', 5),
(6, 'Math Olympiad', 'Competition', 'Pending', 6),
(7, 'Web Dev Workshop', 'Workshop', 'Active', 7),
(8, 'Physics Expo', 'Exhibition', 'Completed', 8),
(9, 'Networking Day', 'Networking', 'Pending', 9),
(10, 'Statistics Seminar', 'Seminar', 'Active', 10);

-- --------------------------------------------------------

--
-- Table structure for table `eventproposal`
--

CREATE TABLE `eventproposal` (
  `EventID` int(11) NOT NULL,
  `ProposalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventproposal`
--

INSERT INTO `eventproposal` (`EventID`, `ProposalID`) VALUES
(1, 1),
(1, 2),
(2, 2),
(1, 3),
(3, 3),
(2, 4),
(4, 4),
(2, 5),
(5, 5),
(3, 6),
(6, 6),
(3, 7),
(4, 8),
(4, 9),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `eventrating`
--

CREATE TABLE `eventrating` (
  `FeedbackID` int(11) NOT NULL,
  `Comment` text,
  `Rating` int(11) DEFAULT NULL,
  `SubmittedAt` datetime DEFAULT NULL,
  `EventID` int(11) DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventrating`
--

INSERT INTO `eventrating` (`FeedbackID`, `Comment`, `Rating`, `SubmittedAt`, `EventID`, `StudentID`) VALUES
(1, 'Great event!', 5, '2025-04-16 10:00:00', 1, 2022001234),
(2, 'Very informative', 4, '2025-04-16 11:00:00', 1, 2022004321),
(3, 'Well organized', 5, '2025-04-16 12:00:00', 1, 2022005678),
(4, 'Good experience', 4, '2025-04-18 10:00:00', 2, 2022008765),
(5, 'Loved it!', 5, '2025-04-18 11:00:00', 2, 2022009876),
(6, 'Could be better', 3, '2025-04-18 12:00:00', 2, 2022012345),
(7, 'Amazing workshop', 5, '2025-04-20 10:00:00', 3, 2022014321),
(8, 'Learned a lot', 4, '2025-04-20 11:00:00', 3, 2022015678),
(9, 'Good content', 4, '2025-04-20 12:00:00', 3, 2022018765),
(10, 'Excellent seminar', 5, '2025-04-22 10:00:00', 4, 2022019876),
(11, 'Very engaging', 4, '2025-04-22 11:00:00', 4, 2022012345),
(12, 'Nice event', 4, '2025-04-24 10:00:00', 5, 2022012345),
(13, 'Really helpful', 5, '2025-04-24 11:00:00', 5, 2022012345),
(14, 'Good speakers', 4, '2025-04-24 12:00:00', 5, 2022012345),
(15, 'Fantastic!', 5, '2025-04-26 10:00:00', 6, 2022012345);

-- --------------------------------------------------------

--
-- Table structure for table `eventregistration`
--

CREATE TABLE `eventregistration` (
  `EventID` int(11) NOT NULL,
  `RegistrationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventregistration`
--

INSERT INTO `eventregistration` (`EventID`, `RegistrationID`) VALUES
(1, 1),
(4, 1),
(7, 1),
(1, 2),
(4, 2),
(8, 2),
(1, 3),
(5, 3),
(8, 3),
(2, 4),
(5, 4),
(8, 4),
(2, 5),
(5, 5),
(9, 5),
(2, 6),
(6, 6),
(9, 6),
(3, 7),
(6, 7),
(9, 7),
(3, 8),
(6, 8),
(10, 8),
(3, 9),
(7, 9),
(10, 9),
(4, 10),
(7, 10),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `expendituredetail`
--

CREATE TABLE `expendituredetail` (
  `ExpenditureDetailID` int(11) NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Description` text,
  `ExpenseItem` varchar(100) DEFAULT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `BudgetID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expendituredetail`
--

INSERT INTO `expendituredetail` (`ExpenditureDetailID`, `Amount`, `Description`, `ExpenseItem`, `ExpenseDate`, `BudgetID`) VALUES
(1, '1000.00', 'Venue rental', 'Venue', '2025-03-01', 1),
(2, '500.00', 'Food catering', 'Catering', '2025-03-02', 2),
(3, '300.00', 'Printing materials', 'Materials', '2025-03-03', 3),
(4, '800.00', 'Speaker fees', 'Speakers', '2025-03-04', 4),
(5, '1200.00', 'Equipment rental', 'Equipment', '2025-03-05', 5),
(6, '400.00', 'Prizes', 'Awards', '2025-03-06', 6),
(7, '600.00', 'Marketing', 'Promotion', '2025-03-07', 7),
(8, '700.00', 'Transportation', 'Travel', '2025-03-08', 8),
(9, '900.00', 'Networking event', 'Networking', '2025-03-09', 9),
(10, '1100.00', 'Decorations', 'Decor', '2025-03-10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '2021432981'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `Name`, `UserName`, `Password`, `Email`, `AdminID`) VALUES
(2021085726, 'Dr. Nancy Moore', 'n.moore', 'pass9', 'nancy.moore@university.edu', 2021432981),
(2021357682, 'Dr. Angela Davis', 'a.davis', 'pass7', 'angela.davis@university.edu', 2021432981),
(2021549823, 'Prof. James Wilson', 'j.wilson', 'pass4', 'james.wilson@university.edu', 2021432981),
(2021632047, 'Dr. Linda Martinez', 'l.martinez', 'pass5', 'linda.martinez@university.edu', 2021432981),
(2021683940, 'Prof. Kevin Anderson', 'k.anderson', 'pass8', 'kevin.anderson@university.edu', 2021432981),
(2021775938, 'Prof. Michael Lee', 'm.lee', 'pass2', 'michael.lee@university.edu', 2021432981),
(2021864029, 'Dr. Sarah Johnson', 's.johnson', 'pass1', 'sarah.johnson@university.edu', 2021432981),
(2021910385, 'Prof. Robert Brown', 'r.brown', 'pass6', 'robert.brown@university.edu', 2021432981),
(2021947831, 'Prof. David Thomas', 'd.thomas', 'pass10', 'david.thomas@university.edu', 2021432981),
(2021987451, 'Dr. Emily Carter', 'e.carter', 'pass3', 'emily.carter@university.edu', 2021432981);

-- --------------------------------------------------------

--
-- Table structure for table `it`
--

CREATE TABLE `it` (
  `ITID` int(11) NOT NULL,
  `ITName` varchar(100) DEFAULT NULL,
  `ITDepartment` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '2021764902'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `it`
--

INSERT INTO `it` (`ITID`, `ITName`, `ITDepartment`, `UserName`, `Password`, `Email`, `Role`, `FirstName`, `LastName`, `AdminID`) VALUES
(2021101234, 'Network Administrator', 'IT Department', 'netadmin', 'password123', 'netadmin@company.com', 'Admin', 'John', 'Doe', 2021098543),
(2021104321, 'Database Administrator', 'IT Department', 'dbadmin', 'password012', 'dbadmin@company.com', 'Admin', 'Bob', 'White', 2021098543),
(2021105678, 'System Analyst', 'IT Department', 'sysanalyst', 'password456', 'sysanalyst@company.com', 'User', 'Jane', 'Smith', 2021098543),
(2021108765, 'Software Engineer', 'IT Department', 'sfteng', 'password789', 'sfteng@company.com', 'User', 'Alice', 'Brown', 2021098543),
(2021109876, 'Security Specialist', 'IT Department', 'secadmin', 'password345', 'secadmin@company.com', 'Admin', 'Charlie', 'Johnson', 2021098543),
(2021112345, 'Web Developer', 'IT Department', 'webdev', 'password678', 'webdev@company.com', 'User', 'Diana', 'Lee', 2021098543),
(2021114321, 'DevOps Engineer', 'IT Department', 'devops', 'password567', 'devops@company.com', 'Admin', 'George', 'Martinez', 2021098543),
(2021115678, 'Cloud Engineer', 'IT Department', 'cloudeng', 'password901', 'cloudeng@company.com', 'User', 'Edward', 'Miller', 2021098543),
(2021118765, 'IT Support', 'IT Department', 'itsupport', 'password234', 'itsupport@company.com', 'User', 'Fiona', 'Davis', 2021098543),
(2021119876, 'Product Manager', 'IT Department', 'prodman', 'password890', 'prodman@company.com', 'User', 'Helen', 'Garcia', 2021098543);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `NotificationID` int(11) NOT NULL,
  `Message` text,
  `StudentID` int(11) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`NotificationID`, `Message`, `StudentID`, `StaffID`) VALUES
(1, 'Tech Conference starts tomorrow!', 2022001234, 2021092657),
(2, 'Science Fair results announced.', 2022004321, 2021348572),
(3, 'Coding Bootcamp registration open.', 2022005678, 2021674830),
(4, 'Literature Seminar rescheduled.', 2022008765, 2021748390),
(5, 'AI Symposium certificates ready.', 2022009876, 2021857394),
(6, 'Math Olympiad deadline approaching.', 2022012345, 2021876541),
(7, 'Web Dev Workshop materials uploaded.', 2022014321, 2021903847),
(8, 'Physics Expo feedback needed.', 2022015678, 2021904726),
(9, 'Networking Day slots filling up.', 2022018765, 2021930478),
(10, 'Statistics Seminar speaker confirmed.', 2022019876, 2021986427);

-- --------------------------------------------------------

--
-- Table structure for table `organize`
--

CREATE TABLE `organize` (
  `id` int(11) NOT NULL,
  `OrganizerID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organize`
--

INSERT INTO `organize` (`id`, `OrganizerID`, `EventID`) VALUES
(15, 2, 6),
(16, 8, 4),
(17, 8, 5),
(18, 2, 5),
(19, 8, 8),
(20, 6, 3),
(21, 3, 6),
(22, 5, 5),
(23, 8, 5),
(24, 3, 4),
(25, 8, 5),
(26, 2, 4),
(27, 5, 5),
(28, 8, 7),
(29, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `OrganizerID` int(11) NOT NULL,
  `OrganizerName` varchar(100) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `SecondName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`OrganizerID`, `OrganizerName`, `UserName`, `Password`, `Email`, `FirstName`, `SecondName`, `LastName`, `AdminID`) VALUES
(1, 'Youssef Ahmed', 'youssef1', 'org123', 'youssef@example.com', 'Youssef', 'Mohammed', 'Ahmed', 2021098543),
(2, 'Huda Salem', 'huda2', 'org456', 'huda@example.com', 'Huda', 'Ali', 'Salem', 2021123094),
(3, 'Ibrahim Zaid', 'ibrahim3', 'org789', 'ibrahim@example.com', 'Ibrahim', 'Hassan', 'Zaid', 2021234879),
(4, 'Laila Omar', 'laila4', 'org101', 'laila@example.com', 'Laila', 'Khaled', 'Omar', 2021432981),
(5, 'Tarek Sami', 'tarek5', 'org202', 'tarek@example.com', 'Tarek', 'Nasser', 'Sami', 2021657324),
(6, 'Mona Hadi', 'mona6', 'org303', 'mona@example.com', 'Mona', 'Youssef', 'Hadi', 2021764902),
(7, 'Khaled Nasser', 'khaled7', 'org404', 'khaled@example.com', 'Khaled', 'Salem', 'Nasser', 2021876521),
(8, 'Amina Zain', 'amina8', 'org505', 'amina@example.com', 'Amina', 'Ahmed', 'Zain', 2021983746),
(9, 'Sami Omar', 'sami9', 'org606', 'sami@example.com', 'Sami', 'Mohammed', 'Omar', 2021986503),
(10, 'Reem Ali', 'reem10', 'org707', 'reem@example.com', 'Reem', 'Hassan', 'Ali', 2021674830);

-- --------------------------------------------------------

--
-- Table structure for table `proposal`
--

CREATE TABLE `proposal` (
  `ProposalID` int(11) NOT NULL,
  `EventDescription` text,
  `EventTitle` varchar(100) DEFAULT NULL,
  `PartnerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proposal`
--

INSERT INTO `proposal` (`ProposalID`, `EventDescription`, `EventTitle`, `PartnerID`) VALUES
(1, 'Annual tech conference', 'TechConf 2025', 2022101011),
(2, 'Science exhibition for students', 'Science Fair 2025', 2022101011),
(3, 'Coding skills workshop', 'CodeBoot 2025', 2022101011),
(4, 'Literature discussion seminar', 'LitSem 2025', 2022101011),
(5, 'AI research symposium', 'AISym 2025', 2022101011),
(6, 'Mathematics competition', 'MathOly 2025', 2022101011),
(7, 'Web development training', 'WebDev 2025', 2022101011),
(8, 'Physics experiments showcase', 'PhysExpo 2025', 2022101011),
(9, 'Professional networking event', 'NetDay 2025', 2022101011),
(10, 'Statistics research seminar', 'StatsSem 2025', 2022101011);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `RegistrationID` int(11) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`RegistrationID`, `Status`, `StudentID`, `RegistrationDate`) VALUES
(1, 'Pending', 2022001234, '2025-01-15'),
(2, 'Approved', 2022004321, '2025-01-20'),
(3, 'Pending', 2022005678, '2025-02-01'),
(4, 'Rejected', 2022008765, '2025-02-10'),
(5, 'Approved', 2022009876, '2025-03-05'),
(6, 'Pending', 2022012345, '2025-03-15'),
(7, 'Approved', 2022014321, '2025-04-01'),
(8, 'Pending', 2022015678, '2025-04-10'),
(9, 'Rejected', 2022018765, '2025-04-20'),
(10, 'Approved', 2022019876, '2025-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `ReportID` int(11) NOT NULL,
  `ReportDate` date DEFAULT NULL,
  `File` text,
  `ReportType` varchar(50) DEFAULT NULL,
  `EventID` int(11) DEFAULT NULL,
  `ReportTitle` varchar(100) DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '2021123094'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`ReportID`, `ReportDate`, `File`, `ReportType`, `EventID`, `ReportTitle`, `AdminID`) VALUES
(1, '2025-03-22', 'tast_report.pdf', 'Results', 1, 'tast report', 2021674830),
(2, '2025-04-19', 'sciencefair_report.pdf', 'Results', 2, 'Science Fair Report', 2021674830),
(3, '2025-04-21', 'codeboot_report.pdf', 'Feedback', 3, 'Coding Bootcamp Report', 2021098543),
(4, '2025-04-23', 'litsem_report.pdf', 'Summary', 4, 'Literature Seminar Report', 2021098543),
(5, '2025-04-25', 'aisym_report.pdf', 'Results', 5, 'AI Symposium Report', 2021986503),
(6, '2025-04-27', 'matholy_report.pdf', 'Results', 6, 'Math Olympiad Report', 2021098543),
(7, '2025-04-29', 'webdev_report.pdf', 'Feedback', 7, 'Web Dev Workshop Report', 2021098543),
(8, '2025-05-01', 'physexpo_report.pdf', 'Summary', 8, 'Physics Expo Report', 2021098543),
(9, '2025-05-03', 'netday_report.pdf', 'Feedback', 9, 'Networking Day Report', 2021098543),
(10, '2025-05-05', 'statssem_report.pdf', 'Summary', 10, 'Statistics Seminar Report', 2021876521),
(11, '2025-04-27', 'matholy_report.pdf', 'Results', 6, 'Math Olympiad Report', 2021674830),
(12, '2025-04-29', 'webdev_report.pdf', 'Feedback', 7, 'Web Dev Workshop Report', 2021098543),
(13, '2025-05-01', 'physexpo_report.pdf', 'Summary', 8, 'Physics Expo Report', 2021098543),
(14, '2025-05-03', 'netday_report.pdf', 'Feedback', 9, 'Networking Day Report', 2021098543),
(15, '2025-05-05', 'statssem_report.pdf', 'Summary', 10, 'Statistics Seminar Report', 2021098543);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gander` varchar(10) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '201098543'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `UserName`, `Password`, `StudentName`, `Email`, `Gander`, `Birthdate`, `AdminID`) VALUES
(2022001234, 'john_doe', 'password123', 'John Doe', 'john.doe@university.edu', 'Male', '2000-05-15', 2021098543),
(2022004321, 'bob_white', 'password012', 'Bob White', 'bob.white@university.edu', 'Male', '1998-03-30', 2021098543),
(2022005678, 'jane_smith', 'password456', 'Jane Smith', 'jane.smith@university.edu', 'Female', '1999-08-22', 2021098543),
(2022008765, 'alice_brown', 'password789', 'Alice Brown', 'alice.brown@university.edu', 'Female', '2001-12-10', 2021098543),
(2022009876, 'charlie_johnson', 'password345', 'Charlie Johnson', 'charlie.johnson@university.edu', 'Male', '2000-07-05', 2021098543),
(2022012345, 'diana_lee', 'password678', 'Diana Lee', 'diana.lee@university.edu', 'Female', '2002-02-18', 2021098543),
(2022014321, 'george_martinez', 'password567', 'George Martinez', 'george.martinez@university.edu', 'Male', '1999-09-11', 2021098543),
(2022015678, 'edward_miller', 'password901', 'Edward Miller', 'edward.miller@university.edu', 'Male', '2000-11-23', 2021098543),
(2022018765, 'fiona_davis', 'password234', 'Fiona Davis', 'fiona.davis@university.edu', 'Female', '2001-01-30', 2021098543),
(2022019876, 'helen_garcia', 'password890', 'Helen Garcia', 'helen.garcia@university.edu', 'Female', '2000-04-13', 2021098543);

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE `study` (
  `StudentID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `study`
--

INSERT INTO `study` (`StudentID`, `CourseID`) VALUES
(2022009876, 102),
(2022015678, 103),
(2022009876, 104),
(2022001234, 105),
(2022008765, 105),
(2022014321, 105),
(2022018765, 105),
(2022001234, 106),
(2022012345, 106),
(2022009876, 107),
(2022012345, 107),
(2022014321, 107),
(2022012345, 108),
(2022004321, 109),
(2022008765, 109),
(2022018765, 109);

-- --------------------------------------------------------

--
-- Table structure for table `supportticket`
--

CREATE TABLE `supportticket` (
  `SupportTicketID` int(11) NOT NULL,
  `ResponseAt` datetime DEFAULT NULL,
  `ResponseText` text,
  `Status` varchar(50) DEFAULT NULL,
  `SupportID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supportticket`
--

INSERT INTO `supportticket` (`SupportTicketID`, `ResponseAt`, `ResponseText`, `Status`, `SupportID`) VALUES
(1, '2025-04-01 10:00:00', 'Event is on April 15', 'Resolved', 2022101003),
(2, '2025-04-01 11:00:00', 'Check your email', 'Resolved', 2022101004),
(3, '2025-04-02 12:00:00', 'Contact us at...', 'Pending', 2022101005),
(4, '2025-04-02 13:00:00', 'Details sent', 'Resolved', 2022101006),
(5, '2025-04-03 14:00:00', 'Certificate issued', 'Resolved', 2022101001),
(6, '2025-04-03 15:00:00', 'Tech team notified', 'Pending', 2022101008),
(7, '2025-04-04 16:00:00', 'Proposal received', 'Resolved', 2022101008),
(8, '2025-04-04 17:00:00', 'Record updated', 'Resolved', 2022101007),
(9, '2025-04-05 18:00:00', 'Sponsorship info sent', 'Pending', 2022101002),
(10, '2025-04-05 19:00:00', 'Credit updated', 'Resolved', 2022101002),
(11, '2025-04-06 10:00:00', 'Event details shared', 'Resolved', 2022101002),
(12, '2025-04-06 11:00:00', 'Registration fixed', 'Resolved', 2022101010),
(13, '2025-04-07 12:00:00', 'Partnership confirmed', 'Resolved', 2022101009),
(14, '2025-04-07 13:00:00', 'Budget approved', 'Resolved', 2022101001),
(15, '2025-04-08 14:00:00', 'Certificate re-sent', 'Resolved', 2022101007);

-- --------------------------------------------------------

--
-- Table structure for table `support_team`
--

CREATE TABLE `support_team` (
  `SupportID` int(11) NOT NULL,
  `SupportName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `AdminID` int(11) NOT NULL DEFAULT '2021876521'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support_team`
--

INSERT INTO `support_team` (`SupportID`, `SupportName`, `Email`, `Password`, `AdminID`) VALUES
(2022101001, 'Michael Thompson', 'michael.thompson@support.com', 'pass1234', 2021876521),
(2022101002, 'Sarah Johnson', 'sarah.johnson@support.com', 'pass2345', 2021876521),
(2022101003, 'David Martinez', 'david.martinez@support.com', 'pass3456', 2021876521),
(2022101004, 'Emily Davis', 'emily.davis@support.com', 'pass4567', 2021876521),
(2022101005, 'James Wilson', 'james.wilson@support.com', 'pass5678', 2021876521),
(2022101006, 'Laura Taylor', 'laura.taylor@support.com', 'pass6789', 2021876521),
(2022101007, 'Robert Brown', 'robert.brown@support.com', 'pass7890', 2021876521),
(2022101008, 'Olivia Anderson', 'olivia.anderson@support.com', 'pass8901', 2021876521),
(2022101009, 'William Moore', 'william.moore@support.com', 'pass9012', 2021876521),
(2022101010, 'Sophia Thomas', 'sophia.thomas@support.com', 'pass0123', 2021876521);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `adminstaff`
--
ALTER TABLE `adminstaff`
  ADD PRIMARY KEY (`StaffID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `adminstaff_ibfk_1` (`AdminID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`AttendanceID`),
  ADD KEY `RegistrationID` (`RegistrationID`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`AwardID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`BudgetID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`CalendarID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`CertificateID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `communitypartner`
--
ALTER TABLE `communitypartner`
  ADD PRIMARY KEY (`PartnerID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `FacultyID` (`FacultyID`);

--
-- Indexes for table `escalations`
--
ALTER TABLE `escalations`
  ADD PRIMARY KEY (`Escalation_ID`),
  ADD KEY `IT_ID` (`IT_ID`),
  ADD KEY `Support_ID` (`Support_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `OrganizerID` (`OrganizerID`);

--
-- Indexes for table `eventproposal`
--
ALTER TABLE `eventproposal`
  ADD PRIMARY KEY (`EventID`,`ProposalID`),
  ADD KEY `ProposalID` (`ProposalID`);

--
-- Indexes for table `eventrating`
--
ALTER TABLE `eventrating`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `eventregistration`
--
ALTER TABLE `eventregistration`
  ADD PRIMARY KEY (`EventID`,`RegistrationID`),
  ADD KEY `fk_register` (`RegistrationID`);

--
-- Indexes for table `expendituredetail`
--
ALTER TABLE `expendituredetail`
  ADD PRIMARY KEY (`ExpenditureDetailID`),
  ADD KEY `BudgetID` (`BudgetID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `it`
--
ALTER TABLE `it`
  ADD PRIMARY KEY (`ITID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`NotificationID`),
  ADD KEY `fk_student_notification` (`StudentID`),
  ADD KEY `fk_staffid` (`StaffID`);

--
-- Indexes for table `organize`
--
ALTER TABLE `organize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `OrganizerID` (`OrganizerID`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`OrganizerID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`ProposalID`),
  ADD KEY `PartnerID` (`PartnerID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`RegistrationID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`StudentID`,`CourseID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `supportticket`
--
ALTER TABLE `supportticket`
  ADD PRIMARY KEY (`SupportTicketID`),
  ADD KEY `SupportID` (`SupportID`);

--
-- Indexes for table `support_team`
--
ALTER TABLE `support_team`
  ADD PRIMARY KEY (`SupportID`),
  ADD KEY `AdminID` (`AdminID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `escalations`
--
ALTER TABLE `escalations`
  MODIFY `Escalation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `organize`
--
ALTER TABLE `organize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `proposal`
--
ALTER TABLE `proposal`
  MODIFY `ProposalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `RegistrationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminstaff`
--
ALTER TABLE `adminstaff`
  ADD CONSTRAINT `adminstaff_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`RegistrationID`) REFERENCES `eventregistration` (`RegistrationID`);

--
-- Constraints for table `award`
--
ALTER TABLE `award`
  ADD CONSTRAINT `award_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`);

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `calendar_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `fk_calendar_event` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`);

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `fk_certificate_student` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `communitypartner`
--
ALTER TABLE `communitypartner`
  ADD CONSTRAINT `communitypartner_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`);

--
-- Constraints for table `escalations`
--
ALTER TABLE `escalations`
  ADD CONSTRAINT `escalations_ibfk_1` FOREIGN KEY (`IT_ID`) REFERENCES `it` (`ITID`),
  ADD CONSTRAINT `escalations_ibfk_2` FOREIGN KEY (`Support_ID`) REFERENCES `support_team` (`SupportID`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`OrganizerID`) REFERENCES `organizer` (`OrganizerID`);

--
-- Constraints for table `eventproposal`
--
ALTER TABLE `eventproposal`
  ADD CONSTRAINT `eventproposal_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `eventproposal_ibfk_2` FOREIGN KEY (`ProposalID`) REFERENCES `proposal` (`ProposalID`);

--
-- Constraints for table `eventrating`
--
ALTER TABLE `eventrating`
  ADD CONSTRAINT `eventrating_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `eventrating_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `eventregistration`
--
ALTER TABLE `eventregistration`
  ADD CONSTRAINT `eventregistration_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `fk_event` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `fk_register` FOREIGN KEY (`RegistrationID`) REFERENCES `register` (`RegistrationID`);

--
-- Constraints for table `expendituredetail`
--
ALTER TABLE `expendituredetail`
  ADD CONSTRAINT `expendituredetail_ibfk_1` FOREIGN KEY (`BudgetID`) REFERENCES `budget` (`EventID`),
  ADD CONSTRAINT `fk_expendituredetail_budget` FOREIGN KEY (`BudgetID`) REFERENCES `budget` (`BudgetID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `it`
--
ALTER TABLE `it`
  ADD CONSTRAINT `it_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fk_staffid` FOREIGN KEY (`StaffID`) REFERENCES `adminstaff` (`StaffID`),
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `organize`
--
ALTER TABLE `organize`
  ADD CONSTRAINT `organize_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `organize_ibfk_2` FOREIGN KEY (`OrganizerID`) REFERENCES `organizer` (`OrganizerID`);

--
-- Constraints for table `organizer`
--
ALTER TABLE `organizer`
  ADD CONSTRAINT `organizer_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `proposal_ibfk_1` FOREIGN KEY (`PartnerID`) REFERENCES `communitypartner` (`PartnerID`);

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `fk_register_student` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `study`
--
ALTER TABLE `study`
  ADD CONSTRAINT `study_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `study_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `supportticket`
--
ALTER TABLE `supportticket`
  ADD CONSTRAINT `supportticket_ibfk_1` FOREIGN KEY (`SupportID`) REFERENCES `support_team` (`SupportID`);

--
-- Constraints for table `support_team`
--
ALTER TABLE `support_team`
  ADD CONSTRAINT `support_team_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
