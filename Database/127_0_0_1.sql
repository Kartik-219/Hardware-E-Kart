-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 06:05 PM
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
-- Database: `biling`
--
CREATE DATABASE IF NOT EXISTS `biling` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biling`;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `ITEM_NAME` varchar(100) NOT NULL,
  `QUANTITY` text NOT NULL,
  `PRICE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `srno` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `emailnewid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`srno`, `emailid`, `password`, `emailnewid`) VALUES
(1, 'admin@gmail.com', '1212', ''),
(2, 'gs@gmail.com', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `myorders`
--

CREATE TABLE `myorders` (
  `srno` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date2` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myorders`
--

INSERT INTO `myorders` (`srno`, `productid`, `email_id`, `quantity`, `date2`) VALUES
(36, 0, 'gs@gmail.com', NULL, '2023-01-21'),
(79, 37, 'gs@gmail.com', NULL, '2023-01-24'),
(80, 57, 'gs@gmail.com', NULL, '2023-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payid` int(11) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `payer_email` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `address` varchar(455) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pname` text NOT NULL DEFAULT current_timestamp(),
  `pprice` int(11) DEFAULT NULL,
  `pdesc` text DEFAULT NULL,
  `pimg` longblob DEFAULT NULL,
  `pcat` text DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `psubcat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pname`, `pprice`, `pdesc`, `pimg`, `pcat`, `pid`, `date`, `psubcat`) VALUES
('watch', 700, 'smart watch', 0x54696d6578322e6a7067, 'Electronics ', 32, '2022-11-06 12:51:28.982187', 'watch'),
('linovo', 47000, 'lenovo ideapad', 0x4c656e6f766f2e6a7067, 'Electronics ', 34, '2022-11-06 12:54:27.975762', 'laptop'),
('dell', 48000, 'Dell i5 core 11th generation', 0x64656c6c332e6a7067, 'Electronics ', 35, '2022-11-06 13:03:50.827923', 'laptop'),
('HP ', 52000, 'HP i8 11th generation  1TB SSD.', 0x6870342e6a7067, 'Electronics ', 36, '2022-11-06 13:05:44.105670', 'laptop'),
('Smart watch ', 1200, 'smart watch with wireless calling bluetooth . 10 days batarry backup', 0x736d6172742d7761746368322e6a7067, 'Electronics ', 37, '2022-11-06 13:08:28.290114', 'watch'),
('Timex Men Quartz analog Silver', 800, 'Timex Men Quartz analog Silver', 0x54696d6578204d656e2051756172747a20616e616c6f672053696c7665722e6a7067, 'Electronics ', 38, '2022-11-06 13:16:04.413991', 'watch'),
('Fastrack Analog Black', 1000, 'Fastrack Analog Black', 0x466173747261636b20416e616c6f6720426c61636b2e6a7067, 'Electronics ', 39, '2022-11-06 13:17:28.958741', 'watch'),
('lenovo ideaoad2', 45000, 'lenovo ideapad2 1TB SSD i6 11th generation', 0x6c656e6f7661322e6a7067, 'Electronics ', 40, '2022-11-06 13:18:46.268019', 'laptop'),
('Krishna Emporia', 450, 'Krishna Emporia', 0x4b726973686e6120456d706f7269612e6a7067, 'Fashion', 41, '2022-11-06 13:26:13.911919', 'mens'),
('Novarc', 230, 'Novarc', 0x4e6f766172632e6a7067, 'Fashion', 42, '2022-11-06 13:29:57.073360', 'mens'),
('LEWEL', 400, 'LEWEL', 0x4c4557454c2e6a7067, 'Fashion', 43, '2022-11-06 13:30:42.343938', 'mens'),
('Urban Fashion', 300, 'Urban Fashion', 0x557262616e6f2046617368696f6e2e6a7067, 'Fashion', 44, '2022-11-06 13:31:20.152549', 'mens'),
('FIVONA FASHION', 350, 'FIVONA FASHION', 0x46494e49564f2046415348494f4e2e6a7067, 'Fashion', 45, '2022-11-06 13:32:34.126961', 'mens'),
('FIVONA FASHION2', 350, 'FIVONA FASHION', 0x46494e49564f2046415348494f4e322e6a7067, 'Fashion', 46, '2022-11-06 13:32:56.284525', 'mens'),
('FIVONA FASHION3', 350, 'FIVONA FASHION3', 0x46494e49564f2046415348494f4e332e4a5047, 'Fashion', 50, '2022-11-06 13:40:32.364444', 'mens'),
('FIVONA FASHION4', 350, 'FIVONA FASHION', 0x46494e49564f2046415348494f4e342e6a7067, 'Fashion', 51, '2022-11-06 13:40:56.289069', 'mens'),
('boAt Wave Neo smart watch', 1499, '42mm(1.69 inch) HD Display|2.5D Curved Display|550 Nits Brightness|Lightweight: 35 gms Multiple Sports Modes: Walking, Running, Cycling, Climbing, Yoga, Basketball, Football, Badminton, Skipping & Swimming 24H Heart Rate, SpO2 & Stress Monitoring|Sleep Tracker|Music & Camera Control IP68 Dust, Sweat and Splash Resistant|Multiple Watch Face|Call, Text & Social Media Notifications Touchscreen Fitness & Outdoor Battery Runtime: Upto 7 days Services 1 Year Warranty from the Date of Purchase 7 Days Replacement Policy? Cash on Delivery available? Important Note Before first time use, plug the smartwatch to its charger for 5-7 seconds, then remove/detach it and plug it in again. Wait till the watch is more than half charged, before use', 0x626f41742057617665204e656f202e6a7067, 'Electronics ', 57, '2022-11-08 11:03:02.907715', 'watch'),
('Women Printed Pure Cotton Straight Kurta  (Pink)', 280, 'Women Printed Pure Cotton Straight Kurta  (Pink)', 0x6b757274612e6a70672e6a7067, 'Fashion', 63, '2022-11-08 15:28:55.457248', 'womens'),
('Women Printed Viscose Rayon Straight Kurta  (Blue)', 432, 'Women Printed Viscose Rayon Straight Kurta  (Blue)', 0x626c75652d7374796c652d616e67656c2e6a7067, 'Fashion', 64, '2022-11-08 15:33:01.681046', 'womens'),
('Women Printed Kurta  (Yellow, Black)', 499, 'Women Printed Kurta  (Yellow, Black)', 0x6c2d736879616d7374726130352d736879616d737472612e6a7067, 'Fashion', 65, '2022-11-08 15:38:08.124123', 'womens'),
('Women Printed Viscose Rayon Straight Kurta  (Black)', 379, 'Women Printed Viscose Rayon Straight Kurta  (Black)', 0x732d67626b313230382d676f642d626c6573732e6a7067, 'Fashion', 66, '2022-11-08 15:51:39.353237', 'womens'),
('TIRTHANKARA Fabric 3 Seater Sofa  (Finish Color - Cream, Pre-assembled)', 12999, 'TIRTHANKARA Fabric 3 Seater Sofa  (Finish Color - Cream, Pre-assembled)', 0x73796d6d6574726963616c2d37352d637265616d2e6a7067, 'Furniture', 67, '2022-11-08 16:07:30.948343', 'homes'),
('Solis Primus-comfort for all 4X6 size Sofa ', 6936, 'Solis Primus-comfort for all 4X6 size Sofa cum Bed for 2 Person- 2 Seater Chenille Fabric Washable Cover with 2 Cushion(Multi Star Pattern)- Maroon Single Sofa Bed (Finish Color - Maroon Mechanism Type - Fold Out Delivery Condition - Pre-assembled) Double Sofa Bed  (Finish Color - Maroon Mechanism Type - Fold Out Delivery Condition - DIY(Do-It-Yourself))', 0x73696e676c652d35352d38382e6a7067, 'Furniture', 68, '2022-11-08 16:10:02.239407', 'homes');

-- --------------------------------------------------------

--
-- Table structure for table `usercart`
--

CREATE TABLE `usercart` (
  `srno` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercart`
