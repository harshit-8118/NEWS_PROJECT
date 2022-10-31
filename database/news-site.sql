-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2022 at 03:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(39, 'Bollywood', 2),
(38, 'Politics', 1),
(37, 'Entertainment', 1),
(36, 'Sports', 1),
(40, 'Hollywood', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(48, 'Jacky chan', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, animi qui cupiditate accusamus pariatur dignissimos quae, esse omnis quibusdam veniam excepturi porro dicta nihil? Quisquam impedit tenetur, dolor non iure laboriosam alias officia repudiandae cupiditate enim atque perferendis minus nobis laudantium quas fuga minima ratione blanditiis maxime. Temporibus velit itaque ad deserunt consequuntur eius molestiae eligendi neque iure laudantium accusantium ipsum est magni nemo, hic, numquam delectus quam quis nisi aspernatur. Fugit voluptas necessitatibus non voluptatum repellendus iste atque culpa nobis nemo numquam incidunt eos doloremque ex debitis odio, blanditiis minima. Ducimus rem quos quasi doloremque vitae tenetur delectus labore!\r\n', '40', '30 Oct, 2022', 39, '1667142966-download (3).jpg'),
(46, 'sachin match', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, animi qui cupiditate accusamus pariatur dignissimos quae, esse omnis quibusdam veniam excepturi porro dicta nihil? Quisquam impedit tenetur, dolor non iure laboriosam alias officia repudiandae cupiditate enim atque perferendis minus nobis laudantium quas fuga minima ratione blanditiis maxime. Temporibus velit itaque ad deserunt consequuntur eius molestiae eligendi neque iure laudantium accusantium ipsum est magni nemo, hic, numquam delectus quam quis nisi aspernatur. Fugit voluptas necessitatibus non voluptatum repellendus iste atque culpa nobis nemo numquam incidunt eos doloremque ex debitis odio, blanditiis minima. Ducimus rem quos quasi doloremque vitae tenetur delectus labore!\r\n', '36', '30 Oct, 2022', 40, '1667142899-download (4).jpg'),
(47, 'amitabh bachchan', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, animi qui cupiditate accusamus pariatur dignissimos quae, esse omnis quibusdam veniam excepturi porro dicta nihil? Quisquam impedit tenetur, dolor non iure laboriosam alias officia repudiandae cupiditate enim atque perferendis minus nobis laudantium quas fuga minima ratione blanditiis maxime. Temporibus velit itaque ad deserunt consequuntur eius molestiae eligendi neque iure laudantium accusantium ipsum est magni nemo, hic, numquam delectus quam quis nisi aspernatur. Fugit voluptas necessitatibus non voluptatum repellendus iste atque culpa nobis nemo numquam incidunt eos doloremque ex debitis odio, blanditiis minima. Ducimus rem quos quasi doloremque vitae tenetur delectus labore!\r\n', '39', '30 Oct, 2022', 39, '1667142947-download (2).jpg'),
(43, 'Modi ji gone to delhi', 'This one post is for politics', '38', '30 Oct, 2022', 39, '1667142587-d-r-h241_400x400.jpg'),
(44, 'Salman khan wandering', 'Post for entertainment', '37', '30 Oct, 2022', 40, '1667142757-download.jpg'),
(45, 'deepika padunkone movie', 'movie of deepika padukone Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, animi qui cupiditate accusamus pariatur dignissimos quae, esse omnis quibusdam veniam excepturi porro dicta nihil? Quisquam impedit tenetur, dolor non iure laboriosam alias officia repudiandae cupiditate enim atque perferendis minus nobis laudantium quas fuga minima ratione blanditiis maxime. Temporibus velit itaque ad deserunt consequuntur eius molestiae eligendi neque iure laudantium accusantium ipsum est magni nemo, hic, numquam delectus quam quis nisi aspernatur. Fugit voluptas necessitatibus non voluptatum repellendus iste atque culpa nobis nemo numquam incidunt eos doloremque ex debitis odio, blanditiis minima. Ducimus rem quos quasi doloremque vitae tenetur delectus labore!\r\n', '39', '30 Oct, 2022', 40, '1667142825-download (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Harshit Channel', 'news.jpg', '© copyright2000 poweredby Harshit\'s channel');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(39, 'Harshit', 'Shukla', 'harshit8118', '21232f297a57a5a743894a0e4a801fc3', 1),
(40, 'Harsh', '8118', 'Harshit', 'fea087517c26fadd409bd4b9dc642555', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
