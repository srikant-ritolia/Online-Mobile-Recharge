-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2012 at 01:51 PM
-- Server version: 5.1.58
-- PHP Version: 5.3.6-13ubuntu3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `OMR`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE IF NOT EXISTS `offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `offerdetail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `operator`, `state`, `amount`, `offerdetail`) VALUES
(1, 'airtel', 'karnataka', '50', 'get talktime of Rs 100'),
(5, 'vodafone', 'tatadocomo', '43', 'make your connection lifetime');

-- --------------------------------------------------------

--
-- Table structure for table `rechargedetail`
--

CREATE TABLE IF NOT EXISTS `rechargedetail` (
  `amount` varchar(50) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `transid` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rechargedetail`
--

INSERT INTO `rechargedetail` (`amount`, `operator`, `username`, `transid`) VALUES
('null', 'null', 'sritolia', '36908350'),
('34', 'reliance', 'sritolia', '89904393'),
('34', 'reliance', 'sritolia', '37012051'),
('23', 'reliance', 'sritolia', '99501537'),
('35', 'reliance', 'sritolia', '23719975'),
('20', 'reliance', 'sritolia', '87122237'),
('23', 'airtel', 'nayan', '24345546'),
('300', 'tatadocomo', 'ass', '11950799'),
('34', 'reliance', 'sritolia', '10972525');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `name` varchar(50) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `phoneno` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`name`, `emailid`, `phoneno`) VALUES
('srikant', 'srikant.ritolia@gmail.com', '9886579971'),
('xyz', 'xyz@mohan.com', '1234567891');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE IF NOT EXISTS `transactiondetail` (
  `transid` varchar(50) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `acctype` varchar(50) DEFAULT NULL,
  `accno` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`transid`, `bank`, `acctype`, `accno`, `pin`, `username`) VALUES
('99501537', 'null', 'null', 'null', 'null', 'sritolia'),
('23719975', 'sboi', 'anp', '3232', '323', 'sritolia'),
('87122237', 'sboi', 'anp', '2121212', '22121', 'sritolia'),
('24345546', 'sboi', 'anp', '2323', '2323', 'nayan'),
('11950799', 'sboi', 'anp', '576567', '543', 'ass'),
('10972525', 'sboi', 'anp', '2323', '23', 'sritolia');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `lname`, `address`, `email`, `phoneno`, `username`, `password`) VALUES
('srikant', 'ritolia', '10th block', 'srikant.ritolia@gmail.com', '9886579971', 'sritolia', 'ritolia'),
('shyam', '', '', '', '1234567891', 'shyam', ''),
('Nayan', 'Mittal', 'dad', 'adasd', '1234567891', 'nayan', 'nayan'),
('aayushman', '', '', '', '8483987873', 'ass', 'raman');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
