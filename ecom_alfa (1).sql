-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2025 at 06:50 PM
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
-- Database: `ecom_alfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_modal`
--

CREATE TABLE `car_modal` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `modal_name` varchar(80) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_modal`
--

INSERT INTO `car_modal` (`id`, `manufacturer_id`, `modal_name`, `status`, `created_at`) VALUES
(1, 1, 'X1 SUV', 0, '2024-12-21 19:34:31'),
(2, 1, 'X2 Coupe SUV', 0, '2024-12-21 19:34:39'),
(3, 1, 'X3 SUV', 0, '2024-12-21 19:34:46'),
(4, 2, 'Audi A4', 0, '2024-12-21 19:35:13'),
(5, 2, 'Audi A6', 0, '2024-12-21 19:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `car_parts`
--

CREATE TABLE `car_parts` (
  `id` int(11) NOT NULL,
  `manufacturer` varchar(11) NOT NULL,
  `c_modal` varchar(11) NOT NULL,
  `c_gen` varchar(30) NOT NULL,
  `engine_name` varchar(80) NOT NULL,
  `seo_url` varchar(150) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `main_price` varchar(30) NOT NULL,
  `main_image_path` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(80) NOT NULL,
  `cat_slug` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `cat_slug`, `status`, `created_at`) VALUES
(1, 'Shirts', 'shirts', 'active', '2024-12-27 14:15:54'),
(2, 'Jeans', 'jeans', 'active', '2024-12-27 14:16:13'),
(3, 'Trousers ', 'trousers ', 'active', '2024-12-27 14:16:24'),
(4, 'Tshirts', 'tshirts', 'active', '2024-12-27 14:16:39'),
(5, 'Suits', 'suits', 'active', '2024-12-27 14:16:51'),
(6, 'Jackets', 'jackets', 'active', '2024-12-27 14:17:17'),
(7, 'Polos', 'polos', 'active', '2024-12-27 14:17:27'),
(8, 'Knitwear', 'knitwear', 'active', '2024-12-27 14:17:43'),
(9, 'Wallets', 'wallets', 'active', '2024-12-27 14:18:01'),
(10, 'Shoes', 'shoes', 'active', '2024-12-27 14:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(120) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postcode` varchar(11) NOT NULL,
  `delivery_date` varchar(20) NOT NULL,
  `delivery_time` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`id`, `user_id`, `full_name`, `mobile`, `email`, `address`, `city`, `state`, `postcode`, `delivery_date`, `delivery_time`, `created_at`) VALUES
