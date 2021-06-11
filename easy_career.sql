-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 11, 2021 at 06:14 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy_career`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `username`, `password`) VALUES
(1, 'admin', '', '', 'admin', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `board_master`
--

DROP TABLE IF EXISTS `board_master`;
CREATE TABLE IF NOT EXISTS `board_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `board_master`
--

INSERT INTO `board_master` (`id`, `name`, `status`, `add_on`, `update_on`) VALUES
(2, 'State Board', 1, NULL, NULL),
(3, 'ICSE', 1, NULL, NULL),
(4, 'CBSE', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `career_analysis_answers`
--

DROP TABLE IF EXISTS `career_analysis_answers`;
CREATE TABLE IF NOT EXISTS `career_analysis_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` int(11) DEFAULT NULL,
  `question` int(11) DEFAULT NULL,
  `ans` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career_analysis_answers`
--

INSERT INTO `career_analysis_answers` (`id`, `std_id`, `question`, `ans`) VALUES
(43, 1, 1, 1),
(44, 1, 2, 1),
(45, 1, 3, 0),
(46, 1, 4, 0),
(47, 1, 6, 0),
(48, 1, 5, 0),
(49, 2, 1, 1),
(50, 2, 2, 1),
(51, 2, 3, 1),
(52, 2, 4, 0),
(53, 2, 5, 1),
(54, 2, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `status`) VALUES
(1, 'Kanpur', 32, 1, 1),
(2, 'Lucknow', 32, 1, 1),
(3, 'Srinagar', 11, 1, 1),
(4, 'Patna', 5, 1, 1),
(5, 'Mumbai', 19, 1, 1),
(6, 'Hyderabad', 30, 1, 1),
(7, 'Thiruvananthapuram', 17, 1, 1),
(8, 'Pune', 19, 1, 1),
(9, 'Chennai', 29, 1, 1),
(10, 'Bangaluru', 16, 1, 1),
(11, 'Nagpur', 19, 1, 1),
(12, 'Varanasi', 32, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
CREATE TABLE IF NOT EXISTS `colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lng` varchar(20) DEFAULT NULL,
  `established_year` varchar(10) DEFAULT NULL,
  `presentes10` int(11) DEFAULT NULL,
  `presentes12` int(11) DEFAULT NULL,
  `min_annual_income` int(11) DEFAULT NULL,
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL,
  `college_img` varchar(250) DEFAULT NULL,
  `brochure` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `description`, `country`, `state`, `city`, `address`, `lat`, `lng`, `established_year`, `presentes10`, `presentes12`, `min_annual_income`, `add_on`, `update_on`, `college_img`, `brochure`, `status`) VALUES
(1, 'PSIT-Pranveer Singh Institute of Technology, Kanpur', 'Pranveer Singh Institute of Technology (PSIT), Kanpur was established with support of Sahyog Jankalyan Samiti in the year 2004. The campus spreads over 80 acres of land. The Institute is approved by the All India Council for Technical Education (AICTE). The Institute offers undergraduate (B.Tech, B.Pharma, BCA, BBA), and postgraduate (M.Tech, M.Pharma, MBA, MCA) courses in various domains. PSIT is affiliated to Dr. APJ Abdul Kalam Technical University, Lucknow.', 1, 32, 1, 'PSIT-Pranveer Singh Institute of Technology, Kanpur', '26.449823007627046', '80.19253825329623', '2004', 60, 50, 23220, 'https://www.psit.ac.in/', '01/06/2021', NULL, 'https://www.careers360.com/user/register?destination=colleges/psit-pranveer-singh-institute-of-technology-kanpur?action=brochure_college_clicked_header_2547&position=brochure_college_clicked_header_2547&click_location=college_brochure&popup=iframe', 1),
(2, 'Dr APJ Abdul Kalam Technical University\r\n', 'Dr. A.P.J. Abdul Kalam Technical University, formerly Uttar Pradesh Technical University, is a public collegiate university in Lucknow in the Indian state of Uttar Pradesh. It was established as the Uttar Pradesh Technical University through the Government of Uttar Pradesh on 8 May 2000.', 1, 32, 2, 'Dr APJ Abdul Kalam Technical University, Lucknow\r\n', '26.945038780246023', '80.93996787515951', '2000', 80, 60, 300000, 'https://aktu.ac.in/', '01/06/2021', NULL, 'https://aktu.ac.in/downloads.html', 1),
(3, 'National Institute of Technology, Srinagar', 'National Institute of Technology Srinagar is a public technical university located in Srinagar, Jammu and Kashmir, India. It is one of the 31 National Institutes of Technology and as such is directly under the control of the Ministry of Human Resource Development.', 1, 11, 3, 'Hazratbal, Srinagar, Jammu and Kashmir 190006', '34.12540281724441', '74.83752074777647', '1960', 70, 70, 500000, NULL, NULL, NULL, 'https://nitsri.ac.in/', 1),
(4, 'Indian Institute of Technology, Patna', 'Indian Institute of Technology Patna is an autonomous institute of education and research in science, engineering and technology located in Patna, India. It is recognized as an Institute of National Importance by the Government of India.', 1, 5, 4, 'Bihta, Bihar 801106', '25.535219168127217', ' 84.85122280717889', '2008', 70, 70, 500000, '	www.iitp.ac.in', NULL, NULL, 'www.iitp.ac.in', 1),
(5, 'Indian Institute of Technology Bombay', 'Indian Institute of Technology Bombay is a public technical and research university located in Powai in Mumbai, Maharashtra, India. IIT Bombay was founded in 1958. In 1961, the Parliament decreed IITs as Institutes of National Importance.', 1, 19, 5, 'Main Gate Rd, IIT Area, Powai, Mumbai, Maharashtra 400076', '19.13088597557525', '72.91422272860342', '1958', 90, 80, 600000, 'https://www.iitb.ac.in/', NULL, NULL, 'https://www.iitb.ac.in/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `colleges_course`
--

DROP TABLE IF EXISTS `colleges_course`;
CREATE TABLE IF NOT EXISTS `colleges_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges_course`
--

INSERT INTO `colleges_course` (`id`, `college_id`, `course_id`) VALUES
(23, 3, 1),
(27, 1, 1),
(28, 1, 2),
(29, 1, 3),
(31, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Ankit Verma', 'ankitv4087@gmail.com', 'd', 'sdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`) VALUES
(1, 'India', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_master`
--

DROP TABLE IF EXISTS `course_master`;
CREATE TABLE IF NOT EXISTS `course_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL,
  `boards` varchar(250) DEFAULT NULL,
  `streams` varchar(250) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `presentes10` int(11) DEFAULT NULL,
  `presentes12` int(11) DEFAULT NULL,
  `min_annual_income` int(11) DEFAULT NULL,
  `introduction` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_master`
--

INSERT INTO `course_master` (`id`, `name`, `status`, `add_on`, `update_on`, `boards`, `streams`, `class`, `presentes10`, `presentes12`, `min_annual_income`, `introduction`) VALUES
(1, 'Btech', 1, NULL, NULL, NULL, '1', 10, 50, NULL, 100000, NULL),
(2, 'BCA', 1, NULL, NULL, '2,3', '3,4,2', 12, 60, 60, 100000, NULL),
(3, 'BBA', 1, NULL, NULL, '2,3', '1,2,3,4', 12, 60, 60, 100000, 'f51d08be05919290355ac004cdd5c2d6.png'),
(4, 'MBA', 1, NULL, NULL, '2,3', '1,2,3', 2, 60, 60, 200000, NULL),
(5, 'B Pharma', 1, NULL, NULL, '2,3', '1,2,3,4', 2, 60, 60, 200000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_questionsyesno`
--

DROP TABLE IF EXISTS `course_questionsyesno`;
CREATE TABLE IF NOT EXISTS `course_questionsyesno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `ans` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_questionsyesno`
--

INSERT INTO `course_questionsyesno` (`id`, `course_id`, `question_id`, `ans`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 0),
(5, 1, 5, 1),
(6, 1, 6, 0),
(7, 2, 1, 1),
(8, 2, 2, 1),
(9, 2, 3, 1),
(10, 2, 4, 1),
(11, 2, 5, 1),
(12, 2, 6, 0),
(13, 3, 1, 1),
(14, 3, 2, 0),
(15, 3, 3, 0),
(16, 3, 4, 1),
(17, 3, 5, 0),
(18, 3, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
CREATE TABLE IF NOT EXISTS `otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) NOT NULL,
  `otp` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questionsyesno`
--

DROP TABLE IF EXISTS `questionsyesno`;
CREATE TABLE IF NOT EXISTS `questionsyesno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) NOT NULL,
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionsyesno`
--

INSERT INTO `questionsyesno` (`id`, `question`, `add_on`, `update_on`, `status`) VALUES
(1, 'Are you interested in Maths?', NULL, NULL, 1),
(2, 'Do you like technology?', NULL, NULL, 1),
(3, 'Are you Creative?', NULL, NULL, 1),
(4, 'Do you like to work with other people?', NULL, NULL, 1),
(5, 'Do you like Science?', NULL, NULL, 1),
(6, 'Do you like to work with files and spreadsheets?', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(250) NOT NULL,
  `opt2` varchar(250) NOT NULL,
  `opt3` varchar(250) NOT NULL,
  `opt4` varchar(250) NOT NULL,
  `right_opt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `right_opt`) VALUES
(1, 'What does HTML stand for?', 'Hyper Text Markup Language ', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1),
(2, 'What does HTML stand for?', 'Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1),
(3, 'What does HTML stand for?', 'Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1),
(6, 'What does HTML stand for?', 'Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1),
(7, 'What does HTML stand for?', 'Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1),
(8, 'What does HTML stand for?', 'Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1),
(11, 'What does HTML stand for?', 'Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1),
(13, 'What does HTML stand for?', 'Hyper Text Markup Language', ' Home Tool Markup Language', ' Hyperlinks and Text Markup Language', 'None', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `status`) VALUES
(1, 'Andaman and Nicobar Islands\r\n', 1, 1),
(2, 'Andhra Pradesh\r\n', 1, 1),
(3, 'Arunachal Pradesh\r\n', 1, 1),
(4, 'Assam\r\n', 1, 1),
(5, 'Bihar\r\n', 1, 1),
(6, 'Chandigarh\r\n', 1, 1),
(7, 'Chhattisgarh\r\n', 1, 1),
(8, 'Dadra and Nagar Haveli\r\n', 1, 1),
(9, 'Delhi\r\n', 1, 1),
(10, 'Goa\r\n', 1, 1),
(11, 'Jammu and Kashmir', 1, 1),
(12, 'Gujarat\r\n', 1, 1),
(13, 'Haryana\r\n', 1, 1),
(14, 'Himachal Pradesh\r\n', 1, 1),
(15, 'Jharkhand\r\n', 1, 1),
(16, 'Karnataka\r\n', 1, 1),
(17, 'Kerala\r\n', 1, 1),
(18, 'Madhya Pradesh\r\n', 1, 1),
(19, 'Maharashtra\r\n', 1, 1),
(20, 'Manipur\r\n', 1, 1),
(21, 'Meghalaya\r\n', 1, 1),
(22, 'Mizoram\r\n', 1, 1),
(23, 'Nagaland\r\n', 1, 1),
(24, 'Odisha\r\n', 1, 1),
(25, 'Puducherry\r\n', 1, 1),
(26, 'Punjab\r\n', 1, 1),
(27, 'Rajasthan\r\n', 1, 1),
(28, 'Sikkim\r\n', 1, 1),
(29, 'Tamil Nadu\r\n', 1, 1),
(30, 'Telangana\r\n', 1, 1),
(31, 'Tripura\r\n', 1, 1),
(32, 'Uttar Pradesh\r\n', 1, 1),
(33, 'Uttarakhand\r\n', 1, 1),
(34, 'West Bengal\r\n', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
CREATE TABLE IF NOT EXISTS `streams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `class` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `name`, `class`, `status`, `add_on`, `update_on`) VALUES
(1, 'Science', 10, 1, NULL, NULL),
(2, 'Art', 10, 1, NULL, NULL),
(3, 'Science with Biology', 12, 1, NULL, NULL),
(4, 'Science with Mathematics', 12, 1, NULL, NULL),
(5, 'Commerce', 12, 1, NULL, NULL),
(6, 'Humanities', 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `add_on` varchar(250) NOT NULL,
  `update_on` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `f_name`, `mobile`, `password`, `add_on`, `update_on`) VALUES
(1, 'Ankit V', '8887382475', '81dc9bdb52d04dc20036dbd8313ed055', '', ''),
(2, 'alpha', '7905945465', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `students_info`
--

DROP TABLE IF EXISTS `students_info`;
CREATE TABLE IF NOT EXISTS `students_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` int(11) NOT NULL,
  `m_name` varchar(250) DEFAULT NULL,
  `l_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `profile_photo` varchar(250) DEFAULT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `family_annual_income` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_info`
--

INSERT INTO `students_info` (`id`, `std_id`, `m_name`, `l_name`, `email`, `gender`, `dob`, `profile_photo`, `country`, `state`, `city`, `pin`, `family_annual_income`) VALUES
(1, 1, '', 'Verma', 'email@gmail.com', 'Male', '1996-08-15', 'Lights-dark-696x392.jpg', 1, 1, 3, 262701, '100000'),
(2, 2, '', 'beta', 'sk507543@gmail.com', 'Male', '2004-05-02', 'download.png', 1, 32, 1, 525254, '500000');

-- --------------------------------------------------------

--
-- Table structure for table `student_educational_details`
--

DROP TABLE IF EXISTS `student_educational_details`;
CREATE TABLE IF NOT EXISTS `student_educational_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` int(11) NOT NULL,
  `institute_name_10` varchar(250) DEFAULT NULL,
  `board_10` varchar(250) DEFAULT NULL,
  `stream_10` varchar(250) DEFAULT NULL,
  `percentage_10` varchar(250) DEFAULT NULL,
  `institute_name_12` varchar(250) DEFAULT NULL,
  `board_12` varchar(250) DEFAULT NULL,
  `stream_12` varchar(250) DEFAULT NULL,
  `percentage_12` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_educational_details`
--

INSERT INTO `student_educational_details` (`id`, `std_id`, `institute_name_10`, `board_10`, `stream_10`, `percentage_10`, `institute_name_12`, `board_12`, `stream_12`, `percentage_12`) VALUES
(1, 1, 'Institute Name', '2', '1', '65', 'Institute Name', '2', '4', '70'),
(2, 2, 'kv', '2', '1', '80', 'kv', '4', '4', '70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
