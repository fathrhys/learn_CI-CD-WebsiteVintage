-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2026 at 04:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vintage`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `location_id` int NOT NULL,
  `user_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `condition_id` int NOT NULL,
  `color_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text,
  `size` varchar(50) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `location_id`, `user_id`, `brand_id`, `category_id`, `condition_id`, `color_id`, `name`, `image`, `description`, `size`, `price`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 7, 1, 1, 1, 'Nike Air Max 270', 'https://static.nike.com/a/images/t_web_pdp_936_v2/f_auto/awjogtdnqxniqqk0wpgf/AIR+MAX+270.png', 'Sepatu sporty nyaman untuk aktivitas harian.', '42', '1800000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:02'),
(2, 5, 1, 8, 1, 1, 2, 'Adidas Ultraboost', 'https://img.ncrsport.com/img/storage/large/EG0694-1.jpg', 'Running shoes dengan teknologi Boost.', '43', '2200000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:05'),
(3, 2, 1, 11, 2, 2, 3, 'Zara Casual Shirt', 'https://static.zara.net/assets/public/8597/f743/8433444aa187/4b8ac7d2b22a/02795622400-e1/02795622400-e1.jpg?ts=1757425650537&w=560', 'Kemeja kasual bahan katun premium.', 'L', '450000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:06'),
(4, 7, 1, 10, 3, 1, 4, 'Puma Oversized Hoodie', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-180710738/puma_puma_men_sportswear_ess_no-_1_logo_hoodie_tr_jaket_pria_-68257201-_full05_r21xdzsa.jpeg', 'Hoodie oversized nyaman dipakai harian.', 'XL', '650000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:08'),
(5, 4, 1, 5, 1, 3, 5, 'Converse Chuck 70s', 'https://www.converse.id/media/catalog/product/cache/ae7cee22ac1ff58c2794c87414f27b45/0/8/0888-CON162058C000003-1.jpg', 'Sneakers klasik dengan desain timeless.', '41', '1200000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:10'),
(6, 1, 1, 1, 4, 1, 6, 'Vans Old Skool Black White', 'https://www.footlocker.id/media/catalog/product/V/A/VAS000D3HY28-2.jpg', 'Model ikonik dengan garis putih khas.', '42', '950000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:11'),
(7, 6, 1, 12, 2, 1, 7, 'Bershka Denim Jacket', 'https://media.karousell.com/media/photos/products/2023/10/12/bershka_denim_regular_fit_ligh_1697089168_b4c32148_progressive', 'Jaket denim biru dengan potongan trendy.', 'L', '550000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:13'),
(8, 8, 1, 9, 5, 2, 8, 'Dior Luxury Tee', 'https://assets.christiandior.com/is/image/diorprod/323T06A4414X0200_E01?$r2x3_default_s85$&crop=452,149,1096,1353&wid=1334&hei=2000&scale=0.85&bfc=on&qlt=85', 'Kaos premium dari brand fashion mewah.', '8 / M', '5200000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:15'),
(9, 2, 1, 6, 6, 1, 2, 'Sandro Knit Sweater', 'https://sandro.sa/cdn/shop/files/Sandro_SHPTR00102-20_V_P_01778838-c6a8-44f0-9217-7dbc00814b91.jpg?v=1738691593&width=2048', 'Sweater knit hangat dan elegan.', 'L', '1500000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:17'),
(10, 3, 1, 4, 3, 3, 3, 'Reebok Training Jacket', 'https://www.reebok.id/cdn/shop/files/0888-REEMPJ2493VN-1.jpg?v=1747133641', 'Jaket training ringan dan breathable.', 'XL', '800000.00', '2025-12-06 12:51:06', '2025-12-08 02:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_brand`
--

