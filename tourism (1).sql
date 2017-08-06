-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2017 at 06:34 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `B_ID` int(10) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Pack` varchar(10) NOT NULL,
  `People` int(11) NOT NULL,
  `SDATE` date NOT NULL,
  `Email` varchar(100) NOT NULL,
  `TAmount` int(11) NOT NULL,
  `Coupon` varchar(10) DEFAULT NULL,
  `PM` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`B_ID`, `Destination`, `Pack`, `People`, `SDATE`, `Email`, `TAmount`, `Coupon`, `PM`, `TimeStamp`) VALUES
(11, 'France', 'Family', 4, '2017-04-21', 'nihar.karle@ves.ac.in', 452200, 'FAMILY15', 'Credit Card', '2017-04-15 19:41:35'),
(12, 'France', 'Family', 4, '2017-05-07', 'ameya.parab@ves.ac.in', 452200, 'FAMILY15', 'Debit Card', '2017-04-23 15:03:12'),
(13, 'Dubai', 'Family', 4, '2017-05-17', 'dhiren.kewlani@gmail.com', 119000, 'FAMILY15', 'Credit Card', '2017-04-26 06:37:09'),
(14, 'Switzerland', 'Family', 4, '2017-06-22', 'nighotaniket@gmail.com', 493000, 'FAMILY15', 'Credit Card', '2017-04-26 06:48:47'),
(15, 'France', 'Family', 3, '2017-05-17', 'ameya.parab@ves.ac.in', 399000, '', 'Credit Card', '2017-04-29 04:00:25'),
(19, 'Brazil', 'Student', 2, '2017-05-27', 'niharkarle@gmail.com', 1066000, '', 'Credit Card', '2017-04-29 04:53:27'),
(20, 'Australia', 'Couple', 2, '2017-05-01', 'raghav.jhawar@ves.ac.in', 323000, 'COUPLE5', 'Credit Card', '2017-04-29 06:59:26'),
(21, 'Australia', 'Couple', 2, '2017-05-01', 'raghav.jhawar@ves.ac.in', 323000, 'COUPLE5', 'Credit Card', '2017-04-29 07:00:26'),
(22, 'France', 'Group', 10, '2017-05-04', 'raghav.jhawar@ves.ac.in', 0, '', 'Credit Card', '2017-04-29 07:01:17'),
(23, 'France', 'Group', 5, '2017-05-06', 'raghav.jhawar@ves.ac.in', 0, '', 'Debit Card', '2017-04-29 07:03:13'),
(24, 'France', 'Group', 5, '2017-05-06', 'raghav.jhawar@ves.ac.in', 0, '', 'Debit Card', '2017-04-29 07:04:19'),
(25, 'France', 'Group', 5, '2017-05-13', 'raghav.jhawar@ves.ac.in', 0, '', 'Debit Card', '2017-04-29 07:05:24'),
(26, 'France', 'Group', 5, '2017-05-18', 'raghav.jhawar@ves.ac.in', 625000, '', 'Debit Card', '2017-04-29 07:08:27'),
(27, 'France', 'Couple', 2, '2017-05-10', 'arpitaambavane@gmail.com', 228000, 'COUPLE5', 'Debit Card', '2017-04-29 07:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `comments` text NOT NULL,
  `date_publish` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `D_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `Email`, `comments`, `date_publish`, `D_ID`) VALUES