--

INSERT INTO `usercart` (`srno`, `emailid`, `pro_id`) VALUES
(488, 'admin@gmail.com', 65),
(489, 'admin@gmail.com', 64),
(532, 'admin@gmail.com', 46),
(533, 'pratapsuryawanshi007@gmail.com', 37),
(541, 'gs@gmail.com', 41),
(542, 'gs@gmail.com', 34),
(544, 'gs@gmail.com', 57),
(558, 'gs@gmail.com', 38);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `dt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `subdistrict` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zipcode` int(12) NOT NULL,
  `phone` int(99) NOT NULL,
  `alphone` int(99) NOT NULL,
  `email` varchar(50) NOT NULL,
  `verify_token` varchar(99) NOT NULL,
  `reset_token_expiration` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`no`, `username`, `password`, `dt`, `state`, `district`, `subdistrict`, `city`, `zipcode`, `phone`, `alphone`, `email`, `verify_token`, `reset_token_expiration`) VALUES
(1, 'Ganesh', '4545', '0000-00-00 00:00:00.000000', 'maharashtra', 'ahmednagar', 'karjat', '', 414401, 1100001101, 1309580827, 'gs@gmail.com', '', ''),
(22, 'admin', '123', '2022-11-23 15:49:26.000000', 'maharashtra', 'ahmednagar', 'karjat', 'karjat', 414401, 2147483647, 2147483647, 'ganeshsuryawanshi594@gmail.com', '', ''),
(24, 'pratap santosh suryawanshi', '225566', '2023-01-20 21:40:40.000000', 'maharastra', 'chinchvad', 'thane', 'pune', 414402, 2147483647, 211212, 'pratapsuryawanshi007@gmail.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `emailid_2` (`emailid`),
  ADD KEY `emailid` (`emailid`) USING BTREE;

--
-- Indexes for table `myorders`
--
ALTER TABLE `myorders`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `productid` (`productid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `usercart`
--
ALTER TABLE `usercart`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `pro_id` (`pro_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myorders`
--
ALTER TABLE `myorders`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `usercart`
--
ALTER TABLE `usercart`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Database: `mahajanhw_db`
--
CREATE DATABASE IF NOT EXISTS `mahajanhw_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mahajanhw_db`;
--
-- Database: `mahajanh_db`
--
CREATE DATABASE IF NOT EXISTS `mahajanh_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mahajanh_db`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `a_id` int(10) NOT NULL,
  `a_username` varchar(100) NOT NULL,
  `a_password` varchar(100) NOT NULL,
  `a_status` int(10) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT current_timestamp(),
  `UPDATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buy_form`
--

CREATE TABLE `buy_form` (
  `b_name` varchar(50) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `b_email` varchar(100) NOT NULL,
  `b_contact` text NOT NULL,
  `b_addresses` varchar(100) NOT NULL,
  `b_pincode` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `c_id` int(10) NOT NULL,
  `c_title` varchar(200) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_date` datetime NOT NULL,
  `c_mobile` varchar(20) NOT NULL,
  `c_subject` varchar(200) NOT NULL,
  `c_message` varchar(300) NOT NULL,
  `c_status` int(10) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT current_timestamp(),
  `UPDATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `s_id` int(10) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_image` varchar(300) NOT NULL,
  `s_description` varchar(300) NOT NULL,
  `s_status` int(10) NOT NULL,
  `CREATED` datetime NOT NULL DEFAULT current_timestamp(),
  `UPDATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Database: `mydatabase`
--
CREATE DATABASE IF NOT EXISTS `mydatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` int(11) NOT NULL,
  `EMP_NAME` text NOT NULL,
  `SALARY` double NOT NULL,
  `DEPARTMENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `EMP_NAME`, `SALARY`, `DEPARTMENT`) VALUES
(102, 'Chetan', 60000, 'IT'),
(103, 'Mahesh', 40000, 'Salary '),
(104, 'Mayur', 4000000.44, 'IT'),
(108, 'Akash', 10000000, 'Marketing'),
(1122, 'Khushal', 121344, 'IT'),
(1133, 'Jeevan', 99999999, 'Manager'),
(144, 'yash', 76767, 'assdsd');
--
-- Database: `mydbpdo`
--
CREATE DATABASE IF NOT EXISTS `mydbpdo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydbpdo`;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(6) NOT NULL,
  `price` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `name`, `quantity`, `price`) VALUES
