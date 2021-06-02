-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 08:43 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

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

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `username`, `password`) VALUES
(1, 'admin', '', '', 'admin', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `board_master`
--

CREATE TABLE `board_master` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `board_master`
--

INSERT INTO `board_master` (`id`, `name`, `status`, `add_on`, `update_on`) VALUES
(2, 'Up', 1, NULL, NULL),
(3, 'ICSE', 1, NULL, NULL),
(4, 'CBSE', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `career_analysis_answers`
--

CREATE TABLE `career_analysis_answers` (
  `id` int(11) NOT NULL,
  `std_id` int(11) DEFAULT NULL,
  `question` int(11) DEFAULT NULL,
  `ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career_analysis_answers`
--

INSERT INTO `career_analysis_answers` (`id`, `std_id`, `question`, `ans`) VALUES
(43, 1, 1, 1),
(44, 1, 2, 1),
(45, 1, 3, 0),
(46, 1, 4, 0),
(47, 1, 6, 0),
(48, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `status`) VALUES
(1, 'Kanpur', 1, 1, 1),
(2, 'Lucknow', 1, 1, 1),
(3, 'lakhimpur Kheri', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
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
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `description`, `country`, `state`, `city`, `address`, `lat`, `lng`, `established_year`, `presentes10`, `presentes12`, `min_annual_income`, `add_on`, `update_on`, `college_img`, `brochure`, `status`) VALUES
(1, 'test', 'test', 1, 1, 2, 'Uttar pradesh , India', '123.25', '1258.145', '2020-10-01', 60, 60, 100000, NULL, NULL, NULL, '', 1),
(3, 'College Name', 'College Description', 1, 1, 1, 'jajmau kanpur', '1000', '1000', '2020-11-01', 60, 70, 100000, NULL, NULL, 'Lights-dark-696x3923.jpg', 'Lights-dark-696x3922.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `colleges_course`
--

CREATE TABLE `colleges_course` (
  `id` int(11) NOT NULL,
  `college_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Ankit Verma', 'ankitv4087@gmail.com', 'd', 'sdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`) VALUES
(1, 'India', 1),
(5, 'indiaaa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_master`
--

CREATE TABLE `course_master` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL,
  `boards` varchar(250) DEFAULT NULL,
  `streams` varchar(250) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `presentes10` int(11) DEFAULT NULL,
  `presentes12` int(11) DEFAULT NULL,
  `min_annual_income` int(11) DEFAULT NULL,
  `introduction` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_master`
--

INSERT INTO `course_master` (`id`, `name`, `status`, `add_on`, `update_on`, `boards`, `streams`, `class`, `presentes10`, `presentes12`, `min_annual_income`, `introduction`) VALUES
(1, 'tests', 1, NULL, NULL, NULL, '1', 10, 50, NULL, 100000, NULL),
(2, 'BCA', 1, NULL, NULL, '2,3', '3,4,2', 12, 60, 60, 100000, NULL),
(3, 'test', 1, NULL, NULL, '2,3', '1,2,3,4', 12, 60, 60, 100000, 'f51d08be05919290355ac004cdd5c2d6.png');

-- --------------------------------------------------------

--
-- Table structure for table `course_questionsyesno`
--

CREATE TABLE `course_questionsyesno` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `ans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `otp` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questionsyesno`
--

CREATE TABLE `questionsyesno` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionsyesno`
--

INSERT INTO `questionsyesno` (`id`, `question`, `add_on`, `update_on`, `status`) VALUES
(1, 'Question 11', NULL, NULL, 1),
(2, 'Question 2', NULL, NULL, 1),
(3, 'Question 3', NULL, NULL, 1),
(4, 'Question 4', NULL, NULL, 1),
(5, 'Question 5', NULL, NULL, 1),
(6, 'Question 6', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(250) NOT NULL,
  `opt2` varchar(250) NOT NULL,
  `opt3` varchar(250) NOT NULL,
  `opt4` varchar(250) NOT NULL,
  `right_opt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `status`) VALUES
(1, 'Uttar Pradesh', 1, 1),
(2, 'test', 1, 1),
(3, 'testtt', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `class` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `add_on` varchar(250) DEFAULT NULL,
  `update_on` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `name`, `class`, `status`, `add_on`, `update_on`) VALUES
(1, 'Science', 10, 1, NULL, NULL),
(2, 'Art', 10, 1, NULL, NULL),
(3, 'Bio', 12, 1, NULL, NULL),
(4, 'Mathematics', 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `f_name` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `add_on` varchar(250) NOT NULL,
  `update_on` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `f_name`, `mobile`, `password`, `add_on`, `update_on`) VALUES
(1, 'Ankit V', '8887382475', '81dc9bdb52d04dc20036dbd8313ed055', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `students_info`
--

CREATE TABLE `students_info` (
  `id` int(11) NOT NULL,
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
  `family_annual_income` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_info`
--

INSERT INTO `students_info` (`id`, `std_id`, `m_name`, `l_name`, `email`, `gender`, `dob`, `profile_photo`, `country`, `state`, `city`, `pin`, `family_annual_income`) VALUES
(1, 1, '', 'Verma', 'email@gmail.com', 'Male', '1996-08-15', 'Lights-dark-696x392.jpg', 1, 1, 3, 262701, '100000');

-- --------------------------------------------------------

--
-- Table structure for table `student_educational_details`
--

CREATE TABLE `student_educational_details` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `institute_name_10` varchar(250) DEFAULT NULL,
  `board_10` varchar(250) DEFAULT NULL,
  `stream_10` varchar(250) DEFAULT NULL,
  `percentage_10` varchar(250) DEFAULT NULL,
  `institute_name_12` varchar(250) DEFAULT NULL,
  `board_12` varchar(250) DEFAULT NULL,
  `stream_12` varchar(250) DEFAULT NULL,
  `percentage_12` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_educational_details`
--

INSERT INTO `student_educational_details` (`id`, `std_id`, `institute_name_10`, `board_10`, `stream_10`, `percentage_10`, `institute_name_12`, `board_12`, `stream_12`, `percentage_12`) VALUES
(1, 1, 'Institute Name', '2', '1', '65', 'Institute Name', '2', '4', '70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_master`
--
ALTER TABLE `board_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_analysis_answers`
--
ALTER TABLE `career_analysis_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges_course`
--
ALTER TABLE `colleges_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_master`
--
ALTER TABLE `course_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_questionsyesno`
--
ALTER TABLE `course_questionsyesno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionsyesno`
--
ALTER TABLE `questionsyesno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`mobile`);

--
-- Indexes for table `students_info`
--
ALTER TABLE `students_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_educational_details`
--
ALTER TABLE `student_educational_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `board_master`
--
ALTER TABLE `board_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `career_analysis_answers`
--
ALTER TABLE `career_analysis_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colleges_course`
--
ALTER TABLE `colleges_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_master`
--
ALTER TABLE `course_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_questionsyesno`
--
ALTER TABLE `course_questionsyesno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questionsyesno`
--
ALTER TABLE `questionsyesno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students_info`
--
ALTER TABLE `students_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_educational_details`
--
ALTER TABLE `student_educational_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