(1, 'nihar.karle@ves.ac.in', 'This is a no-brainer, just go there for the Eiffel and The Louvre. There are quite a few other attractions within Paris but these are the show stoppers. Have I mentioned that you can actually enjoy a scrumptious meal within the tower itself?', '2017-04-13 16:44:17', 'FR'),
(2, 'siddhesh.mirjankar@gmail.com', 'France would be the best option to go for if you want to visit different tourist spots. France is a very popular place to visit with many tourist attractions to choose from. The Eiffel Tower draws more visitors than any other attraction in the world. There are many other attractions worthy of seeing in France, which are listed in the source below.', '2017-04-13 16:44:17', 'FR'),
(4, 'ameya.parab@ves.ac.in', 'It''s a great place for socializing and full of business opportunities and helps advance your career since it''s the hub of the Middle East when it comes to business. I wouldn’t leave this place for anything in the world! \r\n', '2017-04-24 18:14:54', 'DXB'),
(5, 'karan.murpana@ves.ac.in', 'Dubai is a fantastic place to work and live. For work, there are certain sectors that are doing really well and are lucrative. For living, you may need to have some familiar face there otherwise it can get considerably challenging. But I have worked and lived there for more than half a decade and miss it a lot since I moved back to India.', '2017-04-24 18:14:54', 'DXB'),
(6, 'nihar.karle@ves.ac.in', 'Didn’t someone say that the journey is not about the destination? Australia is not a destination, it is a journey in itself. Plenty of reasons for you to start looking in the direction of Australia. I have had a wonderful experience here.\r\n', '2017-04-24 18:15:44', 'AUS'),
(7, 'ameya.parab@ves.ac.in', 'Australia is the lap of mother nature herself. Take a road trip, or walk alongside the oceans, Australia will captivate you with its raw natural beauty. I could see how if you are well travelled Australia may not be on the top of your list, as it doesn’t hold the same excitement as somewhere like South East Asia, but it is still a once in a lifetime place to visit and I highly recommend it.', '2017-04-24 18:15:44', 'AUS'),
(8, 'ameya.parab@ves.ac.in', 'I went to switzerland with my family last year and I am writing this to share my experience. It is just mind blowing. The pace is so neat and clean and very beautiful. There is hardly any pollution as there is just one major place in switzerland that is Zurich. The place is just amazing and it is a must visit.\r\n', '2017-04-24 18:35:17', 'SWZ'),
(9, 'siddhesh.mirjankar@gmail.com', 'I’ve returned from a trip to Switzerland and Paris via Thomas Cook between 4-11 June, 2016. It was a wonderful experience and we’re gonna cherish the moments forever.', '2017-04-24 18:35:17', 'SWZ'),
(10, 'karan.murpana@ves.ac.in', 'Singapore is a great place if you can afford it. A lot of billionaires moved there for a reason. If you''re young and single and not that rich, Thailand probably provides the most value for money. If you have a family, then Singapore, with its world-class education system and low crime rate, provides the most benefits for your family. If you''re conservative, then Malaysia is worth considering. Personally, my favorite place is Chiang Mai (2nd largest city in Thailand).', '2017-04-24 18:41:48', 'MST'),
(11, 'nihar.karle@ves.ac.in', 'Singapore is organized, developed, has high working salary and a very good legal system and police forces. Malaysia has diverse food culture, rather good infrastructure, nice beaches and is not too expensive. Thailand has a lot of places to see from mountain to beaches, is cheaper than both of the places, has relatively cheap beer and a reasonably developed infrastructure. I personally recommend Singapore over the other two.', '2017-04-24 18:41:48', 'MST'),
(12, 'siddhesh.mirjankar@gmail.com', 'As a Brazilian I dare to say that it is as dangerous to live here as it is to live in any developing country, honestly. It is relatively safe if you consider walking without wearing expensive watches , jewelery, living in house with high walls and security system, keeping your hand on your wallet in crowded places, hold on to your expensive phone and not driving in expensive cars. Incase you want to drive expensive cars then better have bullet proof glasses.\r\n', '2017-04-24 18:49:31', 'BRZ'),
(13, 'ameya.parab@ves.ac.in', 'I personally feel that, to live in Brazil, you need to accept and live with a high risk of violent crime. There are many positive things about life in Brazil, and for a good number of people, the benefits outweigh the risks.', '2017-04-24 18:49:31', 'BRZ'),
(14, 'dhiren.kewlani@gmail.com', 'Good', '2017-04-26 06:36:32', 'DXB'),
(15, 'siddhesh.mirjankar@gmail.com', 'very good', '2017-04-27 07:04:04', 'SWZ'),
(18, 'niharkarle@gmail.com', 'Best place to visit.!! Superb', '2017-04-29 04:42:10', 'BRZ');

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `D_ID` varchar(5) NOT NULL,
  `Family` int(11) DEFAULT NULL,
  `Student` int(11) DEFAULT NULL,
  `Group1` int(11) DEFAULT NULL,
  `Couple` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`D_ID`, `Family`, `Student`, `Group1`, `Couple`) VALUES
