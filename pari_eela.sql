-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2018 at 07:29 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pari_eela`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
CREATE TABLE IF NOT EXISTS `alert` (
  `alertID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `noticeID` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `usertype` varchar(128) NOT NULL,
  PRIMARY KEY (`alertID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignmentID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `deadlinedate` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text NOT NULL,
  `classesID` longtext NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `sectionID` longtext,
  `subjectID` longtext,
  `assignusertypeID` int(11) DEFAULT NULL,
  `assignuserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`assignmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignmentanswer`
--

DROP TABLE IF EXISTS `assignmentanswer`;
CREATE TABLE IF NOT EXISTS `assignmentanswer` (
  `assignmentanswerID` int(11) NOT NULL AUTO_INCREMENT,
  `assignmentID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `uploaderID` int(11) NOT NULL,
  `uploadertypeID` int(11) NOT NULL,
  `answerfile` text NOT NULL,
  `answerfileoriginal` text NOT NULL,
  `answerdate` date NOT NULL,
  PRIMARY KEY (`assignmentanswerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`attendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `automation_rec`
--

DROP TABLE IF EXISTS `automation_rec`;
CREATE TABLE IF NOT EXISTS `automation_rec` (
  `automation_recID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  `nofmodule` int(11) NOT NULL,
  PRIMARY KEY (`automation_recID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `automation_shudulu`
--

DROP TABLE IF EXISTS `automation_shudulu`;
CREATE TABLE IF NOT EXISTS `automation_shudulu` (
  `automation_shuduluID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`automation_shuduluID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `automation_shudulu`
--

INSERT INTO `automation_shudulu` (`automation_shuduluID`, `date`, `day`, `month`, `year`) VALUES
(1, '2018-05-06', '06', '05', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `bookID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `book` varchar(60) NOT NULL,
  `subject_code` tinytext NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `due_quantity` int(11) NOT NULL,
  `rack` tinytext NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostelID` int(11) NOT NULL,
  `class_type` varchar(60) NOT NULL,
  `hbalance` varchar(20) NOT NULL,
  `note` text,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `classesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classes` varchar(60) NOT NULL,
  `classes_numeric` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `studentmaxID` int(11) DEFAULT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`classesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '0',
  `draft` int(11) DEFAULT '0',
  `fav_status` int(11) DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_msg`
--

DROP TABLE IF EXISTS `conversation_msg`;
CREATE TABLE IF NOT EXISTS `conversation_msg` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `msg` text NOT NULL,
  `attach` text,
  `attach_file_name` text,
  `usertypeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start` int(11) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_user`
--

DROP TABLE IF EXISTS `conversation_user`;
CREATE TABLE IF NOT EXISTS `conversation_user` (
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `is_sender` int(11) DEFAULT '0',
  `trash` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eattendance`
--

DROP TABLE IF EXISTS `eattendance`;
CREATE TABLE IF NOT EXISTS `eattendance` (
  `eattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `date` date NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `eattendance` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `eextra` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`eattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `eventID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fdate` date NOT NULL,
  `ftime` time NOT NULL,
  `tdate` date NOT NULL,
  `ttime` time NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eventcounter`
--

DROP TABLE IF EXISTS `eventcounter`;
CREATE TABLE IF NOT EXISTS `eventcounter` (
  `eventcounterID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `eventID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventcounterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `examID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `note` text,
  PRIMARY KEY (`examID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `examschedule`
--

DROP TABLE IF EXISTS `examschedule`;
CREATE TABLE IF NOT EXISTS `examschedule` (
  `examscheduleID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `edate` date NOT NULL,
  `examfrom` varchar(10) NOT NULL,
  `examto` varchar(10) NOT NULL,
  `room` tinytext,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`examscheduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `expenseID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `date` date NOT NULL,
  `expenseday` varchar(11) NOT NULL,
  `expensemonth` varchar(11) NOT NULL,
  `expenseyear` year(4) NOT NULL,
  `expense` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`expenseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feetypes`
--

DROP TABLE IF EXISTS `feetypes`;
CREATE TABLE IF NOT EXISTS `feetypes` (
  `feetypesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `feetypes` varchar(60) NOT NULL,
  `note` text,
  PRIMARY KEY (`feetypesID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feetypes`
--

INSERT INTO `feetypes` (`feetypesID`, `feetypes`, `note`) VALUES
(1, 'Library Fee', ''),
(2, 'Transport Fee', ''),
(3, 'Hostel Fee', ''),
(4, 'Books Fine', '');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `gradeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `grade` varchar(60) NOT NULL,
  `point` varchar(11) NOT NULL,
  `gradefrom` int(11) NOT NULL,
  `gradeupto` int(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hmember`
--

DROP TABLE IF EXISTS `hmember`;
CREATE TABLE IF NOT EXISTS `hmember` (
  `hmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostelID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `hbalance` varchar(20) DEFAULT NULL,
  `hjoindate` date NOT NULL,
  PRIMARY KEY (`hmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
CREATE TABLE IF NOT EXISTS `holiday` (
  `holidayID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`holidayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
CREATE TABLE IF NOT EXISTS `hostel` (
  `hostelID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `htype` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text,
  PRIMARY KEY (`hostelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `idmanager`
--

DROP TABLE IF EXISTS `idmanager`;
CREATE TABLE IF NOT EXISTS `idmanager` (
  `idmanagerID` int(11) NOT NULL AUTO_INCREMENT,
  `schooltype` varchar(20) NOT NULL,
  `idtitle` varchar(128) NOT NULL,
  `idtype` varchar(128) NOT NULL,
  PRIMARY KEY (`idmanagerID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `idmanager`
--

INSERT INTO `idmanager` (`idmanagerID`, `schooltype`, `idtitle`, `idtype`) VALUES
(1, 'semesterbase', 'Year+Semester Code+Department Code+Student Max ID', 'schoolyear+semestercode+classes_numeric+studentmaxID'),
(2, 'semesterbase', 'Year+Department Code+Semester Code+Student Max ID', 'schoolyear+classes_numeric+semestercode+studentmaxID'),
(3, 'semesterbase', 'Year+Semester Code+Student Max ID', 'schoolyear+semestercode+studentmaxID'),
(4, 'semesterbase', 'Year+Department Code+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(5, 'semesterbase', 'Student Max ID+Year+Semester Code+Department Code', 'studentmaxID+schoolyear+semestercode+classes_numeric'),
(6, 'semesterbase', 'Student Max ID+Semester Code+Department Code+Year', 'studentmaxID+semestercode+classes_numeric+schoolyear'),
(7, 'semesterbase', 'Student Max ID+Semester Code+Department Code', 'studentmaxID+semestercode+classes_numeric'),
(8, 'semesterbase', 'Student Max ID+Department Code+Semester Code', 'studentmaxID+classes_numeric+semestercode'),
(9, 'semesterbase', 'Semester Code+Department Code+Student Max ID', 'semestercode+classes_numeric+studentmaxID'),
(10, 'semesterbase', 'Department Code+Semester Code+Student Max ID', 'classes_numeric+semestercode+studentmaxID'),
(11, 'semesterbase', 'Semester Code+Student Max ID', 'semestercode+studentmaxID'),
(12, 'semesterbase', 'Department Code+Student Max ID', 'classes_numeric+studentmaxID'),
(13, 'semesterbase', 'Student Max ID', 'studentmaxID'),
(14, 'classbase', 'Year+Class Numeric+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(15, 'Classbase', 'Class Numeric+Year+Student Max ID', 'classes_numeric+schoolyear+studentmaxID'),
(16, 'classbase', 'Year+Student Max ID', 'schoolyear+studentmaxID'),
(17, 'classbase', 'Class Numeric+Student Max ID', 'classes_numeric+studentmaxID'),
(18, 'classbase', 'Student Max ID', 'studentmaxID'),
(19, 'semesterbase', 'None', 'none'),
(20, 'classbase', 'None', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `ini_config`
--

DROP TABLE IF EXISTS `ini_config`;
CREATE TABLE IF NOT EXISTS `ini_config` (
  `configID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`configID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ini_config`
--

INSERT INTO `ini_config` (`configID`, `type`, `config_key`, `value`) VALUES
(1, 'paypal', 'paypal_api_username', ''),
(2, 'paypal', 'paypal_api_password', ''),
(3, 'paypal', 'paypal_api_signature', ''),
(4, 'paypal', 'paypal_email', ''),
(5, 'paypal', 'paypal_demo', ''),
(6, 'stripe', 'stripe_secret', ''),
(8, 'stripe', 'stripe_demo', ''),
(9, 'payumoney', 'payumoney_key', ''),
(10, 'payumoney', 'payumoney_salt', ''),
(11, 'payumoney', 'payumoney_demo', ''),
(12, 'paypal', 'paypal_status', ''),
(13, 'stripe', 'stripe_status', ''),
(14, 'payumoney', 'payumoney_status', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoiceID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `feetype` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `userID` int(11) DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `date` date NOT NULL,
  `create_date` date NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `paidstatus` int(11) DEFAULT NULL,
  `deleted_at` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`invoiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE IF NOT EXISTS `issue` (
  `issueID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lID` varchar(128) NOT NULL,
  `bookID` int(11) NOT NULL,
  `serial_no` varchar(40) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaveapp`
--

DROP TABLE IF EXISTS `leaveapp`;
CREATE TABLE IF NOT EXISTS `leaveapp` (
  `leaveID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `touserID` int(11) NOT NULL,
  `tousertypeID` int(11) NOT NULL,
  `fromuserID` int(11) NOT NULL,
  `fromusertypeID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`leaveID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lmember`
--

DROP TABLE IF EXISTS `lmember`;
CREATE TABLE IF NOT EXISTS `lmember` (
  `lmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lID` varchar(40) NOT NULL,
  `studentID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `lbalance` varchar(20) DEFAULT NULL,
  `ljoindate` date NOT NULL,
  PRIMARY KEY (`lmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE IF NOT EXISTS `loginlog` (
  `loginlogID` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `operatingsystem` varchar(128) NOT NULL,
  `login` int(11) UNSIGNED NOT NULL,
  `logout` int(11) UNSIGNED DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`loginlogID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`loginlogID`, `ip`, `browser`, `operatingsystem`, `login`, `logout`, `usertypeID`, `userID`) VALUES
(1, '::1', 'Google Chrome', 'windows', 1525546572, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mailandsms`
--

DROP TABLE IF EXISTS `mailandsms`;
CREATE TABLE IF NOT EXISTS `mailandsms` (
  `mailandsmsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `users` text NOT NULL,
  `type` varchar(10) NOT NULL,
  `senderusertypeID` int(11) NOT NULL,
  `senderID` int(11) NOT NULL,
  `message` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`mailandsmsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailandsmstemplate`
--

DROP TABLE IF EXISTS `mailandsmstemplate`;
CREATE TABLE IF NOT EXISTS `mailandsmstemplate` (
  `mailandsmstemplateID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `template` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mailandsmstemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mailandsmstemplatetag`
--

DROP TABLE IF EXISTS `mailandsmstemplatetag`;
CREATE TABLE IF NOT EXISTS `mailandsmstemplatetag` (
  `mailandsmstemplatetagID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `tagname` varchar(128) NOT NULL,
  `mailandsmstemplatetag_extra` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mailandsmstemplatetagID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mailandsmstemplatetag`
--

INSERT INTO `mailandsmstemplatetag` (`mailandsmstemplatetagID`, `usertypeID`, `tagname`, `mailandsmstemplatetag_extra`, `create_date`) VALUES
(1, 1, '[name]', NULL, '2016-12-11 09:06:33'),
(2, 1, '[dob]', NULL, '2016-12-11 09:07:31'),
(3, 1, '[gender]', NULL, '2016-12-11 09:07:31'),
(4, 1, '[religion]', NULL, '2016-12-11 09:09:51'),
(5, 1, '[email]', NULL, '2016-12-11 09:09:51'),
(6, 1, '[phone]', NULL, '2016-12-11 09:09:51'),
(7, 1, '[address]', NULL, '2016-12-11 09:09:51'),
(8, 1, '[jod]', NULL, '2016-12-11 09:09:51'),
(9, 1, '[username]', NULL, '2016-12-11 09:09:51'),
(10, 2, '[name]', NULL, '2016-12-11 09:10:50'),
(11, 2, '[designation]', NULL, '2016-12-11 09:13:27'),
(12, 2, '[dob]', NULL, '2016-12-11 09:16:21'),
(13, 2, '[gender]', NULL, '2016-12-11 09:16:21'),
(14, 2, '[religion]', NULL, '2016-12-11 09:16:21'),
(15, 2, '[email]', NULL, '2016-12-11 09:16:21'),
(16, 2, '[phone]', NULL, '2016-12-11 09:16:21'),
(17, 2, '[address]', NULL, '2016-12-11 09:16:21'),
(18, 2, '[jod]', NULL, '2016-12-11 09:16:21'),
(19, 2, '[username]', NULL, '2016-12-11 09:16:21'),
(20, 3, '[name]', NULL, '2016-12-11 09:17:09'),
(21, 3, '[class/department]', NULL, '2016-12-19 10:04:20'),
(22, 3, '[roll]', NULL, '2017-02-12 06:52:56'),
(23, 3, '[dob]', NULL, '2016-12-11 09:25:54'),
(24, 3, '[gender]', NULL, '2016-12-11 09:25:54'),
(25, 3, '[religion]', NULL, '2016-12-11 09:25:54'),
(26, 3, '[email]', NULL, '2016-12-11 09:25:54'),
(27, 3, '[phone]', NULL, '2016-12-11 09:25:54'),
(28, 3, '[section]', NULL, '2016-12-11 09:25:54'),
(29, 3, '[username]', NULL, '2016-12-11 09:25:54'),
(30, 3, '[result_table]', NULL, '2016-12-11 09:25:54'),
(31, 4, '[name]', NULL, '2016-12-11 09:27:31'),
(32, 4, '[father\'s_name]', NULL, '2016-12-11 09:34:19'),
(33, 4, '[mother\'s_name]', NULL, '2016-12-11 09:34:19'),
(34, 4, '[father\'s_profession]', NULL, '2016-12-11 09:34:19'),
(35, 4, '[mother\'s_profession]', NULL, '2016-12-11 09:34:19'),
(36, 4, '[email]', NULL, '2016-12-11 09:34:19'),
(37, 4, '[phone]', NULL, '2016-12-11 09:34:19'),
(38, 4, '[address]', NULL, '2016-12-11 09:34:19'),
(39, 4, '[username]', NULL, '2016-12-11 09:34:19'),
(40, 3, '[country]', NULL, '2017-02-12 06:51:27'),
(41, 3, '[register_no]', NULL, '2017-02-12 06:51:27'),
(42, 3, '[state]', NULL, '2017-02-12 06:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `markID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `exam` varchar(60) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`markID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `markpercentage`
--

DROP TABLE IF EXISTS `markpercentage`;
CREATE TABLE IF NOT EXISTS `markpercentage` (
  `markpercentageID` int(11) NOT NULL AUTO_INCREMENT,
  `markpercentagetype` varchar(100) NOT NULL,
  `percentage` double NOT NULL,
  `examID` int(11) DEFAULT NULL,
  `classesID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(40) NOT NULL,
  PRIMARY KEY (`markpercentageID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `markpercentage`
--

INSERT INTO `markpercentage` (`markpercentageID`, `markpercentagetype`, `percentage`, `examID`, `classesID`, `subjectID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Exam', 100, NULL, NULL, NULL, '2017-01-05 06:11:54', '2017-01-05 06:12:08', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `markrelation`
--

DROP TABLE IF EXISTS `markrelation`;
CREATE TABLE IF NOT EXISTS `markrelation` (
  `markrelationID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `markID` int(11) NOT NULL,
  `markpercentageID` int(11) NOT NULL,
  `mark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`markrelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `mediaID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `mcategoryID` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_name_display` varchar(255) NOT NULL,
  PRIMARY KEY (`mediaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media_category`
--

DROP TABLE IF EXISTS `media_category`;
CREATE TABLE IF NOT EXISTS `media_category` (
  `mcategoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mcategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media_share`
--

DROP TABLE IF EXISTS `media_share`;
CREATE TABLE IF NOT EXISTS `media_share` (
  `shareID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL,
  `public` int(11) NOT NULL,
  `file_or_folder` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menuID` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(128) NOT NULL,
  `link` varchar(512) NOT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `pullRight` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `parentID` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1000',
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `menuName`, `link`, `icon`, `pullRight`, `status`, `parentID`, `priority`) VALUES
(1, 'dashboard', 'dashboard', 'fa-laptop', NULL, 1, 0, 1000),
(2, 'student', 'student', 'icon-student', NULL, 1, 0, 1000),
(3, 'parents', 'parents', 'fa-user', NULL, 1, 0, 1000),
(4, 'teacher', 'teacher', 'icon-teacher', NULL, 1, 0, 1000),
(5, 'user', 'user', 'fa-users', NULL, 1, 0, 1000),
(6, 'main_academic', '#', 'icon-academicmain', NULL, 1, 0, 1000),
(7, 'main_attendance', '#', 'icon-attendance', NULL, 1, 0, 1000),
(8, 'main_exam', '#', 'icon-exam', NULL, 1, 0, 1000),
(9, 'main_mark', '#', 'icon-markmain', NULL, 1, 0, 1000),
(10, 'conversation', 'conversation', 'fa-envelope', NULL, 1, 0, 1000),
(11, 'media', 'media', 'fa-film', NULL, 1, 0, 1000),
(12, 'mailandsms', 'mailandsms', 'icon-mailandsms', NULL, 1, 0, 1000),
(13, 'main_library', '#', 'icon-library', NULL, 1, 0, 1000),
(14, 'main_transport', '#', 'icon-bus', NULL, 1, 0, 1000),
(15, 'main_hostel', '#', 'icon-hhostel', NULL, 1, 0, 1000),
(16, 'main_account', '#', 'icon-account', NULL, 1, 0, 1000),
(17, 'main_announcement', '#', 'icon-noticemain', NULL, 1, 0, 1000),
(18, 'main_report', '#', 'fa-clipboard', NULL, 1, 0, 1000),
(19, 'visitorinfo', 'visitorinfo', 'icon-visitorinfo', NULL, 1, 0, 1000),
(20, 'main_administrator', '#', 'icon-administrator', NULL, 1, 0, 1000),
(21, 'main_settings', '#', 'fa-gavel', NULL, 1, 0, 1000),
(22, 'classes', 'classes', 'fa-sitemap', NULL, 1, 6, 5000),
(23, 'section', 'section', 'fa-star', NULL, 1, 6, 4000),
(24, 'subject', 'subject', 'icon-subject', NULL, 1, 6, 4500),
(25, 'routine', 'routine', 'icon-routine', NULL, 1, 6, 1000),
(26, 'syllabus', 'syllabus', 'icon-syllabus', NULL, 1, 6, 3500),
(27, 'assignment', 'assignment', 'icon-assignment', NULL, 1, 6, 3000),
(28, 'sattendance', 'sattendance', 'icon-sattendance', NULL, 1, 7, 1000),
(29, 'tattendance', 'tattendance', 'icon-tattendance', NULL, 1, 7, 1000),
(30, 'exam', 'exam', 'fa-pencil', NULL, 1, 8, 1000),
(31, 'examschedule', 'examschedule', 'fa-puzzle-piece', NULL, 1, 8, 1000),
(32, 'grade', 'grade', 'fa-signal', NULL, 1, 8, 1000),
(33, 'eattendance', 'eattendance', 'icon-eattendance', NULL, 1, 8, 1000),
(34, 'mark', 'mark', 'fa-flask', NULL, 1, 9, 1000),
(35, 'markpercentage', 'markpercentage', 'icon-markpercentage', NULL, 1, 9, 1000),
(36, 'promotion', 'promotion', 'icon-promotion', NULL, 1, 9, 1000),
(37, 'notice', 'notice', 'fa-calendar', NULL, 1, 17, 1000),
(38, 'event', 'event', 'fa-calendar-check-o', NULL, 1, 17, 1000),
(39, 'holiday', 'holiday', 'icon-holiday', NULL, 1, 17, 1000),
(40, 'classreport', 'report/classreport', 'icon-classreport', NULL, 1, 18, 1000),
(41, 'attendancereport', 'report/attendancereport', 'icon-attendancereport', NULL, 1, 18, 1000),
(42, 'studentreport', 'report/studentreport', 'icon-studentreport', NULL, 1, 18, 1000),
(43, 'schoolyear', 'schoolyear', 'fa fa-calendar-plus-o', NULL, 1, 20, 5000),
(44, 'mailandsmstemplate', 'mailandsmstemplate', 'icon-template', NULL, 1, 20, 3500),
(46, 'backup', 'backup', 'fa-download', NULL, 1, 20, 2500),
(47, 'systemadmin', 'systemadmin', 'icon-systemadmin', NULL, 1, 20, 4500),
(48, 'resetpassword', 'resetpassword', 'icon-reset_password', NULL, 1, 20, 4000),
(49, 'permission', 'permission', 'icon-permission', NULL, 1, 20, 1000),
(50, 'usertype', 'usertype', 'icon-role', NULL, 1, 20, 2000),
(51, 'setting', 'setting', 'fa-gears', NULL, 1, 21, 1000),
(52, 'paymentsettings', 'paymentsettings', 'icon-paymentsettings', NULL, 1, 21, 1000),
(53, 'smssettings', 'smssettings', 'fa-wrench', NULL, 1, 21, 1000),
(54, 'invoice', 'invoice', 'icon-invoice', NULL, 1, 16, 100),
(55, 'paymenthistory', 'paymenthistory', 'icon-payment', NULL, 1, 16, 99),
(56, 'transport', 'transport', 'icon-sbus', NULL, 1, 14, 5000),
(57, 'member', 'tmember', 'icon-member', NULL, 1, 14, 1000),
(58, 'hostel', 'hostel', 'icon-hostel', NULL, 1, 15, 1000),
(59, 'category', 'category', 'fa-leaf', NULL, 1, 15, 1000),
(61, 'member', 'hmember', 'icon-member', NULL, 1, 15, 1000),
(62, 'feetypes', 'feetypes', 'icon-feetypes', NULL, 1, 16, 1000),
(63, 'expense', 'expense', 'icon-expense', NULL, 1, 16, 98),
(64, 'member', 'lmember', 'icon-member', NULL, 1, 13, 1000),
(65, 'books', 'book', 'icon-lbooks', NULL, 1, 13, 1000),
(66, 'issue', 'issue', 'icon-issue', NULL, 1, 13, 1000),
(69, 'import', 'bulkimport', 'fa-upload', NULL, 1, 20, 3000),
(70, 'update', 'update', 'fa-refresh', NULL, 1, 20, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `messageID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `receiverID` int(11) NOT NULL,
  `receiverType` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `attach` text,
  `attach_file_name` text,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `useremail` varchar(40) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `read_status` tinyint(1) NOT NULL,
  `from_status` int(11) NOT NULL,
  `to_status` int(11) NOT NULL,
  `fav_status` tinyint(1) NOT NULL,
  `fav_status_sent` tinyint(1) NOT NULL,
  `reply_status` int(11) NOT NULL,
  PRIMARY KEY (`messageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `noticeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `notice` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`noticeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `parentsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `father_name` varchar(60) NOT NULL,
  `mother_name` varchar(60) NOT NULL,
  `father_profession` varchar(40) NOT NULL,
  `mother_profession` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`parentsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `paymentamount` double NOT NULL,
  `paymenttype` varchar(128) NOT NULL,
  `paymentdate` date NOT NULL,
  `paymentday` varchar(11) NOT NULL,
  `paymentmonth` varchar(10) NOT NULL,
  `paymentyear` year(4) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `transactionID` text,
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=680 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permissionID`, `description`, `name`, `active`) VALUES
(501, 'Dashboard', 'dashboard', 'yes'),
(502, 'Student', 'student', 'yes'),
(503, 'Student Add', 'student_add', 'yes'),
(504, 'Student Edit', 'student_edit', 'yes'),
(505, 'Student Delete', 'student_delete', 'yes'),
(506, 'Student View', 'student_view', 'yes'),
(507, 'Parents', 'parents', 'yes'),
(508, 'Parents Add', 'parents_add', 'yes'),
(509, 'Parents Edit', 'parents_edit', 'yes'),
(510, 'Parents Delete', 'parents_delete', 'yes'),
(511, 'Parents View', 'parents_view', 'yes'),
(512, 'Teacher', 'teacher', 'yes'),
(513, 'Teacher Add', 'teacher_add', 'yes'),
(514, 'Teacher Edit', 'teacher_edit', 'yes'),
(515, 'Teacher Delete', 'teacher_delete', 'yes'),
(516, 'Teacher View', 'teacher_view', 'yes'),
(517, 'User', 'user', 'yes'),
(518, 'User Add', 'user_add', 'yes'),
(519, 'User Edit', 'user_edit', 'yes'),
(520, 'User Delete', 'user_delete', 'yes'),
(521, 'User View', 'user_view', 'yes'),
(522, 'Class', 'classes', 'yes'),
(523, 'Class Add', 'classes_add', 'yes'),
(524, 'Class Edit', 'classes_edit', 'yes'),
(525, 'Class Delete', 'classes_delete', 'yes'),
(526, 'Subject', 'subject', 'yes'),
(527, 'Subject Add', 'subject_add', 'yes'),
(528, 'Subject Edit', 'subject_edit', 'yes'),
(529, 'Subject Delete', 'subject_delete', 'yes'),
(530, 'Section', 'section', 'yes'),
(531, 'Section Add', 'section_add', 'yes'),
(532, 'Section Edit', 'section_edit', 'yes'),
(533, 'Semester Delete', 'semester_delete', 'yes'),
(534, 'Section Delete', 'section_delete', 'yes'),
(535, 'Syllabus', 'syllabus', 'yes'),
(536, 'Syllabus Add', 'syllabus_add', 'yes'),
(537, 'Syllabus Edit', 'syllabus_edit', 'yes'),
(538, 'Syllabus Delete', 'syllabus_delete', 'yes'),
(539, 'Assignment', 'assignment', 'yes'),
(540, 'Assignment Add', 'assignment_add', 'yes'),
(541, 'Assignment Edit', 'assignment_edit', 'yes'),
(542, 'Assignment Delete', 'assignment_delete', 'yes'),
(543, 'Assignment View', 'assignment_view', 'yes'),
(544, 'Routine', 'routine', 'yes'),
(545, 'Routine Add', 'routine_add', 'yes'),
(546, 'Routine Edit', 'routine_edit', 'yes'),
(547, 'Routine Delete', 'routine_delete', 'yes'),
(548, 'Student Attendance', 'sattendance', 'yes'),
(549, 'Student Attendance Add', 'sattendance_add', 'yes'),
(550, 'Student Attendance View', 'sattendance_view', 'yes'),
(551, 'Teacher Attendance', 'tattendance', 'yes'),
(552, 'Teacher Attendance Add', 'tattendance_add', 'yes'),
(553, 'Teacher Attendance View', 'tattendance_view', 'yes'),
(554, 'Exam', 'exam', 'yes'),
(555, 'Exam Add', 'exam_add', 'yes'),
(556, 'Exam Edit', 'exam_edit', 'yes'),
(557, 'Exam Delete', 'exam_delete', 'yes'),
(558, 'Examschedule', 'examschedule', 'yes'),
(559, 'Examschedule Add', 'examschedule_add', 'yes'),
(560, 'Examschedule Edit', 'examschedule_edit', 'yes'),
(561, 'Examschedule Delete', 'examschedule_delete', 'yes'),
(562, 'Grade', 'grade', 'yes'),
(563, 'Grade Add', 'grade_add', 'yes'),
(564, 'Grade Edit', 'grade_edit', 'yes'),
(565, 'Grade Delete', 'grade_delete', 'yes'),
(566, 'Exam Attendance', 'eattendance', 'yes'),
(567, 'Exam Attendance Add', 'eattendance_add', 'yes'),
(568, 'Mark', 'mark', 'yes'),
(569, 'Mark Add', 'mark_add', 'yes'),
(570, 'Mark View', 'mark_view', 'yes'),
(571, 'mark percentage', 'markpercentage', 'yes'),
(572, 'Mark Percentage Add', 'markpercentage_add', 'yes'),
(573, 'Mark Percentage Edit', 'markpercentage_edit', 'yes'),
(574, 'Mark Percentage Delete', 'markpercentage_delete', 'yes'),
(575, 'Promotion', 'promotion', 'yes'),
(576, 'Message', 'conversation', 'yes'),
(577, 'Media', 'media', 'yes'),
(578, 'Media Add', 'media_add', 'yes'),
(579, 'Media Delete', 'media_delete', 'yes'),
(580, 'Mail / SMS', 'mailandsms', 'yes'),
(581, 'Mail / SMS Add', 'mailandsms_add', 'yes'),
(582, 'Mail / SMS View', 'mailandsms_view', 'yes'),
(583, 'Library Member', 'lmember', 'yes'),
(584, 'Library Member Add', 'lmember_add', 'yes'),
(585, 'Library Member Edit', 'lmember_edit', 'yes'),
(586, 'Library Member Delete', 'lmember_delete', 'yes'),
(587, 'Library Member View', 'lmember_view', 'yes'),
(588, 'Books', 'book', 'yes'),
(589, 'Books Add', 'book_add', 'yes'),
(590, 'Books Edit', 'book_edit', 'yes'),
(591, 'Books Delete', 'book_delete', 'yes'),
(592, 'Issue Book', 'issue', 'yes'),
(593, 'Issue Book Add', 'issue_add', 'yes'),
(594, 'Issue Book Edit', 'issue_edit', 'yes'),
(595, 'Issue Book View', 'issue_view', 'yes'),
(596, 'Transport', 'transport', 'yes'),
(597, 'Transport Add', 'transport_add', 'yes'),
(598, 'Transport Edit', 'transport_edit', 'yes'),
(599, 'Transport Delete', 'transport_delete', 'yes'),
(600, 'Transport Member', 'tmember', 'yes'),
(601, 'Transport Member Add', 'tmember_add', 'yes'),
(602, 'Transport Member Edit', 'tmember_edit', 'yes'),
(603, 'Transport Member Delete', 'tmember_delete', 'yes'),
(604, 'Transport Member View', 'tmember_view', 'yes'),
(605, 'Hostel', 'hostel', 'yes'),
(606, 'Hostel Add', 'hostel_add', 'yes'),
(607, 'Hostel Edit', 'hostel_edit', 'yes'),
(608, 'Hostel Delete', 'hostel_delete', 'yes'),
(609, 'Hostel Category', 'category', 'yes'),
(610, 'Hostel Category Add', 'category_add', 'yes'),
(611, 'Hostel Category Edit', 'category_edit', 'yes'),
(612, 'Hostel Category Delete', 'category_delete', 'yes'),
(613, 'Hostel Member', 'hmember', 'yes'),
(614, 'Hostel Member Add', 'hmember_add', 'yes'),
(615, 'Hostel Member Edit', 'hmember_edit', 'yes'),
(616, 'Hostel Member Delete', 'hmember_delete', 'yes'),
(617, 'Hostel Member View', 'hmember_view', 'yes'),
(618, 'Fee Types', 'feetypes', 'yes'),
(619, 'Fee Types Add', 'feetypes_add', 'yes'),
(620, 'Fee Types Edit', 'feetypes_edit', 'yes'),
(621, 'Fee Types Delete', 'feetypes_delete', 'yes'),
(622, 'Invoice', 'invoice', 'yes'),
(623, 'Invoice Add', 'invoice_add', 'yes'),
(624, 'Invoice Edit', 'invoice_edit', 'yes'),
(625, 'Invoice Delete', 'invoice_delete', 'yes'),
(626, 'Invoice View', 'invoice_view', 'yes'),
(627, 'Payment History', 'paymenthistory', 'yes'),
(628, 'Payment History Edit', 'paymenthistory_edit', 'yes'),
(629, 'Payment History Delete', 'paymenthistory_delete', 'yes'),
(630, 'Expense', 'expense', 'yes'),
(631, 'Expense Add', 'expense_add', 'yes'),
(632, 'Expense Edit', 'expense_edit', 'yes'),
(633, 'Expense Delete', 'expense_delete', 'yes'),
(634, 'Notice', 'notice', 'yes'),
(635, 'Notice Add', 'notice_add', 'yes'),
(636, 'Notice Edit', 'notice_edit', 'yes'),
(637, 'Notice Delete', 'notice_delete', 'yes'),
(638, 'Notice View', 'notice_view', 'yes'),
(639, 'Event', 'event', 'yes'),
(640, 'Event Add', 'event_add', 'yes'),
(641, 'Event Edit', 'event_edit', 'yes'),
(642, 'Event Delete', 'event_delete', 'yes'),
(643, 'Event View', 'event_view', 'yes'),
(644, 'Holiday', 'holiday', 'yes'),
(645, 'Holiday Add', 'holiday_add', 'yes'),
(646, 'Holiday Edit', 'holiday_edit', 'yes'),
(647, 'Holiday Delete', 'holiday_delete', 'yes'),
(648, 'Holiday View', 'holiday_view', 'yes'),
(649, 'Report', 'report', 'yes'),
(650, 'Visitor Information', 'visitorinfo', 'yes'),
(651, 'Visitor Information Delete', 'visitorinfo_delete', 'yes'),
(652, 'Visitor Infomation View', 'visitorinfo_view', 'yes'),
(653, 'Academic Year', 'schoolyear', 'yes'),
(654, 'Academic Year Add', 'schoolyear_add', 'yes'),
(655, 'Academic Year Edit', 'schoolyear_edit', 'yes'),
(656, 'Academic Year Delete', 'schoolyear_delete', 'yes'),
(657, 'System Admin', 'systemadmin', 'yes'),
(658, 'System Admin Add', 'systemadmin_add', 'yes'),
(659, 'System Admin Edit', 'systemadmin_edit', 'yes'),
(660, 'System Admin Delete', 'systemadmin_delete', 'yes'),
(661, 'System Admin View', 'systemadmin_view', 'yes'),
(662, 'Reset Password', 'resetpassword', 'yes'),
(663, 'Mail / SMS Template', 'mailandsmstemplate', 'yes'),
(664, 'Mail / SMS Template Add', 'mailandsmstemplate_add', 'yes'),
(665, 'Mail / SMS Template Edit', 'mailandsmstemplate_edit', 'yes'),
(666, 'Mail / SMS Template Delete', 'mailandsmstemplate_delete', 'yes'),
(667, 'Mail / SMS Template View', 'mailandsmstemplate_view', 'yes'),
(668, 'Import', 'bulkimport ', 'yes'),
(669, 'Backup', 'backup', 'yes'),
(670, 'Role', 'usertype', 'yes'),
(671, 'Role Add', 'usertype_add', 'yes'),
(672, 'Role Edit', 'usertype_edit', 'yes'),
(673, 'Role Delete', 'usertype_delete', 'yes'),
(674, 'Permission', 'permission', 'yes'),
(675, 'Auto Update', 'update', 'yes'),
(676, 'General Setting', 'setting', 'yes'),
(677, 'General Setting Edit', 'setting_edit', 'yes'),
(678, 'Payment Settings', 'paymentsettings', 'yes'),
(679, 'SMS Settings', 'smssettings', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `permission_relationships`
--

DROP TABLE IF EXISTS `permission_relationships`;
CREATE TABLE IF NOT EXISTS `permission_relationships` (
  `permission_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_relationships`
--

INSERT INTO `permission_relationships` (`permission_id`, `usertype_id`) VALUES
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(529, 1),
(530, 1),
(531, 1),
(532, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(646, 1),
(647, 1),
(648, 1),
(649, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(669, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(679, 1),
(501, 2),
(502, 2),
(506, 2),
(512, 2),
(516, 2),
(526, 2),
(535, 2),
(536, 2),
(537, 2),
(538, 2),
(539, 2),
(540, 2),
(541, 2),
(542, 2),
(543, 2),
(544, 2),
(548, 2),
(549, 2),
(550, 2),
(551, 2),
(553, 2),
(558, 2),
(566, 2),
(567, 2),
(568, 2),
(569, 2),
(570, 2),
(576, 2),
(577, 2),
(578, 2),
(579, 2),
(588, 2),
(596, 2),
(605, 2),
(609, 2),
(634, 2),
(638, 2),
(639, 2),
(643, 2),
(644, 2),
(648, 2),
(501, 3),
(512, 3),
(526, 3),
(535, 3),
(539, 3),
(543, 3),
(544, 3),
(548, 3),
(558, 3),
(568, 3),
(576, 3),
(577, 3),
(583, 3),
(588, 3),
(592, 3),
(595, 3),
(596, 3),
(600, 3),
(605, 3),
(609, 3),
(613, 3),
(622, 3),
(626, 3),
(627, 3),
(634, 3),
(638, 3),
(639, 3),
(643, 3),
(644, 3),
(648, 3),
(501, 4),
(512, 4),
(516, 4),
(526, 4),
(535, 4),
(544, 4),
(548, 4),
(550, 4),
(558, 4),
(568, 4),
(570, 4),
(576, 4),
(577, 4),
(583, 4),
(587, 4),
(588, 4),
(592, 4),
(595, 4),
(596, 4),
(600, 4),
(604, 4),
(605, 4),
(609, 4),
(613, 4),
(617, 4),
(622, 4),
(626, 4),
(627, 4),
(634, 4),
(638, 4),
(639, 4),
(643, 4),
(644, 4),
(648, 4),
(501, 5),
(512, 5),
(516, 5),
(576, 5),
(577, 5),
(596, 5),
(600, 5),
(601, 5),
(602, 5),
(603, 5),
(604, 5),
(605, 5),
(609, 5),
(613, 5),
(614, 5),
(615, 5),
(616, 5),
(617, 5),
(618, 5),
(619, 5),
(620, 5),
(621, 5),
(622, 5),
(623, 5),
(624, 5),
(625, 5),
(626, 5),
(627, 5),
(628, 5),
(629, 5),
(630, 5),
(631, 5),
(632, 5),
(633, 5),
(634, 5),
(638, 5),
(639, 5),
(643, 5),
(644, 5),
(648, 5),
(501, 6),
(512, 6),
(516, 6),
(526, 6),
(576, 6),
(577, 6),
(583, 6),
(584, 6),
(585, 6),
(586, 6),
(587, 6),
(588, 6),
(589, 6),
(590, 6),
(591, 6),
(592, 6),
(593, 6),
(594, 6),
(595, 6),
(596, 6),
(605, 6),
(609, 6),
(634, 6),
(638, 6),
(639, 6),
(643, 6),
(644, 6),
(648, 6),
(501, 7),
(512, 7),
(516, 7),
(576, 7),
(577, 7),
(605, 7),
(609, 7),
(613, 7),
(617, 7),
(634, 7),
(638, 7),
(639, 7),
(643, 7),
(644, 7),
(648, 7),
(650, 7),
(651, 7),
(652, 7);

-- --------------------------------------------------------

--
-- Table structure for table `promotionlog`
--

DROP TABLE IF EXISTS `promotionlog`;
CREATE TABLE IF NOT EXISTS `promotionlog` (
  `promotionLogID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `promotionType` varchar(50) DEFAULT NULL,
  `classesID` int(11) NOT NULL,
  `jumpClassID` int(11) NOT NULL,
  `schoolYearID` int(11) NOT NULL,
  `jumpSchoolYearID` int(11) NOT NULL,
  `subjectandsubjectcodeandmark` longtext,
  `exams` longtext,
  `markpercentages` longtext,
  `promoteStudents` longtext,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  PRIMARY KEY (`promotionLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reply_msg`
--

DROP TABLE IF EXISTS `reply_msg`;
CREATE TABLE IF NOT EXISTS `reply_msg` (
  `replyID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `messageID` int(11) NOT NULL,
  `reply_msg` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`replyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reset`
--

DROP TABLE IF EXISTS `reset`;
CREATE TABLE IF NOT EXISTS `reset` (
  `resetID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `keyID` varchar(128) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`resetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

DROP TABLE IF EXISTS `routine`;
CREATE TABLE IF NOT EXISTS `routine` (
  `routineID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `day` varchar(60) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `room` tinytext NOT NULL,
  PRIMARY KEY (`routineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schoolyear`
--

DROP TABLE IF EXISTS `schoolyear`;
CREATE TABLE IF NOT EXISTS `schoolyear` (
  `schoolyearID` int(11) NOT NULL AUTO_INCREMENT,
  `schooltype` varchar(40) DEFAULT NULL,
  `schoolyear` varchar(128) NOT NULL,
  `schoolyeartitle` varchar(128) DEFAULT NULL,
  `semestercode` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(100) NOT NULL,
  `create_usertype` varchar(100) NOT NULL,
  PRIMARY KEY (`schoolyearID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schoolyear`
--

INSERT INTO `schoolyear` (`schoolyearID`, `schooltype`, `schoolyear`, `schoolyeartitle`, `semestercode`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'classbase', '2017-2018', '', 0, '2017-01-01 06:21:11', '2017-01-01 08:22:20', 1, 'admin', 'Admin'),
(2, 'semesterbase', '2017-2018', 'Spring', 11, '2017-01-01 08:19:17', '2017-01-06 08:23:15', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `school_sessions`
--

DROP TABLE IF EXISTS `school_sessions`;
CREATE TABLE IF NOT EXISTS `school_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_sessions`
--

INSERT INTO `school_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('15549b563382cdb139c5870de44484a6', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 1525591572, 'a:13:{s:9:\"user_data\";s:0:\"\";s:4:\"lang\";s:7:\"english\";s:11:\"loginuserID\";s:1:\"1\";s:4:\"name\";s:3:\"SAM\";s:5:\"email\";s:9:\"sa@sa.com\";s:10:\"usertypeID\";s:1:\"1\";s:8:\"usertype\";s:5:\"Admin\";s:8:\"username\";s:5:\"admin\";s:5:\"photo\";s:11:\"defualt.png\";s:19:\"defaultschoolyearID\";s:1:\"1\";s:8:\"loggedin\";b:1;s:14:\"get_permission\";b:1;s:21:\"master_permission_set\";a:182:{s:9:\"dashboard\";s:3:\"yes\";s:7:\"student\";s:3:\"yes\";s:11:\"student_add\";s:3:\"yes\";s:12:\"student_edit\";s:3:\"yes\";s:14:\"student_delete\";s:3:\"yes\";s:12:\"student_view\";s:3:\"yes\";s:7:\"parents\";s:3:\"yes\";s:11:\"parents_add\";s:3:\"yes\";s:12:\"parents_edit\";s:3:\"yes\";s:14:\"parents_delete\";s:3:\"yes\";s:12:\"parents_view\";s:3:\"yes\";s:7:\"teacher\";s:3:\"yes\";s:11:\"teacher_add\";s:3:\"yes\";s:12:\"teacher_edit\";s:3:\"yes\";s:14:\"teacher_delete\";s:3:\"yes\";s:12:\"teacher_view\";s:3:\"yes\";s:4:\"user\";s:3:\"yes\";s:8:\"user_add\";s:3:\"yes\";s:9:\"user_edit\";s:3:\"yes\";s:11:\"user_delete\";s:3:\"yes\";s:9:\"user_view\";s:3:\"yes\";s:7:\"classes\";s:3:\"yes\";s:11:\"classes_add\";s:3:\"yes\";s:12:\"classes_edit\";s:3:\"yes\";s:14:\"classes_delete\";s:3:\"yes\";s:7:\"subject\";s:3:\"yes\";s:11:\"subject_add\";s:3:\"yes\";s:12:\"subject_edit\";s:3:\"yes\";s:14:\"subject_delete\";s:3:\"yes\";s:7:\"section\";s:3:\"yes\";s:11:\"section_add\";s:3:\"yes\";s:12:\"section_edit\";s:3:\"yes\";s:15:\"semester_delete\";s:3:\"yes\";s:14:\"section_delete\";s:3:\"yes\";s:8:\"syllabus\";s:3:\"yes\";s:12:\"syllabus_add\";s:3:\"yes\";s:13:\"syllabus_edit\";s:3:\"yes\";s:15:\"syllabus_delete\";s:3:\"yes\";s:10:\"assignment\";s:3:\"yes\";s:14:\"assignment_add\";s:3:\"yes\";s:15:\"assignment_edit\";s:3:\"yes\";s:17:\"assignment_delete\";s:3:\"yes\";s:15:\"assignment_view\";s:3:\"yes\";s:7:\"routine\";s:3:\"yes\";s:11:\"routine_add\";s:3:\"yes\";s:12:\"routine_edit\";s:3:\"yes\";s:14:\"routine_delete\";s:3:\"yes\";s:11:\"sattendance\";s:3:\"yes\";s:15:\"sattendance_add\";s:3:\"yes\";s:16:\"sattendance_view\";s:3:\"yes\";s:11:\"tattendance\";s:3:\"yes\";s:15:\"tattendance_add\";s:3:\"yes\";s:16:\"tattendance_view\";s:3:\"yes\";s:4:\"exam\";s:3:\"yes\";s:8:\"exam_add\";s:3:\"yes\";s:9:\"exam_edit\";s:3:\"yes\";s:11:\"exam_delete\";s:3:\"yes\";s:12:\"examschedule\";s:3:\"yes\";s:16:\"examschedule_add\";s:3:\"yes\";s:17:\"examschedule_edit\";s:3:\"yes\";s:19:\"examschedule_delete\";s:3:\"yes\";s:5:\"grade\";s:3:\"yes\";s:9:\"grade_add\";s:3:\"yes\";s:10:\"grade_edit\";s:3:\"yes\";s:12:\"grade_delete\";s:3:\"yes\";s:11:\"eattendance\";s:3:\"yes\";s:15:\"eattendance_add\";s:3:\"yes\";s:4:\"mark\";s:3:\"yes\";s:8:\"mark_add\";s:3:\"yes\";s:9:\"mark_view\";s:3:\"yes\";s:14:\"markpercentage\";s:3:\"yes\";s:18:\"markpercentage_add\";s:3:\"yes\";s:19:\"markpercentage_edit\";s:3:\"yes\";s:21:\"markpercentage_delete\";s:3:\"yes\";s:9:\"promotion\";s:3:\"yes\";s:12:\"conversation\";s:3:\"yes\";s:5:\"media\";s:3:\"yes\";s:9:\"media_add\";s:3:\"yes\";s:12:\"media_delete\";s:3:\"yes\";s:10:\"mailandsms\";s:3:\"yes\";s:14:\"mailandsms_add\";s:3:\"yes\";s:15:\"mailandsms_view\";s:3:\"yes\";s:7:\"lmember\";s:3:\"yes\";s:11:\"lmember_add\";s:3:\"yes\";s:12:\"lmember_edit\";s:3:\"yes\";s:14:\"lmember_delete\";s:3:\"yes\";s:12:\"lmember_view\";s:3:\"yes\";s:4:\"book\";s:3:\"yes\";s:8:\"book_add\";s:3:\"yes\";s:9:\"book_edit\";s:3:\"yes\";s:11:\"book_delete\";s:3:\"yes\";s:5:\"issue\";s:3:\"yes\";s:9:\"issue_add\";s:3:\"yes\";s:10:\"issue_edit\";s:3:\"yes\";s:10:\"issue_view\";s:3:\"yes\";s:9:\"transport\";s:3:\"yes\";s:13:\"transport_add\";s:3:\"yes\";s:14:\"transport_edit\";s:3:\"yes\";s:16:\"transport_delete\";s:3:\"yes\";s:7:\"tmember\";s:3:\"yes\";s:11:\"tmember_add\";s:3:\"yes\";s:12:\"tmember_edit\";s:3:\"yes\";s:14:\"tmember_delete\";s:3:\"yes\";s:12:\"tmember_view\";s:3:\"yes\";s:6:\"hostel\";s:3:\"yes\";s:10:\"hostel_add\";s:3:\"yes\";s:11:\"hostel_edit\";s:3:\"yes\";s:13:\"hostel_delete\";s:3:\"yes\";s:8:\"category\";s:3:\"yes\";s:12:\"category_add\";s:3:\"yes\";s:13:\"category_edit\";s:3:\"yes\";s:15:\"category_delete\";s:3:\"yes\";s:7:\"hmember\";s:3:\"yes\";s:11:\"hmember_add\";s:3:\"yes\";s:12:\"hmember_edit\";s:3:\"yes\";s:14:\"hmember_delete\";s:3:\"yes\";s:12:\"hmember_view\";s:3:\"yes\";s:8:\"feetypes\";s:3:\"yes\";s:12:\"feetypes_add\";s:3:\"yes\";s:13:\"feetypes_edit\";s:3:\"yes\";s:15:\"feetypes_delete\";s:3:\"yes\";s:7:\"invoice\";s:3:\"yes\";s:11:\"invoice_add\";s:3:\"yes\";s:12:\"invoice_edit\";s:3:\"yes\";s:14:\"invoice_delete\";s:3:\"yes\";s:12:\"invoice_view\";s:3:\"yes\";s:14:\"paymenthistory\";s:3:\"yes\";s:19:\"paymenthistory_edit\";s:3:\"yes\";s:21:\"paymenthistory_delete\";s:3:\"yes\";s:7:\"expense\";s:3:\"yes\";s:11:\"expense_add\";s:3:\"yes\";s:12:\"expense_edit\";s:3:\"yes\";s:14:\"expense_delete\";s:3:\"yes\";s:6:\"notice\";s:3:\"yes\";s:10:\"notice_add\";s:3:\"yes\";s:11:\"notice_edit\";s:3:\"yes\";s:13:\"notice_delete\";s:3:\"yes\";s:11:\"notice_view\";s:3:\"yes\";s:5:\"event\";s:3:\"yes\";s:9:\"event_add\";s:3:\"yes\";s:10:\"event_edit\";s:3:\"yes\";s:12:\"event_delete\";s:3:\"yes\";s:10:\"event_view\";s:3:\"yes\";s:7:\"holiday\";s:3:\"yes\";s:11:\"holiday_add\";s:3:\"yes\";s:12:\"holiday_edit\";s:3:\"yes\";s:14:\"holiday_delete\";s:3:\"yes\";s:12:\"holiday_view\";s:3:\"yes\";s:6:\"report\";s:3:\"yes\";s:20:\"report/studentreport\";s:3:\"yes\";s:18:\"report/classreport\";s:3:\"yes\";s:23:\"report/attendancereport\";s:3:\"yes\";s:11:\"visitorinfo\";s:3:\"yes\";s:18:\"visitorinfo_delete\";s:3:\"yes\";s:16:\"visitorinfo_view\";s:3:\"yes\";s:10:\"schoolyear\";s:3:\"yes\";s:14:\"schoolyear_add\";s:3:\"yes\";s:15:\"schoolyear_edit\";s:3:\"yes\";s:17:\"schoolyear_delete\";s:3:\"yes\";s:11:\"systemadmin\";s:3:\"yes\";s:15:\"systemadmin_add\";s:3:\"yes\";s:16:\"systemadmin_edit\";s:3:\"yes\";s:18:\"systemadmin_delete\";s:3:\"yes\";s:16:\"systemadmin_view\";s:3:\"yes\";s:13:\"resetpassword\";s:3:\"yes\";s:18:\"mailandsmstemplate\";s:3:\"yes\";s:22:\"mailandsmstemplate_add\";s:3:\"yes\";s:23:\"mailandsmstemplate_edit\";s:3:\"yes\";s:25:\"mailandsmstemplate_delete\";s:3:\"yes\";s:23:\"mailandsmstemplate_view\";s:3:\"yes\";s:10:\"bulkimport\";s:3:\"yes\";s:6:\"backup\";s:3:\"yes\";s:8:\"usertype\";s:3:\"yes\";s:12:\"usertype_add\";s:3:\"yes\";s:13:\"usertype_edit\";s:3:\"yes\";s:15:\"usertype_delete\";s:3:\"yes\";s:10:\"permission\";s:3:\"yes\";s:6:\"update\";s:3:\"yes\";s:7:\"setting\";s:3:\"yes\";s:12:\"setting_edit\";s:3:\"yes\";s:15:\"paymentsettings\";s:3:\"yes\";s:11:\"smssettings\";s:3:\"yes\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `sectionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `section` varchar(60) NOT NULL,
  `category` varchar(128) NOT NULL,
  `capacity` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`sectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fieldoption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`fieldoption`, `value`) VALUES
('address', 'test'),
('attendance', 'day'),
('automation', '5'),
('auto_invoice_generate', '0'),
('backend_theme', 'basic'),
('currency_code', 'RM'),
('currency_symbol', 'RM'),
('email', 'sa@sa.com'),
('fontendorbackend', '1'),
('fontend_theme', 'basic'),
('fontorbackend', '0'),
('footer', 'Copyright &copy;EELA'),
('google_analytics', ''),
('language', 'english'),
('mark_1', '1'),
('note', '1'),
('phone', '000'),
('photo', 'site.png'),
('purchase_code', 'f541d688-9d40-40db-99fb-65e6f80692ab'),
('school_type', 'classbase'),
('school_year', '1'),
('sname', 'EELA'),
('student_ID_format', '1'),
('updateversion', '3.00');

-- --------------------------------------------------------

--
-- Table structure for table `smssettings`
--

DROP TABLE IF EXISTS `smssettings`;
CREATE TABLE IF NOT EXISTS `smssettings` (
  `smssettingsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `types` varchar(255) DEFAULT NULL,
  `field_names` varchar(255) DEFAULT NULL,
  `field_values` varchar(255) DEFAULT NULL,
  `smssettings_extra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smssettingsID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smssettings`
--

INSERT INTO `smssettings` (`smssettingsID`, `types`, `field_names`, `field_values`, `smssettings_extra`) VALUES
(1, 'clickatell', 'clickatell_username', '', NULL),
(2, 'clickatell', 'clickatell_password', '', NULL),
(3, 'clickatell', 'clickatell_api_key', '', NULL),
(4, 'twilio', 'twilio_accountSID', '', NULL),
(5, 'twilio', 'twilio_authtoken', '', NULL),
(6, 'twilio', 'twilio_fromnumber', '', NULL),
(7, 'bulk', 'bulk_username', '', NULL),
(8, 'bulk', 'bulk_password', '', NULL),
(9, 'msg91', 'msg91_authKey', '', NULL),
(10, 'msg91', 'msg91_senderID', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `studentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `registerNO` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `library` int(11) NOT NULL,
  `hostel` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `createschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `studentrelation`
--

DROP TABLE IF EXISTS `studentrelation`;
CREATE TABLE IF NOT EXISTS `studentrelation` (
  `studentrelationID` int(11) NOT NULL AUTO_INCREMENT,
  `srstudentID` int(11) DEFAULT NULL,
  `srname` varchar(40) NOT NULL,
  `srclassesID` int(11) DEFAULT NULL,
  `srclasses` varchar(40) DEFAULT NULL,
  `srroll` int(11) DEFAULT NULL,
  `srregisterNO` varchar(128) DEFAULT NULL,
  `srsectionID` int(11) DEFAULT NULL,
  `srsection` varchar(40) DEFAULT NULL,
  `srschoolyearID` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentrelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subjectID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `type` int(100) NOT NULL,
  `passmark` int(11) NOT NULL,
  `finalmark` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `subject_author` varchar(100) DEFAULT NULL,
  `subject_code` tinytext NOT NULL,
  `teacher_name` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`subjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_attendance`
--

DROP TABLE IF EXISTS `sub_attendance`;
CREATE TABLE IF NOT EXISTS `sub_attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`attendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
CREATE TABLE IF NOT EXISTS `syllabus` (
  `syllabusID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `date` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`syllabusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `systemadmin`
--

DROP TABLE IF EXISTS `systemadmin`;
CREATE TABLE IF NOT EXISTS `systemadmin` (
  `systemadminID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  `systemadminextra1` varchar(128) DEFAULT NULL,
  `systemadminextra2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`systemadminID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemadmin`
--

INSERT INTO `systemadmin` (`systemadminID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`, `systemadminextra1`, `systemadminextra2`) VALUES
(1, 'SAM', '2018-05-06', 'Male', 'Unknown', 'sa@sa.com', '', '', '2018-05-06', 'defualt.png', 'admin', '3e5f8dc88490a094acf979716f8df8f2cc25966989a96f670c137b318d7c643428b554ba882df9ab4c0612cd7cfdf882354a9ee8b55acc4a34df4ce27a804cf2', 1, '2018-05-06 02:56:02', '2018-05-06 02:56:02', 0, 'admin', 'Admin', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tattendance`
--

DROP TABLE IF EXISTS `tattendance`;
CREATE TABLE IF NOT EXISTS `tattendance` (
  `tattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`tattendanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacherID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `designation` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tmember`
--

DROP TABLE IF EXISTS `tmember`;
CREATE TABLE IF NOT EXISTS `tmember` (
  `tmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studentID` int(11) NOT NULL,
  `transportID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `tbalance` varchar(11) DEFAULT NULL,
  `tjoindate` date NOT NULL,
  PRIMARY KEY (`tmemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `transportID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  `vehicle` int(11) NOT NULL,
  `fare` varchar(11) NOT NULL,
  `note` text,
  PRIMARY KEY (`transportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `usertypeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertype` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  PRIMARY KEY (`usertypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertypeID`, `usertype`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Admin', '2016-06-24 07:12:49', '2016-06-24 07:12:49', 1, 'admin', 'Super Admin'),
(2, 'Teacher', '2016-06-24 07:13:13', '2016-06-24 07:13:13', 1, 'admin', 'Super Admin'),
(3, 'Student', '2016-06-24 07:13:27', '2016-06-24 07:13:27', 1, 'admin', 'Super Admin'),
(4, 'Parents', '2016-06-24 07:13:42', '2016-10-25 01:12:52', 1, 'admin', 'Super Admin'),
(5, 'Accountant', '2016-06-24 07:13:54', '2016-06-24 07:13:54', 1, 'admin', 'Super Admin'),
(6, 'Librarian', '2016-06-24 09:09:43', '2016-06-24 09:09:43', 1, 'admin', 'Super Admin'),
(7, 'Receptionist', '2016-10-30 06:24:41', '2016-10-30 06:24:41', 1, 'admin', 'Admin'),
(8, 'Moderator', '2016-10-30 07:00:20', '2016-12-06 06:08:38', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `visitorinfo`
--

DROP TABLE IF EXISTS `visitorinfo`;
CREATE TABLE IF NOT EXISTS `visitorinfo` (
  `visitorID` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `phone` text NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `company_name` varchar(128) DEFAULT NULL,
  `coming_from` varchar(128) DEFAULT NULL,
  `representing` varchar(128) DEFAULT NULL,
  `to_meet_personID` int(11) NOT NULL,
  `to_meet_usertypeID` int(11) NOT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  PRIMARY KEY (`visitorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
