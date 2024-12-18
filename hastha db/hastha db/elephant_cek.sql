-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 09:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elephant_cek`
CREATE DATABASE IF NOT EXISTS `elephant_cek` DEFAULT CHARACTER SET utf8mb4;
USE `elephant_cek`;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `uid` int(11) NOT NULL,
  `file_name` blob NOT NULL,
  `uploaded_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`uid`, `file_name`, `uploaded_on`) VALUES
(1, 0x313635353434363535312e706e67, '2022-06-17 11:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `per_details`
--

CREATE TABLE `per_details` (
  `rel_fam_head` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `caste` varchar(255) DEFAULT NULL,
  `edu_spe` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `phone_num` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `aadhar_id` varchar(255) DEFAULT NULL,
  `aadhar_id_num` bigint(20) DEFAULT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `pan_num` varchar(10) DEFAULT NULL,
  `bank_acc` varchar(255) DEFAULT NULL,
  `comp_know` varchar(255) DEFAULT NULL,
  `mgnregs` varchar(255) DEFAULT NULL,
  `insurance_avl` varchar(255) DEFAULT NULL,
  `health_issues` varchar(255) DEFAULT NULL,
  `other_issues` varchar(255) DEFAULT NULL,
  `disability` varchar(255) DEFAULT NULL,
  `residing_in` varchar(100) DEFAULT NULL,
  `nativity` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `dis_yn` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `current_edu` varchar(255) DEFAULT NULL,
  `marital` varchar(255) DEFAULT NULL,
  `job_sec` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `income` bigint(20) DEFAULT NULL,
  `sugar` int(11) DEFAULT NULL,
  `bp` int(11) DEFAULT NULL,
  `cancer` int(11) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `bedridden` int(11) DEFAULT NULL,
  `pension_avl` varchar(255) DEFAULT NULL,
  `housename` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `election_id` varchar(255) DEFAULT NULL,
  `election_id_num` bigint(20) DEFAULT NULL,
  `ex_serv` varchar(255) DEFAULT NULL,
  `dis_per` varchar(255) DEFAULT NULL,
  `pension` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `per_details`
--

INSERT INTO `per_details` (`rel_fam_head`, `religion`, `caste`, `edu_spe`, `occupation`, `phone_num`, `email`, `aadhar_id`, `aadhar_id_num`, `pan`, `pan_num`, `bank_acc`, `comp_know`, `mgnregs`, `insurance_avl`, `health_issues`, `other_issues`, `disability`, `residing_in`, `nativity`, `category`, `dis_yn`, `gender`, `dob`, `current_edu`, `marital`, `job_sec`, `uid`, `income`, `sugar`, `bp`, `cancer`, `education`, `blood_group`, `bedridden`, `pension_avl`, `housename`, `f_name`, `election_id`, `election_id_num`, `ex_serv`, `dis_per`, `pension`, `id`) VALUES
('Member', 'xskve', 'ontyp', 'ezryp', 'ykznq', 3161390188, 'vvtcok@yahoo.com', 'Yes', 518457483782, 'Yes', '5517302180', 'No', 'No', 'No', 'No', 'Heart Disease', 'Stress', 'Yes', 'nqugh', 'yzlvz', 'ST', 'No', 'Female', '0000-00-00', 'No', 'Married', 'No', 1, 160046, 0, 0, 0, 'Post Graduate', 'AB+', 4, 'Yes', 'ggrly', 'evify', 'No', 726594298064, 'Yes', '15.0', 'Pension3', 12),
('Member', 'vobha', 'kplra', 'ccpyx', 'dbfpa', 9384361099, 'tobeif@hotmail.com', 'No', 232836998776, 'No', '0502663138', 'No', 'Yes', 'No', 'Yes', 'Diabetes', '', 'No', 'sakhk', 'orxvw', 'SC', 'No', 'Female', '0000-00-00', 'Yes', 'Married', 'No', 1, 64675, 0, 0, 0, 'Post Graduate', 'B-', 2, 'Yes', 'bdcua', 'fdrjz', 'No', 390037357794, 'No', '38.0', 'Pension2', 14),
('Member', 'szowt', 'bymnw', 'zqeyb', 'unayh', 3529393356, 'gjpmdx@hotmail.com', 'No', 706328871681, 'No', '5018878690', 'Yes', 'Yes', 'No', 'No', 'Heart Disease', 'Back Pain', 'Yes', 'okrlw', 'sbqvl', 'ST', 'No', 'Female', '0000-00-00', 'Yes', 'Single', 'Yes', 1, 160785, 0, 0, 0, 'Graduate', 'O+', 2, 'No', 'ummen', 'llkwj', 'No', 735510022926, 'No', '', 'Pension3', 16),
('Member', 'oajif', 'itgsw', 'mzwfg', 'rzlsp', 528858637, 'pnhwvb@gmail.com', 'No', 941905287084, 'No', '0929740741', 'No', 'Yes', 'No', 'No', 'Asthma', 'Stress', 'No', 'zslvj', 'glwtc', 'ST', 'Yes', 'Female', '0000-00-00', 'No', 'Single', 'Yes', 2, 123842, 0, 0, 0, 'Graduate', 'AB+', 4, 'Yes', 'gjyox', 'fctta', 'Yes', 557777340913, 'No', '', 'Pension4', 25),
('Head', 'usbmd', 'kkwsx', 'uikyy', 'jkxly', 786414855, 'wdsukl@hotmail.com', 'No', 952127415944, 'No', '9707407295', 'Yes', 'No', 'No', 'Yes', '', 'Back Pain', 'No', 'qhhay', 'mlnsh', 'General', 'No', 'Other', '0000-00-00', 'No', 'Single', 'Yes', 2, 144437, 0, 0, 0, 'Post Graduate', 'A-', 0, 'Yes', 'uafim', 'msedq', 'Yes', 851388824256, 'Yes', '', 'Pension5', 31),
('Member', 'ptlwz', 'vlelw', 'tamww', 'wydky', 7328330796, 'jtifmo@gmail.com', 'No', 827401877726, 'Yes', '6870877576', 'No', 'No', 'No', 'Yes', 'Asthma', 'Stress', 'Yes', 'urkcy', 'cmwxt', 'SC', 'Yes', 'Female', '0000-00-00', 'Yes', 'Single', 'Yes', 2, 71489, 0, 0, 0, 'Graduate', 'O+', 5, 'No', 'cvuox', 'jtskb', 'Yes', 627302910676, 'Yes', '', 'Pension4', 34),
('Member', 'bdfks', 'dccbm', 'cpxdr', 'wyqof', 8329201987, 'avvsxo@gmail.com', 'No', 215263187205, 'No', '8748348871', 'No', 'No', 'Yes', 'No', '', 'Stress', 'Yes', 'lpudk', 'rpqfe', 'SC', 'No', 'Female', '0000-00-00', 'No', 'Married', 'No', 3, 188182, 0, 0, 0, 'Graduate', 'O+', 4, 'No', 'zjqby', 'vwakw', 'No', 655379835069, 'No', '46.0', 'Pension2', 39),
('Head', 'rxcya', 'tlgso', 'fsrfs', 'huyrt', 6858368538, 'edearb@gmail.com', 'No', 447728900102, 'Yes', '0300985826', 'No', 'Yes', 'Yes', 'Yes', 'Diabetes', 'Back Pain', 'No', 'wukck', 'kgvdh', 'SC', 'Yes', 'Male', '0000-00-00', 'Yes', 'Married', 'No', 3, 104281, 0, 0, 0, 'Graduate', 'O-', 4, 'Yes', 'pxztg', 'uplwf', 'Yes', 126584303922, 'Yes', '83.0', 'Pension5', 40),
('Member', 'gknin', 'xuurw', 'wkixk', 'lphwd', 6070914309, 'dnibxe@yahoo.com', 'Yes', 614423357614, 'No', '0775090047', 'No', 'Yes', 'Yes', 'Yes', '', '', 'No', 'loqru', 'uxjbh', 'General', 'No', 'Other', '0000-00-00', 'No', 'Married', 'Yes', 3, 123158, 0, 0, 0, 'High School', 'AB-', 1, 'No', 'vwqmh', 'vzmob', 'No', 283428924522, 'Yes', '98.0', 'Pension4', 43),
('Member', 'jmdrm', 'jlpzc', 'hprfz', 'zhooa', 6906906983, 'bslyfu@yahoo.com', 'No', 303401797774, 'Yes', '3901465615', 'No', 'Yes', 'Yes', 'No', '', 'Stress', 'Yes', 'pcizp', 'ezyvm', 'OBC', 'Yes', 'Male', '0000-00-00', 'Yes', 'Married', 'Yes', 4, 136936, 0, 0, 0, 'High School', 'AB-', 5, 'Yes', 'lnjob', 'aravk', 'Yes', 939613256902, 'No', '', 'Pension2', 60),
('Member', 'prfno', 'fteca', 'qsxlp', 'aziup', 9709601289, 'ehygjq@yahoo.com', 'Yes', 116646865010, 'Yes', '5151449129', 'Yes', 'No', 'Yes', 'No', '', 'Stress', 'Yes', 'cjsbb', 'humyn', 'ST', 'No', 'Other', '0000-00-00', 'Yes', 'Married', 'Yes', 4, 91328, 0, 0, 0, 'Graduate', 'A+', 3, 'No', 'gtpqq', 'ypvmf', 'Yes', 604113285187, 'No', '', 'Pension3', 61),
('Member', 'olznv', 'oavfq', 'nexkz', 'nyaju', 9777880650, 'hrtapl@hotmail.com', 'Yes', 224480292498, 'Yes', '2754747538', 'No', 'No', 'No', 'Yes', 'Heart Disease', 'Back Pain', 'Yes', 'ctzvn', 'slyhm', 'ST', 'Yes', 'Male', '0000-00-00', 'Yes', 'Married', 'No', 4, 152767, 0, 0, 0, 'Graduate', 'AB+', 0, 'Yes', 'njuwn', 'mufrc', 'Yes', 912311200617, 'No', '80.0', 'Pension5', 69),
('Head', 'awnzm', 'orovg', 'xshii', 'srrgr', 2127083022, 'kiwyro@yahoo.com', 'Yes', 704271368018, 'Yes', '4265300272', 'Yes', 'No', 'Yes', 'No', '', 'Back Pain', 'No', 'cgdia', 'bmevy', 'ST', 'No', 'Female', '0000-00-00', 'Yes', 'Married', 'Yes', 5, 131445, 0, 0, 0, 'High School', 'A+', 1, 'No', 'oqkui', 'mfidf', 'Yes', 910961749553, 'Yes', '', 'Pension4', 71),
('Member', 'cxzws', 'jvvac', 'awtzw', 'pzwrh', 5937669641, 'cubdbg@yahoo.com', 'No', 379315877451, 'Yes', '2057341771', 'Yes', 'No', 'Yes', 'Yes', 'Heart Disease', 'Back Pain', 'Yes', 'rctlm', 'qhauy', 'SC', 'No', 'Female', '0000-00-00', 'Yes', 'Married', 'Yes', 5, 151911, 0, 0, 0, 'Graduate', 'A+', 2, 'No', 'gzsuy', 'hbpkp', 'Yes', 375928643650, 'No', '', 'Pension3', 73),
('Head', 'vowav', 'aebyj', 'wfysb', 'gfzcc', 48683567, 'dkibam@gmail.com', 'Yes', 323442293278, 'No', '8616911425', 'No', 'No', 'Yes', 'Yes', 'Diabetes', 'Back Pain', 'No', 'xwsnf', 'dilep', 'OBC', 'Yes', 'Other', '0000-00-00', 'No', 'Married', 'Yes', 5, 144012, 0, 0, 0, 'Post Graduate', 'A-', 4, 'Yes', 'ofjll', 'hctnd', 'No', 506925669719, 'Yes', '', 'Pension3', 80),
('Head', 'zxmai', 'nfvbm', 'judby', 'jzszc', 1684961351, 'sgumup@hotmail.com', 'No', 926138292756, 'No', '7689551277', 'No', 'No', 'No', 'Yes', 'Asthma', '', 'No', 'xefsv', 'zbqmk', 'OBC', 'Yes', 'Male', '0000-00-00', 'No', 'Single', 'Yes', 6, 77559, 0, 0, 0, 'High School', 'A+', 0, 'No', 'sqlrm', 'gltyi', 'Yes', 585920835233, 'No', '56.0', 'Pension4', 91),
('Member', 'vplks', 'lyaui', 'yzmet', 'hapvr', 9745485408, 'fzyxir@gmail.com', 'No', 561091656903, 'Yes', '8587096570', 'Yes', 'No', 'No', 'Yes', 'Heart Disease', 'Stress', 'No', 'mnxqt', 'ophbk', 'General', 'No', 'Male', '0000-00-00', 'Yes', 'Married', 'Yes', 6, 141196, 0, 0, 0, 'Graduate', 'B-', 1, 'No', 'ibjfo', 'nsoka', 'Yes', 760900275305, 'No', '60.0', 'Pension5', 100);

-- --------------------------------------------------------

--
-- Table structure for table `rationcard_details`
--

CREATE TABLE `rationcard_details` (
  `ration_id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `rationcard_number` varchar(255) DEFAULT NULL,
  `rationcard_type` varchar(255) DEFAULT NULL,
  `ration_color` varchar(255) DEFAULT NULL,
  `family_income` bigint(20) DEFAULT NULL,
  `members` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `rationcard_details`
--

INSERT INTO `rationcard_details` (`ration_id`, `uid`, `rationcard_number`, `rationcard_type`, `ration_color`, `family_income`, `members`) VALUES
(NULL, 1, '12345678901', 'APL', 'Yellow', 99999, '2');

-- --------------------------------------------------------

--
-- Table structure for table `rental_details`
--

CREATE TABLE `rental_details` (
  `rid` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_phone` bigint(20) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `res_association`
--

CREATE TABLE `res_association` (
  `res_id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `name_of_res_asso` varchar(255) DEFAULT NULL,
  `res_asso_borders` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `res_association`
--

INSERT INTO `res_association` (`res_id`, `uid`, `name_of_res_asso`, `res_asso_borders`) VALUES
(NULL, 1, 'res1', '111');

-- --------------------------------------------------------

--
-- Table structure for table `res_building_details`
--

CREATE TABLE `res_building_details` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `roof_type` varchar(255) DEFAULT NULL,
  `wall_type` varchar(255) DEFAULT NULL,
  `wall_status` varchar(255) DEFAULT NULL,
  `basement` varchar(255) DEFAULT NULL,
  `floor_type` varchar(255) DEFAULT NULL,
  `floor_status` varchar(255) DEFAULT NULL,
  `frontage` varchar(255) DEFAULT NULL,
  `built_area` int(11) DEFAULT NULL,
  `built_year` int(11) DEFAULT NULL,
  `no_of_floors` int(11) DEFAULT NULL,
  `no_of_bathroom` int(11) DEFAULT NULL,
  `no_of_rooms` int(11) DEFAULT NULL,
  `roof_status` varchar(255) DEFAULT NULL,
  `res_build_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `res_building_details`
--

INSERT INTO `res_building_details` (`id`, `uid`, `roof_type`, `wall_type`, `wall_status`, `basement`, `floor_type`, `floor_status`, `frontage`, `built_area`, `built_year`, `no_of_floors`, `no_of_bathroom`, `no_of_rooms`, `roof_status`, `res_build_id`) VALUES
(1, 1, 'Concrete', 'Cement', 'Complete', 'Concrete', '', '', 'Normal', 10, 2002, 10, 2, 2, 'Complete', 0),
(2, 897, 'Tile', 'Wood', 'Complete', 'None', 'Tile', 'Damaged', 'Wide', 105, 1926, 11, 4, 6, 'Damaged', 7183),
(3, 828, 'Wood', 'Stone', 'Under Construction', 'Concrete', 'Laminate', 'Incomplete', 'Wide', 152, 1904, 19, 1, 7, 'Incomplete', 5563),
(4, 80, 'Concrete', 'Stone', 'Incomplete', 'Concrete', 'Wood', 'Incomplete', 'Narrow', 173, 1913, 15, 5, 10, 'Damaged', 7827),
(5, 563, 'Wood', 'Brick', 'Incomplete', 'Stone', 'Wood', 'Damaged', 'Corner', 127, 1913, 16, 4, 3, 'Damaged', 6882),
(6, 889, 'Concrete', 'Stone', 'Damaged', 'None', 'Marble', 'Under Construction', 'Normal', 411, 2008, 7, 3, 8, 'Damaged', 1410),
(7, 314, 'Concrete', 'Wood', 'Incomplete', 'None', 'Vinyl', 'Complete', 'Wide', 52, 2008, 17, 4, 9, 'Under Construction', 3199),
(8, 34, 'Tile', 'Cement', 'Complete', 'Concrete', 'Vinyl', 'Incomplete', 'Normal', 492, 1994, 17, 3, 3, 'Under Construction', 7672),
(9, 450, 'Wood', 'Cement', 'Under Construction', 'Concrete', 'Tile', 'Damaged', 'Narrow', 436, 2022, 12, 3, 9, 'Incomplete', 9681),
(10, 971, 'Metal', 'Brick', 'Incomplete', 'Stone', 'Laminate', 'Damaged', 'Corner', 247, 2002, 4, 5, 8, 'Complete', 8981),
(11, 690, 'Tile', 'Wood', 'Under Construction', 'None', 'Laminate', 'Damaged', 'Normal', 435, 1924, 12, 2, 10, 'Complete', 8845),
(12, 547, 'Tile', 'Stone', 'Under Construction', 'None', 'Wood', 'Damaged', 'Corner', 404, 1902, 20, 2, 4, 'Damaged', 8092),
(13, 311, 'Concrete', 'Brick', 'Incomplete', 'Stone', 'Wood', 'Complete', 'Wide', 303, 1986, 20, 3, 4, 'Damaged', 7546),
(14, 837, 'Metal', 'Brick', 'Under Construction', 'Stone', 'Wood', 'Incomplete', 'Wide', 346, 1928, 4, 4, 8, 'Incomplete', 1428),
(15, 555, 'Wood', 'Brick', 'Incomplete', 'Stone', 'Vinyl', 'Incomplete', 'Corner', 104, 1920, 19, 4, 4, 'Incomplete', 3836),
(16, 281, 'Wood', 'Stone', 'Incomplete', 'None', 'Wood', 'Under Construction', 'Normal', 338, 1930, 6, 5, 9, 'Incomplete', 7487),
(17, 350, 'Metal', 'Wood', 'Incomplete', 'Stone', 'Laminate', 'Complete', 'Wide', 194, 1992, 2, 2, 8, 'Under Construction', 5975),
(18, 774, 'Tile', 'Cement', 'Damaged', 'Wood', 'Vinyl', 'Complete', 'Wide', 92, 1998, 19, 4, 7, 'Complete', 4892),
(19, 592, 'Concrete', 'Cement', 'Under Construction', 'Wood', 'Laminate', 'Incomplete', 'Normal', 56, 1978, 11, 2, 7, 'Under Construction', 2433),
(20, 460, 'Concrete', 'Brick', 'Incomplete', 'Concrete', 'Tile', 'Incomplete', 'Wide', 173, 2015, 11, 1, 7, 'Damaged', 1970),
(21, 560, 'Wood', 'Stone', 'Complete', 'Wood', 'Tile', 'Complete', 'Normal', 432, 2010, 17, 4, 3, 'Complete', 4481);

-- --------------------------------------------------------

--
-- Table structure for table `res_details`
--

CREATE TABLE `res_details` (
  `id` int(11) NOT NULL,
  `house_name` varchar(255) DEFAULT NULL,
  `name_of_family_head` varchar(255) DEFAULT NULL,
  `contac_num_familyhead` bigint(20) DEFAULT NULL,
  `num_of_family_members` int(11) DEFAULT NULL,
  `ration_card_avl` varchar(255) DEFAULT NULL,
  `gas_avl` varchar(255) DEFAULT NULL,
  `gas_scheme` varchar(255) DEFAULT NULL,
  `gas_type` varchar(255) DEFAULT NULL,
  `electrification_avl` varchar(255) DEFAULT NULL,
  `electrification_scheme` varchar(255) DEFAULT NULL,
  `well_avl` varchar(255) DEFAULT NULL,
  `drinking_source` varchar(255) DEFAULT NULL,
  `family_incentives` varchar(255) DEFAULT NULL,
  `post_office_name` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `solar_energy_avl` varchar(255) DEFAULT NULL,
  `solar_capcity` varchar(255) DEFAULT NULL,
  `solar_scheme` varchar(255) DEFAULT NULL,
  `cctv_avl` varchar(255) DEFAULT NULL,
  `dth_avl` varchar(255) DEFAULT NULL,
  `computer_avl` varchar(255) DEFAULT NULL,
  `res_asso_avl` varchar(255) DEFAULT NULL,
  `road_infront` varchar(255) DEFAULT NULL,
  `nearest_mainroad` varchar(255) DEFAULT NULL,
  `disaster_affected` varchar(255) DEFAULT NULL,
  `type_of_disaster` varchar(255) DEFAULT NULL,
  `nearest_waterfront` varchar(255) DEFAULT NULL,
  `distance_from_waterfront` varchar(255) DEFAULT NULL,
  `family_insu_avl` varchar(255) DEFAULT NULL,
  `waste_mang` varchar(255) DEFAULT NULL,
  `rain_water_harvesting` varchar(255) DEFAULT NULL,
  `rwh_capacity` varchar(255) DEFAULT NULL,
  `rwh_cost` int(11) DEFAULT NULL,
  `biogas` varchar(255) DEFAULT NULL,
  `vec_avl` varchar(255) DEFAULT NULL,
  `vec_count` int(11) DEFAULT NULL,
  `vec_1000` varchar(255) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `owned_rental` varchar(255) DEFAULT NULL,
  `contac_number_familyhead` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ldate` varchar(255) DEFAULT NULL,
  `taxe` varchar(255) DEFAULT NULL,
  `rel_fam_head` varchar(255) DEFAULT NULL,
  `basement` varchar(255) DEFAULT NULL,
  `built_year` int(11) DEFAULT NULL,
  `roof_type` varchar(255) DEFAULT NULL,
  `wall_type` varchar(255) DEFAULT NULL,
  `frontage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `res_details`
--

INSERT INTO `res_details` (`id`, `house_name`, `name_of_family_head`, `contac_num_familyhead`, `num_of_family_members`, `ration_card_avl`, `gas_avl`, `gas_scheme`, `gas_type`, `electrification_avl`, `electrification_scheme`, `well_avl`, `drinking_source`, `family_incentives`, `post_office_name`, `pincode`, `solar_energy_avl`, `solar_capcity`, `solar_scheme`, `cctv_avl`, `dth_avl`, `computer_avl`, `res_asso_avl`, `road_infront`, `nearest_mainroad`, `disaster_affected`, `type_of_disaster`, `nearest_waterfront`, `distance_from_waterfront`, `family_insu_avl`, `waste_mang`, `rain_water_harvesting`, `rwh_capacity`, `rwh_cost`, `biogas`, `vec_avl`, `vec_count`, `vec_1000`, `income`, `house_number`, `owned_rental`, `contac_number_familyhead`, `uid`, `ldate`, `taxe`, `rel_fam_head`, `basement`, `built_year`, `roof_type`, `wall_type`, `frontage`) VALUES
(1, 'house_1', 'head_1', 9880228557, 3, 'No', 'Yes', 'Scheme', 'Ordinary', 'No', 'Yes', 'No', 'Borewell', 'None', 'PO_1', 147572, 'No', '9', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', '>5km', 'No', 'Flood', 'Sea', '20', 'Yes', 'No', 'No', '5084', 38019, 'Yes', 'No', 4, '0', 583932, 'HNO_1', 'Rental', '9881014724', 1, '31-01-2023 00:00:00', 'No', 'Father', 'No', 1937, 'Tile', 'Concrete', 'Large'),
(2, 'house_2', 'head_2', 9957851167, 3, 'No', 'Yes', 'Non-Scheme', 'Premium', 'Yes', 'Yes', 'Yes', 'Other', 'Grant', 'PO_2', 839301, 'No', '2', 'Yes', 'No', 'No', 'Yes', 'No', 'No', '<1km', 'Yes', 'Drought', 'River', '33', 'Yes', 'No', 'No', '3073', 1644, 'No', 'Yes', 3, '9', 45769, 'HNO_2', 'Rental', '9546704504', 2, '28-02-2023 00:00:00', 'No', 'Son', 'Yes', 1900, 'Other', 'Other', 'Large'),
(3, 'house_3', 'head_3', 9003100322, 8, 'Yes', 'No', 'Scheme', 'Ordinary', 'No', 'Yes', 'Yes', 'Well', 'Grant', 'PO_3', 631560, 'Yes', '2', 'Yes', 'Yes', 'No', 'No', 'No', 'No', '>5km', 'No', 'None', 'None', '39', 'Yes', 'Yes', 'No', '5532', 41580, 'Yes', 'Yes', 3, '3', 868341, 'HNO_3', 'Owned', '9023044358', 3, '31-03-2023 00:00:00', 'Yes', 'Son', 'Yes', 1967, 'Other', 'Wood', 'Large'),
(4, 'house_4', 'head_4', 9454532193, 5, 'Yes', 'Yes', 'Non-Scheme', 'Premium', 'Yes', 'No', 'Yes', 'Well', 'Grant', 'PO_4', 971185, 'No', '6', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', '1-5km', 'Yes', 'Flood', 'River', '1', 'No', 'No', 'Yes', '2110', 41822, 'Yes', 'Yes', 2, '5', 169623, 'HNO_4', 'Owned', '9331118546', 2147483647, '30-04-2023 00:00:00', 'Yes', 'Father', 'Yes', 1958, 'Tile', 'Brick', 'Small'),
(5, 'house_5', 'head_5', 9233039225, 4, 'Yes', 'No', 'Non-Scheme', 'Ordinary', 'No', 'Yes', 'Yes', 'Borewell', 'Grant', 'PO_5', 725496, 'No', '3', 'Yes', 'No', 'No', 'No', 'No', 'No', '1-5km', 'Yes', 'Drought', 'None', '13', 'Yes', 'Yes', 'Yes', '7036', 43960, 'No', 'Yes', 1, '3', 777577, 'HNO_5', 'Rental', '9863932890', 5, '31-05-2023 00:00:00', 'Yes', 'Other', 'No', 1901, 'Tile', 'Wood', 'Medium'),
(6, 'house_6', 'head_6', 9073168117, 2, 'Yes', 'No', 'Scheme', 'Premium', 'Yes', 'Yes', 'No', 'Other', 'None', 'PO_6', 416669, 'No', '1', 'Yes', 'Yes', 'No', 'No', 'No', 'No', '>5km', 'Yes', 'None', 'Sea', '12', 'No', 'Yes', 'No', '7436', 44678, 'Yes', 'Yes', 0, '9', 309345, 'HNO_6', 'Owned', '9130576275', 6, '30-06-2023 00:00:00', 'Yes', 'Father', 'Yes', 1978, 'Asbestos', 'Concrete', 'Small'),
(7, 'house_7', 'head_7', 9227764277, 4, 'No', 'Yes', 'Scheme', 'Premium', 'Yes', 'No', 'Yes', 'Well', 'None', 'PO_7', 437275, 'Yes', '2', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', '1-5km', 'Yes', 'Flood', 'River', '41', 'Yes', 'Yes', 'No', '8018', 20500, 'Yes', 'No', 0, '0', 953756, 'HNO_7', 'Owned', '9145677344', 7, '31-07-2023 00:00:00', 'Yes', 'Father', 'Yes', 1904, 'Tile', 'Wood', 'Small'),
(8, 'house_8', 'head_8', 9488776005, 3, 'Yes', 'No', 'Non-Scheme', 'Premium', 'No', 'No', 'No', 'Tap', 'Grant', 'PO_8', 524836, 'No', '1', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', '1-5km', 'Yes', 'Flood', 'None', '22', 'No', 'No', 'Yes', '6969', 38246, 'No', 'Yes', 1, '4', 51903, 'HNO_8', 'Rental', '9919256420', 8, '31-08-2023 00:00:00', 'Yes', 'Mother', 'No', 1972, 'Other', 'Concrete', 'Medium'),
(9, 'house_9', 'head_9', 9656221807, 6, 'No', 'Yes', 'Non-Scheme', 'Premium', 'Yes', 'No', 'Yes', 'Tap', 'Subsidy', 'PO_9', 742304, 'Yes', '8', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', '1-5km', 'No', 'None', 'Lake', '46', 'Yes', 'Yes', 'Yes', '9801', 35151, 'Yes', 'No', 0, '6', 974700, 'HNO_9', 'Rental', '9900459715', 9, '30-09-2023 00:00:00', 'Yes', 'Daughter', 'Yes', 2022, 'Other', 'Other', 'Large'),
(10, 'house_10', 'head_10', 9379674987, 1, 'No', 'Yes', 'Non-Scheme', 'Premium', 'No', 'No', 'Yes', 'Other', 'Grant', 'PO_10', 985603, 'Yes', '5', 'No', 'No', 'Yes', 'No', 'Yes', 'No', '<1km', 'No', 'Flood', 'Sea', '9', 'No', 'Yes', 'No', '9204', 1273, 'Yes', 'No', 1, '4', 126505, 'HNO_10', 'Owned', '9571267766', 10, '31-10-2023 00:00:00', 'No', 'Mother', 'No', 1903, 'Other', 'Concrete', 'Medium'),
(11, 'house_11', 'head_11', 9206522135, 8, 'Yes', 'Yes', 'Scheme', 'Ordinary', 'No', 'Yes', 'Yes', 'Borewell', 'Grant', 'PO_11', 693331, 'No', '5', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', '1-5km', 'Yes', 'None', 'None', '6', 'Yes', 'No', 'Yes', '8496', 33247, 'No', 'No', 2, '4', 766712, 'HNO_11', 'Rental', '9147766791', 11, '30-11-2023 00:00:00', 'No', 'Mother', 'Yes', 1977, 'Concrete', 'Concrete', 'Large'),
(12, 'house_12', 'head_12', 9146672578, 4, 'No', 'No', 'Scheme', 'Premium', 'Yes', 'No', 'Yes', 'Borewell', 'Grant', 'PO_12', 494040, 'Yes', '2', 'No', 'No', 'Yes', 'Yes', 'Yes', 'Yes', '1-5km', 'No', 'Flood', 'Sea', '18', 'No', 'No', 'No', '1099', 26252, 'No', 'No', 3, '1', 797887, 'HNO_12', 'Owned', '9555351762', 12, '31-12-2023 00:00:00', 'Yes', 'Mother', 'Yes', 1926, 'Tile', 'Concrete', 'Medium'),
(13, 'house_13', 'head_13', 9275483056, 9, 'Yes', 'No', 'Non-Scheme', 'Ordinary', 'No', 'Yes', 'No', 'Tap', 'Subsidy', 'PO_13', 730064, 'Yes', '8', 'No', 'Yes', 'Yes', 'No', 'No', 'No', '1-5km', 'Yes', 'Drought', 'Lake', '43', 'No', 'No', 'No', '7339', 49468, 'No', 'No', 4, '6', 336945, 'HNO_13', 'Owned', '9882292199', 13, '31-01-2024 00:00:00', 'Yes', 'Son', 'Yes', 1921, 'Concrete', 'Wood', 'Small'),
(14, 'house_14', 'head_14', 9421353473, 9, 'Yes', 'Yes', 'Non-Scheme', 'Premium', 'Yes', 'Yes', 'No', 'Borewell', 'Subsidy', 'PO_14', 237783, 'Yes', '7', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '1-5km', 'Yes', 'Drought', 'None', '4', 'No', 'No', 'Yes', '2252', 26288, 'No', 'No', 1, '7', 296504, 'HNO_14', 'Rental', '9785162210', 14, '29-02-2024 00:00:00', 'Yes', 'Other', 'Yes', 1972, 'Asbestos', 'Wood', 'Medium'),
(15, 'house_15', 'head_15', 9312177193, 8, 'No', 'No', 'Non-Scheme', 'Premium', 'No', 'Yes', 'No', 'Tap', 'Subsidy', 'PO_15', 954844, 'No', '8', 'Yes', 'No', 'No', 'Yes', 'No', 'No', '<1km', 'No', 'None', 'River', '14', 'No', 'Yes', 'No', '2035', 4812, 'Yes', 'No', 0, '9', 485838, 'HNO_15', 'Rental', '9120155823', 15, '31-03-2024 00:00:00', 'No', 'Daughter', 'No', 2015, 'Asbestos', 'Wood', 'Medium'),
(16, 'house_16', 'head_16', 9218724181, 3, 'Yes', 'No', 'Scheme', 'Premium', 'Yes', 'Yes', 'No', 'Well', 'Subsidy', 'PO_16', 509577, 'Yes', '8', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', '1-5km', 'No', 'Drought', 'Lake', '43', 'No', 'No', 'No', '2314', 13539, 'No', 'Yes', 1, '2', 183959, 'HNO_16', 'Owned', '9727823650', 16, '30-04-2024 00:00:00', 'Yes', 'Other', 'No', 2020, 'Asbestos', 'Other', 'Medium'),
(17, 'house_17', 'head_17', 9784620170, 4, 'Yes', 'Yes', 'Scheme', 'Ordinary', 'No', 'No', 'Yes', 'Borewell', 'Grant', 'PO_17', 854622, 'Yes', '9', 'No', 'No', 'No', 'Yes', 'No', 'No', '>5km', 'Yes', 'None', 'Sea', '49', 'Yes', 'No', 'No', '4592', 26763, 'Yes', 'No', 1, '2', 67542, 'HNO_17', 'Owned', '9503112827', 17, '31-05-2024 00:00:00', 'No', 'Father', 'No', 1909, 'Concrete', 'Concrete', 'Large'),
(18, 'house_18', 'head_18', 9118168854, 3, 'Yes', 'No', 'Non-Scheme', 'Premium', 'No', 'Yes', 'No', 'Other', 'None', 'PO_18', 847639, 'Yes', '5', 'No', 'Yes', 'No', 'No', 'Yes', 'No', '>5km', 'Yes', 'None', 'None', '8', 'No', 'No', 'Yes', '7308', 29357, 'Yes', 'Yes', 3, '5', 778281, 'HNO_18', 'Owned', '9620237149', 18, '30-06-2024 00:00:00', 'Yes', 'Son', 'Yes', 1980, 'Asbestos', 'Brick', 'Large'),
(19, 'house_19', 'head_19', 9263201136, 7, 'No', 'No', 'Non-Scheme', 'Premium', 'Yes', 'Yes', 'Yes', 'Borewell', 'Grant', 'PO_19', 130969, 'Yes', '1', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', '>5km', 'Yes', 'None', 'None', '49', 'Yes', 'No', 'No', '5822', 35645, 'No', 'Yes', 3, '2', 566309, 'HNO_19', 'Owned', '9545500618', 19, '31-07-2024 00:00:00', 'Yes', 'Father', 'Yes', 1979, 'Asbestos', 'Other', 'Medium'),
(20, 'house_20', 'head_20', 9248246359, 1, 'No', 'Yes', 'Scheme', 'Ordinary', 'Yes', 'No', 'No', 'Other', 'Subsidy', 'PO_20', 589887, 'Yes', '4', 'No', 'No', 'No', 'No', 'No', 'Yes', '>5km', 'No', 'Drought', 'Sea', '5', 'No', 'Yes', 'No', '4248', 21181, 'Yes', 'Yes', 3, '1', 764134, 'HNO_20', 'Rental', '9082547921', 10, '31-08-2024 00:00:00', 'No', 'Other', 'No', 1973, 'Other', 'Concrete', 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_num` bigint(20) NOT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`username`, `password`, `phone_num`, `role`, `email`) VALUES
('karthikeyan', 'karthi.2002', 8590510167, 'admin', 'karthikeyanks3673@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `per_details`
--
ALTER TABLE `per_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rationcard_details`
--
ALTER TABLE `rationcard_details`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rental_details`
--
ALTER TABLE `rental_details`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `res_association`
--
ALTER TABLE `res_association`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `res_building_details`
--
ALTER TABLE `res_building_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_details`
--
ALTER TABLE `res_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `per_details`
--
ALTER TABLE `per_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `rationcard_details`
--
ALTER TABLE `rationcard_details`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rental_details`
--
ALTER TABLE `rental_details`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `res_association`
--
ALTER TABLE `res_association`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `res_building_details`
--
ALTER TABLE `res_building_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `res_details`
--
ALTER TABLE `res_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
