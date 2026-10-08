-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2026 at 10:48 AM
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
-- Database: `portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('unread','read','replied') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `degree` varchar(200) NOT NULL,
  `field_of_study` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_current` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `school_name`, `degree`, `field_of_study`, `start_date`, `end_date`, `is_current`, `description`, `display_order`, `created_at`) VALUES
(1, 'Your School Name', 'Bachelor of Science in Information Technology', 'Information Technology', NULL, NULL, 1, 'Currently pursuing a Bachelor of Science in Information Technology.', 1, '2026-10-07 13:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_current` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `professional_title` varchar(150) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `career_objective` text DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `resume_file` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `full_name`, `professional_title`, `tagline`, `introduction`, `about_me`, `career_objective`, `profile_image`, `resume_file`, `email`, `phone`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Mark Joseph Sol', 'BSIT Student | Web Developer', 'Web Developer / App Developer', 'I create clean, functional and user-focused digital experiences.', 'I am a Bachelor of Science in Information Technology student interested in web development, application development, databases, and DevOps technologies.', 'To develop my technical skills and gain professional experience while contributing to meaningful software and web development projects.', 'profile.jpg', 'Mark-Joseph-Sol-Resume.pdf', 'your-email@example.com', NULL, 'Philippines', '2026-10-07 13:17:26', '2026-10-07 13:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `technologies` text DEFAULT NULL,
  `project_type` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `github_url` varchar(500) DEFAULT NULL,
  `live_url` varchar(500) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `technologies`, `project_type`, `image`, `github_url`, `live_url`, `featured`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Facilities & Administrative Management System', 'A web-based management system designed to manage facilities, visitors, documents, contracts, legal records, permits, records retention, compliance, dashboards and reporting.', 'PHP, JavaScript, HTML, CSS, MySQL, Docker', 'Capstone Project', NULL, NULL, NULL, 1, 1, 1, '2026-10-07 13:17:26', '2026-10-07 13:17:26'),
(2, 'Integrated Enrollment & Learning Management System', 'A web-based system designed to integrate student enrollment processes and learning management functionalities.', 'PHP, JavaScript, HTML, CSS, MySQL', 'Academic Project', NULL, NULL, NULL, 1, 2, 1, '2026-10-07 13:17:26', '2026-10-07 13:17:26'),
(3, 'Personal Portfolio Website', 'A responsive personal portfolio website for presenting professional information, technical skills, projects, experience and resume.', 'PHP, HTML, CSS, JavaScript, MySQL', 'Personal Project', NULL, NULL, NULL, 1, 3, 1, '2026-10-07 13:17:26', '2026-10-07 13:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_name` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `proficiency` tinyint(3) UNSIGNED DEFAULT 0,
  `icon` varchar(100) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `category`, `proficiency`, `icon`, `display_order`, `is_active`, `created_at`) VALUES
(1, 'PHP', 'Programming', 85, 'php', 1, 1, '2026-10-07 13:17:26'),
(2, 'HTML5', 'Frontend', 90, 'html5', 2, 1, '2026-10-07 13:17:26'),
(3, 'CSS3', 'Frontend', 85, 'css3', 3, 1, '2026-10-07 13:17:26'),
(4, 'JavaScript', 'Programming', 80, 'javascript', 4, 1, '2026-10-07 13:17:26'),
(5, 'MySQL', 'Database', 85, 'mysql', 5, 1, '2026-10-07 13:17:26'),
(6, 'Git', 'Development Tools', 80, 'git', 6, 1, '2026-10-07 13:17:26'),
(7, 'GitHub', 'Development Tools', 85, 'github', 7, 1, '2026-10-07 13:17:26'),
(8, 'Docker', 'DevOps', 70, 'docker', 8, 1, '2026-10-07 13:17:26'),
(9, 'Docker Compose', 'DevOps', 70, 'docker-compose', 9, 1, '2026-10-07 13:17:26'),
(10, 'XAMPP', 'Development Tools', 85, 'xampp', 10, 1, '2026-10-07 13:17:26'),
(11, 'Linux', 'Operating System', 65, 'linux', 11, 1, '2026-10-07 13:17:26'),
(12, 'REST API', 'Backend', 70, 'api', 12, 1, '2026-10-07 13:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `platform` varchar(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `platform`, `url`, `icon`, `display_order`, `is_active`, `created_at`) VALUES
(1, 'GitHub', 'https://github.com/EmjeyDev221', 'github', 1, 1, '2026-10-07 13:17:27'),
(2, 'LinkedIn', 'https://www.linkedin.com/', 'linkedin', 2, 1, '2026-10-07 13:17:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