(1, 'Khushal Mahajan', 10, 340.00);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(6) UNSIGNED NOT NULL,
  `item_id` int(6) UNSIGNED DEFAULT NULL,
  `quantity` int(6) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mahajanh_db\",\"table\":\"contact\"},{\"db\":\"mahajanh_db\",\"table\":\"slider\"},{\"db\":\"mahajanh_db\",\"table\":\"adminlogin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-03 06:41:00', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'kartik', 'b14de54732679e9a21e028626b71ede6b884a6b1');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(2, 4, 6, 'TAPARIA DEP 08 Taparia Double Ended Open Spanner Set Double Sided Open End Wrench  (Pack of 8)', 356, 1, 'spanner a.webp'),
(4, 5, 6, 'TAPARIA DEP 08 Taparia Double Ended Open Hand Spanner Set Double Sided Open End Wrench  (Pack of 8) ', 356, 1, 'spanner a.webp'),
(5, 5, 8, 'Polo White Polished PVC Plastic Bibcock Water Tap (15mm) Plumbing', 60, 1, 'polo1.jpg'),
(6, 5, 5, 'Quality star shakti High Quality Backpack Pressure Sprayer Manual (NON - BATTERY) For Farm', 1204, 1, 'pump1.webp'),
(8, 6, 7, 'DP 770 ( LED SEARCH LIGHT) Torch  (Black, 16 cm, Rechargeable) Lighting', 383, 1, 't1.webp'),
(9, 6, 6, 'TAPARIA DEP 08 Taparia Double Ended Open Hand Spanner Set Double Sided Open End Wrench  (Pack of 8) ', 356, 1, 'spanner a.webp');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 6, 'Kartik', 'kartikkavade@gmail.com', '9922791962', 'hjhgfjh');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 5, 'khushal', '9922791962', 'khushal6604@gmail.com', 'paytm', 'flat no. Shree Ram Chowk, Mumbai-Nagpur Highway,Ranjangaon , bhg, Sambhajinagar, Maharashtra, India - 423702', 'TAPARIA DEP 08 Taparia Double Ended Open Hand Spanner Set Double Sided Open End Wrench  (Pack of 8)  (356 x 1) - ', 356, '2023-03-27', 'completed'),
(2, 6, 'fjhgnhgn', '9922791962', 'kartikkavade@gmail.com', 'cash on delivery', 'flat no. Shree Ram Chowk, Mumbai-Nagpur Highway,Ranjangaon , yur, Ranjangaon Pol, Maharashtra, India - 423702', 'TAPARIA DEP 08 Taparia Double Ended Open Hand Spanner Set Double Sided Open End Wrench  (Pack of 8)  (356 x 1) - ', 356, '2023-03-27', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(5, 'Quality star shakti High Quality Backpack Pressure Sprayer Manual (NON - BATTERY) For Farm', 'Tank Sprayer\r\nTank Capacity: 16 L\r\nHose Length: 20 cm', 1204, 'pump1.webp', 'pump1a.webp', 'pump1b.webp'),
(6, 'TAPARIA DEP 08 Taparia Double Ended Open Hand Spanner Set Double Sided Open End Wrench  (Pack of 8) ', 'Type: Open End Wrench\r\nOrientation: Double Sided\r\nSize: 6, 12, 13, 18, 7, 20, 10, 11, 9, 14, 16, 17, 19, 22, 8, 15\r\nWrench Type: Set\r\nUsage Type: Home & Professional\r\n', 356, 'spanner a.webp', 'spanner b.webp', 'spanner c.webp'),
(7, 'DP 770 ( LED SEARCH LIGHT) Torch  (Black, 16 cm, Rechargeable) Lighting', 'SMD LED Bulb\r\nRechargeable\r\nPower Consumption: 0.8 W\r\nBattery Type: LEAD ACID\r\nW x L: 8 cm x 16 cm', 383, 't1.webp', 't2.webp', 't3.webp'),
(8, 'Polo White Polished PVC Plastic Bibcock Water Tap (15mm) Plumbing', 'Brand	Polo\r\nRecommended Uses For Product	Kitchen\r\nMounting Type	Wall Mount\r\nFinish Type	Polished\r\nMaterial	Plastic, Polyvinyl Chloride\r\nColour	White', 60, 'polo1.jpg', 'polo2.jpg', 'polo3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'kartik', 'kartikkavade@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(4, 'lokesh', 'lodhilokesh050@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(5, 'khushal', 'khushal6604@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(6, 'kkmahajan', 'kk6604@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(1, 5, 7, 'DP 770 ( LED SEARCH LIGHT) Torch  (Black, 16 cm, Rechargeable) Lighting', 383, 't1.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `stock_management`
--
CREATE DATABASE IF NOT EXISTS `stock_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `stock_management`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
