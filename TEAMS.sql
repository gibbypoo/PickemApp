-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2016 at 01:42 PM
-- Server version: 5.5.32-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fanclwpc_pickem`
--

-- --------------------------------------------------------

--
-- Table structure for table `TEAMS`
--

CREATE TABLE IF NOT EXISTS `TEAMS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION` varchar(50) DEFAULT NULL,
  `NICKNAME` varchar(50) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `TEAMS`
--

INSERT INTO `TEAMS` (`ID`, `LOCATION`, `NICKNAME`) VALUES
(1, 'Alabama', 'Crimson Tide'),
(2, 'Oklahoma', 'Sooners'),
(3, 'Ohio State', 'Buckeyes'),
(4, 'Clemson', 'Tigers'),
(5, 'Mississippi', 'Rebel Black Bears'),
(6, 'Baylor', 'Bears'),
(7, 'Stanford', 'Cardinal'),
(8, 'TX Christian', 'Horned Frogs'),
(9, 'Tennessee', 'Vols'),
(10, 'Notre Dame', 'Fighting Irish'),
(11, 'LSU', 'Tigers'),
(12, 'Michigan', 'Wolverines'),
(13, 'USC', 'Trojans'),
(14, 'N Carolina', 'Tarheels'),
(15, 'Miss State', 'Bulldogs'),
(16, 'Florida St', 'Seminoles'),
(17, 'Arkansas', 'Razorbacks'),
(18, 'Michigan St', 'Spartans'),
(19, 'Washington', 'Huskies'),
(20, 'Utah', 'Utes'),
(21, 'W Virginia', 'Mountaineers'),
(22, 'Wisconsin', 'Badgers'),
(23, 'Boise State', 'Broncos'),
(24, 'UCLA', 'Bruins'),
(25, 'Georgia', 'Bulldogs'),
(26, 'Oklahoma St', 'Cowboys'),
(27, 'Oregon', 'Ducks'),
(28, 'Houston', 'Texans'),
(29, 'California', 'Bears'),
(30, 'Texas A&M', 'Aggies'),
(31, 'Florida', 'Gators'),
(32, 'W Kentucky', 'Hilltoppers'),
(33, 'BYU', 'Cougars'),
(34, 'Navy', 'Midshipmen'),
(35, 'Iowa', 'Hawkeyes'),
(36, 'Auburn', 'Tigers'),
(37, 'GA Tech', 'Yellow Jackets'),
(38, 'Memphis', 'Tigers'),
(39, 'Louisville', 'Cardinals'),
(40, 'Toledo', 'Rockets'),
(41, 'Nebraska', 'Cornhuskers'),
(42, 'VA Tech', 'Hokies'),
(43, 'Arizona St', 'Sun Devils'),
(44, 'Bowling Grn', 'Falcons'),
(45, 'NC State', 'Wolfpack'),
(46, 'Pittsburgh', 'Panthers'),
(47, 'San Diego St', 'Aztecs'),
(48, 'Texas Tech', 'Red Raiders'),
(49, 'Temple', 'Owls'),
(50, 'Wash State', 'Cougars'),
(51, 'S Florida', 'Bulls'),
(52, 'Miami', 'Hurricanes'),
(53, 'App State', 'Mountaineers'),
(54, 'Penn State', 'Nittany Lions'),
(55, 'Duke', 'Blue Devils'),
(56, 'Texas', 'Longhorns'),
(57, 'GA Southern', 'Eagles'),
(58, 'Arizona', 'Wildcats'),
(59, 'W Michigan', 'Broncos'),
(60, 'Missouri', 'Tigers'),
(61, 'Kansas St', 'Wildcats'),
(62, 'S Mississippi', 'Golden Eagles'),
(63, 'Northwestern', 'Wildcats'),
(64, 'Air Force', 'Falcons'),
(65, 'LA Tech', 'Bulldogs'),
(66, 'Marshall', 'Thundering Herd'),
(67, 'Minnesota', 'Gophers'),
(68, 'Boston Col', 'Eagles'),
(69, 'Utah State', 'Aggies'),
(70, 'S Carolina', 'Gamecocks'),
(71, 'Indiana', 'Hoosiers'),
(72, 'Cincinnati', 'Bearcats'),
(73, 'Illinois', 'Illini'),
(74, 'Vanderbilt', 'Commodores'),
(75, 'Middle Tenn', 'Blue Raiders'),
(76, 'N Illinois', 'Huskies'),
(77, 'Arkansas St', 'Red Wolves'),
(78, 'Virginia', 'Cavaliers'),
(79, 'E Carolina', 'Pirates'),
(80, 'Syracuse', 'Orange'),
(81, 'Iowa State', 'Cyclones'),
(82, 'Kentucky', 'Wildcats'),
(83, 'Central Mich', 'Chippewas'),
(84, 'Colorado', 'Buffaloes'),
(85, 'Maryland', 'Terrapins'),
(86, 'Wake Forest', 'Demon Deacons'),
(87, 'Colorado St', 'Rams'),
(88, 'San Jose St', 'Spartans'),
(89, 'Ohio', 'Bobcats'),
(90, 'Tulsa', 'Hurricanes'),
(91, 'Akron', 'Zips'),
(92, 'Connecticut', 'Huskies'),
(93, 'Rutgers', 'Scarlet Knights'),
(94, 'New Mexico', 'Lobos'),
(95, 'Purdue', 'Boilermakers'),
(96, 'Nevada', 'Wolfpack'),
(97, 'Troy', 'Trojans'),
(98, 'Oregon St', 'Beavers'),
(99, 'Buffalo', 'Bulls'),
(100, 'UNLV', 'Rebels'),
(101, 'Georgia State', 'Panthers'),
(102, 'Fla Atlantic', 'Owls'),
(103, 'Florida Intl', 'Panthers'),
(104, 'LA Lafayette', 'Ragin Cajuns'),
(105, 'U Mass', 'Minutemen'),
(106, 'Ball State', 'Cardinals'),
(107, 'Army', 'Black Knights'),
(108, 'Fresno St', 'Bulldogs'),
(109, 'Rice', 'Owls'),
(110, 'S Methodist', 'Mustangs'),
(111, 'Kent State', 'Golden Flashes'),
(112, 'S Alabama', 'Jaguars'),
(113, 'Wyoming', 'Cowboys'),
(114, 'TX-San Ant', 'Roadrunners'),
(115, 'Idaho', 'Vandals'),
(116, 'Tulane', 'Green Wave'),
(117, 'Hawaii', 'Warriors'),
(118, 'Texas State', 'Bobcats'),
(119, 'Old Dominion', 'Monarchs'),
(120, 'TX El Paso', 'Miners'),
(121, 'Miami', 'RedHawks'),
(122, 'LA Monroe', 'Warhawks'),
(123, 'Central FL', 'Knights'),
(124, 'Kansas', 'Jayhawks'),
(125, 'N Mex State', 'Aggies'),
(126, 'E Michigan', 'Eagles'),
(127, 'North Texas', 'Mean Green'),
(128, 'Charlotte', '49ers'),
(130, 'Nicholls State', 'Colonels'),
(131, 'PV A&M', 'Panthers'),
(132, 'Wofford', 'Terriers'),
(133, 'Jacksonville State', 'Gamecocks'),
(134, 'Delaware State', 'Hornets'),
(135, 'Alcorn State', 'Braves'),
(136, 'UL Monroe', 'Warhawks'),
(137, 'Samford', 'Bulldogs'),
(138, 'Tennessee Tech', 'Golden Eagles'),
(139, 'Chattanooga', 'Mocs'),
(140, 'Alabama A&M', 'Bulldogs'),
(141, 'Presbyterian', 'Blue Hose'),
(142, 'Austin Peay', 'Governors'),
(144, 'W Carolina', 'Catamounts');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