(1, 1, 'John', 2147483647, 'divjonny58@gmail.com', 'New Delhi', 'Delhi', '', '110085', '2024-12-25', '14:35', '2024-12-22 07:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `customer_appointment`
--

CREATE TABLE `customer_appointment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `manufacturer` varchar(80) NOT NULL,
  `car_model` varchar(80) NOT NULL,
  `generation` varchar(80) NOT NULL,
  `service_date` varchar(30) NOT NULL,
  `service_time` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cu_cart`
--

CREATE TABLE `cu_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_size` varchar(20) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cu_cart`
--

INSERT INTO `cu_cart` (`id`, `user_id`, `product_id`, `product_name`, `product_size`, `product_price`, `quantity`, `product_image`, `created_at`) VALUES
(18, 1, 5, 'X1 SUV New Brand ', 'M', '96 ', 1, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734816612/engine-images/dqbon18fu1d7rxnc64zq.webp', '2024-12-22 20:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `cu_users`
--

CREATE TABLE `cu_users` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `otp_expiry` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cu_users`
--

INSERT INTO `cu_users` (`id`, `name`, `email`, `password`, `status`, `otp`, `otp_expiry`, `created_at`) VALUES
(1, 'John Aryan', 'divjonny58@gmail.com', '$2b$10$l2imBk0.30tle6Ff.jXdO.T2GAOJHXRx1J7vXpst0Jq1M2hlWVIxy', '0', 0, '', '2024-12-22 06:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `engines`
--

CREATE TABLE `engines` (
  `id` int(11) NOT NULL,
  `manufacturer` varchar(11) NOT NULL,
  `c_modal` varchar(11) NOT NULL,
  `c_gen` varchar(30) NOT NULL,
  `engine_name` varchar(80) NOT NULL,
  `seo_url` varchar(150) NOT NULL,
  `description` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `main_price` varchar(30) NOT NULL,
  `main_image_path` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `engines`
--

INSERT INTO `engines` (`id`, `manufacturer`, `c_modal`, `c_gen`, `engine_name`, `seo_url`, `description`, `price`, `discount`, `main_price`, `main_image_path`, `created_at`) VALUES
(5, 'BMW', 'X1 SUV', 'xyx', 'X1 SUV New Brand', 'x1-suv-new-brand', 'dsf', '120', '20', '96', 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734816612/engine-images/dqbon18fu1d7rxnc64zq.webp', '2024-12-21 21:31:45'),
(6, 'BMW', 'X2 Coupe SU', 'xyx2', 'X2 SUV New Brand', 'x2-suv-new-brand', 'asf sdgsfdgfdb dfg', '250', '20', '200', 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734816755/engine-images/apjnsngrlmtzm5cgqjzn.webp', '2024-12-21 21:32:36'),
(7, 'Audi', 'Audi A6', 'xyx2', 'Audi A6 New Brand', 'audi-a6-new-brand', 'dasdsa', '450', '20', '360', 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734871948/engine-images/ndn07sswdcmcg39ccuok.png', '2024-12-22 12:52:29'),
(8, 'Audi', 'Audi A6', 'xyx2', 'X1 SUV New Brandasd', 'audi-a4-new-brandasda', 'dasd', '120', '20', '96', 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937240/engine-images/yfcuvhgps411vm7gltik.webp', '2024-12-23 07:00:40'),
(9, 'Audi', 'Audi A6', 'xyx2', 'X1 SUV New Brandasd', 'audi-a4-new-brandasda', 'dasd', '120', '20', '96', 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937284/engine-images/m0i5lqe7dloas1tfgq8x.webp', '2024-12-23 07:01:25'),
(10, 'BMW', 'X1 SUV', 'xyx', 'X1 SUV New Brand safdas', 'x1-suv-new-brandfasfas', 'fsaf', '220', '10', '198', 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937575/engine-images/uhhnyfcg3tbfsfzc7q8n.jpg', '2024-12-23 07:06:15'),
(11, 'BMW', 'X1 SUV', 'xyx', 'X1 SUV New Brand safdas', 'x1-suv-new-brandfasfas', 'fsaf', '220', '10', '198', 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937605/engine-images/khlh0gx9lucozzeq2ljj.jpg', '2024-12-23 07:06:45'),
(12, 'BMW', 'X1 SUV', 'xyx', 'BMW Series 11', 'bmw-series-111', 'wew', '200', '10', '180', 'https://res.cloudinary.com/dj7wogsju/image/upload/v1735318335/engine-images/vvhgxov5lvpzgvc3vglv.jpg', '2024-12-27 16:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_type`
--

CREATE TABLE `inventory_type` (
  `id` int(11) NOT NULL,
  `i_type` varchar(60) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_type`
--

INSERT INTO `inventory_type` (`id`, `i_type`, `status`, `created_at`) VALUES
(1, 'Top', 'active', '2025-01-15 17:22:32'),
(2, 'Bottom', 'active', '2025-01-15 17:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'BMW', 1, '2024-12-21 19:33:59'),
(2, 'Audi', 1, '2024-12-21 19:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `new_size`
--

CREATE TABLE `new_size` (
  `id` int(11) NOT NULL,
  `size_name` varchar(30) NOT NULL,
  `s_quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `address_id`, `total_price`, `order_status`, `payment_status`, `payment_type`, `created_at`) VALUES
(2, 'CU__00001', 1, 1, '392.00', 'PENDING', 'PENDING', 'PAYPAL', '2024-12-22 20:43:51'),
(3, 'CU__00002', 1, 1, '360.00', 'PENDING', 'PENDING', 'PAYPAL', '2024-12-22 20:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_size` varchar(20) NOT NULL,
  `price` varchar(40) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `user_id`, `product_id`, `product_size`, `price`, `quantity`, `created_at`) VALUES
(4, 'CU__00001', 1, 5, 'S', '96 ', 1, '2024-12-22 20:43:51'),
(5, 'CU__00001', 1, 6, '30', '200 ', 1, '2024-12-22 20:43:51'),
(6, 'CU__00001', 1, 5, '3XL', '96 ', 1, '2024-12-22 20:43:51'),
(7, 'CU__00002', 1, 7, 'L', '360 ', 1, '2024-12-22 20:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `p_main_price` int(11) NOT NULL,
  `p_url` varchar(150) NOT NULL,
  `p_title` varchar(120) NOT NULL,
  `similar_product` varchar(100) NOT NULL,
  `p_image` varchar(150) NOT NULL,
  `p_desc` text NOT NULL,
  `p_key_features` text NOT NULL,
  `tags` varchar(100) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `colour` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `new_arrival` varchar(20) NOT NULL,
  `best_seller` varchar(20) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `p_name`, `p_price`, `discount`, `p_main_price`, `p_url`, `p_title`, `similar_product`, `p_image`, `p_desc`, `p_key_features`, `tags`, `brand`, `sku`, `colour`, `type`, `new_arrival`, `best_seller`, `position`, `status`, `created_at`) VALUES
(1, 1, 'Rose Structured Shirt Modern Fit', 90, 0, 90, 'rose-structured-shirt-modern-fit', 'Rose Structured Shirt Modern Fit', '', 'https://res.cloudinary.com/dj7wogsju/image/upload/v1736177730/product-images/fpadw6gxruoxwcffnohn.jpg', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                From our premium collection \"1863 by ETERNA\"! With this structured COMFORT FIT shirt you will be a tasteful eye-catcher. Special qualities, cotton fabrics with the best finish, and high-quality workmanship - all these advantages come together in our premium line. This twill shirt is made from pure, non-iron cotton and is, therefore, a guarantee for the best-wearing comfort and feel-good character. It comes with a classic Kent collar, no breast pocket and a comfortable cut. The sewn-in decorative band in the front is a special detail. The hem is rounded to a normal length so that this shirt can also be worn casually over trousers.\r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            ', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            ', 'Structured, Comfort-Fit, Premium, Cotton, Non-Iron, Casua', 'Eterna', '1187', 'orchid', 'top', 'yes', 'no', 0, 0, '2025-01-06 17:16:55'),
(2, 1, 'Orchid structured Shirt Modern Fit', 90, 0, 90, 'orchid-structured-shirt-modern-fit', 'Orchid structured Shirt Modern Fit', '', 'https://res.cloudinary.com/dj7wogsju/image/upload/v1736178637/product-images/lg27f45ml75qcf6xqpfb.jpg', '                                                                                                                                                                                                                                                From our premium collection \"1863 by ETERNA\"! With this structured COMFORT FIT shirt you will be a tasteful eye-catcher. Special qualities, cotton fabrics with the best finish, and high-quality workmanship - all these advantages come together in our premium line. This twill shirt is made from pure, non-iron cotton and is, therefore, a guarantee for the best-wearing comfort and feel-good character. It comes with a classic Kent collar, no breast pocket and a comfortable cut. The sewn-in decorative band in the front is a special detail. The hem is rounded to a normal length so that this shirt can also be worn casually over trousers.\r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            ', '                                                                                                                                                                                                                                                \r\n                                            \r\n                                            \r\n                                            \r\n                                            \r\n                                            ', 'Structured, Comfort-Fit, Premium, Cotton, Non-Iron, Casual', 'Eterna', '1187', 'rose', 'top', 'no', 'no', 0, 0, '2025-01-06 17:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` varchar(120) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_image`, `status`, `created_at`) VALUES
(1, 9, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937285/engine-images/op5ygmuqyzoqsixmhrh1.png', 0, '2024-12-23 07:01:29'),
(2, 9, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937287/engine-images/akbcanvp8jcdkscxyuvn.png', 0, '2024-12-23 07:01:29'),
(3, 9, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937288/engine-images/qsrryxwkxzvmftmwia3p.webp', 0, '2024-12-23 07:01:29'),
(4, 9, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937289/engine-images/cbn63cs0htfk0vjjeh2f.png', 0, '2024-12-23 07:01:29'),
(5, 11, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937606/engine-images/rpsnv54yrcorgwnddhxt.png', 0, '2024-12-23 07:06:50'),
(6, 11, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937607/engine-images/vnkiphf2d20shl7rd1xu.jpg', 0, '2024-12-23 07:06:50'),
(7, 11, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937608/engine-images/r2d4vgyqtzlvtvppottj.png', 0, '2024-12-23 07:06:50'),
(8, 11, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937609/engine-images/bqpucyll7201sqpfsxv3.jpg', 0, '2024-12-23 07:06:50'),
(9, 11, 'https://res.cloudinary.com/dqqfisfji/image/upload/v1734937610/engine-images/qdmpe3fmufklu3qrpquk.jpg', 0, '2024-12-23 07:06:50'),
(10, 12, 'https://res.cloudinary.com/dj7wogsju/image/upload/v1735318336/engine-images/sqgbksuy9k6rmeivsuvp.jpg', 0, '2024-12-27 16:50:36'),
(11, 12, 'https://res.cloudinary.com/dj7wogsju/image/upload/v1735318338/engine-images/z19b5hfrm5yb4cnlbwtw.jpg', 0, '2024-12-27 16:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `pro_images`
--

CREATE TABLE `pro_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `p_images` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro_images`
--

INSERT INTO `pro_images` (`id`, `product_id`, `p_images`, `status`) VALUES
(13, 1, 'https://res.cloudinary.com/dj7wogsju/image/upload/v1736177673/product-images/vygqnhx88p0tyyh8jzg8.jpg', 0),
(14, 1, 'https://res.cloudinary.com/dj7wogsju/image/upload/v1736178427/product-images/g2wchldkhr9ab3daxxq7.jpg', 0),
(15, 2, 'https://res.cloudinary.com/dj7wogsju/image/upload/v1736178638/product-images/pylwramriru0o4l5iptb.jpg', 0),
(16, 2, 'https://res.cloudinary.com/dj7wogsju/image/upload/v1736178639/product-images/batub2rciphgqvllnwnv.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `p_colour`
--

CREATE TABLE `p_colour` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_size`
--

CREATE TABLE `p_size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_size`
--

INSERT INTO `p_size` (`id`, `product_id`, `size`, `quantity`, `status`, `created_at`) VALUES
(37, 1, 'S', 10, 0, '2025-01-06 10:28:37'),
(38, 1, 'M', 10, 0, '2025-01-06 10:28:37'),
(39, 1, 'L', 10, 0, '2025-01-06 10:28:37'),
(44, 1, 'XL', 10, 0, '2025-01-06 15:06:27'),
(66, 2, 'S', 10, 0, '2025-01-06 16:51:25'),
(67, 2, 'M', 10, 0, '2025-01-06 15:50:41'),
(68, 2, 'L', 10, 0, '2025-01-06 15:50:41'),
(69, 2, 'XL', 10, 0, '2025-01-06 15:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `product_id`, `size`, `quantity`, `status`, `created_at`) VALUES
(17, 5, 'S', 10, 0, '2024-12-21 21:30:13'),
(18, 5, 'M', 10, 0, '2024-12-21 21:30:13'),
(19, 5, 'L', 3, 0, '2024-12-22 15:45:42'),
(20, 5, 'XL', 0, 0, '2024-12-22 14:50:14'),
(21, 5, '2XL', 10, 0, '2024-12-21 21:30:13'),
(22, 5, '3XL', 10, 0, '2024-12-21 21:30:13'),
(23, 6, '28', 10, 0, '2024-12-21 21:32:36'),
(24, 6, '30', 10, 0, '2024-12-21 21:32:36'),
(25, 6, '32', 0, 0, '2024-12-22 14:26:23'),
(26, 7, 'S', 4, 0, '2024-12-22 15:04:52'),
(27, 7, 'M', 0, 0, '2024-12-22 14:26:18'),
(28, 7, 'L', 5, 0, '2024-12-22 15:05:10'),
(29, 7, 'XL', 10, 0, '2024-12-22 12:52:29'),
(30, 9, '28', 10, 0, '2024-12-23 07:01:29'),
(31, 11, 'XS', 10, 0, '2024-12-23 07:06:50'),
(32, 11, 'S', 10, 0, '2024-12-23 07:06:50'),
(33, 11, 'M', 10, 0, '2024-12-23 07:06:50'),
(34, 12, '28', 5, 0, '2024-12-27 16:50:36'),
(35, 12, '30', 5, 0, '2024-12-27 16:50:36'),
(36, 12, '32', 5, 0, '2024-12-27 16:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `sizes_fits`
--

CREATE TABLE `sizes_fits` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `fit_name` varchar(70) NOT NULL,
  `f_quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_modal`
--
ALTER TABLE `car_modal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_parts`
--
ALTER TABLE `car_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_appointment`
--
ALTER TABLE `customer_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cu_cart`
--
ALTER TABLE `cu_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cu_users`
--
ALTER TABLE `cu_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engines`
--
ALTER TABLE `engines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_type`
--
ALTER TABLE `inventory_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_size`
--
ALTER TABLE `new_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_images`
--
ALTER TABLE `pro_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_colour`
--
ALTER TABLE `p_colour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_size`
--
ALTER TABLE `p_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes_fits`
--
ALTER TABLE `sizes_fits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_modal`
--
ALTER TABLE `car_modal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `car_parts`
--
ALTER TABLE `car_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_appointment`
--
ALTER TABLE `customer_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cu_cart`
--
ALTER TABLE `cu_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cu_users`
--
ALTER TABLE `cu_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `engines`
--
ALTER TABLE `engines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inventory_type`
--
ALTER TABLE `inventory_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `new_size`
--
ALTER TABLE `new_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pro_images`
--
ALTER TABLE `pro_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `p_colour`
--
ALTER TABLE `p_colour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_size`
--
ALTER TABLE `p_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sizes_fits`
--
ALTER TABLE `sizes_fits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
