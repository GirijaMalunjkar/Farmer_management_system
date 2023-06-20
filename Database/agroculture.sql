-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2022 at 09:56 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agroculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

DROP TABLE IF EXISTS `blogdata`;
CREATE TABLE IF NOT EXISTS `blogdata` (
  `blogId` int(10) NOT NULL AUTO_INCREMENT,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blogId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(19, 'ThePhenom', 'First Blog', '<p>Its Awesome website<img alt=\"wink\" src=\"https://cdn.ckeditor.com/4.8.0/full/plugins/smiley/images/wink_smile.png\" style=\"height:23px; width:23px\" title=\"wink\" /></p>\r\n', '2018-02-25 13:09:41', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

DROP TABLE IF EXISTS `blogfeedback`;
CREATE TABLE IF NOT EXISTS `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(19, 'Mast yarr', 'ThePhenom', 'profile0.png', '2018-02-25 13:09:54'),
(19, 'hey this is comment from pratik', 'pratik', 'profile0.png', '2022-05-07 12:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE IF NOT EXISTS `buyer` (
  `bid` int(100) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) NOT NULL,
  `busername` varchar(255) NOT NULL,
  `bpassword` varchar(255) NOT NULL,
  `bhash` varchar(255) NOT NULL,
  `bemail` varchar(200) NOT NULL,
  `bmobile` varchar(50) NOT NULL,
  `baddress` varchar(255) NOT NULL,
  `bactive` int(100) NOT NULL DEFAULT '0',
  `picExt` varchar(100) NOT NULL,
  `picStatus` varchar(100) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `bname`, `busername`, `bpassword`, `bhash`, `bemail`, `bmobile`, `baddress`, `bactive`, `picExt`, `picStatus`) VALUES
(2, 'Pratik Buyer', 'pratikbuyer', '$2y$10$BvKuXShUMAYVbMakZZ3gweBIwUJzCRUQZ2mQIzJ4ymKYaies1.xAG', '07871915a8107172b3b5dc15a6574ad3', 'pratikshirsath94@gmail.com', '8007257054', 'Aurangabad highway', 0, 'jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

DROP TABLE IF EXISTS `farmer`;
CREATE TABLE IF NOT EXISTS `farmer` (
  `fid` int(255) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT '0',
  `frating` int(11) NOT NULL DEFAULT '0',
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fid` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(8, 'Pratik Farmer', 'Pratik Farmer', '$2y$10$K4jP22M6UfqC96YFgbmF/OpU568dwfhfplSEEzWPZo1l30TXxVtWm', '218a0aefd1d1a4be65601cc6ddc1520e', 'pratikshirsath93@gmail.com', '8007257053', 'Aurangabad highway', 0, 0, 'jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

DROP TABLE IF EXISTS `fproduct`;
CREATE TABLE IF NOT EXISTS `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL AUTO_INCREMENT,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(3, 27, 'Mango', 'Fruit', '<p>Mango raseela</p>\r\n', 500, 'Mango3.jpeg', 1),
(3, 28, 'Ladyfinger', 'Vegetable', '<p>Its veggie</p>\r\n', 1000, 'Ladyfinger3.jpg', 1),
(3, 29, 'Bajra', 'Grains', '<p>bajre di rti</p>\r\n', 400, 'Bajra3.jpg', 1),
(3, 30, 'Banana', 'Fruit', '<p>Jalgaon banana</p>\r\n', 400, 'Banana3.jpg', 1),
(5, 31, 'Methi', 'Vegetable', '<h1>Amchi methi</h1>\r\n', 100, 'Methi5.jpg', 1),
(8, 32, 'Apples', 'Fruit', '<p>Red apples from Kashmir</p>\r\n', 100, 'Apples8.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

DROP TABLE IF EXISTS `likedata`;
CREATE TABLE IF NOT EXISTS `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL,
  KEY `blogId` (`blogId`),
  KEY `blogUserId` (`blogUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedata`
--

INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(19, 3),
(19, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

DROP TABLE IF EXISTS `mycart`;
CREATE TABLE IF NOT EXISTS `mycart` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`pid`, `name`, `rating`, `comment`) VALUES
(32, 'Pratik Buyer', 5, 'Wow');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(1, 3, 28, 'sa,j,cns', 'sajc', 'sajch', 'kmendki98@gmail.com', 'sacu', 'ckaskjc'),
(2, 8, 32, 'Pratik', 'Mumbai', '8007257054', 'pratikshirsath93@gmail.com', '422003', 'Aurangabad highway'),
(3, 2, 32, 'Pratik Buyer', 'Mumbai', '8007257054', 'pratikshirsath94@gmail.com', '422003', 'Aurangabad highway');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
