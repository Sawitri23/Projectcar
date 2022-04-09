-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 02:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borrow_tds1`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrow_id` int(10) NOT NULL,
  `b_date` date NOT NULL,
  `r_date` date NOT NULL,
  `r1_date` date NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_use` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `recieve` varchar(20) NOT NULL,
  `b_status` varchar(20) NOT NULL,
  `r_status` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrow_id`, `b_date`, `r_date`, `r1_date`, `item_name`, `item_use`, `name`, `dept_name`, `email`, `recieve`, `b_status`, `r_status`, `timestamp`) VALUES
(12, '2021-01-18', '2021-01-29', '2021-01-26', 'Microphone C03U', 1, 'ผศ. วิรุจน์ สมโสภณ', 'นวัฒกรรมการพัฒนาอสังหาริมทรัพย์ (RD)', 'suangarch@hotmail.com', 'มารับเอง', 'อนุมัติแล้ว', 'อนุมัติการคืน', '2021-01-26 08:16:33'),
(77, '2022-04-09', '2022-04-15', '0000-00-00', 'Notebook Dell01', 1, 'Borrow Car', 'เทคโนโลยีและสารสนเทศ', 'sawitri@gmail.com', 'มารับเอง', 'รออนุมัติ', 'รออนุมัติการยืม', '2022-04-08 17:56:27'),
(78, '2022-04-09', '2022-04-14', '0000-00-00', 'Toyota Hilux Revo Smart Cab 2.4J 4*2 MY2017', 2, 'Borrow Car', 'เทคโนโลยีและสารสนเทศ', 'sawitri@gmail.com', 'มารับเอง', 'รออนุมัติ', 'รออนุมัติการยืม', '2022-04-09 01:32:27'),
(88, '2022-04-14', '2022-04-15', '2022-04-09', 'Notebook Dell02', 1, 'test1', '', 'test.s@gmail.com', 'มารับเอง', 'อนุมัติแล้ว', 'รออนุมัติการคืน', '2022-04-09 06:54:18'),
(89, '2022-04-10', '2022-04-14', '0000-00-00', 'Toyota Hilux Revo Smart Cab 2.4J 4*2 MY2017', 1, 'test1', '', 'test.s@gmail.com', 'มารับเอง', 'รออนุมัติ', 'รออนุมัติการยืม', '2022-04-09 02:33:50'),
(90, '2022-04-12', '2022-04-15', '0000-00-00', 'Toyota Hilux Revo Smart Cab 2.4J 4*2 MY2017', 1, 'test1', '', 'test.s@gmail.com', 'มารับเอง', 'รออนุมัติ', 'รออนุมัติการยืม', '2022-04-09 02:32:25'),
(91, '2022-04-13', '2022-04-14', '2022-04-09', 'Notebook Compaq', 1, 'test1', '', 'test.s@gmail.com', 'มารับเอง', 'อนุมัติแล้ว', 'อนุมัติการคืน', '2022-04-09 06:58:49'),
(93, '2022-04-09', '2022-04-15', '0000-00-00', 'All-New Toyota Commuter', 1, 'test1', '', 'test.s@gmail.com', 'มารับเอง', 'รออนุมัติ', 'รออนุมัติการยืม', '2022-04-09 06:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'รถกระบะ cap'),
(2, 'รถตู้'),
(5, 'รถกระบะ 4 ประตู'),
(7, 'รถเก๋ง'),
(8, 'รถจักรยานยนต์'),
(9, 'รถ SUV'),
(37, 'รถกระบะตอนเดียว'),
(38, 'รถบรรทุก');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `serialno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `item_total` int(10) NOT NULL,
  `item_use` int(10) NOT NULL,
  `dept_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `item_sum` int(10) NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `item_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `serialno`, `item_name`, `item_total`, `item_use`, `dept_name`, `item_sum`, `status`, `item_img`, `detail`, `datesave`) VALUES
(1, 'กข2257', 'Toyota Hilux Revo Smart Cab 2.4J 4*2 MY2017', 10, 0, '0', 0, 'ว่าง', 'tds171211314920220409_064916.jpg', 'เครื่องยนต์ : ดีเซลเทอร์โบ 2.4 ลิตร\r\nกำลังสูงสุด (PS): 150/3,400\r\nแรงบิดสูงสุด (Nm): 343/1,400 - 2,800\r\nระบบเกียร์ : ธรรมดา 5 จังหวะ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ', '2022-04-09 06:51:14'),
(2, 'กก2467', 'Ford Ranger Open Cab 2.2L XL 4x2 6MT', 6, 0, '0', 0, 'ว่าง', 'tds39426044720220409_093012.jpg', 'เครื่องยนต์: ดีเซลเทอร์โบ 2.2 ลิตร\r\nกำลังสูงสุด (PS): 125/3,700\r\nแรงบิดสูงสุด (Nm): 320/1,600-1,700\r\nระบบเกียร์: ธรรมดา 6 จังหวะ                                                                                                                                        ', '2022-04-09 02:30:12'),
(3, 'ฉจ5617', 'Mazda BT-50 PRO Freestyle Cab 2.2 S', 5, 0, '0', 0, 'ว่าง', 'tds213112278720220409_093133.jpg', 'เครื่องยนต์: ดีเซลเทอร์โบ 2.2 ลิตร\r\nกำลังสูงสุด (PS): 125/3,700\r\nแรงบิดสูงสุด (Nm): 320/1,600-1,700\r\nระบบเกียร์: ธรรมดา 6 จังหวะ                                                                                   ', '2022-04-09 02:31:33'),
(4, 'กด8567', 'All-New Toyota Commuter', 3, 0, '0', 0, 'ว่าง', 'tds103122533620220409_112428.jpg', 'รถตู้ 15 ที่นั่ง ดีไซน์พรีเมี่ยม ทันสมัยมากยิ่งขึ้นด้วยการออกแบบโครงสร้างใหม่ อุปกรณ์ภายนอกครบครัน เครื่องยนต์ดีเซล 4 สูบ ขนาด 2.8 ลิตร เทอร์โบ ให้กำลัง 177 แรงม้า พร้อมแรงบิด 420 นิวตันเมตร มีทั้งรุ่นเกียร์ธรรมดา และเกียร์อัตโนมัติแบบ 6 สปีด                                                                                                           ', '2022-04-09 04:24:28'),
(5, 'บล2647', ' Toyota Majesty ', 3, 0, '0', 0, 'ว่าง', 'tds34693432320220409_112549.jpg', 'ตอบโจทย์การใช้งานของผู้บริหารและครอบครัวขนาดใหญ่ เครื่องยนต์ 4 สูบแถวเรียง DOHC 16 วาล์ว เทอร์โบแปรผัน อินเตอร์คูลเลอร์ เกียร์อัตโนมัติ 6 สปีด พร้อม Sequential Shift                                                                                                                                                                                                                                                                                                                   ', '2022-04-09 04:25:49'),
(85, 'กก5566', 'Isuzu D-MAX V-Cross 2020', 2, 0, '0', 0, 'ไม่ว่าง', 'tds178611778720220409_113152.jpg', 'ภายในมาพร้อมด้วยการตกแต่งคอนโซลหน้าด้วยหนังสังเคราะห์สีน้ำตาล แผงประตูตกแต่งแบบ Piano Black กระจกปรับอัตโนมัติฝั่งคนขับ ให้หน้าจอสัมผัสขนาด 9 นิ้ว และระบบนำทาง รวมทั้งรีโมทสตาร์ทรถ\r\nIsuzu D-MAX V-Cross 2020 มาพร้อมเครื่องยนต์ดีเซลขนาด 3.0 ลิตร ให้กําลังสูงสุด 190 แรงม้า ที่ 3,600 รอบ/นาที แรงบิดสูงสุด 450 นิวตันเมตร ที่ 1,600-2,600 รอบ/นาที จับคู่กับเกียร์ธรรมดา 6 จังหวะ และเกียร์อัตโนมัติ 6 สปีด', '2022-04-09 04:31:52'),
(86, 'ดจ8888', 'Honda Scoopy 2022', 10, 0, 'tds187836697420220409_132207.jpg', 0, '', 'ว่าง', 'ขับขี่สนุกด้วยเครื่องยนต์ eSP ขนาด 110 ซีซี หัวฉีด PGM-FI ให้อัตราเร่งติดมือ และให้อัตราประหยัดน้ำมันสูงถึง 55.6 กม./ลิตร จากการทดสอบภายใต้มาตรฐานไอเสียระดับ 7 โดยสถาบันยานยนต์รถกระบะ cap', '2022-04-09 06:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `tel`, `email`, `level`) VALUES
(1, 'admin', 'admin', 'Borrow Car', '0870795932', 'sawitri@gmail.com', 'admin'),
(82, 'user', '1234', 'Borrow Car', '0870795932', 'sawitri@gmail.com', 'user'),
(118, 'test', '1111', 'test1', '0093564271', 'test.s@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
