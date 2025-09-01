-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 06:40 PM
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
-- Database: `shop_db`
--

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
(1, 6, 'Kartik', 'kartikkavade@gmail.com', '9922791962', 'hjhgfjh'),
(2, 5, 'Bhushan Bari', 'bari12@gmail.com', '9123456789', 'I&#39;ve noticed a significant improvement in your performance, behavior, and skills since your last performance review.'),
(3, 5, 'Manoj Chaudhari', 'manoj@gmail.com', '9158675698', 'I&#39;ve noticed a significant improvement in your performance, behavior, and skills since your last performance review.');

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
(2, 6, 'fjhgnhgn', '9922791962', 'kartikkavade@gmail.com', 'cash on delivery', 'flat no. Shree Ram Chowk, Mumbai-Nagpur Highway,Ranjangaon , yur, Ranjangaon Pol, Maharashtra, India - 423702', 'TAPARIA DEP 08 Taparia Double Ended Open Hand Spanner Set Double Sided Open End Wrench  (Pack of 8)  (356 x 1) - ', 356, '2023-03-27', 'completed'),
(3, 5, 'Akshay Rathod', '9678985643', 'akrathod123@gmail.com', 'cash on delivery', 'flat no. 02 Gulmohar Society , Near  Sai baba mandir , mira-bhayandar, Mumbai, Maharashtra, India  - 431103', 'ALTON GRC3705 Brass Bib Cock Short Body with Wall Flange, Chrome Finish(Plumbing) (899 x 1) - ', 899, '2023-05-05', 'pending'),
(4, 5, 'Raj Sali', '8734563411', 'raj@gmail.com', 'cash on delivery', 'flat no. Madakya Maruti chauk, Near Bus stand , Parola, Maharashtra, India - 425111', 'Kohler 75563IN-CP ABS Overhead Shower, Silver, Chrome(Plumbing) (899 x 1) - ', 899, '2023-05-06', 'pending');

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
(8, 'Polo White Polished PVC Plastic Bibcock Water Tap (15mm) Plumbing', 'Brand	Polo\r\nRecommended Uses For Product	Kitchen\r\nMounting Type	Wall Mount\r\nFinish Type	Polished\r\nMaterial	Plastic, Polyvinyl Chloride\r\nColour	White', 60, 'polo1.jpg', 'polo2.jpg', 'polo3.jpg'),
(9, 'ALTON GRC3705 Brass Bib Cock Short Body with Wall Flange, Chrome Finish(Plumbing)', 'Brand	ALTON\r\nMounting Type	Wall Mount\r\nFinish Type	Polished\r\nMaterial	Brass\r\nColour	Silver\r\nNumber of Handles	1\r\nIncluded Components	1-Piece Bib Cock, 1-Piece Wall Flange', 899, 'stilltap1.jpg', 'stilltap2.jpg', 'stilltap3.jpg'),
(10, 'ALTON ESA9205 Brass Bib Cock Short Body with Wall Flange, Chrome Finish(Plumbing)', 'Brand	ALTON\r\nMounting Type	Wall Mount\r\nFinish Type	Polished\r\nMaterial	Brass\r\nColour	Silver\r\nNumber of Handles	1\r\nIncluded Components	1-Piece Bib Cock, 1-Piece Wall Flange\r\nHandle Type	Knob\r\nStyle	Modern\r\nInstallation Type	Wall Mounted\r\n', 950, 'tap1.jpg', 'tap2.jpg', 'tap3.jpg'),
(11, 'ALTON QBA9095 Brass Wall Mixer With 3-Function  Shower, SS-304 Grade 1.5 Meter Tube (Plumbing)', 'Brand	ALTON\r\nColour	CHROME\r\nMaterial	Brass\r\nFinish Type	Chrome\r\nNumber of Handles	3', 3499, 'Mixer1.jpg', 'mixer2.jpg', 'mixer3.jpg'),
(12, 'Blueshark Opal Brass 2 in 1 Wall Mixer Tap Faucet Hot & Cold with L Bend Wall Mounted (Plumbing)', 'Brand	Blueshark\r\nRecommended Uses For Product	Bathroom\r\nMounting Type	Wall Mount\r\nFinish Type	Polished\r\nMaterial	Brass\r\nColour	Chrome\r\n', 2299, 'bMixer1.jpg', 'bmixer2.jpg', 'bmixer3.jpg'),
(13, 'Kohler 75563IN-CP ABS Overhead Shower, Silver, Chrome(Plumbing)', 'Brand	Kohler\r\nShape	Round\r\nMaterial	Acrylonitrile Butadiene Styrene\r\nSetting Type	Massage\r\nInstallation Type	Wall Mounted\r\nColour	Chrome\r\nProduct Dimensions	16.8L x 15.3W Centimeters\r\n', 899, 'Shower1.jpg', 'Shower2.jpg', 'Shower3.jpg'),
(14, 'PESCA Stainless Steel Combo of Ultra Slim Shower 6X6 (Plumbing)', 'Brand	PESCA\r\nShape	Square\r\nMaterial	Stainless Steel\r\nFinish Type	Polished\r\nSetting Type	Rain, Full Body\r\nInstallation Type	Ceiling Mounted, Wall Mounted\r\nColour	Metallic\r\n', 599, 'pShower1.jpg', 'pShower2.jpg', 'pShower3.jpg'),
(15, 'ALTON SHR20910 ABS Health Faucet with SS-304 Grade 1.25 Meter (Jet Spray for Toilet)(Plumbing)', 'Brand	ALTON\r\nRecommended Uses For Product	Bathroom\r\nMounting Type	Wall Mount\r\nFinish Type	Polished\r\nMaterial	ABS + SS-304 Grade\r\nColour	Silver', 799, 'Jet1.jpg', 'jet2.jpg', 'jet3.jpg'),
(16, 'Stainless Steel Full Thread Waste Coupling 4&#34; INCH for Wash Basin,Drain Out let System (Plumbing', 'This SMARTBUYER waste coupling high loading capacity up to 15 kg, no easily falling down to the floor it is reusable, a drain valve - 8 cm drain valve atomizer bathroom sink faucet about pop-up ', 311, 'jali1.jpg', 'jali2.jpg', 'jali3.jpg'),
(17, '1/2inch(15mm) Supreme UPVC High Pressure ASTM Threaded Pipes(Plumbing)', 'Length of Pipe	\r\nAs required\r\nColor	\r\nWhite\r\nMaterial	\r\nUPVC\r\nUsage/Application	\r\nPlumbing\r\nBrand	\r\nSupreme', 120, 'pipe1.jpeg', 'pipe2.jpeg', 'pipe3.webp'),
(18, '1inch(32mm) Supreme UPVC High Pressure ASTM Threaded Pipes(Plumbing)', 'Length of Pipe 3m\r\nColor	\r\nWhite\r\nMaterial	\r\nUPVC\r\nUsage/Application	\r\nPlumbing\r\nBrand	\r\nSupreme', 300, 'pipe.jpg', 'pipe2.jpeg', 'pipe3.webp'),
(19, '3/4inch Supreme UPVC High Pressure ASTM Threaded Pipes(Plumbing)', 'Length of Pipe 3m\r\nColor	\r\nWhite\r\nMaterial	\r\nUPVC\r\nUsage/Application	\r\nPlumbing\r\nBrand	\r\nSupreme', 210, 'pipe1.jpeg', 'pipe2.jpeg', 'pipe3.webp'),
(20, '3/4inch(20mm)Supreme Lifeline CPVC Hot And Cold Water System', 'Usage/Application	Plumbing\r\nCrack Resistance	Yes\r\nCrush Resistant	Yes\r\nEligible For Hot And Cold Water	Yes\r\nColor	Off-White\r\nMaterial	CPVC\r\nBrand	Supreme\r\nCountry of Origin	Made in India', 180, 'cpvcpipe1.webp', 'cpvcpipe2.jpg', 'cpvcpipe3.jpg'),
(21, 'Black HDPE Agriculture Pipe 75 mm (90 Meter)(Farm)', 'Brand	Generic\r\nMaterial	High Density Polyethylene (HDPE)\r\nColour	Black\r\nItem Dimensions LxWxH	9 x 0.5 x 1 Centimeters', 10799, 'hdpe1.webp', 'hdpe1.webp', 'hdpe1.webp'),
(22, 'OM Rain Pipe (100 Meters, 40 MM) with Accessories(Farm)', 'Brand	Om\r\nColour	Black\r\nItem Dimensions LxWxH	33 x 33 x 9 Centimeters\r\n', 1599, 'rain1.jpg', 'rain2.jpg', 'rain3.jpg'),
(23, 'SVE 16mm Inline Drip Irrigation Pipe Dripper at Each 40cm 4 Liter 16mm Inline 300 Meter Length(Farm)', 'Brand	SVE SIDDHI VINAYAK ENTERPRISES\r\nMaterial	Low Density Polyethylene (LDPE)\r\nColour	Black\r\nItem Dimensions LxWxH	10 x 12 x 10 Centimeters', 2049, 'drip1.jpg', 'drip2.jpg', 'drip3.jpg'),
(24, 'CINAGRO Plastic Drip Irrigation  16 mm Straight Connector with Tap (Black) -50 Pieces(Farm)', 'Size	50 Pieces\r\nMaterial	Plastic\r\nBrand	CINAGRO\r\nColour	Black\r\nItem Dimensions LxWxH	42 x 21 x 8 Centimeters\r\nConnector Type	Barb', 259, 'tc1.jpg', 'tc2.jpg', 'tc3.jpg'),
(25, 'JALVARSHA 40mm UV Coated Agriculture Rain Pipe Length- 100meter (Farm)', 'rain\r\nrain pipe\r\nFlat Rain Pipe\r\ndrip irrigation', 999, 'gpipe1.jpg', 'gpipe2.jpg', 'gpipe3.jpg'),
(26, ' 3&#34;inch (90mm) Supreme UPVC Pressure Pipes(Farm)', 'Item Code\r\nPPA1QF6M090L\r\nSize (mm)\r\n90\r\nLength\r\n6mtr\r\nSocket Type\r\nQ/F\r\nPressure Class (Kgf/cm2)\r\n2.5', 799, 'pvc pipe1.jpg', 'pvc pipe1.jpg', 'pvc pipe1.jpg'),
(27, ' 4&#34;inch (110mm) Supreme UPVC Pressure Pipes(Farm)', 'Item Code\r\nPPA1QF6M0110L\r\nSize (mm)\r\n110\r\nLength\r\n6mtr\r\nSocket Type\r\nQ/F\r\nPressure Class (Kgf/cm2)\r\n2.5', 1199, 'pvc pipe1.jpg', 'pvc pipe1.jpg', 'pvc pipe1.jpg'),
(28, ' 2.5&#34;inch (75mm) Supreme UPVC Pressure Pipes(Farm)', 'Item Code\r\nPPA1QF6M075L\r\nSize (mm)\r\n75\r\nLength\r\n6mtr\r\nSocket Type\r\nQ/F\r\nPressure Class (Kgf/cm2)\r\n2.5', 600, 'pvc pipe1.jpg', 'pvc pipe1.jpg', 'pvc pipe1.jpg'),
(29, ' 2&#34;inch (63mm) Supreme UPVC Pressure Pipes(Farm)', 'Item Code\r\nPPA1QF6M063L\r\nSize (mm)\r\n63\r\nLength\r\n6mtr\r\nSocket Type\r\nQ/F\r\nPressure Class (Kgf/cm2)\r\n2.5', 400, 'pvc pipe1.jpg', 'pvc pipe1.jpg', 'pvc pipe1.jpg'),
(30, 'Sardar 4 Inch Stainless Steel Grey Baby Latch Mortise Door Lock Set Home Hardware', 'This Sardar 4 Inch Stainless Steel Grey Baby Latch Mortise Door Lock Set is perfect for keeping your little one safe and secure! The lock is made of durable stainless steel and is grey in color, making it perfect for any door. The latch is easy to use and install, making it a great choice for any home.', 399, 'lock1.jpg', 'lock2.jpg', 'lock3.jpg'),
(31, 'Onmax 90mm Steel Round Shutter Lock with 3 Pcs Keys for  Gate, Office, Home Hardware  (Pack 2)', 'Onmax 90mm Steel Round Shutter Lock with 3 Pcs Keys for Main Gate, Office, Home & Shop, SRSL90 (Pack of 2) is a premium quality product from Onmax. Moglix is a well-known ecommerce platform for qualitative range of Shutter locks. All Onmax 90mm Steel Round Shutter Lock with 3 Pcs Keys for Main Gate, Office, Home & Shop, SRSL90 (Pack of 2)', 349, 'l1.jpg', 'l2.jpg', 'l3.jpg'),
(32, 'Atom WZA006 12 Inch Zinc Aldrop (Pack of 2) Home Hardware', 'Atom WZA006 12 Inch Zinc Aldrop (Pack of 2) is a premium quality product from Atom. Moglix is a well-known ecommerce platform for qualitative range of Aldrops. All Atom WZA006 12 Inch Zinc Aldrop (Pack of 2) are manufactured by using quality assured material and advanced techniques, which make them up to the standard in this highly challenging field. ', 1999, 'd1.jpg', 'd2.jpg', 'd3.jpg'),
(33, 'Bosch GWS 800 Corded Electric Angle Grinder, M10, 800W, 100 mm Power Tools', 'Brand	Bosch\r\nItem Dimensions LxWxH	25.9 x 22 x 10.3 Centimeters\r\nStyle	GWS 800\r\nPower Source	Corded Electric\r\nColour	Blue\r\n', 2599, 'p1.jpg', 'p2.jpg', 'p3.jpg'),
(34, 'Bosch GDC 141 Corded Electric Diamond Tile/Marble Cutter, Power Tools', 'Brand	Bosch\r\nPower Source	Corded Electric\r\nIncluded Components	Package content: Bosch GDC 141 Professional Diamond Tile Cutter (06013A41F0), Hex key 1 x hexagon socket wrench, Cardboard boxPackage content: Bosch GDC 141 Professional Diamond Tile Cutter (06013A41F0), Hex key 1 x hexagon socket wrench, Cardboard box\r\nAmperage	5 Amps\r\nItem Weight	2930 Grams\r\nSpeed	12000 RPM', 3599, 'c1.jpg', 'c2.jpg', 'c3.jpg'),
(35, 'GOLDEN BULLET HI93 Impact Drill- Reversible Drill -600W 0-2800rpm -13mm Power Tools', 'Brand	Golden Bullet\r\nPower Source	Corded Electric\r\nMaximum Rotational Speed	2800 deg/sec\r\nVoltage	230 Volts\r\nAmperage	5 Amps\r\nMaximum Chuck Size	13 Millimeters', 1599, 'drill1.jpg', 'drill2.jpg', 'drill3.jpg'),
(36, 'Bosch Hand Tool Kit (Blue, 12 Pieces)', 'Material: Plastic, Color: Blue, This measuring tape with three lock/stop modes provides easy usage\r\nItem Dimension: 253mm x 280mm x 45mm\r\nPackage Contents: 1-Piece Screwdriver, 1-Piece Hammer, 7-Pieces Screwdriver Bits, 1-Piece Plier, 1-Piece Wrench and 1-Piece Measuring Tape\r\nNo warranty is applicable on this product\r\nCompact kit', 1199, 'h1.jpg', 'h2.jpg', 'h3.jpg'),
(37, 'ACHRO Combo Pack of 3 Hand Tool Kits Set for Home (Contains 8 Inch Adjustable Spanner', 'Colour	Regular Packing\r\nBrand	ACHRO\r\nMaterial	Chrome Vanadium Steel, Alloy Steel, Cast Iron, Carbon Steel, Iron\r\nItem Dimensions LxWxH	25.4 x 10.2 x 7.6 Centimeters\r\nItem Package Quantity	3', 699, 'ht1.jpg', 'ht2.jpg', 'ht3.jpg'),
(38, 'Clapone Screwdriver and Multi-Purpose 46 Pcs Combination Hand Tool Kit and Case Precision Socket', 'Brand	CLAPONE\r\nNumber of Items	1\r\nHead Style	Square\r\nMaterial	Chrome Vanadium Steel\r\nColour	Silver\r\nRecommended Uses For Product	Repairers, Construction Workers, Mechanics, Automotive Vehicle Repairs,', 799, 'htt1.jpg', 'htt2.jpg', 'htt3.jpg'),
(39, 'Bajaj Frore 1200 mm Ceiling Fan (Brown) Electricals', 'Brand	Bajaj\r\nColour	Brown\r\nElectric fan design	Ceiling Fan\r\nPower Source	Corded Electric\r\nStyle	Frore\r\nProduct Dimensions	3.2D x 54W x 14.2H Centimeters\r\nRoom Type	Living Room, Bedroom\r\nSpecial Feature	NO, High Velocity\r\nRecommended Uses For Product	Indoor\r\nMounting Type	Downrod Mount\r\n', 1199, 'f1.jpg', 'f2.jpg', 'f3.jpg'),
(40, 'Wipro Smartlife Deluxe  Electricals Dry Iron - 1000W', 'Brand	Wipro\r\nSpecial Feature	Scratch Resistant\r\nWattage	1000 Watts\r\nItem Dimensions LxWxH	10 x 2 x 2.7 Centimeters\r\nStyle	Adjustable', 599, 'i1.jpg', 'i2.jpg', 'i3.jpg'),
(41, 'L&T (LTLK) Alloy Steel Motor Starter DOL MK Series - 6-10 Ampere Electricals', 'Brand	Tl\r\nMaterial	Alloy Steel\r\nItem Weight	600 Grams\r\nItem Dimensions LxWxH	9 x 6 x 9 Centimeters\r\nAmperage	10 Amps', 1599, 's1.jpg', 's2.jpg', 's3.jpg'),
(42, 'Microtail Fully Automatic Water Level Controller Plastic ABS with 3 Sensors, Electricals', 'Fully automatic water level controller single phase\r\nAnti corrosion stainless sensor\r\nContact capacity : 15 A\r\nauto, manual switch\r\nTank water level indication, pump on indication', 699, 'a1.jpg', 'a2.jpg', 'a3.jpg'),
(43, 'Fire Fllow V-9 Domestic Openwell Horizontal Submersible Pump HP: 7.5 Three Phase Electricals', 'Brand	Fire Fllow\r\nColour	Multicolour\r\nMaterial	Mixed Materials\r\nStyle	Submersible\r\nPower Source	Corded Electric', 11999, 'm1.jpg', 'm1.jpg', 'm1.jpg'),
(44, 'Kirloskar Chotu 0.5HP Domestic Electricals Water Motor Pump (Multicolour)', 'Brand	Kirloskar\r\nColour	Multicolour\r\nMaterial	Metal\r\nStyle	Safety\r\nItem Dimensions LxWxH	20 x 22 x 22 Centimeters', 2599, 'sm1.jpg', 'sm2.jpg', 'sm3.jpg'),
(45, 'Gesto 35 Feet Long LED Power Pixel Serial String Light, 360 Degree Lighting', 'Colour	12M STRING\r\nBrand	Gesto\r\nLight Source Type	LED\r\nPower and Plug Description	Corded Electric\r\nLight Colour	Warm white\r\nTheme	Christmas', 159, 'li2.jpg', 'li1.jpg', 'li3.jpg'),
(46, 'Halonix 20-watt LED Batten/Tubelight | Streak square 4-ft LED  Cool day light, Pack of 2 Lighting', '\r\nBrand	Halonix\r\nLight Type	LED\r\nSpecial Feature	Energy Efficient\r\nWattage	20 Watts\r\nBulb Base	B22D\r\nLight Colour	White\r\nNet Quantity	2 count\r\nColour Temperature	6500 Kelvin\r\nNumber of Items	1\r\nLuminous Flux	2200 Lumen\r\n', 459, 'tu1.jpg', 'tu2.jpg', 'tu1.jpg'),
(47, 'X4cart 40 Led 18 Meter 60 Feet Pixel String Fairy Lights Diwali Festival Lighting', 'Colour	X-40 LED Dhoom Light Red\r\nBrand	X4cart\r\nSpecial Feature	Energy Efficient, Dimmable, Shatterproof, Adjustable, Water Resistant\r\nLight Source Type	LED\r\nPower and Plug Description	Corded Electric\r\nLight Colour	Red', 259, 'lig1.jpg', 'lg2.jpg', 'lig3.jpg'),
(48, 'Bathla Advance 4-Step Foldable Aluminium Ladder Household Essentials', 'Material	Aluminium\r\nBrand	Bathla\r\nProduct Dimensions	47W x 146H Centimeters\r\nColour	SILVER+ORANGE\r\nSpecial Feature	Foldable', 2999, 'hh1.jpg', 'hh2.jpg', 'hh3.jpg'),
(49, 'SAMANEA TR-F18 Stainless Steel Folding Towel Rack  | Household Essentials', 'Colour	Silver\r\nMaterial	Stainless Steel\r\nProduct Dimensions	48L x 34W x 5H Centimeters\r\nFinish Type	Chrome\r\nBrand	SAMANEA\r\nInstallation Type	Wall-Mounted\r\nShape	Round\r\nItem Weight	950 Grams\r\n', 999, 'tt2.jpg', 'tt1.jpg', 'tt3.jpg');

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
(3, 5, 7, 'DP 770 ( LED SEARCH LIGHT) Torch  (Black, 16 cm, Rechargeable) Lighting', 383, 't1.webp'),
(4, 5, 20, '3/4inch(20mm)Supreme Lifeline CPVC Hot And Cold Water System', 180, 'cpvcpipe1.webp'),
(5, 5, 30, 'Sardar 4 Inch Stainless Steel Grey Baby Latch Mortise Door Lock Set Home Hardware', 399, 'lock1.jpg');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
