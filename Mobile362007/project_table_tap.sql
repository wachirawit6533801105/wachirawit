-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 08:44 AM
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
-- Database: `project_table_tap`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2b$10$eifJPngGfT3BzlYeO/hZ8uHRW.iKOmmm22RiaHaSPK6rskQ4EOGa.', 'admin'),
(2, 'june', '$2b$10$CPXfrlFkdqOsSv.AhG7gp.TiX9EwX0YB/fa7xeG..7E74d48wOXbK', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_type_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `food_img` varchar(255) NOT NULL,
  `food_quantity` int(10) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`food_id`, `food_name`, `food_type_id`, `price`, `food_img`, `food_quantity`, `updated_at`) VALUES
(1, 'Water', 4, 15, 'http://10.0.2.2/projectApi/uploads/image-1709067587594.jpg', 0, '2024-03-06 08:38:01'),
(2, 'Mochi', 3, 70, 'http://10.0.2.2/projectApi/uploads/image-1709067785086.jpg', 0, '2024-03-06 08:39:56'),
(3, 'Dorayaki', 2, 85, 'http://10.0.2.2/projectApi/uploads/image-1709067831955.jpg', 0, '2024-03-06 08:39:56'),
(4, 'Katsuo', 1, 39, 'http://10.0.2.2/projectApi/uploads/image-1709111627426.jpg', 0, '2024-03-06 08:42:00'),
(5, 'Ahi', 1, 59, 'http://10.0.2.2/projectApi/uploads/image-1709067926847.jpg', 0, '2024-03-06 08:39:56'),
(6, 'Maguro', 1, 109, 'http://10.0.2.2/projectApi/uploads/image-1709067976629.jpg', 0, '2024-03-05 08:41:49'),
(8, 'mint', 5, 3000, 'http://10.0.2.2/projectApi/uploads/image-1709119962419.jpg', 0, '2024-03-05 11:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `food_types`
--

CREATE TABLE `food_types` (
  `food_type_id` bigint(20) UNSIGNED NOT NULL,
  `food_type_name` varchar(255) NOT NULL,
  `food_type_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_types`
--

INSERT INTO `food_types` (`food_type_id`, `food_type_name`, `food_type_img`) VALUES
(1, 'SuShi', 'http://10.0.2.2/projectApi/uploads/image-1709067204258.jpg'),
(2, 'Snacks', 'http://10.0.2.2/projectApi/uploads/image-1709067400833.jpg'),
(3, 'Dessert', 'http://10.0.2.2/projectApi/uploads/image-1709067450818.jpg'),
(4, 'Drink', 'http://10.0.2.2/projectApi/uploads/image-1709067529630.jpg'),
(5, 'etc.', 'http://10.0.2.2/projectApi/uploads/image-1709119898085.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `food_quantity` int(11) DEFAULT NULL,
  `payment_status` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `table_id`, `food_id`, `food_quantity`, `payment_status`) VALUES
(25, 1, 1, 3, 1),
(26, 1, 4, 2, 1),
(35, 1, 4, 1, 1),
(36, 1, 5, 1, 1),
(37, 6, 4, 3, 1),
(38, 6, 3, 1, 1),
(39, 6, 6, 1, 1),
(40, 7, 4, 1, 1),
(41, 7, 6, 2, 1),
(42, 8, 1, 1, 1),
(43, 8, 2, 2, 1),
(44, 1, 6, 1, 1),
(45, 1, 4, 1, 1),
(46, 6, 2, 1, 1),
(47, 6, 4, 1, 1),
(48, 6, 5, 1, 1),
(49, 6, 1, 1, 1),
(50, 6, 8, 1, 1),
(51, 2, 1, 1, 1),
(52, 2, 4, 1, 1),
(53, 2, 5, 1, 1),
(54, 7, 2, 1, 1),
(55, 7, 3, 1, 1),
(56, 7, 5, 2, 1),
(57, 1, 4, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_name` varchar(255) NOT NULL,
  `promotion_img` varchar(255) NOT NULL,
  `promotion_price` varchar(255) NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`promotion_id`, `promotion_name`, `promotion_img`, `promotion_price`, `admin_id`, `promotion_detail`) VALUES
(2, 'Sushi 50%', 'http://10.0.2.2/projectApi/uploads/image-1709120065962.jpg', '200', 1, '50% off Today !!');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `table_number` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `seat_count` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'table',
  `admin_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`table_id`, `username`, `table_number`, `status`, `seat_count`, `password`, `role`, `admin_id`) VALUES
(1, 't01', '1', 'ไม่ว่าง', 5, '12345678', 'table', 1),
(2, 't02', '2', 'ไม่ว่าง', 6, '12345678', 'table', 1),
(6, 't04', '4', 'ว่าง', 8, '12345678', 'table', 1),
(7, 't05', '5', 'ว่าง', 2, '12345678', 'table', 1),
(8, 't06', '6', 'ว่าง', 9, '12345678', 'table', 2),
(9, 't07', '7', 'ว่าง', 2, '12345678', 'table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `foods_food_type_id_foreign` (`food_type_id`);

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`food_type_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_table_id_foreign` (`table_id`),
  ADD KEY `orders_food_id_foreign` (`food_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `promotions_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`),
  ADD KEY `tables_admin_id_foreign` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `food_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `food_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotion_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_food_type_id_foreign` FOREIGN KEY (`food_type_id`) REFERENCES `food_types` (`food_type_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`food_id`),
  ADD CONSTRAINT `orders_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`table_id`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
