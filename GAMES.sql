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
-- Table structure for table `GAMES`
--

CREATE TABLE IF NOT EXISTS `GAMES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WEEK` int(11) DEFAULT NULL,
  `GAME_TIME` varchar(10) DEFAULT NULL,
  `VISITOR_TEAM` varchar(100) DEFAULT NULL,
  `HOME_TEAM` varchar(100) DEFAULT NULL,
  `WINNING_TEAM` varchar(100) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  KEY `fk_visitor_team_id` (`VISITOR_TEAM`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1121 ;

--
-- Dumping data for table `GAMES`
--

INSERT INTO `GAMES` (`ID`, `WEEK`, `GAME_TIME`, `VISITOR_TEAM`, `HOME_TEAM`, `WINNING_TEAM`) VALUES
(1120, 13, '11/26/16', 'Miss St', 'Ole Miss', NULL),
(1119, 13, '11/26/16', 'Kentucky', 'Louisville', NULL),
(1118, 13, '11/26/16', 'Georgia Tech', 'Georgia', NULL),
(1117, 13, '11/26/16', 'Florida', 'Florida State', NULL),
(1116, 13, '11/26/16', 'Auburn', 'Alabama', NULL),
(1115, 13, '11/26/16', 'Tennessee', 'Vanderbilt', NULL),
(1114, 13, '11/26/16', 'South Carolina', 'Clemson', NULL),
(1113, 13, '11/25/16', 'Arkansas', 'Missouri', NULL),
(1112, 13, '11/24/16', 'LSU', 'Texas A&M', NULL),
(1111, 12, '11/19/16', 'Ole Miss', 'Vanderbilt', NULL),
(1110, 12, '11/19/16', 'UTSA', 'Texas A&M', NULL),
(1109, 12, '11/19/16', 'Missouri', 'Tennessee', NULL),
(1108, 12, '11/19/16', 'W Carolina', 'South Carolina', NULL),
(1107, 12, '11/19/16', 'Arkansas', 'Miss St', NULL),
(1106, 12, '11/19/16', 'South Alabama', 'LSU', NULL),
(1105, 12, '11/19/16', 'Austin Peay', 'Kentucky', NULL),
(1104, 12, '11/19/16', 'LA-Lafayette', 'Georgia', NULL),
(1103, 12, '11/19/16', 'Presbyterian', 'Florida', NULL),
(1102, 12, '11/19/16', 'Alabama A&M', 'Auburn', NULL),
(1101, 12, '11/19/16', 'Chattanooga', 'Alabama', NULL),
(1100, 11, '11/12/16', 'Ole Miss', 'Texas A&M', NULL),
(1099, 11, '11/12/16', 'Kentucky', 'Tennessee', NULL),
(1098, 11, '11/12/16', 'Vanderbilt', 'Missouri', NULL),
(1097, 11, '11/12/16', 'Auburn', 'Georgia', NULL),
(1096, 11, '11/12/16', 'South Carolina', 'Florida', NULL),
(1095, 11, '11/12/16', 'LSU', 'Arkansas', NULL),
(1094, 11, '11/12/16', 'Miss St', 'Alabama', NULL),
(1093, 10, '11/05/16', 'Tenn Tech', 'Tennessee', NULL),
(1092, 10, '11/05/16', 'Missouri', 'South Carolina', NULL),
(1091, 10, '11/05/16', 'Texas A&M', 'Miss St', NULL),
(1090, 10, '11/05/16', 'Ga Southern', 'Ole Miss', NULL),
(1089, 10, '11/05/16', 'Alabama', 'LSU', NULL),
(1088, 10, '11/05/16', 'Georgia', 'Kentucky', NULL),
(1087, 10, '11/05/16', 'Vanderbilt', 'Auburn', NULL),
(1086, 10, '11/05/16', 'Florida', 'Arkansas', NULL),
(1085, 9, '10/29/16', 'Florida', 'Georgia', NULL),
(1084, 9, '10/29/16', 'New Mexico St', 'Texas A&M', NULL),
(1083, 9, '10/29/16', 'Tennessee', 'South Carolina', NULL),
(1082, 9, '10/29/16', 'Kentucky', 'Missouri', NULL),
(1081, 9, '10/29/16', 'Samford', 'Miss St', NULL),
(1080, 9, '10/29/16', 'Auburn', 'Ole Miss', NULL),
(1079, 8, '10/22/16', 'Tennessee St', 'Vanderbilt', NULL),
(1078, 8, '10/22/16', 'Mid Tennessee', 'Missouri', NULL),
(1077, 8, '10/22/16', 'Ole Miss', 'LSU', NULL),
(1076, 8, '10/22/16', 'Miss St', 'Kentucky', NULL),
(1075, 8, '10/22/16', 'Arkansas', 'Auburn', NULL),
(1074, 8, '10/22/16', 'Texas A&M', 'Alabama', NULL),
(1073, 8, '10/22/16', 'UMass', 'South Carolina', NULL),
(1072, 7, '10/15/16', 'Alabama', 'Tennessee', NULL),
(1071, 7, '10/15/16', 'Southern Miss', 'LSU', NULL),
(1070, 7, '10/15/16', 'Vanderbilt', 'Georgia', NULL),
(1069, 7, '10/15/16', 'Missouri', 'Florida', NULL),
(1068, 7, '10/15/16', 'Ole Miss', 'Arkansas', NULL),
(1067, 7, '10/14/16', 'Miss St', 'BYU', NULL),
(1066, 6, '10/08/16', 'Tennessee', 'Texas A&M', NULL),
(1065, 6, '10/08/16', 'Georgia', 'South Carolina', NULL),
(1064, 6, '10/08/16', 'Auburn', 'Miss St', NULL),
(1063, 6, '10/08/16', 'Vanderbilt', 'Kentucky', NULL),
(1062, 6, '10/08/16', 'LSU', 'Florida', NULL),
(1061, 6, '10/08/16', 'Alabama', 'Arkansas', NULL),
(1060, 5, '10/01/16', 'Florida', 'Vanderbilt', NULL),
(1059, 5, '10/01/16', 'Texas A&M', 'South Carolina', NULL),
(1058, 5, '10/01/16', 'Memphis', 'Ole Miss', NULL),
(1057, 5, '10/01/16', 'Missouri', 'LSU', NULL),
(1056, 5, '10/01/16', 'Tennessee', 'Georgia', NULL),
(1055, 5, '10/01/16', 'UL Monroe', 'Auburn', NULL),
(1054, 5, '10/01/16', 'Alcorn State', 'Arkansas', NULL),
(1053, 5, '10/01/16', 'Kentucky', 'Alabama', NULL),
(1052, 4, '09/24/16', 'Vanderbilt', 'W Kentucky', NULL),
(1051, 4, '09/24/16', 'Miss St', 'UMass', NULL),
(1050, 4, '09/24/16', 'Arkansas', 'Texas A&M', NULL),
(1049, 4, '09/24/16', 'Florida', 'Tennessee', NULL),
(1048, 4, '09/24/16', 'Delaware State', 'Missouri', NULL),
(1047, 4, '09/24/16', 'Georgia', 'Ole Miss', NULL),
(1046, 4, '09/24/16', 'South Carolina', 'Kentucky', NULL),
(1045, 4, '09/24/16', 'LSU', 'Auburn', NULL),
(1044, 4, '09/24/16', 'Kent State', 'Alabama', NULL),
(1043, 3, '09/17/16', 'Georgia', 'Missouri', NULL),
(1042, 3, '09/17/16', 'Texas State', 'Arkansas', NULL),
(1041, 3, '09/17/16', 'North Texas', 'Florida', NULL),
(1040, 3, '09/17/16', 'Texas A&M', 'Auburn', NULL),
(1039, 3, '09/17/16', 'Miss St', 'LSU', NULL),
(1038, 3, '09/17/16', 'New Mexico St', 'Kentucky', NULL),
(1037, 3, '09/17/16', 'East Carolina', 'South Carolina', NULL),
(1036, 3, '09/17/16', 'Alabama', 'Ole Miss', NULL),
(1035, 3, '09/17/16', 'Vanderbilt', 'Georgia Tech', NULL),
(1034, 3, '09/17/16', 'Ohio', 'Tennessee', NULL),
(1033, 2, '09/10/16', 'Tennessee', 'Virginia Tech', NULL),
(1032, 2, '09/10/16', 'E Michigan', 'Missouri', NULL),
(1031, 2, '09/10/16', 'Jacksonville St', 'LSU', NULL),
(1030, 2, '09/10/16', 'Arkansas State', 'Auburn', NULL),
(1029, 2, '09/10/16', 'Arkansas', 'TCU', NULL),
(1028, 2, '09/10/16', 'South Carolina', 'Miss St', NULL),
(1027, 2, '09/10/16', 'Mid Tennessee', 'Vanderbilt', NULL),
(1026, 2, '09/10/16', 'Wofford', 'Ole Miss', NULL),
(1025, 2, '09/10/16', 'W Kentucky', 'Alabama', NULL),
(1024, 2, '09/10/16', 'Kentucky', 'Florida', NULL),
(1023, 2, '09/10/16', 'PV A&M', 'Texas A&M', NULL),
(1022, 2, '09/10/16', 'Nicholls State', 'Georgia', NULL),
(1021, 1, '09/05/16', 'Ole Miss', 'Florida State', NULL),
(1020, 1, '09/03/16', 'Clemson', 'Auburn', NULL),
(1019, 1, '09/03/16', 'USC', 'Alabama', NULL),
(1018, 1, '09/03/16', 'UMass', 'Florida', NULL),
(1017, 1, '09/03/16', 'Southern Miss', 'Kentucky', NULL),
(1016, 1, '09/03/16', 'Georgia', 'North Carolina', 'NULL'),
(1015, 1, '09/03/16', 'LA Tech', 'Arkansas', NULL),
(1014, 1, '09/03/16', 'LSU', 'Wisconsin', NULL),
(1013, 1, '09/03/16', 'UCLA', 'Texas A&M', NULL),
(1012, 1, '09/03/16', 'Missouri', 'West Virginia', NULL),
(1011, 1, '09/03/16', 'South Alabama', 'Miss St', NULL),
(1010, 1, '09/01/16', 'South Carolina', 'Vanderbilt', NULL),
(1009, 1, '09/01/16', 'Appalachian St', 'Tennessee', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
