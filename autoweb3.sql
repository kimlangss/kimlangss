-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 03:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoweb3`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(250) NOT NULL,
  `Metatitle` varchar(250) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `Name`, `Metatitle`, `Image`) VALUES
(1, 'News', 'news', NULL),
(2, 'Sports', 'sports', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `ID` int(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `MetaTitle` varchar(250) NOT NULL,
  `Image` varchar(250) NOT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT 1,
  `CreateDate` float NOT NULL,
  `CreateBy` varchar(50) NOT NULL DEFAULT 'TuanSoai',
  `MetaKeywords` varchar(250) NOT NULL,
  `MetaDescriptions` varchar(250) NOT NULL,
  `ViewCount` int(11) NOT NULL DEFAULT 1618,
  `Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `content`
--
DELIMITER $$
CREATE TRIGGER `tudongthemngaythang4` BEFORE INSERT ON `content` FOR EACH ROW BEGIN
	SET NEW.CreateDate = UNIX_TIMESTAMP();  
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `content2`
--

CREATE TABLE `content2` (
  `Name` varchar(250) NOT NULL,
  `MetaTitle` varchar(500) NOT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT 1,
  `CreateBy` varchar(50) NOT NULL DEFAULT 'TuanSoai',
  `MetaKeywords` varchar(250) NOT NULL,
  `MetaDescriptions` varchar(250) NOT NULL,
  `ViewCount` int(11) NOT NULL DEFAULT 1618,
  `Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `infomationweb`
--

CREATE TABLE `infomationweb` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `domain_name` text DEFAULT NULL,
  `domain` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `gmail` text DEFAULT NULL,
  `google_adsence` text DEFAULT NULL,
  `google_search_console` text DEFAULT NULL,
  `google_analytics` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` varchar(250) NOT NULL,
  `Link` varchar(250) NOT NULL,
  `MetaKeywords` varchar(250) NOT NULL,
  `MetaDescription` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `Text`, `Link`, `MetaKeywords`, `MetaDescription`) VALUES
(1, 'Home', '/Trang_chu', 'test', 'test'),
(2, 'LASTEST', 'lastest', 'Tin tức mới nhất trong ngày', 'Tin tức mới nhất trong ngày'),
(3, 'NEWS', 'news', 'Tin tức thế giới hot nhất, mới nhất', 'Tin tức thế giới hot nhất, mới nhất'),
(4, 'SPORTS', 'sports', 'Cập nhật liên tục tin tức về thể thao', 'Cập nhật liên tục tin tức về thể thao');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `content2`
--
ALTER TABLE `content2`
  ADD UNIQUE KEY `constr_meta` (`MetaTitle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
