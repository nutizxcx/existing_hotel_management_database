-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2020 at 02:02 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_existing_hostel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_history`
--

CREATE TABLE `booking_history` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `booking_date_and_time` datetime NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `guest_amount` tinyint(4) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking_history`
--

INSERT INTO `booking_history` (`email`, `booking_date_and_time`, `checkin_date`, `checkout_date`, `guest_amount`, `hotel_id`, `total_payment`) VALUES
('nut.pasit@hotmail.com', '2020-02-03 12:20:54', '2020-02-05', '2020-02-06', 2, 1, 7651);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_detail`
--

CREATE TABLE `hotel_detail` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `tel` text COLLATE utf8_unicode_ci NOT NULL,
  `province` text COLLATE utf8_unicode_ci NOT NULL,
  `district` text COLLATE utf8_unicode_ci NOT NULL,
  `latitiude` double NOT NULL,
  `longitude` double NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price_per_night` int(11) NOT NULL,
  `max_guest` tinyint(4) NOT NULL,
  `bedroom_amount` tinyint(4) NOT NULL,
  `bed_amount` tinyint(4) NOT NULL,
  `bathroom_amount` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_detail`
--

INSERT INTO `hotel_detail` (`hotel_id`, `hotel_name`, `address`, `tel`, `province`, `district`, `latitiude`, `longitude`, `description`, `price_per_night`, `max_guest`, `bedroom_amount`, `bed_amount`, `bathroom_amount`) VALUES
(1, 'โรงแรม แชงกรี-ลา กรุงเทพฯ', '89 ซอย วัดสวนพูล แขวง บางรัก เขตบางรัก กรุงเทพมหานคร 10500', '022367777', 'กรุงเทพมหานคร', 'บางรัก', 13.719478, 100.513667, 'ที่พักระดับพรีเมียมอยู่ริมแม่น้ำ มีร้านอาหารให้เลือกถึง 9 แห่ง รวมถึงสระว่ายน้ำกลางแจ้ง สนามเทนนิส และสปาหรู', 7651, 2, 1, 1, 1),
(2, 'โรงแรมนารายณ์ (Narai Hotel)', '222 ถนน สีลม แขวง สุริยวงศ์ เขต บางรัก กรุงเทพมหานคร, สีลม, กรุงเทพ, ประเทศไทย, 10500', '-', 'กรุงเทพมหานคร', 'บางรัก', 13.725559, 100.524492, 'อยู่แถวๆสีลม', 1211, 2, 1, 1, 1),
(3, 'โรงแรมชีค อิสตานา เชียงใหม่', '10/1 หมู่ 3 ต.ป่าแดด อ.เมือง เชียงใหม่, ริมแม่น้ำเชียงใหม่, เชียงใหม่, ประเทศไทย, 50100', '-', 'เชียงใหม่', 'เมือง', 18.754276, 98.993413, 'ห้องพักแต่ละห้องของที่นี่ ประกอบไปด้วย อ่างอาบน้ำ, ฝักบัว, โทรทัศน์จอแอลซีดี/จอพลาสม่า โรงแรมในเชียงใหม่แห่งนี้มี บริการซักรีด/ซักแห้ง, คอฟฟี่ช็อป, ร้านอาหาร, อำนวยความสะดวกคนพิการ ไว้คอยสร้างความสุขให้แก่การเดินทางของลูกค้า ผู้เข้าพักที่สนใจในการออกกำลังกายหรือผ่อนคลาย ภายในโรงแรมมี สระว่ายน้ำกลางแจ้ง, สวน, บริการนวด, ห้องฟิตเนส ไว้รองรับความต้องการ โรงแรมแห่งนี้ให้ความสำคัญกับความรู้สึกของลูกค้าเป็นหลัก คุณจึงมั่นใจได้ถึงความสะดวกสบายและความผ่อนคลาย ', 2561, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facilities`
--

CREATE TABLE `hotel_facilities` (
  `hotel_id` int(11) NOT NULL,
  `facility` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_facilities`
--

INSERT INTO `hotel_facilities` (`hotel_id`, `facility`) VALUES
(1, 'air condition'),
(1, 'elevator'),
(1, 'fridge'),
(1, 'tv'),
(1, 'wifi');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_free_day`
--

CREATE TABLE `hotel_free_day` (
  `date` date NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `available_rooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_free_day`
--

INSERT INTO `hotel_free_day` (`date`, `hotel_id`, `available_rooms`) VALUES
('2020-02-05', 1, 1),
('2020-02-05', 2, 4),
('2020-02-05', 3, 5),
('2020-02-06', 1, 1),
('2020-02-06', 2, 4),
('2020-02-06', 3, 5),
('2020-02-07', 1, 2),
('2020-02-07', 2, 0),
('2020-02-07', 3, 5),
('2020-02-08', 1, 4),
('2020-02-08', 3, 5),
('2020-02-09', 1, 5),
('2020-02-09', 3, 5),
('2020-02-10', 1, 5),
('2020-02-10', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_pic`
--

CREATE TABLE `hotel_pic` (
  `hotel_id` int(11) NOT NULL,
  `pic_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_pic`
--

INSERT INTO `hotel_pic` (`hotel_id`, `pic_url`) VALUES
(1, '../../assets/SL_bkk1.jpg'),
(1, '../../assets/SL_bkk2.jpg'),
(1, '../../assets/SL_bkk3.jpg'),
(1, '../../assets/SL_bkk4.jpg'),
(1, '../../assets/SL_bkk5.jpg'),
(2, '../../assets/NR_bkk1.jpg'),
(2, '../../assets/NR_bkk2.jpg'),
(2, '../../assets/NR_bkk3.jpg'),
(2, '../../assets/NR_bkk4.jpg'),
(2, '../../assets/NR_bkk5.jpg'),
(3, '../../assets/SI_cgm1.jpg'),
(3, '../../assets/SI_cgm2.jpg'),
(3, '../../assets/SI_cgm3.jpg'),
(3, '../../assets/SI_cgm4.jpg'),
(3, '../../assets/SI_cgm5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` text COLLATE utf8_unicode_ci NOT NULL,
  `lastName` text COLLATE utf8_unicode_ci NOT NULL,
  `birthDay` date NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `tel` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`email`, `firstName`, `lastName`, `birthDay`, `password`, `tel`) VALUES
('nut.pasit@hotmail.com', 'พสิษฐ์', 'หาญกิจพงษ์พันธ์', '1999-08-13', '1234', '0850544516');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD PRIMARY KEY (`email`,`booking_date_and_time`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `hotel_detail`
--
ALTER TABLE `hotel_detail`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD PRIMARY KEY (`hotel_id`,`facility`);

--
-- Indexes for table `hotel_free_day`
--
ALTER TABLE `hotel_free_day`
  ADD PRIMARY KEY (`date`,`hotel_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `hotel_pic`
--
ALTER TABLE `hotel_pic`
  ADD PRIMARY KEY (`hotel_id`,`pic_url`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel_detail`
--
ALTER TABLE `hotel_detail`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD CONSTRAINT `booking_history_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user_account` (`email`),
  ADD CONSTRAINT `booking_history_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`hotel_id`);

--
-- Constraints for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD CONSTRAINT `hotel_facilities_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`hotel_id`);

--
-- Constraints for table `hotel_free_day`
--
ALTER TABLE `hotel_free_day`
  ADD CONSTRAINT `hotel_free_day_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`hotel_id`);

--
-- Constraints for table `hotel_pic`
--
ALTER TABLE `hotel_pic`
  ADD CONSTRAINT `hotel_pic_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`hotel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
