-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2021 at 10:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rob_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(2, 'Tatiana Saphira', 'tatiaCute@gmail.id', 'tatiana123', 'tatiana-saphira.jpg', 'Indonesia', 'Change the about description for Tatiana from chelsea Islan', '2222-2222-2222', 'MyMaid'),
(5, 'Iko Uwais', 'iko@gmail.id', 'iko123', 'iko.png', 'Indonesia', 'This is for IKO', '081806833157', 'Fighter / Actor'),
(6, 'Admin', 'robincuetcse@gmail.com', '123456', 'iko.png', 'Bangladesh', 'Software Engineer\r\n', '01795371964', 'Software Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, ' New Title Box Best Offers ', 'New Lorem  dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(3, 'New Title Box 100% Satisfy ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(4, 'New Title Box New Box Title 4 ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, aliquid veritatis amet ad saepe nesciunt eos? Quas ipsum laboriosam hic sunt fugit cumque maiores! Ducimus officiis commodi consequuntur rerum minima.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `p_price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Man', 'yes', 'men.jpg'),
(2, 'Women', 'yes', 'women.jpg'),
(3, 'Kids', 'no', 'kid.jpg'),
(4, 'Others', 'no', 'other.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(100) NOT NULL,
  `comment_user_id` int(100) NOT NULL,
  `comment_post` varchar(5000) NOT NULL,
  `comment_rating` int(10) NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment_product_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_user_id`, `comment_post`, `comment_rating`, `comment_time`, `comment_product_id`) VALUES
(1, 7, 'Forkan', 2, '2021-09-08 21:54:01', 17),
(2, 7, 'fasdfasdf', 1, '2021-09-08 21:54:04', 17),
(3, 7, 'fasfasdfasd', 2, '2021-09-08 21:54:08', 17),
(4, 7, 'Forkanasdf afd asfd asdf asdf asd fas df asdf as dfas.', 1, '2021-09-08 21:54:10', 17),
(5, 7, 'adfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf dsadfasd fasd fajsdf sadkfjaskdf askdf asdf asd f asdf ds', 1, '2021-09-08 21:54:14', 17),
(6, 7, 'Try....', 2, '2021-09-08 05:00:00', 17),
(7, 7, 'Try....', 2, '2021-09-09 06:00:00', 17),
(8, 7, 'Try....', 2, '2021-09-09 06:00:00', 17),
(9, 7, 'Try....', 2, '2021-09-09 06:00:00', 17),
(10, 7, 'Yessss1111', 2, '2021-09-09 06:00:00', 17),
(11, 7, 'Yessss1111', 2, '2021-09-09 06:00:00', 17),
(12, 7, 'fasdfasdfsaf', 2, '2021-09-09 06:00:00', 11),
(13, 7, 'Good Product', 4, '2021-09-09 06:00:00', 11),
(14, 9, 'Cuet is the Best.', 3, '2021-09-09 06:00:00', 11),
(15, 9, '???????????? ??????????????? ????????????????????? ?????? ???????????????????????? ?????????????????????????????? ?????????????????? /??????????????? | ????????????????????? ?????????????????????????????? ???????????? ??????????????? ?????? ?????????????????? PDF\r\nAdminSeptember 05, 2021\r\n\r\n \r\n  \r\n\r\n???????????? ??????????????? ????????????????????? ???????????????????????? ?????????????????????????????? ??????/??????????????? ???????????????????????? ???????????????/?????????????????? | ????????????????????? ???????????? ??????????????? ?????? ???????????????????????? ?????????????????????????????? ?????????????????? /??????????????? | ????????????????????? ?????????????????????????????? ???????????? ???????????????/?????????????????? ?????? ?????????????????? PDF Download\r\n\r\n \r\n\r\n    Table Of Contents    \r\n???????????? ??????????????? ????????????????????? ???????????????????????? ?????????????????????????????? ??????/??????????????? ???????????????????????? ???????????????\r\n????????????????????? ?????? ???????????????????????? ?????????????????????????????? ???????????? PD', 1, '2021-09-08 19:00:00', 11),
(16, 7, 'Testing...', 4, '2021-09-19 03:00:00', 15),
(17, 7, 'Now..', 3, '2021-09-19 03:00:00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `coupon_title` varchar(1000) DEFAULT NULL,
  `coupon_price` int(100) DEFAULT NULL,
  `coupon_code` varchar(1000) NOT NULL,
  `coupon_used` int(100) DEFAULT 0,
  `coupon_limit` int(11) DEFAULT NULL,
  `product_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_used`, `coupon_limit`, `product_id`) VALUES
(1, 'Testing Coupon', 30, '123456', 4, 500, 14),
(5, 'Eid Offer', 60, '12345', 1, 8, 17),
(6, 'Eid Offer', 100, '1234567', 1, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(7, 'Robin', 'robin@gmai.com', '123456', 'Bangladesh', 'Dhaka', '017837458345', 'Mirpur, Dhaka-1206', '7d1a3f77eee9f34782c6f88e97a6c888.jpg', '::1'),
(9, 'Forkan Ullah', 'forkan@gmail.com', '123456', 'Banglladesh', 'Comilla', '01795371945', 'Mirpur 14', 'CUET_Vector_ogo.svg', '::1'),
(10, 'Abdullah Hossain', 'forkan@gmail.com', '123456', 'Bangladesh', 'Inside Dhaka Metro City', '01795371965', 'Mirpur fasdjfasdfa sdf ads as df asdfsa', 'jty32.png', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(11, 6, 300, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(12, 6, 10, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(13, 5, 10, 949505855, 1, 'Small', '2019-09-14', 'Complete'),
(14, 7, 90, 2078162073, 2, 'Small', '2021-01-10', 'Complete'),
(15, 7, 68, 2078162073, 1, 'Small', '2021-01-10', 'Complete'),
(16, 7, 90, 448193817, 2, 'Small', '2021-08-25', 'pending'),
(17, 7, 136, 448193817, 2, 'Small', '2021-08-25', 'pending'),
(18, 7, 30, 620725880, 3, 'Small', '2021-08-25', 'Complete'),
(19, 7, 10, 1798439149, 1, 'Medium', '2021-08-26', 'pending'),
(20, 7, 20, 230081619, 2, 'Small', '2021-09-04', 'Complete'),
(21, 7, 600, 1843238128, 2, 'Medium', '2021-09-09', 'pending'),
(22, 7, 98, 1843238128, 1, 'Medium', '2021-09-09', 'Complete'),
(23, 7, 300, 1981925736, 1, 'Medium', '2021-09-09', 'Complete'),
(24, 7, 121, 1524371719, 1, 'Medium', '2021-09-20', 'pending'),
(25, 7, 55, 1524371719, 1, 'Medium', '2021-09-20', 'pending'),
(26, 7, 103, 1524371719, 1, 'Small', '2021-09-20', 'pending'),
(27, 7, 422, 1524371719, 2, 'Medium', '2021-09-20', 'pending'),
(28, 7, 10, 1524371719, 1, 'Medium', '2021-09-20', 'pending'),
(29, 9, 103, 1137975461, 1, 'Small', '2021-09-20', 'pending'),
(30, 9, 136, 1137975461, 2, 'Medium', '2021-09-20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'John Smith', 'yes', 'images (1).jpg'),
(3, 'Jenny Artha ', 'yes', 'photo-1518806118471-f28b20a1d79d.jpg'),
(4, 'Hendra ', 'no', 'images (3).jpg'),
(5, 'Ayra Joe', 'no', 'unnamed.jpg'),
(7, 'Manufer stone', 'no', 'depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 206863956, 10, 'Western Union', 123123, 321321, '02-09-2019'),
(7, 1231231, 1313, 'Back Code', 123132, 123123, '123123'),
(8, 42412342, 3234, 'Paypall', 34123, 2147483647, '20:10:2020'),
(9, 42412342, 3234, 'Paypall', 34123, 2147483647, '20:10:2021'),
(10, 42412342, 3234, 'Paypall', 34123, 2147483647, '20:10:2020'),
(11, 42412342, 3234, 'Back Code', 34123, 2147483647, '20:10:2020'),
(12, 42412342, 3234, 'Paypall', 34123, 123456, '20:10:2021'),
(13, 42412342, 3234, 'Paypall', 43123423, 4131243, '20:10:2020'),
(14, 0, 0, 'Back Code', 0, 0, 'afdsasdfd');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(12, 7, 2078162073, '7', 2, 'Small', 'pending'),
(13, 7, 2078162073, '17', 1, 'Small', 'pending'),
(14, 7, 448193817, '12', 2, 'Small', 'Complete'),
(15, 7, 448193817, '17', 2, 'Small', 'Complete'),
(16, 7, 620725880, '15', 3, 'Small', 'pending'),
(17, 7, 1798439149, '15', 1, 'Medium', 'pending'),
(18, 7, 230081619, '15', 2, 'Small', 'pending'),
(19, 7, 1843238128, '10', 2, 'Medium', 'pending'),
(20, 7, 1843238128, '14', 1, 'Medium', 'pending'),
(21, 7, 1981925736, '10', 1, 'Medium', 'pending'),
(22, 7, 1524371719, '2', 1, 'Medium', 'pending'),
(23, 7, 1524371719, '3', 1, 'Medium', 'pending'),
(24, 7, 1524371719, '5', 1, 'Small', 'pending'),
(25, 7, 1524371719, '6', 2, 'Medium', 'pending'),
(26, 7, 1524371719, '15', 1, 'Medium', 'pending'),
(27, 9, 1137975461, '5', 1, 'Small', 'pending'),
(28, 9, 1137975461, '17', 2, 'Medium', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_sale` varchar(255) DEFAULT NULL,
  `product_label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_sale`, `product_label`) VALUES
(1, 1, 2, 3, '2021-09-01 05:46:16', 'Collared Dress', 'product_front.jpg', 'product-back.jpg', 'product_hang.jpg', 66, 'Dress', '<p>Just want to try update</p>', '60', 'new'),
(2, 4, 3, 3, '2021-08-31 20:35:03', 'Boys Puffer ', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 121, 'Hood', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', '110', 'sale'),
(3, 5, 2, 5, '2021-09-01 15:12:43', 'Girl Polos ', 'g-polos-tshirt-1.jpg', 'g-polos-tshirt-2.jpg', '', 55, 'Shirt', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', '50', 'sale'),
(4, 1, 1, 2, '2021-09-01 15:12:18', 'Man Geox ', 'Man-Geox-Winter-jacket-1.jpg', 'Man-Geox-Winter-jacket-2.jpg', 'Man-Geox-Winter-jacket-3.jpg', 100, 'Snake Skin', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', NULL, NULL),
(5, 1, 2, 1, '2021-09-01 15:12:53', 'Women Red ', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-3.jpg', 103, 'Korean Jacket', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', '80', 'sale'),
(6, 4, 2, 2, '2021-09-01 15:12:11', 'Waxed Coat', 'waxed-cotton-coat-woman-1.jpg', 'waxed-cotton-coat-woman-2.jpg', 'waxed-cotton-coat-woman-3.jpg', 211, 'Cotton', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', NULL, NULL),
(7, 3, 2, 4, '2021-09-01 15:12:06', 'High Brukat', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-3.jpg', 45, 'High Heel', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', NULL, NULL),
(8, 3, 1, 3, '2021-08-31 21:04:03', 'Adidas Slop ', 'Man-Adidas-Suarez-Slop-On-1.jpg', 'Man-Adidas-Suarez-Slop-On-2.jpg', 'Man-Adidas-Suarez-Slop-On-3.jpg', 51, 'Adidas Suarez', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', NULL, NULL),
(9, 2, 1, 4, '2021-09-01 15:12:27', 'Mont Blanc ', 'Mont-Blanc-Belt-man-1.jpg', 'Mont-Blanc-Belt-man-2.jpg', 'Mont-Blanc-Belt-man-3.jpg', 166, 'Belt', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', NULL, NULL),
(10, 2, 2, 5, '2021-08-31 21:04:11', 'Diamond Ring', 'women-diamond-heart-ring-1.jpg', 'women-diamond-heart-ring-2.jpg', 'women-diamond-heart-ring-3.jpg', 300, 'Ring', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cupiditate animi, voluptas neque quasi qui unde fuga porro vero magnam maiores optio amet quos temporibus? Amet saepe fugit nostrum a?</p>', NULL, 'new'),
(11, 5, 1, 2, '2021-09-01 15:15:28', 'Grey T-Shirt', 'grey-man-1.jpg', 'grey-man-2.jpg', 'grey-man-3.jpg', 50, 'Casual', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', '45', 'sale'),
(12, 5, 1, 3, '2021-08-31 21:04:19', 'Man Polo ', 'Man-Polo-1.jpg', 'Man-Polo-2.jpg', 'Man-Polo-3.jpg', 45, 'Casual', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', NULL, 'new'),
(13, 5, 1, 3, '2021-08-31 21:04:23', 'Polos T-Shirt', 'polos-tshirt-1.jpg', 'polos-tshirt-2.jpg', 'polos-tshirt-2.jpg', 40, 'Casual', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', NULL, 'new'),
(14, 1, 1, 4, '2021-09-01 15:15:40', 'Levi`s Jacket', 'levis-Trucker-Jacket.jpg', 'levis-Trucker-Jacket-2.jpg', 'levis-Trucker-Jacket-3.jpg', 98, 'Trucker', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi rem nemo, autem at ad temporibus, maiores ducimus sed quam enim reprehenderit distinctio similique debitis, quis corrupti est. Sed, rem, voluptatibus!</p>', '90', 'sale'),
(15, 2, 2, 5, '2021-08-31 21:04:30', 'Hijab Girl ', 'hijab-anak-1.jpg', 'hijab-anak-2.jpg', 'hijab-anak-3.jpg', 10, 'Hijab Kids', '<p>This is just description for sampe product of hijab. And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha</p>', NULL, 'new'),
(17, 1, 2, 2, '2021-08-31 20:23:26', 'Women Jacket', 'new-jacket-women-1.jpg', 'new-jacket-women-2.jpg', 'new-jacket-women-3.jpg', 68, 'Women Jacket', '<p>This is just description for sampe product of hijab. And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha And Cha cha cha</p>', '110', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Jackets', 'yes', 'jacket.jpg'),
(2, 'Accessories ', 'no', 'hand-drawing-styles-accesories_137262-1.jpg'),
(3, 'Shoes ', 'no', 'blacktown_grey_slip-on_shoes_with_striped_detail.webp'),
(4, 'Coats  ', 'yes', 'download.jpg'),
(5, 'T-Shirt ', 'no', 'tate-logo-black--tshirt-back-g1086.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(9, 'Slide Number 11', 'slider-number-11.jpg', 'http://localhost/m-dev-store/shop.php'),
(13, 'Editing Slide 12', 'slider-number-12.jpg', 'test.com'),
(14, 'Slide Number 14', 'slider-number-14.jpg', 'https://youtube.com/c/mdevmedia');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(9, 'Rules & Regulations', 'link_1', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(10, 'Promo & Regulations', 'link_2', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(11, 'Refund Condition Policy', 'link_3', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
