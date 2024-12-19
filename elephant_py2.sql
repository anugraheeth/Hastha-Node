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
-- Database: `elephant_py2`
CREATE DATABASE IF NOT EXISTS `sql3753054` DEFAULT CHARACTER SET utf8mb4;
USE `sql3753054`;


-- --------------------------------------------------------

--
-- Table structure for table `commerical_building`
--

CREATE TABLE `commerical_building` (
  `address_comm` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `liscense` varchar(255) DEFAULT NULL,
  `liscense_num` varchar(255) DEFAULT NULL,
  `year_started` varchar(255) DEFAULT NULL,
  `num_employees` varchar(255) DEFAULT NULL,
  `drinking_water_avl` varchar(255) DEFAULT NULL,
  `drinking_water_source` varchar(255) DEFAULT NULL,
  `cctv_avl` varchar(255) DEFAULT NULL,
  `road_infront` varchar(255) DEFAULT NULL,
  `nearest_mainroad` varchar(255) DEFAULT NULL,
  `emergency_ss` varchar(255) DEFAULT NULL,
  `post_office` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `nwf` varchar(255) DEFAULT NULL,
  `dwf` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `name_of_businness` varchar(255) DEFAULT NULL,
  `type_of_businnes` varchar(255) DEFAULT NULL,
  `name_of_business_owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `commerical_building`
--

INSERT INTO `commerical_building` (`address_comm`, `phone`, `liscense`, `liscense_num`, `year_started`, `num_employees`, `drinking_water_avl`, `drinking_water_source`, `cctv_avl`, `road_infront`, `nearest_mainroad`, `emergency_ss`, `post_office`, `pin_code`, `nwf`, `dwf`, `id`, `nid`, `name_of_businness`, `type_of_businnes`, `name_of_business_owner`) VALUES
('123 Main St', '5551234567', 'Yes', 'LIC123456', '2010', '15', 'Yes', 'Municipal', 'Yes', 'Oak Ave', 'Elm St', 'Yes', 'Central PO', '12345', 'North', '2', 1, 10, 'Joe\'s Diner', 'Restaurant', 'Joe Smith'),
('456 Broad St', '5559876543', 'Yes', 'LIC789012', '2005', '8', 'Yes', 'Bottled', 'No', 'Maple Rd', 'Pine Blvd', 'No', 'East PO', '67890', 'South', '1', 2, 2, 'Tech Solutions', 'IT Services', 'Sarah Johnson'),
('789 Park Ave', '5552345678', 'Yes', 'LIC345678', '2015', '25', 'Yes', 'Well', 'Yes', 'Cedar Ln', 'Birch Dr', 'Yes', 'West PO', '54321', 'East', '3', 3, 3, 'Green Thumb', 'Garden Center', 'Mike Brown'),
('321 Lake Rd', '5558765432', 'No', 'N/A', '2018', '3', 'No', 'N/A', 'Yes', 'Willow St', 'Spruce Ave', 'No', 'North PO', '98765', 'West', '1', 4, 10, 'Cozy Books', 'Bookstore', 'Emma Davis'),
('654 River Ln', '5553456789', 'Yes', 'LIC901234', '2000', '50', 'Yes', 'Municipal', 'Yes', 'Ash Rd', 'Poplar St', 'Yes', 'South PO', '13579', 'Northwest', '4', 5, 5, 'Fitness First', 'Gym', 'Chris Wilson'),
('987 Hill St', '5557654321', 'Yes', 'LIC567890', '2012', '12', 'Yes', 'Filtered', 'No', 'Beech Ave', 'Maple Ln', 'Yes', 'Downtown PO', '24680', 'Southeast', '2', 6, 6, 'Paw Palace', 'Pet Store', 'Linda Martinez'),
('147 Ocean Blvd', '5554567890', 'Yes', 'LIC234567', '2008', '30', 'Yes', 'Municipal', 'Yes', 'Palm Dr', 'Beach Rd', 'No', 'Coastal PO', '36912', 'Southwest', '3', 7, 7, 'Surf\'s Up', 'Surf Shop', 'Tom Jackson'),
('258 Forest Ave', '5556543210', 'No', 'N/A', '2020', '5', 'Yes', 'Well', 'Yes', 'Pine St', 'Oak Rd', 'Yes', 'Forest PO', '14725', 'Northeast', '1', 8, 8, 'Timber Trade', 'Lumber Yard', 'Alice Cooper'),
('369 Meadow Ln', '5555678901', 'Yes', 'LIC678901', '2003', '18', 'Yes', 'Bottled', 'No', 'Daisy Ln', 'Rose Blvd', 'No', 'Meadow PO', '25836', 'North', '2', 9, 109, 'Bloom & Grow', 'Florist', 'Robert Lee'),
('741 Valley Rd', '5559876541', 'Yes', 'LIC012345', '2017', '7', 'Yes', 'Municipal', 'Yes', 'Ridge Dr', 'Canyon Ave', 'Yes', 'Valley PO', '36947', 'South', '1', 10, 110, 'Mountain Gear', 'Outdoor Equipment', 'Emily Chen'),
('852 Sunset Blvd', '5552345679', 'Yes', 'LIC456789', '2006', '22', 'Yes', 'Filtered', 'Yes', 'Horizon St', 'Star Ave', 'No', 'Sunset PO', '15973', 'East', '3', 11, 111, 'Cinema Paradise', 'Movie Theater', 'David Nguyen'),
('963 Sunrise Ave', '5558765430', 'No', 'N/A', '2019', '4', 'No', 'N/A', 'No', 'Dawn Rd', 'Dusk Ln', 'Yes', 'Sunrise PO', '26184', 'West', '1', 12, 112, 'Morning Brew', 'Coffee Shop', 'Sofia Patel'),
('159 Harbor Dr', '5553456782', 'Yes', 'LIC890123', '2001', '40', 'Yes', 'Municipal', 'Yes', 'Dock St', 'Pier Ave', 'Yes', 'Harbor PO', '37295', 'Northwest', '4', 13, 113, 'Sea Breeze', 'Seafood Restaurant', 'James Kim'),
('357 Mountain View Rd', '5557654329', 'Yes', 'LIC234567', '2014', '10', 'Yes', 'Well', 'No', 'Summit Ln', 'Valley Dr', 'No', 'Mountain PO', '48206', 'Southeast', '2', 14, 114, 'Peak Performance', 'Ski Shop', 'Maria Rodriguez'),
('753 Downtown St', '5554567893', 'Yes', 'LIC678901', '2009', '35', 'Yes', 'Municipal', 'Yes', 'Main St', 'Commerce Ave', 'Yes', 'Central PO', '59317', 'Southwest', '3', 15, 115, 'Urban Outfitters', 'Clothing Store', 'John Taylor'),
('951 Uptown Ave', '5556543217', 'No', 'N/A', '2021', '6', 'Yes', 'Bottled', 'Yes', 'High St', 'Low Rd', 'No', 'Uptown PO', '60428', 'Northeast', '1', 16, 116, 'Skyline Realty', 'Real Estate Agency', 'Karen Wong'),
('246 Suburb Ln', '5555678904', 'Yes', 'LIC012345', '2004', '20', 'Yes', 'Filtered', 'No', 'Quiet St', 'Busy Ave', 'Yes', 'Suburb PO', '71539', 'North', '2', 17, 117, 'Family Pharmacy', 'Drugstore', 'Peter Singh'),
('864 Industrial Park', '5559876545', 'Yes', 'LIC456789', '2016', '100', 'Yes', 'Municipal', 'Yes', 'Factory Rd', 'Warehouse Ave', 'Yes', 'Industrial PO', '82640', 'South', '5', 18, 118, 'Tech Innovations', 'Manufacturing', 'Lisa Gonzalez'),
('135 University Ave', '5552345672', 'Yes', 'LIC890123', '2007', '45', 'Yes', 'Municipal', 'No', 'Campus Dr', 'College Rd', 'No', 'University PO', '93751', 'East', '3', 19, 119, 'Scholarly Books', 'Academic Bookstore', 'Mark Thompson'),
('579 Arts District', '5558765436', 'Yes', 'LIC234567', '2013', '15', 'Yes', 'Bottled', 'Yes', 'Gallery St', 'Studio Ave', 'Yes', 'Arts PO', '4862', 'West', '2', 20, 120, 'Creative Space', 'Art Supply Store', 'Rachel Kim');

-- --------------------------------------------------------

--
-- Table structure for table `details_building_owner`
--

CREATE TABLE `details_building_owner` (
  `id` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `details_building_owner`
--

INSERT INTO `details_building_owner` (`id`, `nid`, `name`, `address`, `contact`) VALUES
(NULL, 1, 'a', 'a', '7894561230'),
(NULL, 2, 'a', 'a', '7894561230'),
(NULL, 3, 'a', 'a', '7894561230'),
(NULL, 4, 'dd', 'sss', '7894561230'),
(NULL, 5, 'k', 'k', '7894561230'),
(NULL, 6, 'ghj', 'hj', '7894561230'),
(NULL, 7, 'ghj', 'hj', '7894561230'),
(NULL, 8, 'ghj', 'hj', '7894561230'),
(NULL, 9, 'hui', 'g', '7894561230'),
(NULL, 10, 'hui', 'g', '7894561230'),
(NULL, 11, 'hui', 'g', '7894561230'),
(NULL, 12, 'ghj', 'bh', '7894561231'),
(NULL, 13, 'ghj', 'bh', '7894561231'),
(NULL, 14, 'ghj', 'bh', '7894561231');

-- --------------------------------------------------------

--
-- Table structure for table `details_of_building`
--

CREATE TABLE `details_of_building` (
  `build_id` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `built_area` int(11) DEFAULT NULL,
  `rooftype` varchar(255) DEFAULT NULL,
  `roof_status` varchar(255) DEFAULT NULL,
  `wall_type` varchar(255) DEFAULT NULL,
  `wall_status` varchar(255) DEFAULT NULL,
  `basement` varchar(255) DEFAULT NULL,
  `frontage` varchar(255) DEFAULT NULL,
  `built_year` int(11) DEFAULT NULL,
  `no_of_floors` int(11) DEFAULT NULL,
  `no_rooms` int(11) DEFAULT NULL,
  `no_toilets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `details_of_building`
--

INSERT INTO `details_of_building` (`build_id`, `nid`, `built_area`, `rooftype`, `roof_status`, `wall_type`, `wall_status`, `basement`, `frontage`, `built_year`, `no_of_floors`, `no_rooms`, `no_toilets`) VALUES
(NULL, 1, 10, 'Concrete', '', 'Cement', 'Complete', 'Concrete', 'Normal', 2002, 1, 1, 1),
(NULL, 2, 10, 'Concrete', '', 'Cement', 'Incomplete', '', 'Normal', 2002, 1, 1, 1),
(NULL, 5, 10, 'Concrete', '', 'Cement', 'Complete', 'Concrete', 'Normal', 2002, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `educational`
--

CREATE TABLE `educational` (
  `eid` int(11) DEFAULT NULL,
  `name_of_institution` varchar(255) DEFAULT NULL,
  `head_of_institution` varchar(255) DEFAULT NULL,
  `address_ins` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `no_of_students` int(11) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `drinking_water_avl` varchar(255) DEFAULT NULL,
  `drinking_water_source` varchar(255) DEFAULT NULL,
  `cctv_avl` varchar(255) DEFAULT NULL,
  `road_infront` varchar(255) DEFAULT NULL,
  `nearest_mainroad` varchar(255) DEFAULT NULL,
  `emergency_ss` varchar(255) DEFAULT NULL,
  `rooftype` varchar(255) DEFAULT NULL,
  `roof_status` varchar(255) DEFAULT NULL,
  `wall_type` varchar(255) DEFAULT NULL,
  `wall_status` varchar(255) DEFAULT NULL,
  `basement` varchar(255) DEFAULT NULL,
  `frontage` varchar(255) DEFAULT NULL,
  `built_year` int(11) DEFAULT NULL,
  `builtup_area` int(11) DEFAULT NULL,
  `no_of_floors` int(11) DEFAULT NULL,
  `no_rooms` int(11) DEFAULT NULL,
  `no_toilets` int(11) DEFAULT NULL,
  `post_office` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `nwf` varchar(255) DEFAULT NULL,
  `dwf` varchar(255) DEFAULT NULL,
  `no_of_emp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `educational`
--

INSERT INTO `educational` (`eid`, `name_of_institution`, `head_of_institution`, `address_ins`, `id`, `no_of_students`, `phone_num`, `nid`, `drinking_water_avl`, `drinking_water_source`, `cctv_avl`, `road_infront`, `nearest_mainroad`, `emergency_ss`, `rooftype`, `roof_status`, `wall_type`, `wall_status`, `basement`, `frontage`, `built_year`, `builtup_area`, `no_of_floors`, `no_rooms`, `no_toilets`, `post_office`, `pin_code`, `nwf`, `dwf`, `no_of_emp`) VALUES
(NULL, 'jk', 'bnk', 'n', NULL, 100, '7894561230', 14, 'Yes', 'Well', 'Yes', 'nkl', ' nkl', 'Yes', 'Concrete', 'Complete', 'Brick', 'Complete', '', '', 2002, 200, 3, 10, 5, 'gh', ' 789456', 'nk', '100', '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE `emp_details` (
  `nid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `desi` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `temp_add` varchar(255) DEFAULT NULL,
  `pre_add` varchar(255) DEFAULT NULL,
  `h_edu` varchar(255) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `aadhar_avl` varchar(255) DEFAULT NULL,
  `aadhar_num` bigint(20) DEFAULT NULL,
  `insu_avl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`nid`, `name`, `date`, `gender`, `desi`, `phone`, `temp_add`, `pre_add`, `h_edu`, `income`, `aadhar_avl`, `aadhar_num`, `insu_avl`) VALUES
(2, 'a', '2022-06-10 00:00:00', 'Male', 'a', 7894561230, 'a', 'a', 'Plus Two', 1000001, 'Yes', 789456123123, 'Yes'),
(3, 'a', '2022-06-01 00:00:00', 'Male', 'a', 7894561230, 'a', 'a', 'PG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(4, 'ss', '2022-06-09 00:00:00', 'Male', 'aa', 7894561230, 'ss', 'ss', 'UG Degree', 2000002, 'Yes', 789456123123, 'Yes'),
(5, 'kk', '2022-06-15 00:00:00', 'Male', 'jj', 7894561230, 'kk', 'kk', 'PG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(6, 'ghj', '2022-06-04 00:00:00', 'Male', 'vhj', 7894561230, 'k', 'k', 'UG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(7, 'dfh', '2022-06-14 00:00:00', 'Male', 'sdfg', 7894561230, 'dfgh', 'dfgh', 'PG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(8, 'sds', '2022-06-14 00:00:00', 'Male', 'a', 7894561230, 'gg', 'gg', 'PG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(9, 'd', '2022-06-17 00:00:00', 'Male', 'gh', 7894561230, 'hj', 'hj', 'PG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(10, 'df', '2022-06-03 00:00:00', 'Male', 'g', 789456120, 'n', 'n', 'UG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(11, 'hj', '2022-06-03 00:00:00', 'Male', 's', 7894561230, 'n', 'n', 'UG Degree', 1000001, 'Yes', 789456123123, 'Yes'),
(12, 'hjk', '2022-06-03 00:00:00', 'Male', 'jkl', 7894561230, 'k', 'k', 'UG Degree', 2000002, 'Yes', 789456123123, 'Yes'),
(13, 'fghj', '2022-06-04 00:00:00', 'Male', 'bk', 7894561230, 'nk', 'nk', 'PG Degree', 2000002, 'Yes', 789456123123, 'Yes'),
(14, 'cg', '2022-06-02 00:00:00', 'Male', 'fg', 7894561230, 'fg', 'fg', 'UG Degree', 1000001, 'Yes', 789456123123, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `name_of_institution` varchar(255) NOT NULL,
  `hid` int(11) DEFAULT NULL,
  `name_of_head` varchar(255) DEFAULT NULL,
  `address_ins` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `builtup_area` varchar(255) DEFAULT NULL,
  `num_emp` varchar(255) DEFAULT NULL,
  `num_beds` varchar(255) DEFAULT NULL,
  `drinking_water_avl` varchar(255) DEFAULT NULL,
  `drinking_water_source` varchar(255) DEFAULT NULL,
  `cctv_avl` varchar(255) DEFAULT NULL,
  `road_infront` varchar(255) DEFAULT NULL,
  `nearest_main_road` varchar(255) DEFAULT NULL,
  `emergency_ss` varchar(255) DEFAULT NULL,
  `rooftype` varchar(255) DEFAULT NULL,
  `roof_status` varchar(255) DEFAULT NULL,
  `wall_type` varchar(255) DEFAULT NULL,
  `wall_status` varchar(255) DEFAULT NULL,
  `basement` varchar(255) DEFAULT NULL,
  `frontage` varchar(255) DEFAULT NULL,
  `built_year` int(11) DEFAULT NULL,
  `no_of_floors` varchar(255) DEFAULT NULL,
  `no_rooms` int(11) DEFAULT NULL,
  `no_toilets` int(11) DEFAULT NULL,
  `post_office` varchar(255) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `nwf` varchar(255) DEFAULT NULL,
  `dwf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `nid`, `name_of_institution`, `hid`, `name_of_head`, `address_ins`, `phone`, `builtup_area`, `num_emp`, `num_beds`, `drinking_water_avl`, `drinking_water_source`, `cctv_avl`, `road_infront`, `nearest_main_road`, `emergency_ss`, `rooftype`, `roof_status`, `wall_type`, `wall_status`, `basement`, `frontage`, `built_year`, `no_of_floors`, `no_rooms`, `no_toilets`, `post_office`, `pin_code`, `nwf`, `dwf`) VALUES
(1, 8, 'ghj', NULL, 'bn', 'bn', '7894561230', '10', '5', '5', 'Yes', 'Well', '', 'ghjk', 'ghjk', ' Yes', 'Concrete', 'Complete', 'Brick', 'Complete', '', '', 2002, '1', 1, 1, 'fgh', 789456, 'hjk', 5448);

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` int(11) DEFAULT NULL,
  `nid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `emp` varchar(255) NOT NULL,
  `name_of_industry` varchar(255) DEFAULT NULL,
  `name_of_head` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `drinking_water_avl` varchar(255) DEFAULT NULL,
  `drinking_water_source` varchar(255) DEFAULT NULL,
  `cctv_avl` varchar(255) DEFAULT NULL,
  `road_infront` varchar(255) DEFAULT NULL,
  `nearest_main_road` varchar(255) DEFAULT NULL,
  `near_water_front` varchar(255) DEFAULT NULL,
  `dis_water_front` varchar(255) DEFAULT NULL,
  `emergency_ss` varchar(255) DEFAULT NULL,
  `postoffice` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `nid`, `type`, `emp`, `name_of_industry`, `name_of_head`, `address`, `phone`, `pincode`, `drinking_water_avl`, `drinking_water_source`, `cctv_avl`, `road_infront`, `nearest_main_road`, `near_water_front`, `dis_water_front`, `emergency_ss`, `postoffice`) VALUES
(NULL, 11, '', '', 'fghj', 'fgh', 'ghj', 7894561230, 789456, 'Yes', 'Well', 'Yes', 'hj', 'b', 'k', '100', 'Yes', 'ghjk');

-- --------------------------------------------------------

--
-- Table structure for table `non_res`
--

CREATE TABLE `non_res` (
  `nid` int(11) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `liscense` varchar(255) DEFAULT NULL,
  `emergency_ss` varchar(255) DEFAULT NULL,
  `building_number` int(11) DEFAULT NULL,
  `name_of_head` varchar(255) DEFAULT NULL,
  `private_nonprivate` varchar(255) DEFAULT NULL,
  `c_or_i` varchar(255) DEFAULT NULL,
  `taxe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `non_res`
--

INSERT INTO `non_res` (`nid`, `phone`, `liscense`, `emergency_ss`, `building_number`, `name_of_head`, `private_nonprivate`, `c_or_i`, `taxe`) VALUES
(1, NULL, NULL, NULL, 1, NULL, 'Private', 'Commercial', 'Yes'),
(2, NULL, NULL, NULL, 1, NULL, 'Private', 'Commercial', 'Yes'),
(3, NULL, NULL, NULL, 1, NULL, 'Private', 'Religious', 'Yes'),
(4, NULL, NULL, NULL, 4, NULL, 'Private', 'Educational', 'Yes'),
(5, NULL, NULL, NULL, 8, NULL, 'Private', 'Commercial', 'Yes'),
(6, NULL, NULL, NULL, 9, NULL, 'Private', 'Hospital', 'Yes'),
(7, NULL, NULL, NULL, 9, NULL, 'Private', 'Hospital', 'Yes'),
(8, NULL, NULL, NULL, 9, NULL, 'Private', 'Hospital', 'Yes'),
(9, NULL, NULL, NULL, 85, NULL, 'Private', 'Industrial', 'Yes'),
(10, NULL, NULL, NULL, 85, NULL, 'Private', 'Industrial', 'Yes'),
(11, NULL, NULL, NULL, 85, NULL, 'Private', 'Industrial', 'Yes'),
(12, NULL, NULL, NULL, 789, NULL, 'Private', 'Educational', 'Yes'),
(13, NULL, NULL, NULL, 789, NULL, 'Private', 'Educational', 'Yes'),
(14, NULL, NULL, NULL, 789, NULL, 'Private', 'Educational', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `religious`
--

CREATE TABLE `religious` (
  `id` int(11) DEFAULT NULL,
  `nid` int(11) NOT NULL,
  `type_of_religious_activity` varchar(255) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `name_of_institution` varchar(255) DEFAULT NULL,
  `head_of_institution` varchar(255) DEFAULT NULL,
  `address_ins` varchar(255) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `religious`
--

INSERT INTO `religious` (`id`, `nid`, `type_of_religious_activity`, `rid`, `name_of_institution`, `head_of_institution`, `address_ins`, `phone_num`) VALUES
(NULL, 3, 'Church', NULL, 'a', 'a', 'a', '7894561230');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commerical_building`
--
ALTER TABLE `commerical_building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_res`
--
ALTER TABLE `non_res`
  ADD PRIMARY KEY (`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commerical_building`
--
ALTER TABLE `commerical_building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `non_res`
--
ALTER TABLE `non_res`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
