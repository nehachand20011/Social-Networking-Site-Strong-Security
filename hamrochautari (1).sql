-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 09:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamrochautari`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `block_list`
--

INSERT INTO `block_list` (`id`, `user_id`, `blocked_user_id`) VALUES
(5, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(48, 14, 12, 'nice', '2023-03-08 16:55:31'),
(49, 14, 12, 'wao', '2023-03-08 16:55:53'),
(50, 14, 14, 'nice', '2023-03-08 16:58:44'),
(51, 7, 12, 'heloo nice', '2023-03-08 17:00:51'),
(52, 14, 12, 'hbn m', '2023-03-09 02:46:07'),
(53, 14, 12, 'jgkjm', '2023-03-09 02:46:45'),
(54, 14, 14, 'khkubjm', '2023-04-10 16:57:40'),
(55, 14, 14, 'vjhf', '2023-04-10 16:57:50'),
(56, 14, 17, 'nice', '2023-04-21 08:31:30'),
(57, 17, 33, 'bmjbh', '2023-04-21 12:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(96, 12, 14),
(97, 12, 16),
(98, 17, 12),
(99, 17, 14),
(100, 17, 13),
(101, 17, 5),
(102, 17, 16);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(89, 5, 8),
(90, 2, 8),
(92, 14, 14),
(94, 14, 15),
(96, 14, 12),
(97, 15, 17),
(98, 14, 17),
(99, 17, 33);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `msg`, `read_status`, `created_at`) VALUES
(41, 14, 13, 'hello', 0, '2023-03-08 16:42:57'),
(42, 14, 3, 'hye', 0, '2023-03-08 16:43:37'),
(43, 14, 13, 'heloo', 1, '2023-03-08 16:44:27'),
(44, 14, 9, 'hi', 0, '2023-03-08 16:49:00'),
(45, 12, 3, 'hbj,', 0, '2023-03-08 16:51:06'),
(46, 12, 14, 'cmn', 1, '2023-03-09 02:47:52'),
(47, 12, 14, 'hellow', 1, '2023-04-10 16:55:11'),
(48, 12, 14, 'hello', 1, '2023-04-10 16:56:27'),
(49, 12, 14, 'm hgfyftyhcg', 1, '2023-04-10 17:00:36'),
(50, 14, 15, 'hiiii', 1, '2023-04-10 17:03:23'),
(51, 14, 15, 'hellooo', 1, '2023-04-10 17:03:43'),
(52, 12, 15, 'dwdd', 1, '2023-04-10 17:05:14'),
(53, 14, 12, 'hello neha', 1, '2023-04-10 17:08:09'),
(54, 15, 12, 'hwjdk', 0, '2023-04-11 05:25:06'),
(55, 16, 13, 'hello', 0, '2023-04-20 04:00:03'),
(56, 16, 17, 'hye', 1, '2023-04-20 04:10:27'),
(57, 17, 16, 'yes', 1, '2023-04-20 04:11:04'),
(58, 12, 14, 'helo', 0, '2023-04-20 07:25:14'),
(59, 17, 33, 'Hello', 1, '2023-04-21 10:30:39'),
(60, 17, 33, '💕', 1, '2023-04-21 10:30:53'),
(61, 17, 15, 'Hello Didi Cortana Cortana💕', 0, '2023-04-21 12:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(99, 3, 'started following you !', '2023-03-08 16:25:11', 12, 0, '0'),
(100, 4, 'started following you !', '2023-03-08 16:30:32', 12, 0, '0'),
(101, 5, 'started following you !', '2023-03-08 16:30:34', 12, 0, '0'),
(102, 13, 'started following you !', '2023-03-08 16:32:35', 12, 0, '0'),
(103, 3, 'started following you !', '2023-03-08 16:37:01', 14, 0, '0'),
(104, 4, 'started following you !', '2023-03-08 16:37:05', 14, 0, '0'),
(105, 12, 'started following you !', '2023-03-08 16:37:13', 14, 1, '0'),
(106, 9, 'started following you !', '2023-03-08 16:48:19', 14, 0, '0'),
(107, 12, 'Unfollowed you !', '2023-03-08 16:48:24', 14, 1, '0'),
(108, 9, 'Unfollowed you !', '2023-03-08 16:48:42', 14, 0, '0'),
(109, 14, 'started following you !', '2023-03-08 16:52:51', 12, 1, '0'),
(110, 12, 'started following you !', '2023-03-08 16:57:33', 14, 1, '0'),
(111, 12, 'Unfollowed you !', '2023-03-08 16:57:57', 14, 1, '0'),
(112, 12, 'started following you !', '2023-03-08 16:58:18', 14, 1, '0'),
(113, 12, 'commented on your post', '2023-03-08 16:58:44', 14, 1, '14'),
(114, 6, 'started following you !', '2023-03-08 17:00:23', 12, 0, '0'),
(115, 6, 'commented on your post', '2023-03-08 17:00:51', 12, 0, '7'),
(116, 5, 'started following you !', '2023-03-08 17:01:58', 14, 0, '0'),
(117, 6, 'started following you !', '2023-03-08 17:02:00', 14, 0, '0'),
(118, 9, 'started following you !', '2023-03-08 17:02:01', 14, 0, '0'),
(119, 13, 'started following you !', '2023-03-08 17:02:02', 14, 0, '0'),
(120, 5, 'Unfollowed you !', '2023-03-08 17:02:50', 14, 0, '0'),
(121, 5, 'Unfollowed you !', '2023-03-08 17:06:10', 12, 0, '0'),
(122, 13, 'Unfollowed you !', '2023-03-08 17:06:11', 12, 0, '0'),
(123, 14, 'Unfollowed you !', '2023-03-08 17:06:12', 12, 1, '0'),
(124, 3, 'Unfollowed you !', '2023-03-08 17:06:15', 12, 0, '0'),
(125, 3, 'started following you !', '2023-03-09 02:45:04', 12, 0, '0'),
(126, 14, 'started following you !', '2023-03-09 02:45:23', 12, 1, '0'),
(127, 14, 'Unfollowed you !', '2023-03-09 02:47:32', 12, 1, '0'),
(128, 12, 'started following you !', '2023-03-09 02:54:16', 15, 1, '0'),
(129, 12, 'liked your post !', '2023-04-10 16:57:18', 14, 1, '14'),
(130, 12, 'commented on your post', '2023-04-10 16:57:40', 14, 1, '14'),
(131, 12, 'commented on your post', '2023-04-10 16:57:50', 14, 1, '14'),
(132, 15, 'started following you !', '2023-04-10 16:59:56', 12, 1, '0'),
(133, 14, 'started following you !', '2023-04-10 17:04:46', 12, 0, '0'),
(134, 12, 'liked your post !', '2023-04-10 17:06:09', 15, 1, '14'),
(135, 12, 'unliked your post !', '2023-04-11 05:27:06', 15, 1, '14'),
(136, 12, 'liked your post !', '2023-04-11 05:27:07', 15, 1, '14'),
(137, 16, 'started following you !', '2023-04-20 07:25:46', 12, 1, '0'),
(138, 12, 'started following you !', '2023-04-21 08:30:08', 17, 0, '0'),
(139, 14, 'started following you !', '2023-04-21 08:30:12', 17, 0, '0'),
(140, 13, 'started following you !', '2023-04-21 08:30:13', 17, 0, '0'),
(141, 5, 'started following you !', '2023-04-21 08:30:17', 17, 0, '0'),
(142, 12, 'liked your post !', '2023-04-21 08:31:24', 17, 0, '14'),
(143, 12, 'commented on your post', '2023-04-21 08:31:30', 17, 0, '14'),
(144, 16, 'started following you !', '2023-04-21 08:32:03', 17, 0, '0'),
(145, 3, 'blocked you', '2023-04-21 10:00:18', 33, 0, '0'),
(146, 3, 'Unblocked you !', '2023-04-21 10:00:20', 33, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(14, 12, '1678294499IMG-20220409-WA0010.jpg', '', '2023-03-08 16:54:59'),
(15, 17, '16819637181638620420dream-big-work-hard-g7f476c3ed_1920.jpg', 'hard', '2023-04-20 04:08:38'),
(16, 17, '1682065874profile5.jpg', '', '2023-04-21 08:31:14'),
(17, 33, '16820661931638239255vlcsnap-2021-10-14-20h23m35s993.png', '', '2023-04-21 08:36:33'),
(18, 33, '1682234468oo.jpeg', 'WELCOME OUR COMPUTER LAB IS COOL😜', '2023-04-23 07:21:08'),
(19, 72, '16822347541682147687qq.jpeg', 'THIS VIEW JUST MAKES ME WANT TO DANCE AROUND IN CIRCLES💕', '2023-04-23 07:25:54'),
(20, 72, '16822349241682147144download.jpeg', 'SOCIAL NETWORKING AREN\'T ABOUT WEB SITES.THEY\'RE ABOUT EXPERIENCES.👌', '2023-04-23 07:28:44'),
(21, 72, '1682235048ee.jpg', 'LOSE YOURSELF IN NATURAL AND FIND PEACE💞❤️', '2023-04-23 07:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '0=not verified,1=active,2=blocked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`) VALUES
(13, 'neha', 'chand', 2, 'chandneha078@gmail.com', 'neha', '697d331f81e9d12733448bbb4b30885f', 'default_profile.jpg', '2023-03-08 16:16:08', '2023-03-08 16:16:08', 0),
(14, 'sita', 'chand', 2, 'sita@gmail.com', 'sita', '3b712de48137572f3849aabd5666a4e3', 'default_profile.jpg', '2023-03-08 16:36:21', '2023-03-08 16:36:48', 1),
(15, 'nisha', 'kc', 2, 'nisha@gmail.com', 'nicha', '3b712de48137572f3849aabd5666a4e3', 'default_profile.jpg', '2023-03-09 02:51:24', '2023-03-09 02:53:44', 1),
(16, 'shyamuu', 'Chand', 1, 'shyamuu@gmail.com', 'shyamuu', '3b712de48137572f3849aabd5666a4e3', 'default_profile.jpg', '2023-04-20 03:57:18', '2023-04-20 03:57:48', 1),
(17, 'Nehu', 'Chand', 2, 'nehu@gmail.com', 'nehu', '3b712de48137572f3849aabd5666a4e3', '1682234295profile4.jpg', '2023-04-20 04:05:35', '2023-04-23 07:18:15', 1),
(33, 'Sujita', 'Dhungel', 2, 'suju@gmail.com', 'suju', '3b712de48137572f3849aabd5666a4e3', 'default_profile.jpg', '2023-04-21 08:34:09', '2023-04-21 08:34:38', 1),
(34, 'lekhak', 'shahi', 0, 'kejhak@gmail.com', 'lekhak', 'd0d7fdb6977b26929fb68c6083c0b439', 'default_profile.jpg', '2023-04-21 08:41:10', '2023-04-21 08:51:15', 2),
(72, 'Nehaa', 'Chand', 2, 'nehaa123@gmail.com', 'Nehaa', '3b712de48137572f3849aabd5666a4e3', '168223458716821468831674486143CamScanner 06-15-2022 19.49 (2).jpg', '2023-04-23 07:21:58', '2023-04-23 07:23:07', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