INSERT INTO `product_brand` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vans', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(2, 'Bohoo', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(3, 'Mango', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(4, 'Reebok', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(5, 'Converse', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(6, 'Sandro', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(7, 'Nike', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(8, 'Adidas', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(9, 'Dior', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(10, 'Puma', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(11, 'Zara', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(12, 'Bershka', '2025-12-06 12:51:06', '2025-12-06 12:51:06'),
(13, 'American Eagle', '2025-12-06 12:51:06', '2025-12-06 12:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `quantity` int NOT NULL,
  `is_cart` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_cart`
--

INSERT INTO `product_cart` (`id`, `product_id`, `user_id`, `name`, `quantity`, `is_cart`, `created_at`, `updated_at`) VALUES
(18, 3, 2, 'Zara Casual Shirt', 1, 1, '2025-12-13 06:46:45', '2025-12-13 06:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'T-Shirt', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(2, 'Kemeja', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(3, 'Hoodie', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(4, 'Sweater', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(5, 'Jaket', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(6, 'Polo Shirt', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(7, 'Kaos Oversized', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(8, 'Kaos Lengan Panjang', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(9, 'Tank Top', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(10, 'Crop Top', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(11, 'Cardigan', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(12, 'Blazer', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(13, 'Varsity Jacket', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(14, 'Windbreaker', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(15, 'Denim Jacket', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(16, 'Bomber Jacket', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(17, 'Celana Jeans', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(18, 'Celana Chino', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(19, 'Celana Pendek', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(20, 'Jogger Pants', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(21, 'Cargo Pants', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(22, 'Legging', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(23, 'Rok Pendek', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(24, 'Rok Panjang', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(25, 'Track Pants', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(26, 'Training Shorts', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(27, 'Matching Set', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(28, 'Tracksuit', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(29, 'Sportswear Set', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(30, 'Formal Suit', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(31, 'Dress', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(32, 'Mini Dress', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(33, 'Midi Dress', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(34, 'Maxi Dress', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(35, 'Gamis', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(36, 'Overall', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(37, 'Blouse', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(38, 'Cardigan Wanita', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(39, 'Kemeja Formal', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(40, 'Kemeja Flanel', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(41, 'Kaos Basic Pria', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(42, 'Sweatshirt Pria', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(43, 'Jersey', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(44, 'Gym Wear', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(45, 'Running Wear', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(46, 'Basketball Apparel', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(47, 'Skatewear', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(48, 'Streetwear', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(49, 'Coat', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(50, 'Trench Coat', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(51, 'Puffer Jacket', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(52, 'Hoodie Zip', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(53, 'Hoodie Pullover', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(54, 'Vest', '2025-12-06 13:00:10', '2025-12-06 13:00:10'),
(55, 'Long Coat', '2025-12-06 13:00:10', '2025-12-06 13:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `name`) VALUES
(1, 'Black'),
(2, 'White'),
(3, 'Gray'),
(4, 'Silver'),
(5, 'Red'),
(6, 'Blue'),
(7, 'Navy'),
(8, 'Green'),
(9, 'Olive'),
(10, 'Yellow'),
(11, 'Orange'),
(12, 'Brown'),
(13, 'Beige'),
(14, 'Cream'),
(15, 'Pink'),
(16, 'Purple'),
(17, 'Maroon'),
(18, 'Gold'),
(19, 'Teal'),
(20, 'Cyan');

-- --------------------------------------------------------

--
-- Table structure for table `product_condition`
--

CREATE TABLE `product_condition` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_condition`
--

INSERT INTO `product_condition` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baru', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(2, 'Seperti Baru', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(3, 'Sangat Bagus', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(4, 'Bagus', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(5, 'Cukup Bagus', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(6, 'Bekas', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(7, 'Bekas Berat', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(8, 'Rusak', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(9, 'Rekondisi', '2025-12-06 13:13:08', '2025-12-06 13:13:08'),
(10, 'Kustom', '2025-12-06 13:13:08', '2025-12-06 13:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_likes`
--

CREATE TABLE `product_likes` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `likes_count` int NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_likes`
--

INSERT INTO `product_likes` (`id`, `user_id`, `product_id`, `likes_count`, `updated_at`) VALUES
(9, 1, 3, 1, '2025-12-12 00:18:48'),
(10, 2, 3, 1, '2025-12-13 02:32:33'),
(11, 2, 4, 1, '2025-12-13 06:46:11'),
(12, 10, 3, 1, '2025-12-13 07:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_location`
--

CREATE TABLE `product_location` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_location`
--

INSERT INTO `product_location` (`id`, `name`) VALUES
(1, 'Jakarta'),
(2, 'Jakarta Selatan'),
(3, 'Jakarta Barat'),
(4, 'Jakarta Utara'),
(5, 'Jakarta Timur'),
(6, 'Bogor'),
(7, 'Depok'),
(8, 'Tangerang'),
(9, 'Tangerang Selatan'),
(10, 'Bekasi'),
(11, 'Bandung'),
(12, 'Surabaya'),
(13, 'Medan'),
(14, 'Makassar'),
(15, 'Semarang'),
(16, 'Palembang'),
(17, 'Yogyakarta'),
(18, 'Malang'),
(19, 'Bali'),
(20, 'Denpasar'),
(21, 'Banjarmasin'),
(22, 'Pontianak'),
(23, 'Manado'),
(24, 'Padang'),
(25, 'Pekanbaru'),
(26, 'Balikpapan'),
(27, 'Samarinda'),
(28, 'Mataram'),
(29, 'Kupang'),
(30, 'Jayapura'),
(31, 'Cirebon'),
(32, 'Sukabumi'),
(33, 'Serang'),
(34, 'Karawang'),
(35, 'Purwakarta'),
(36, 'Solo'),
(37, 'Magelang'),
(38, 'Kediri'),
(39, 'Batu'),
(40, 'Probolinggo'),
(41, 'Jember'),
(42, 'Banyuwangi'),
(43, 'Cimahi'),
(44, 'Tasikmalaya'),
(45, 'Garut'),
(46, 'Batam'),
(47, 'Tanjung Pinang'),
(48, 'Jambi'),
(49, 'Bengkulu'),
(50, 'Bandar Lampung'),
(51, 'Surakarta'),
(52, 'Tegal'),
(53, 'Banjarnegara'),
(54, 'Palu'),
(55, 'Kendari'),
(56, 'Gorontalo');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `payment_method` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL,
  `protection_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `grand_price` decimal(10,2) NOT NULL,
  `is_buy` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `user_id`, `product_id`, `name`, `address`, `payment_method`, `quantity`, `price`, `protection_price`, `shipping_price`, `grand_price`, `is_buy`, `created_at`, `updated_at`) VALUES
(14, 2, 3, 'Zara Casual Shirt', 'Timedoor Academy', 'VISA', 1, '450000.00', '15000.00', '20000.00', '485000.00', 1, '2025-12-13 06:46:27', '2025-12-13 06:46:28'),
(15, 2, 3, 'Zara Casual Shirt', 'Timedoor Academy', 'VISA', 1, '450000.00', '15000.00', '20000.00', '485000.00', 1, '2025-12-13 06:46:34', '2025-12-13 06:46:35'),
(16, 2, 3, 'Zara Casual Shirt', 'Timedoor Academy', 'VISA', 1, '450000.00', '15000.00', '20000.00', '485000.00', 1, '2025-12-13 06:46:41', '2025-12-13 06:46:42'),
(17, 11, 3, 'Zara Casual Shirt', 'Timedoor Academy', 'VISA', 1, '450000.00', '15000.00', '20000.00', '485000.00', 1, '2026-02-11 05:49:05', '2026-02-11 05:49:17'),
(18, 11, 3, 'Zara Casual Shirt', 'Timedoor Academy', 'VISA', 1, '450000.00', '15000.00', '20000.00', '485000.00', 1, '2026-02-11 05:49:29', '2026-02-11 05:49:31'),
(19, 11, 5, 'Converse Chuck 70s', 'Timedoor Academy', 'VISA', 1, '1200000.00', '15000.00', '20000.00', '1235000.00', 1, '2026-02-11 05:49:44', '2026-02-11 05:49:48'),
(20, 11, 5, 'Converse Chuck 70s', 'Timedoor Academy', 'VISA', 1, '1200000.00', '15000.00', '20000.00', '1235000.00', 1, '2026-02-11 05:50:32', '2026-02-11 05:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`id`, `product_id`, `user_id`, `rating`, `created_at`) VALUES
(1, 1, 1, '4.5', '2025-12-08 03:04:17'),
(2, 2, 1, '3.0', '2025-12-08 03:04:17'),
(3, 3, 1, '5.0', '2025-12-08 03:04:17'),
(4, 4, 1, '2.5', '2025-12-08 03:04:17'),
(5, 5, 1, '1.5', '2025-12-08 03:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `islogin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `image`, `username`, `fullname`, `email`, `password`, `created_at`, `updated_at`, `islogin`) VALUES
(1, 'uploads/users/693d0c51c0f90_ProfilePage.png', 'JackDaniel', 'JackDaniel', 'JackDaniel@gmail.com', '$2y$10$JH32o9NDuMfx2aPSlj2KiezMq6VBd/DGXd1rtQ0crXGPmQKR1tr/S', '2025-12-06 07:34:05', '2025-12-13 06:48:49', 1),
(2, 'uploads/users/693ccb638b85b_ProfilePage.png', 'Johndoe', 'adaa', 'john.doe@example.com', '$2y$10$NRD1zJn6E5A.xFHN8xCpfuev/E6W0ei8GOZNAKcQIAUNfP7xb3ygK', '2025-12-12 02:45:10', '2025-12-13 02:11:47', 1),
(10, NULL, 'JackDaniels', 'JackDaniels', 'JackDaniels@gmail.com', '$2y$10$Hlf4uUkDTrj47trAgUf8quLW2B3pbq3fOQ0tqC6A.CMquYbzM9z3u', '2025-12-13 07:31:28', '2025-12-13 07:31:28', 1),
(11, 'uploads/users/698c197dc36e4_window.png', 'Bintangbara', 'bintangbara', 'CumanKamu@gmail.com', '$2y$10$hJ326Uyz.uh9XTrgwz/.K.pwRSESs1RkdPXUOvUuTJ4UkKM2zwIjO', '2026-02-11 05:39:23', '2026-02-11 05:54:05', 1),
(12, NULL, 'admin_bintang', 'JackDaniels', 'bintangbaraadyasta@gmail.com', '$2y$10$Yczp35EtwYAW7Tt677Kx0udB7NvnU7aoUetoPMBjLt1q3/swINY02', '2026-02-11 06:27:59', '2026-02-11 06:27:59', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_user` (`user_id`),
  ADD KEY `fk_product_category` (`category_id`),
  ADD KEY `fk_product_condition` (`condition_id`),
  ADD KEY `fk_product_location` (`location_id`),
  ADD KEY `fk_product_brand` (`brand_id`),
  ADD KEY `fk_product_color` (`color_id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_user` (`user_id`),
  ADD KEY `fk_cart_product` (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_condition`
--
ALTER TABLE `product_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_likes`
--
ALTER TABLE `product_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_user` (`user_id`),
  ADD KEY `fk_likes_product` (`product_id`);

--
-- Indexes for table `product_location`
--
ALTER TABLE `product_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_user` (`user_id`),
  ADD KEY `fk_order_product` (`product_id`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_user` (`user_id`),
  ADD KEY `fk_rating_product` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_condition`
--
ALTER TABLE `product_condition`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_likes`
--
ALTER TABLE `product_likes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_location`
--
ALTER TABLE `product_location`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `product_brand` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_color` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_product_condition` FOREIGN KEY (`condition_id`) REFERENCES `product_condition` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_location` FOREIGN KEY (`location_id`) REFERENCES `product_location` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_likes`
--
ALTER TABLE `product_likes`
  ADD CONSTRAINT `fk_likes_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_likes_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `fk_order_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD CONSTRAINT `fk_rating_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rating_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
