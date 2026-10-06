-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2024 at 08:38 AM
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
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_admin`
--

CREATE TABLE `blog_admin` (
  `admin_id` int(5) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_role_id` int(5) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  `author` int(1) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_admin`
--

INSERT INTO `blog_admin` (`admin_id`, `admin_username`, `admin_role_id`, `admin_email`, `admin_password`, `author`, `status`, `created_date`, `updated_date`) VALUES
(1, 'sujal patel', 1, 'sujalpatel5362@gmail.com', 'sujal@5362', 1, 1, '2024-09-16 14:28:31', '2024-09-16 14:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `category_id` int(5) NOT NULL,
  `category_title` varchar(30) NOT NULL,
  `category_description` text NOT NULL,
  `category_thumb` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`category_id`, `category_title`, `category_description`, `category_thumb`, `status`, `created_date`, `updated_date`) VALUES
(1, 'Men', 'When it comes to the latest fashion for men, there is a shift towards reimagining timeless pieces with creativity. The latest trends celebrate individuality and luxury, paying homage to the past while embracing modern elegance. Breezy and relaxed fits usher in an alchemy of comfort and style.', 'men_category_thumb.png', 1, '2024-09-17 01:48:07', '2024-09-17 01:48:07'),
(2, 'Women', 'Ladies, it’s time to refresh your wardrobes and embrace a trend that’s not just stylish but also wonderfully versatile—green! From the vibrant hues of emerald to the subtle elegance of sage, green is making a bold statement in the fashion world.', 'women_category_thumb.png', 1, '2024-09-17 01:51:19', '2024-09-17 01:51:19'),
(3, 'Children', 'Children clothing or kids clothing is clothing for children who have not yet grown to full height. Children clothing is often more casual than adult clothing, fit for play and rest. For girls, there are skirts, dresses, jumpsuits, tops, and bodysuits available, while for boys, there are t-shirts, joggers, and shorts.', 'children_category_thumb.jpeg', 1, '2024-09-17 05:07:55', '2024-09-17 05:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `comment_id` int(12) NOT NULL,
  `blog_id` int(5) NOT NULL,
  `user_id` int(12) NOT NULL,
  `comment_title` varchar(40) NOT NULL,
  `comment_description` text NOT NULL,
  `status` int(12) NOT NULL DEFAULT 1,
  `e_d` int(1) NOT NULL DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`comment_id`, `blog_id`, `user_id`, `comment_title`, `comment_description`, `status`, `e_d`, `created_date`, `updated_date`) VALUES
(1, 1, 1, 'Sujal Patel', 'Amazing blogs on your clothing website.', 1, 1, '2024-10-16 10:00:11', '2024-10-16 10:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `blog_item`
--

CREATE TABLE `blog_item` (
  `blog_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL,
  `sub_category_id` int(5) NOT NULL,
  `admin_id` int(5) NOT NULL,
  `blog_title` varchar(70) NOT NULL,
  `blog_thumb` text NOT NULL,
  `blog_images` text NOT NULL,
  `blog_description` text NOT NULL,
  `blog_price` bigint(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_item`
--

INSERT INTO `blog_item` (`blog_id`, `category_id`, `sub_category_id`, `admin_id`, `blog_title`, `blog_thumb`, `blog_images`, `blog_description`, `blog_price`, `status`, `created_date`, `updated_date`) VALUES
(1, 1, 1, 0, 'A Comprehensive Guide to Style Your Pocket Tees', 'blog_thumb_tshirt.png', 'blog_thumb_tshirt-2.png,blog_thumb_tshirt-1.png', 'Pocket tees are a wardrobe staple, beloved for their simplicity and versatility. Whether you’re dressing up for a night out or wanting some casual pocket tee looks, there’s a pocket tee outfit for every occasion. These tees have been a staple in every fashion lover’s wardrobe for decades.', 299, 1, '2024-09-17 07:15:57', '2024-09-17 07:42:47'),
(2, 1, 2, 0, 'How to Style Blue Jeans With Matching Shirts for Men', 'blog_thumb_shirt.png', 'blog_thumb_shirt-2.png,blog_thumb_shirt-1.png', 'A brown shirt with blue jeans is a great shirt and jeans combination for a relaxed yet stylish look. This combo blends earthy tones with classic denim, making it perfect for various occasions. Try pairing a navy blue shirt with blue jeans for a sleek and stylish look.', 499, 1, '2024-09-17 07:49:57', '2024-09-17 07:54:15'),
(3, 1, 3, 0, 'Top 10 Best Men’s Jeans & Denims You Can Buy Today', 'blog_thumb_jeans.png', 'blog_thumb_jeans-2.png,blog_thumb_jeans-1.png', 'Denim for men is an essential part of every wardrobe. They may not be the statement piece but will help you elevate any outfit you’re trying to work on – whether it’s a t-shirt, a shirt or any other piece of clothing. With the evolution of fashion.', 699, 1, '2024-09-17 08:01:45', '2024-09-17 08:05:00'),
(4, 1, 4, 0, 'The Ultimate Brown Hoodie Combination Guide For Men: Stylish Outfit Id', 'blog_thumb_hoodie.png', 'blog_thumb_hoodie-2.png,blog_thumb_hoodie-1.png', 'brown hoodie takes an ambiguous position. But, this plain garment has the potential to become a basis for a large number of fashionable looks starting from relaxed weekends up to business-like ones. ', 999, 1, '2024-09-17 08:10:44', '2024-09-17 08:12:03'),
(5, 1, 5, 0, 'All You Need To Know About The Most-Loved Organza Saree', 'blog_thumb_saree.png', 'blog_thumb_saree-2.png,blog_thumb_saree-1.png', 'It is an established fact that the Saree is everything a woman’s wardrobe needs; feminine, timeless and graceful. In India, it is not just treasured as an heirloom piece but loved & embraced by every woman of every age. ', 399, 1, '2024-09-17 08:53:21', '2024-09-17 08:58:27'),
(6, 1, 6, 0, 'What to Wear With Women’s Plain T-Shirts: Tips to Style in Different W', 'blog_thumb_tshirt.jpeg', 'blog_thumb_tshirt-2.jpeg,blog_thumb_tshirt-1.jpeg', 'Do you feel like everyone else because of your boring t-shirts? Don’t worry, chic companion. The only thing standing between you and a chic new look is a little ingenuity and a lot of confidence. ', 600, 1, '2024-09-17 09:06:45', '2024-09-17 09:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `blog_role`
--

CREATE TABLE `blog_role` (
  `role_id` int(5) NOT NULL,
  `role_title` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_role`
--

INSERT INTO `blog_role` (`role_id`, `role_title`, `status`, `created_date`, `updated_date`) VALUES
(1, 'author', 1, '2024-09-16 14:36:55', '2024-09-16 14:36:55'),
(2, 'contributor', 1, '2024-09-16 14:37:18', '2024-09-16 14:37:18'),
(3, 'editor', 1, '2024-09-16 14:37:34', '2024-09-16 14:37:34'),
(4, 'administrator', 1, '2024-09-16 14:37:48', '2024-09-16 14:37:48'),
(5, 'subscriber', 1, '2024-09-16 14:38:12', '2024-09-16 14:38:12'),
(6, 'writer', 1, '2024-09-16 14:38:19', '2024-09-16 14:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `blog_subscribe`
--

CREATE TABLE `blog_subscribe` (
  `sub_id` int(11) NOT NULL,
  `sub_name` varchar(30) NOT NULL,
  `sub_email` varchar(40) NOT NULL,
  `status` int(1) NOT NULL,
  `e_d` int(1) NOT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_subscribe`
--

INSERT INTO `blog_subscribe` (`sub_id`, `sub_name`, `sub_email`, `status`, `e_d`, `created_date`, `updated_date`) VALUES
(1, 'sujal patel', 'sujalpatel2453@gmail.com', 1, 1, '2024-09-17 02:50:08', '2024-09-17 02:54:31'),
(2, 'shiv patel', 'shivpatel2475@gmail.com', 1, 1, '2024-09-17 02:51:35', '2024-09-17 02:55:28'),
(3, '', '', 0, 0, '2024-10-16 10:00:11', '2024-10-16 10:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `blog_sub_category`
--

CREATE TABLE `blog_sub_category` (
  `sub_category_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL,
  `sub_category_title` varchar(30) NOT NULL,
  `sub_category_description` text NOT NULL,
  `sub_category_thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_sub_category`
--

INSERT INTO `blog_sub_category` (`sub_category_id`, `category_id`, `sub_category_title`, `sub_category_description`, `sub_category_thumb`, `status`, `created_date`, `updated_date`) VALUES
(1, 1, 'T-shirt', 'The Navy Blue T-shirt may give guys a chic and adaptable style when paired with different ensembles. The timeless hue of navy blue pairs nicely with several other bottoms, including khakis, a pair of short and jeans.', 'men_tshirt_sub_category_thumb.png', 1, '2024-09-17 05:25:59', '2024-09-17 05:26:48'),
(2, 1, 'Shirt', 'The options for styling this classic and trendy shirt are practically limitless, ranging from formal, buttoned-up dress shirts to relaxed, untucked tees. But it’s hard to know where to begin when so many possibilities exist. ', 'men_shirt_sub_category_thumb.png', 1, '2024-09-17 05:34:16', '2024-09-17 05:34:16'),
(3, 1, 'Jeans', 'The list of best men’s jeans will definitely be incomplete without a pair of classic blue distressed jeans. It is one of the most popular styles and is worn by many. Without a doubt, this is one of the most worn casual outfits when teamed up with t-shirts or sweatshirts.', 'men_jeans_sub_category_thumb.png', 1, '2024-09-17 05:44:17', '2024-09-17 05:44:17'),
(4, 1, 'Hoodie', 'Wearing a brown hoodie with dark blue jeans has always been understood as one of the most unpretentious dressing combinations ever thought about with flair. It is best to select straight-leg or slim-fit trousers for an elegant contour.', 'men_hoodie_sub_category_thumb.png', 1, '2024-09-17 05:51:24', '2024-09-17 05:51:24'),
(5, 2, 'Saree', 'Organza sarees are already known to be one of the most playful drapes, especially due to how lightweight they are. Take advantage of this attribute by experimenting with the blouses. One extremely popular pick is dramatic sleeves. ', 'women_saree_sub_category_thumb.png', 1, '2024-09-17 05:57:23', '2024-09-17 05:59:20'),
(6, 2, 'T-shirt', 'Women’s plain T-Shirts for Women are an essential part of every wardrobe because they can be used in a variety of ways. They may be worn with a variety of outfits and are extremely practical because of their versatility and softness.', 'women_tshirt_sub_category_thumb.png', 1, '2024-09-17 06:02:50', '2024-09-17 06:02:50'),
(7, 2, 'Dress', 'Short Dresses for Petite Women combine charm and versatility, adding a touch of femininity to any wardrobe. These dresses, with vibrant floral patterns in a variety of colors and styles, capture the essence of springtime beauty all year long.', 'women_dress_sub_category_thumb.png', 1, '2024-09-17 06:14:18', '2024-09-17 06:14:18'),
(8, 2, 'Jeans', 'They’re perfect for pairing with ankle boots or sneakers. These are one of the best women’s jeans if you want to create a stylish and flattering look. These jeans are made with a heavier denim fabric that will keep you cozy all season long. ', 'women_jeans_sub_category_thumb.png', 1, '2024-09-17 06:17:57', '2024-09-17 06:17:57'),
(9, 3, 'Skirt', 'Children cotton skirts can really save you from heat and stress, when you want to be well turned out! Go for a long flared skirt with pockets this time. Add some functionality to this amazing garment.', 'children_skirt_sub_category_thumb.png', 1, '2024-09-17 06:28:35', '2024-09-17 06:47:17'),
(10, 3, 'T-shirt', 'Children cotton round neck t-shirts for all your minions. We use premium bio-washed cotton and ensure that each piece is stitched with utmost care and attention to provide an immaculate finish.', 'children_tshirt_sub_category_thumb.png', 1, '2024-09-17 07:00:02', '2024-09-17 07:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `blog_user`
--

CREATE TABLE `blog_user` (
  `user_id` int(5) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_user`
--

INSERT INTO `blog_user` (`user_id`, `user_username`, `user_email`, `user_password`, `status`, `created_date`, `updated_date`) VALUES
(1, 'sujal patel', 'sujalpatel5362@gmail.com', 'sujal@5362', 1, '2024-09-16 14:32:36', '2024-09-16 14:32:36'),
(2, 'bhaumik patel', 'bhaumikpatel351@gmail.com', 'bhaumik@351', 1, '2024-09-16 14:40:32', '2024-09-16 14:40:32'),
(3, 'dhaval vyas', 'dhavalvyas561@gmail.com', 'dhaval@561', 1, '2024-09-16 14:42:08', '2024-09-16 14:42:08'),
(4, 'kishan rathod', 'kishanrathod256@gmail.com', 'kishan@256', 1, '2024-09-16 14:43:07', '2024-09-16 14:43:07'),
(5, 'vivek patel', 'vivekpatel591@gmail.com', 'vivek@591', 1, '2024-09-16 14:44:20', '2024-09-16 14:44:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_admin`
--
ALTER TABLE `blog_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `blog_item`
--
ALTER TABLE `blog_item`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_role`
--
ALTER TABLE `blog_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `blog_subscribe`
--
ALTER TABLE `blog_subscribe`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `blog_sub_category`
--
ALTER TABLE `blog_sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `blog_user`
--
ALTER TABLE `blog_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_admin`
--
ALTER TABLE `blog_admin`
  MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `comment_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_item`
--
ALTER TABLE `blog_item`
  MODIFY `blog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_role`
--
ALTER TABLE `blog_role`
  MODIFY `role_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_subscribe`
--
ALTER TABLE `blog_subscribe`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_sub_category`
--
ALTER TABLE `blog_sub_category`
  MODIFY `sub_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_user`
--
ALTER TABLE `blog_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