('DXB', 35000, 32000, 27000, 30000),
('AUS', 185000, 180000, 176000, 170000),
('FR', 133000, 130000, 125000, 120000),
('SWZ', 145000, 142000, 137000, 130000),
('MST', 75000, 72000, 70000, 70000),
('BRZ', 540000, 533000, 530000, 525000),
('EN', 130000, 123000, 120000, 118000);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `Name` varchar(10) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`Name`, `Discount`) VALUES
('COUPLE5', 0.95),
('FAMILY15', 0.85);

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `D_ID` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Region` varchar(30) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Package` varchar(100) DEFAULT NULL,
  `Geography` varchar(100) DEFAULT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`D_ID`, `Name`, `Region`, `Type`, `Package`, `Geography`, `Link`) VALUES
('AUS', 'Australia', 'Australia', 'Urban, Nature, Entertainment', 'Family, Couple, Student, Group', 'Tropical, Mountanious, Desert', 'Australia.php'),
('BRZ', 'Brazil', 'South America', 'Urban, Nature, Entertaiment, Historic', 'Family, Group, Couple', 'Tropical, Mountainious', 'Brazil.php'),
('DXB', 'Dubai', 'Asia-Pacific', 'Urban, Entertainment', 'Family, Group, Student, Couple', 'Tropical, Desert', 'Dubai.php'),
('EN', 'England', 'Europe', 'Urban, Nature, Historic, Entertainment', 'Family, Group, Student', 'Mountanious, Snow', 'England.php'),
('FR', 'France', 'Europe', 'Urban, Nature, Historic', 'Family, Group, Student, Couple', 'Mountanious, Snow', 'France.php'),
('MST', 'Singapore', 'Asia-Pacific', 'Urban, Nature, Historic, Entertainment', 'Family, Group, Student', 'Tropical', 'Singapore.php'),
('SWZ', 'Switzerland', 'Europe', 'Urban, Nature', 'Family, Group, Couple', 'Mountanious, Snow', 'Switzerland.php');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Email` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Email`, `Name`, `Password`, `Age`, `Gender`, `Contact`) VALUES
('ameya.parab@ves.ac.in', 'Ameya Parab', '1234', 20, 'Male', '0'),
('arpitaambavane@gmail.com', 'Arpita', 'arpita1234', 19, 'Female', '9876543215'),
('bello@bello.com', 'bello', 'bello', 2000, 'Male', '2147483647'),
('biharkarela@gmail.com', 'Bihar Karela', 'payal', 21, 'Male', '2147483647'),
('dhiren.kewlani@gmail.com', 'Dhiren Kewlani', '1234', 20, 'Male', '1234567890'),
('karan.murpana@ves.ac.in', 'Karan Murpana', '123456', 20, 'Male', '2147483647'),
('nighotaniket@gmail.com', 'Aniket', '123', 20, 'Male', '1234567890'),
('nihar.karle@ves.ac.in', 'Nihar Karle', '123', 20, 'Male', '0'),
('niharkarle@gmail.com', 'Nihar Karle', '123', 21, 'Male', '8898004099'),
('raghav.jhawar@ves.ac.in', 'Raghav', 'raghav12345', 20, 'Male', '9404297997'),
('siddhesh.mirjankar@gmail.com', 'Siddhesh Mirjankar', '12345', 20, 'Male', '2147483647');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`B_ID`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `D_ID` (`D_ID`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD KEY `D_ID` (`D_ID`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `B_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `user` (`Email`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `destination` (`D_ID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`Email`) REFERENCES `user` (`Email`);

--
-- Constraints for table `cost`
--
ALTER TABLE `cost`
  ADD CONSTRAINT `cost_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `destination` (`D_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
