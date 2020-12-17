-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Dumping structure for table test.module_button
CREATE TABLE IF NOT EXISTS `module_button` (
  `buttonId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `settingId` bigint(20) DEFAULT NULL,
  `type` varchar(128) DEFAULT 'text',
  `icon` varchar(100) DEFAULT NULL,
  `size` varchar(128) DEFAULT NULL,
  `iconAlign` varchar(100) DEFAULT 'left',
  `fillColor` varchar(100) DEFAULT '#000000',
  `hoverColor` varchar(100) DEFAULT '#000000',
  `title` varchar(1024) DEFAULT NULL,
  `ctaLink` varchar(1024) DEFAULT NULL,
  `linkColor` varchar(100) DEFAULT '#000000',
  `linkHoverColor` varchar(100) DEFAULT '#000000',
  `textAlign` varchar(10) DEFAULT 'center',
  `radius` varchar(128) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`buttonId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_button: ~53 rows (approximately)
DELETE FROM `module_button`;
/*!40000 ALTER TABLE `module_button` DISABLE KEYS */;
INSERT INTO `module_button` (`buttonId`, `internalName`, `settingId`, `type`, `icon`, `size`, `iconAlign`, `fillColor`, `hoverColor`, `title`, `ctaLink`, `linkColor`, `linkHoverColor`, `textAlign`, `radius`, `createdAt`, `updatedAt`) VALUES
	(7, 'MainLogo', 29, 'image', 'website-image--1603081575101.png', NULL, 'left', NULL, NULL, NULL, 'www.emoceanstudios.com.au', NULL, NULL, NULL, NULL, '2020-10-19 04:26:15', '2020-10-20 00:39:48'),
	(8, 'MainSearch', 40, 'image', 'website-image--1603161994034.svg', '50%', NULL, '#33cccc', '#009999', '<p>Search</p>', NULL, '#009999', NULL, 'center', NULL, '2020-10-19 04:28:58', '2020-10-24 06:55:22'),
	(9, 'BTN-MARKETING', 31, 'text', NULL, NULL, 'left', '', NULL, '<p>MARKETING</p>', 'https://www.emoceanstudios.com.au/email-marketing/email-marketing-services-parramatta.php', '#505050', '', NULL, NULL, '2020-10-19 04:37:13', '2020-10-22 01:29:54'),
	(10, 'BTN-WEBSITES', 31, 'text', NULL, NULL, 'left', NULL, NULL, '<p>WEBSITES</p>', 'https://www.emoceanstudios.com.au/website-design/website-design-parramatta.php', '#505050', '', NULL, NULL, '2020-10-19 04:38:25', '2020-10-22 01:42:41'),
	(11, 'BTN: Speak to an Expert', 35, 'text', NULL, NULL, NULL, '#33cccc', NULL, '<p>Speak with an Expert</p>', '', '#ffffff', '#ffffff', 'left', NULL, '2020-10-20 00:43:38', '2020-10-21 05:23:22'),
	(12, 'BTN-WEBSYSTEMS', 31, 'text', NULL, NULL, '', '', NULL, '<p>WEB SYSTEMS</p>', NULL, '#505050', NULL, NULL, NULL, '2020-10-20 02:17:45', '2020-10-20 02:53:51'),
	(13, 'BTN-DESIGN', 31, 'text', NULL, NULL, NULL, NULL, NULL, '<p>DESIGN</p>', 'https://www.emoceanstudios.com.au/graphic-design/graphic-design-parramatta.php', '#505050', NULL, NULL, NULL, '2020-10-20 02:52:41', '2020-10-20 02:55:41'),
	(14, 'BTN-PHOTOGRAPHY', 31, 'text', NULL, NULL, NULL, NULL, NULL, '<p>PHOTOGRAPHY</p>', 'https://www.emoceanstudios.com.au/product-photography/product-photography-parramatta.php', '#505050', NULL, NULL, NULL, '2020-10-20 02:57:29', '2020-10-20 02:57:29'),
	(15, 'BTN-BLOG', 31, 'text', NULL, NULL, NULL, NULL, NULL, '<p>Blog</p>', NULL, '#909090', NULL, NULL, NULL, '2020-10-20 03:00:17', '2020-10-20 03:02:28'),
	(16, 'BTN-TOOLS', 31, 'text', NULL, NULL, NULL, NULL, NULL, '<p>Tools</p>', NULL, '#909090', NULL, NULL, NULL, '2020-10-20 03:01:24', '2020-10-20 03:02:32'),
	(17, 'BTN-CONTACT', 31, 'text', NULL, NULL, NULL, NULL, NULL, '<p>Contact</p>', 'https://www.emoceanstudios.com.au/contact-call-emocean-studios.php', '#909090', NULL, NULL, NULL, '2020-10-20 03:01:58', '2020-10-20 03:02:37'),
	(18, 'AS-LOGO', 45, 'image', 'website-image--1603340324642.png', '50%', 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-22 04:18:44', '2020-10-29 07:49:57'),
	(19, 'BTN:WHO-WE-ARE', 42, 'text', NULL, '50%', 'right', NULL, NULL, '<p>Who We Are</p>', '', '#78909c', '#ee3c83', NULL, NULL, '2020-10-22 04:21:45', '2020-11-10 16:49:16'),
	(20, 'BTN:ACCREDITATION', 42, 'text', 'website-image--1603344840582.png', '50%', NULL, NULL, NULL, '<p>Accreditation</p>', NULL, '#78909c', '#ee3c83', NULL, NULL, '2020-10-22 04:27:05', '2020-10-23 01:57:01'),
	(21, 'BTN:DISTRIBUTION-PARTNERS', 42, 'text', 'website-image--1603344850366.png', '50%', NULL, NULL, NULL, '<p>Distribution Partners</p>', NULL, '#78909c', '#ee3c83', NULL, NULL, '2020-10-22 04:32:19', '2020-10-23 01:57:29'),
	(22, 'BTN:CONTACT', 42, 'text', 'website-image--1603344863521.png', NULL, NULL, NULL, NULL, '<p>Contact</p>', NULL, '#78909c', '#ee3c83', NULL, NULL, '2020-10-22 04:48:03', '2020-10-23 01:57:16'),
	(23, 'AS:BTN:VISITWEBSITE:Exactech', 66, NULL, NULL, NULL, NULL, NULL, '#ee3c83', '<p>Visit Website</p>', 'http://www.exac.com', '#ee3c83', '#fff', 'center', NULL, '2020-10-23 21:35:13', '2020-10-30 05:16:47'),
	(24, 'Contact US Body Inside Submit', 80, NULL, NULL, NULL, NULL, NULL, '#e91e63', '<p>SEND MESSAGE</p>', NULL, '#e91e63', '#fff', NULL, NULL, '2020-10-23 23:02:20', '2020-10-23 23:03:22'),
	(25, 'Speak with an Expert', 87, NULL, NULL, NULL, NULL, '#FAD800', '#FFFF66', '<p>Speak with an Expert</p>', 'http://www.emoceanstudios.com.au', NULL, NULL, NULL, '20px', '2020-10-27 01:29:36', '2020-10-27 03:09:44'),
	(26, 'BTN:Apply Now', 87, NULL, NULL, NULL, NULL, '#FAD800', '#FFFF66', '<p>Apply Now﻿</p>', 'http://www.emoceanstudios.com.au', NULL, NULL, NULL, '20px', '2020-10-27 01:33:21', '2020-10-27 03:05:59'),
	(27, 'BTN:More ABout CommBank app', 89, NULL, NULL, NULL, NULL, '#f5f5f5', NULL, '<p>More about CommBank app</p>', NULL, NULL, NULL, NULL, '20px', '2020-10-27 03:38:02', '2020-10-27 04:53:28'),
	(28, 'BTN:Visit Resource Hub', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Visit resource hub</p>', NULL, '#005ADD', NULL, 'left', NULL, '2020-10-27 06:08:24', '2020-10-27 06:08:24'),
	(29, 'BTN:ExploreBenefitsFinder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Explore Benefits finder</p>', 'http://www.emoceanstudios.com.au', '#005ADD', NULL, 'left', NULL, '2020-10-27 06:12:24', '2020-10-27 06:12:24'),
	(30, 'BTN:iPhone12', 87, NULL, NULL, NULL, NULL, '#FAD800', '#ffff66', '<p>Buy now</p>', NULL, NULL, NULL, NULL, NULL, '2020-10-27 09:36:34', '2020-10-27 12:12:15'),
	(31, 'SM:Facebook', NULL, 'image', 'website-image--1603864212572.svg', NULL, NULL, NULL, NULL, NULL, 'www.facebook.com', NULL, NULL, NULL, NULL, '2020-10-28 05:50:13', '2020-10-28 05:50:13'),
	(32, 'SM:Instagram', NULL, NULL, 'website-image--1603864240041.svg', NULL, NULL, NULL, NULL, NULL, 'http://instagram.com/', NULL, NULL, NULL, NULL, '2020-10-28 05:50:40', '2020-10-28 05:50:40'),
	(33, 'BTN:VIRGIN:OurStory', 115, NULL, NULL, NULL, NULL, NULL, NULL, '<h3>OUR STORY</h3>', 'https://www.virgin.com/about-virgin/our-story', NULL, NULL, 'center', NULL, '2020-10-28 11:57:26', '2020-10-28 13:29:08'),
	(34, 'BTN:VIRGIN:Timeline', 115, NULL, NULL, NULL, NULL, NULL, NULL, '<h3>TIMELINE</h3>', 'https://www.virgin.com/about-virgin/timeline', NULL, NULL, 'center', NULL, '2020-10-28 12:14:58', '2020-10-28 12:43:26'),
	(35, 'BTN:VIRGIN:WorkingAtVirgin', 115, NULL, NULL, NULL, NULL, NULL, NULL, '<h3>WORKING AT VIRGIN</h3>', 'https://www.virgin.com/about-virgin/timeline', NULL, NULL, 'center', NULL, '2020-10-28 12:15:44', '2020-10-28 12:43:45'),
	(36, 'BTN:VIRGIN:Latest', 115, NULL, NULL, NULL, NULL, NULL, NULL, '<h3>LATEST</h3>', 'https://www.virgin.com/about-virgin/latest', NULL, NULL, 'center', NULL, '2020-10-28 12:17:17', '2020-10-28 12:43:50'),
	(37, 'BTN:VIRGIN:VirginGroup', 115, NULL, NULL, NULL, NULL, NULL, NULL, '<h3>VIRGIN GROUP</h3>', 'https://www.virgin.com/about-virgin/virgin-group/overview', NULL, NULL, 'center', NULL, '2020-10-28 12:17:58', '2020-10-28 12:45:58'),
	(38, 'BTN:PRIVACY:Terms', 115, NULL, NULL, NULL, NULL, NULL, NULL, '<p><sub style="color: rgb(187, 187, 187);">Terms &amp; Conditions</sub></p>', NULL, NULL, NULL, 'center', NULL, '2020-10-28 12:54:04', '2020-10-28 13:41:44'),
	(39, 'BTN:PRIVACY:Policy', 115, NULL, NULL, NULL, NULL, NULL, NULL, '<p><sub style="color: rgb(187, 187, 187);">Privacy Policy</sub></p>', NULL, NULL, NULL, 'center', NULL, '2020-10-28 12:54:33', '2020-10-28 13:40:40'),
	(40, 'AS:LOGO', 122, NULL, 'website-image--1603958138624.png', NULL, 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 07:55:38', '2020-10-29 10:26:56'),
	(41, 'AS:BTN: Who We Are', 117, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Who We Are</p>', '', NULL, NULL, NULL, NULL, '2020-10-29 07:57:02', '2020-11-30 06:57:56'),
	(42, 'AS:BTN: Accreditation', 117, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Accreditation</p>', NULL, NULL, NULL, NULL, NULL, '2020-10-29 07:57:19', '2020-10-29 08:00:10'),
	(43, 'AS:BTN: Distribution Partners', 117, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Distribution Partners</p>', NULL, NULL, NULL, NULL, NULL, '2020-10-29 07:57:44', '2020-10-29 08:00:15'),
	(44, 'AS:BTN:Contact', 117, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Contact</p>', NULL, NULL, NULL, NULL, NULL, '2020-10-29 07:57:59', '2020-10-29 08:00:19'),
	(45, 'AS:BTN:FOOTER:Logo', 142, NULL, 'website-image--1603973149450.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 12:05:49', '2020-10-29 12:14:40'),
	(46, 'AS:BTN:VISITWEBSITE:Naviswiss', 66, NULL, NULL, NULL, NULL, NULL, '#ee3c83', '<p>Visit Website</p>', 'http://www.naviswiss.eu', '#ee3c83', '#fff', 'center', NULL, '2020-10-30 05:12:53', '2020-10-30 05:12:53'),
	(47, 'AS:BTN:VISITWEBSITE:Condor', 66, NULL, NULL, NULL, NULL, NULL, '#ee3c83', '<p>Visit Website</p>', 'https://condor-medtec.de/?lang=en', '#ee3c83', '#fff', 'center', NULL, '2020-10-30 05:15:07', '2020-10-30 05:21:33'),
	(48, 'AS:BTN:VISITWEBSITE:Life Healthcare', 66, NULL, NULL, NULL, NULL, NULL, '#ee3c83', '<p>Visit Website</p>', 'https://www.lifehealthcare.com.au/', '#ee3c83', '#fff', 'center', NULL, '2020-10-30 05:16:08', '2020-10-30 05:21:15'),
	(49, 'EMOCEAN-Logo', 157, 'image', 'website-image--1604545727030.png', NULL, NULL, NULL, NULL, NULL, 'www.emoceanstudios.com.au', NULL, NULL, NULL, NULL, '2020-11-05 02:46:20', '2020-11-05 04:26:42'),
	(50, 'EMOCEAN-BTN-MAINMENU-Create', 156, NULL, NULL, NULL, NULL, NULL, '', '<p><strong>CREATE</strong></p>', NULL, '#2f3857', '#ff3878', NULL, NULL, '2020-11-05 02:59:24', '2020-11-05 04:24:15'),
	(51, 'EMOCEAN-BTN-MAINMENU-Advertise', 156, NULL, NULL, NULL, NULL, NULL, '', '<p><strong>ADVERTISE</strong></p>', NULL, '#2f3857', '#ff3878', NULL, NULL, '2020-11-05 03:03:59', '2020-11-05 04:15:38'),
	(52, 'EMOCEAN-BTN-MAINMENU-Measure', 156, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>MEASURE</strong></p>', NULL, '#2f3857', '#ff3878', NULL, NULL, '2020-11-05 03:05:34', '2020-11-05 04:15:43'),
	(53, 'EMOCEAN-BTN-MAINMENU-Optimise', 156, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>OPTIMISE</strong></p>', NULL, '#2f3857', '#ff3878', NULL, NULL, '2020-11-05 03:06:04', '2020-11-05 04:17:35'),
	(54, 'EMOCEAN-BTN-MAINMENU-Contact', 155, NULL, NULL, NULL, 'right', '#1dccc2', '#5ee2da', '<p>Contact</p>', '/contact-emocean-studios', '#ffffff', '#ffffff', 'right', NULL, '2020-11-05 03:16:03', '2020-11-05 04:29:01'),
	(55, 'EMOCEAN-BTN-SUBMENU-Tools&Resources', 156, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tools &amp; Resources</p>', NULL, '#b3bdc8', '#ff3878', NULL, NULL, '2020-11-05 04:18:47', '2020-11-05 04:23:34'),
	(56, 'EMOCEAN-MAINMENU-SUBMENU-Contact', 156, NULL, NULL, NULL, NULL, NULL, NULL, '<p><span style="color: rgb(187, 187, 187);">Contact</span></p>', NULL, NULL, NULL, NULL, NULL, '2020-11-05 04:19:17', '2020-11-05 04:19:28'),
	(57, 'BTN-TEXTONLY-LearnMore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Learn more</p>', NULL, '#1dccc2', '#5ee2da', NULL, NULL, '2020-11-05 05:02:25', '2020-11-05 05:02:25'),
	(58, 'EMO-BTN-LEARNMORE-DriveTraffic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Learn more</p>', NULL, '#1dccc2', '#5ee2da', NULL, NULL, '2020-11-05 05:06:09', '2020-11-05 05:06:09'),
	(59, 'button 1', NULL, NULL, NULL, NULL, 'left', 'red', NULL, '<p>Hi click me</p>', NULL, NULL, NULL, NULL, NULL, '2020-11-05 07:06:28', '2020-11-05 11:08:47'),
	(60, 'qwr', 85, 'image', NULL, '20%', NULL, '#333', NULL, '<p>sdfg</p>', NULL, NULL, NULL, NULL, NULL, '2020-12-01 15:22:18', '2020-12-01 15:23:56');
/*!40000 ALTER TABLE `module_button` ENABLE KEYS */;

-- Dumping structure for table test.module_card
CREATE TABLE IF NOT EXISTS `module_card` (
  `cardId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `settingId` bigint(20) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `coverImageId` bigint(20) DEFAULT NULL,
  `title` varchar(4096) DEFAULT NULL,
  `subhead` varchar(1024) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `linkButtonId` bigint(20) DEFAULT NULL,
  `horizontalAlign` text DEFAULT NULL,
  `verticalAlign` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`cardId`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_card: ~63 rows (approximately)
DELETE FROM `module_card`;
/*!40000 ALTER TABLE `module_card` DISABLE KEYS */;
INSERT INTO `module_card` (`cardId`, `internalName`, `settingId`, `type`, `coverImageId`, `title`, `subhead`, `description`, `linkButtonId`, `horizontalAlign`, `verticalAlign`, `createdAt`, `updatedAt`) VALUES
	(10, 'Col1', 32, 'image', 20, '<h2><strong style="color: rgb(35, 31, 32);">More business support for your local area</strong></h2>', '<p><br></p>', '<p><span style="color: rgb(35, 31, 32);">We\'re doubling our business bankers so you have more support, expertise and solutions in your local area.&nbsp;</span></p>', 11, 'left', 'top', '2020-10-20 00:43:47', '2020-10-21 03:33:42'),
	(11, 'Col3Row1', NULL, NULL, NULL, '<h3>Apply online for a business loan Apply online for a business loan Apply online for a business loan Apply online for a business loan Apply online for a business loan Apply online for a business loan Apply online for a business loan Apply online for a business loan Apply online for a business loan</h3>', NULL, NULL, NULL, 'left', 'center', '2020-10-20 00:49:29', '2020-10-20 19:41:38'),
	(12, 'Col2', 32, 'text', NULL, '<h2>Open a Business Transaction Account</h2>', NULL, '<p>Our Business Transaction Account is your everyday business bank account, now with a $0 Monthly Account Fee option.</p><p><br></p><p>You could open one online in minutes.&nbsp;</p><p><br></p><p><a href="http://www.emoceanstudios.com.au" rel="noopener noreferrer" target="_blank"><u>Take a look</u></a></p>', 11, 'left', 'top', '2020-10-20 06:55:26', '2020-10-21 04:42:10'),
	(13, 'Col3Row2', NULL, NULL, NULL, '<p>Take your business online with Simplify</p>', NULL, NULL, NULL, NULL, NULL, '2020-10-20 10:41:01', '2020-10-20 10:41:01'),
	(14, 'Col3Row3', NULL, NULL, NULL, '<p>Instant asset werite-off</p>', NULL, NULL, NULL, NULL, NULL, '2020-10-20 10:44:36', '2020-10-20 10:44:36'),
	(15, 'TEST01', 37, NULL, NULL, NULL, '<p>test</p><p><br></p><p>another test</p><p><br></p><p>and another test</p><p><br></p><p>Lots of tests</p><p><br></p><p>sooooo many tests</p>', NULL, NULL, 'center', NULL, '2020-10-21 04:53:00', '2020-10-21 05:00:36'),
	(16, 'ROWTEST01', 37, NULL, NULL, NULL, '<p>HERE</p>', NULL, NULL, NULL, NULL, '2020-10-21 04:57:41', '2020-10-21 05:00:08'),
	(17, 'Image1', NULL, 'image', 21, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 05:10:11', '2020-10-21 05:10:11'),
	(18, 'TESTINGIT', NULL, NULL, NULL, '<h2><strong style="color: rgb(35, 31, 32);">More business support for your local area</strong></h2>', NULL, '<p>We\'re doubling our business bankers so you have more support, expertise and solutions in your local area.&nbsp;</p>', NULL, 'left', NULL, '2020-10-22 01:51:06', '2020-10-22 01:51:06'),
	(19, 'MAIN-IMAGE-TEXT', 49, NULL, NULL, '<h4 class="ql-align-center"><span style="color: rgb(255, 255, 255);">Founded in 2014</span></h4>', '<h1 class="ql-align-center"><strong style="color: rgb(255, 255, 255);">Providing Solutions to Surgeons and Healthcare Professionals</strong></h1><h4 class="ql-align-center"><span style="color: rgb(136, 136, 136);">___________________</span></h4>', '<p class="ql-align-center"><br></p>', NULL, 'center', 'center', '2020-10-23 02:22:34', '2020-10-29 05:54:35'),
	(20, 'WhoWeAre', 51, NULL, NULL, '<p class="ql-align-center"><span style="color: rgb(136, 136, 136);">Active Surgical is committed to providing solutions to surgeons and healthcare professionals to enable them to achieve the best outcomes for their patients. We will source and provide options based on requirements and feedback from surgeons and ensure we remain at the forefront of patient healthcare.</span></p>', '<h2 class="ql-align-center"><span style="color: rgb(136, 136, 136);">Who We Are</span></h2>', '<p class="ql-align-center"><span style="color: rgb(136, 136, 136);">We currently have distribution rights with several International And Australian Partners to offer solutions and couple these with a customer focused attitude and optimal service. We are Active Surgical.</span></p><p class="ql-align-center"><span style="color: rgb(136, 136, 136);"> </span></p>', NULL, 'center', NULL, '2020-10-23 10:57:45', '2020-10-29 05:55:13'),
	(21, 'ThirdSection1-1', 54, NULL, NULL, NULL, '<h2 class="ql-align-center"><span style="color: rgb(255, 255, 255);">RACGP ACCREDITED</span></h2><p class="ql-align-center">________________</p>', '<p class="ql-align-center"><span style="color: rgb(255, 255, 255);">Active Surgical are proud to be Accredited Activity Providers with RACGP and can help with educational GP events and training, we can create relevant and engaging opportunities with CPD point allocations. </span></p>', NULL, 'center', 'center', '2020-10-23 18:32:45', '2020-10-29 06:13:59'),
	(22, 'AS:TITLE:Partners', 58, NULL, NULL, NULL, '<h2 class="ql-align-center"><span style="color: rgb(34, 34, 34);">Distribution Partners</span></h2>', NULL, NULL, 'center', NULL, '2020-10-23 20:28:14', '2020-10-30 02:39:55'),
	(23, 'AS:MAINIMAGE:CONTAINER:Right Partner', 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:50:38', '2020-10-30 02:44:46'),
	(24, 'AS:MAINIMAGE:Exactech', 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:53:02', '2020-10-30 03:25:26'),
	(25, 'AS:CONTENT:Naviswiss', 65, NULL, NULL, '<p><br></p>', NULL, '<p>Naviswiss develops and commercializes handheld, miniaturized surgical measuring, tracking, and navigation systems.</p><p><br></p><p>Its products are primarily used for orthopedic replacement operations, such as hip and knee replacements. The company wasfounded in 2007 and is based in Laufen, Switzerland.</p>', NULL, NULL, 'top', '2020-10-23 21:21:53', '2020-10-30 03:37:08'),
	(26, 'AS:CONTENT:Exactech', NULL, NULL, NULL, '<p><br></p>', '<p><br></p>', '<p>At Exactech, we look at joint reconstruction through the eyes of a surgeon, because we were founded by one.</p><p><br></p><p>For us, it’s all about working together, understanding clinical challenges, then engineering innovative solutions for extremities, knee and hip surgery.</p><p><br></p><p>For 30 years, this focus on surgeons and a drive to improve patient outcomes have been the secrets to our success.</p>', NULL, NULL, NULL, '2020-10-23 21:27:58', '2020-10-30 03:48:54'),
	(27, 'Contact US Image Content Mobile Desc', NULL, NULL, NULL, '<p><span style="color: rgb(255, 255, 255);">0429 131 591</span></p><p><span style="color: rgb(255, 255, 255);">﻿0437 722 310</span></p>', '<h3><span style="color: rgb(255, 255, 255);">Phone:</span></h3>', '<p><br></p>', NULL, NULL, NULL, '2020-10-23 22:29:09', '2020-10-27 00:08:09'),
	(28, 'Contact US Image Content Address Desc', NULL, NULL, NULL, '<p><span style="color: rgb(255, 255, 255);">Suite 5.04 Level 5</span></p><p><span style="color: rgb(255, 255, 255);">15 Orion Road</span></p><p><span style="color: rgb(255, 255, 255);">Lane Cove West</span></p><p><span style="color: rgb(255, 255, 255);">NSW 2066</span></p>', '<h3><span style="color: rgb(255, 255, 255);">Address:</span></h3>', NULL, NULL, NULL, NULL, '2020-10-23 22:34:36', '2020-10-23 22:34:36'),
	(29, 'Contact US Image Content Email Desc', NULL, NULL, NULL, '<p><span style="color: rgb(255, 255, 255);">francois@activesurgical.com.au</span></p><p><span style="color: rgb(255, 255, 255);">ashley@activesurgical.com.au</span></p>', '<h3><span style="color: rgb(255, 255, 255);">Email:</span></h3>', NULL, NULL, NULL, NULL, '2020-10-23 22:41:06', '2020-10-23 22:41:06'),
	(30, 'Contact US Body Inside Header', NULL, NULL, NULL, '<h3 class="ql-align-center"><span style="color: rgb(136, 136, 136);">Get in touch</span></h3>', '<h1 class="ql-align-center"><span style="color: rgb(136, 136, 136);">Contact Us</span></h1>', NULL, NULL, 'center', NULL, '2020-10-23 22:53:40', '2020-10-23 22:55:12'),
	(31, 'Footer Body Text', NULL, NULL, NULL, NULL, NULL, '<p class="ql-align-center"><span style="background-color: rgb(17, 17, 17); color: rgb(255, 255, 255);">Copyright 2018. All rights reserved.</span></p><p class="ql-align-center"><span style="background-color: rgb(17, 17, 17); color: rgb(255, 255, 255);">Website design and development by&nbsp;</span><a href="http://www.activesurgical.com.au/www.emoceanstudios.com.au" rel="noopener noreferrer" target="_blank" style="background-color: rgb(17, 17, 17); color: rgb(0, 123, 255);"><strong>www.emoceanstudios.com.au</strong></a></p>', NULL, 'center', NULL, '2020-10-24 05:29:55', '2020-10-24 05:29:55'),
	(32, 'Biz Support', 84, NULL, NULL, '<h1>More business support for your local area</h1>', NULL, '<p>We\'re doubling our business bankers so you have more support, expertise and solutions in your local area.&nbsp;</p>', 25, 'left', 'center', '2020-10-27 01:29:46', '2020-10-27 09:01:37'),
	(33, 'Open Transaction Account', 84, NULL, NULL, '<h1>Open a Business Transaction Account</h1>', NULL, '<p>Our Business Transaction Account is your everyday business bank account, now with a $0 Monthly Account Fee option.</p><p><br></p><p>You could open one online in minutes.&nbsp;</p><p><br></p><p><a href="www.emoceanstudios.com.au" rel="noopener noreferrer" target="_blank" style="color: rgb(153, 51, 255);">Take a look</a></p>', 26, NULL, 'center', '2020-10-27 01:31:06', '2020-10-27 09:01:43'),
	(34, 'HEADING:Apply For Biz Loan', 86, NULL, NULL, '<h1><a href="http://www.emoceanstudios.com.au" rel="noopener noreferrer" target="_blank">Apply online for a business loan</a></h1>', NULL, NULL, NULL, NULL, 'center', '2020-10-27 01:37:52', '2020-10-27 05:20:56'),
	(35, 'HEADING:Use Simplify', 86, NULL, NULL, '<h1><a href="/windy" rel="noopener noreferrer" target="_blank">Take your business online with Simplify</a></h1>', NULL, NULL, NULL, NULL, NULL, '2020-10-27 01:38:29', '2020-10-27 03:16:26'),
	(36, 'HEADING:Asset Write-Off', 86, NULL, NULL, '<h1>Instant asset write-off</h1>', NULL, NULL, NULL, NULL, 'center', '2020-10-27 01:38:57', '2020-10-27 05:21:20'),
	(37, 'LINE', 88, NULL, NULL, '<p><br></p>', NULL, NULL, NULL, 'center', NULL, '2020-10-27 03:27:38', '2020-10-27 05:52:31'),
	(38, 'AWESOME BOXES', 90, NULL, NULL, '<h2>Awesome looking layouts can be created</h2>', NULL, NULL, NULL, NULL, 'center', '2020-10-27 03:35:51', '2020-10-28 10:08:39'),
	(39, 'The CommBank app', 93, NULL, NULL, '<h1>The CommBank app</h1>', NULL, '<p>View account balances in real time, pay bills and suppliers, transfer funds, and manage your cards and bills – all from the convenience of your smartphone.</p><p><br></p><p>Plus, set up Business Smart Alerts and we\'ll instantly tell you if your account balance is low, high, overdrawn or you\'ve just been paid.&nbsp;</p>', 27, NULL, 'top', '2020-10-27 03:38:03', '2020-10-27 04:55:08'),
	(40, 'NetBank for business', 91, NULL, NULL, '<h1>NetBank for business</h1>', NULL, '<p>Manage your business and personal finances all in one place, 24/7. Suits smaller businesses whose finances are managed by the business owners.&nbsp;</p>', 27, NULL, 'top', '2020-10-27 03:46:30', '2020-10-27 04:49:50'),
	(41, 'CommBiz', 91, NULL, NULL, '<h1>CommBiz</h1>', NULL, '<p>Premium online banking for businesses who want multiple levels of user access.</p>', NULL, NULL, 'top', '2020-10-27 04:48:49', '2020-10-27 04:50:02'),
	(42, 'Daily IQ', 92, NULL, NULL, '<h1>Daily IQ</h1>', NULL, '<p>Daily IQ is a free business insights tool for eligible CommBank business customers only. It helps your business optimise cash flow, enhance performance and grow customers. Access Daily IQ in NetBank and CommBiz.</p>', NULL, NULL, 'top', '2020-10-27 04:51:50', '2020-10-27 05:29:46'),
	(43, 'Regional Agriculture', 98, NULL, NULL, '<h1>Regional and Agriculture banking</h1>', NULL, NULL, NULL, NULL, 'center', '2020-10-27 05:58:41', '2020-10-27 06:45:13'),
	(44, 'Big Picture', 98, NULL, NULL, '<h1>See the big picture with our economic updates</h1>', NULL, NULL, NULL, 'left', 'center', '2020-10-27 05:59:33', '2020-10-27 06:26:47'),
	(45, 'Explore', 98, NULL, NULL, '<h1>Explore resources for women in business</h1>', NULL, NULL, NULL, 'left', 'center', '2020-10-27 06:04:46', '2020-10-27 06:26:54'),
	(46, 'Explore', 95, NULL, NULL, '<h1>Benefits finder</h1>', NULL, '<p>You may be eligible for benefits, rebates and concessions that could help you save money and help your business with cash flow.</p>', 29, NULL, NULL, '2020-10-27 06:06:34', '2020-10-27 06:42:25'),
	(47, 'Small business hub', 84, NULL, NULL, '<h1>Small business hub</h1>', NULL, '<p>Starting, running or growing? Find practical guides, resources and support for whatever stage your business is at.&nbsp;</p>', 28, NULL, 'center', '2020-10-27 06:08:27', '2020-10-27 06:44:52'),
	(48, 'OPTUS:iPHONE12', 101, NULL, NULL, '<h2>Upgrade to a new era of iPhone with 5G</h2>', NULL, NULL, 30, NULL, 'center', '2020-10-27 09:36:45', '2020-10-27 09:40:19'),
	(49, 'OPTUS:MOD:AppleWatch', 104, NULL, NULL, '<h1><span style="color: rgb(255, 255, 255);">The new Apple Watch Series 6</span></h1>', '<h2><span style="color: rgb(255, 255, 255);">The future of health is on your wrist</span></h2>', '<p>Only available with a Connected Watch Plan. Apple Watch requires iPhone 6s or later. Blood Oxygen app measurements are not intended for medical use. Red band not available at Optus.</p>', 30, NULL, 'center', '2020-10-27 09:57:07', '2020-10-27 12:35:51'),
	(50, 'contenttesting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 10:48:59', '2020-10-27 10:48:59'),
	(51, 'AS:MAIN:IMAGE:Title', 132, NULL, NULL, '<h4 class="ql-align-center"><span style="color: rgb(255, 255, 255);">Founded in 2014</span></h4>', '<h1 class="ql-align-center"><span style="color: rgb(255, 255, 255);">Providing Solutions to Surgeons and Healthcare Professionals</span></h1><p class="ql-align-center">___________________</p>', NULL, NULL, 'center', 'center', '2020-10-29 08:20:01', '2020-10-29 10:11:50'),
	(52, 'AS:WHOWEARE:Content', 126, NULL, NULL, NULL, '<h2 class="ql-align-center">Who We Are</h2>', '<p class="ql-align-center">Active Surgical is committed to providing solutions to surgeons and healthcare professionals to enable them to achieve the best outcomes for their patients. We will source and provide options based on requirements and feedback from surgeons and ensure we remain at the forefront of patient healthcare.</p><p class="ql-align-center"><br></p><p class="ql-align-center">We currently have distribution rights with several International And Australian Partners to offer solutions and couple these with a customer focused attitude and optimal service.</p><p class="ql-align-center"><br></p><p class="ql-align-center">We are Active Surgical.</p>', NULL, 'center', 'center', '2020-10-29 08:42:23', '2020-10-29 09:39:16'),
	(53, 'AS:RACGP:Text', NULL, NULL, NULL, NULL, '<h2 class="ql-align-center"><span style="color: rgb(255, 255, 255);">RACGP ACCREDITED</span></h2><p class="ql-align-center">____________</p>', '<p class="ql-align-center"><span style="color: rgb(255, 255, 255);">Active Surgical are proud to be Accredited Activity Providers with RACGP and can help with educational GP events and training, we can create relevant and engaging opportunities with CPD point allocations.</span></p>', NULL, 'center', NULL, '2020-10-29 09:43:49', '2020-10-29 10:04:04'),
	(54, 'AS:FOOTER:PHONE:Content', 139, NULL, NULL, NULL, '<h4 class="ql-align-center"><span style="color: rgb(255, 255, 255);">PHONE</span></h4>', '<p class="ql-align-center"><span style="color: rgb(255, 255, 255);">0429 131 591</span></p><p class="ql-align-center"><span style="color: rgb(255, 255, 255);">0437 722 310</span></p>', NULL, 'center', NULL, '2020-10-29 11:38:18', '2020-10-29 11:48:02'),
	(55, 'AS:FOOTER:ADDRESS:Content', 139, NULL, NULL, NULL, '<h4 class="ql-align-center"><span style="color: rgb(255, 255, 255);">ADDRESS</span></h4>', '<p class="ql-align-center"><span style="color: rgb(255, 255, 255);">Suite 5.04 Level 5</span></p><p class="ql-align-center"><span style="color: rgb(255, 255, 255);">15 Orion Road</span></p><p class="ql-align-center"><span style="color: rgb(255, 255, 255);">Lane Cove West</span></p><p class="ql-align-center"><span style="color: rgb(255, 255, 255);">NSW 2066</span></p>', NULL, 'center', NULL, '2020-10-29 11:42:42', '2020-10-29 11:48:27'),
	(56, 'AS:FOOTER:EMAIL:Content', 139, NULL, NULL, NULL, '<h4 class="ql-align-center"><span style="color: rgb(255, 255, 255);">EMAIL</span></h4>', '<p class="ql-align-center"><span style="color: rgb(255, 255, 255);">francois@activesurgical.com.au</span></p><p class="ql-align-center"><span style="color: rgb(255, 255, 255);">ashley@activesurgical.com.au</span></p>', NULL, 'center', NULL, '2020-10-29 11:46:55', '2020-10-29 11:48:34'),
	(57, 'AS:FOOTER:COPYRIGHT:Website By', NULL, NULL, NULL, NULL, NULL, '<p class="ql-align-center"><span style="color: rgb(136, 136, 136);">Copyright 2018. All rights reserved.</span></p><p class="ql-align-center"><span style="color: rgb(136, 136, 136);">Website design and development by </span><a href="http://www.emoceanstudios.com.au" rel="noopener noreferrer" target="_blank" style="color: rgb(0, 102, 204);">www.emoceanstudios.com.au</a></p>', NULL, 'center', NULL, '2020-10-29 12:03:20', '2020-10-30 06:03:58'),
	(58, 'AS:MAINIMAGE:Condor', 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:44:52', '2020-10-30 03:45:58'),
	(59, 'AS:CONTENT:Condor', NULL, NULL, NULL, NULL, NULL, '<p>Medical precision technology of the highest quality - this is the Condor GmbH. We design, develop and produce user-specific surgical devices - 100% "Made in Germany". "Achieving more" guides our actions.</p><p><br></p><p>Our corporate slogan we understand as an obligation to help our customers with medical precision technology of the highest quality to achieve more: more comfort, more flexibility, more freedom of movement in the operating rooms around the world.</p>', NULL, NULL, NULL, '2020-10-30 03:49:12', '2020-10-30 03:49:12'),
	(60, 'AS:MAINIMAGE:Life Healthcare', 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:53:00', '2020-10-30 03:53:00'),
	(61, 'AS:CONTENT:Life Healthcare', NULL, NULL, NULL, NULL, NULL, '<p>At LifeHealthcare we bring Australian and New Zealand healthcare professionals innovative medical devices by partnering with world class companies who share our vision for innovation and making a real difference to people’s lives.</p><p><br></p><p>Together with our partners all over the world, our people work closely with healthcare professionals to ensure the highest standards of patient care.</p>', NULL, NULL, NULL, '2020-10-30 03:56:14', '2020-10-30 04:48:23'),
	(62, 'EMO-MAINIMAGE-TITLE-Content', 160, NULL, NULL, NULL, '<h1><span style="color: rgb(255, 255, 255);">Expertise, insights and technology to optimise your online presence</span></h1>', NULL, NULL, 'center', 'center', '2020-11-05 04:33:16', '2020-11-05 04:43:47'),
	(63, 'EMO-FOR-EVERY-STAGE-BUSINESS-ConversionRates', 86, NULL, NULL, '<p><br></p>', '<h4>Test the conversion rates of every business</h4>', NULL, NULL, NULL, NULL, '2020-11-05 04:59:14', '2020-11-05 05:16:03'),
	(64, 'EMO-DESIGN-BUILD-WEBSITE', 95, 'image', NULL, NULL, '<h4>Faster and more targeted websites</h4>', '<p>Get a beautifully designed website crafted specifically to meet your business goals.</p>', 57, NULL, NULL, '2020-11-05 05:00:19', '2020-11-05 07:55:49'),
	(65, 'EMO-DRIVE-QUALIFIED-TRAFFIC', 95, NULL, NULL, NULL, '<h4>Drive qualified traffic to your site</h4>', '<p>In order to achieve your goals, first you\'re going to need some visitors.</p>', 58, NULL, NULL, '2020-11-05 05:04:33', '2020-11-05 07:56:40'),
	(66, 'EMO-3ROW-CONTENTBLOCK-ReportMeasure', 86, NULL, NULL, NULL, '<h4>Report and measure your sites performance</h4>', NULL, NULL, NULL, NULL, '2020-11-05 05:07:41', '2020-11-05 05:16:21'),
	(67, 'EMO-3ROW-CONBLOCK-Optimise Site Goals', 86, NULL, NULL, NULL, '<h4>Optimise your site to fulfill your goals</h4>', NULL, NULL, NULL, NULL, '2020-11-05 05:08:49', '2020-11-05 05:17:12'),
	(68, 'gregs', NULL, 'text', NULL, '<p>Totle is something like this</p>', '<p><strong class="ql-font-serif">Hello form the header<span class="ql-cursor">﻿</span></strong></p>', '<p>And we descirbe it here</p>', 57, 'center', 'center', '2020-11-05 06:42:28', '2020-11-05 06:42:28'),
	(69, 'Company Info', NULL, NULL, 64, NULL, '<p>Hello this is about us page</p>', '<p>Some lorem ipsum code here</p>', NULL, 'center', NULL, '2020-11-10 09:09:44', '2020-11-10 09:09:44'),
	(70, 'CB:blah blah 01', 162, NULL, NULL, '<p>AND A TITLE</p>', '<p>A HEADING</p>', '<p>AND A DESCRIPTION HERE</p>', NULL, NULL, NULL, '2020-11-30 06:21:00', '2020-11-30 06:22:37'),
	(71, 'CB:Blah Blah 02', 162, NULL, NULL, '<p>TITLE HERE</p>', '<p>THIS I NUMBER 2</p>', NULL, NULL, NULL, NULL, '2020-11-30 06:25:36', '2020-11-30 06:26:23'),
	(72, 'CB:Home', 164, 'image', 66, '<p>AND TITLE</p>', '<p>ANOTHER HEADING</p>', '<p>Lots of body copy can go here......</p>', NULL, NULL, NULL, '2020-11-30 06:31:06', '2020-11-30 07:08:41');
/*!40000 ALTER TABLE `module_card` ENABLE KEYS */;

-- Dumping structure for table test.module_header
CREATE TABLE IF NOT EXISTS `module_header` (
  `headerId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `settingId` bigint(20) DEFAULT NULL,
  `designType` varchar(128) DEFAULT 'centerLeftDesign',
  `image1` bigint(20) DEFAULT NULL,
  `image2` bigint(20) DEFAULT NULL,
  `menuGroup1` bigint(20) DEFAULT NULL,
  `menuGroup2` bigint(20) DEFAULT NULL,
  `menuGroup3` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`headerId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_header: ~5 rows (approximately)
DELETE FROM `module_header`;
/*!40000 ALTER TABLE `module_header` DISABLE KEYS */;
INSERT INTO `module_header` (`headerId`, `internalName`, `settingId`, `designType`, `image1`, `image2`, `menuGroup1`, `menuGroup2`, `menuGroup3`, `createdAt`, `updatedAt`) VALUES
	(2, 'Main Menu', 28, 'leftRightDesign', 7, 8, 4, 5, NULL, '2020-10-19 04:29:06', '2020-10-21 05:10:28'),
	(3, 'SubMenu', NULL, 'centerLeftDesign', NULL, NULL, 6, NULL, NULL, '2020-10-21 05:05:26', '2020-10-21 05:05:26'),
	(4, 'AS-HEADER', 47, 'leftRightDesign', 18, NULL, 7, NULL, NULL, '2020-10-22 04:14:29', '2020-10-23 09:57:47'),
	(5, 'AS:Main Menu', 123, 'leftRightDesign', 40, NULL, 8, NULL, NULL, '2020-10-29 07:54:43', '2020-10-29 10:43:39'),
	(6, 'MAINMENU:Emocean', 154, 'leftRightDesign', 49, 54, 9, 10, NULL, '2020-11-05 02:46:22', '2020-12-05 17:29:51');
/*!40000 ALTER TABLE `module_header` ENABLE KEYS */;

-- Dumping structure for table test.module_menu_group
CREATE TABLE IF NOT EXISTS `module_menu_group` (
  `menuGroupId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(128) NOT NULL,
  `settingId` bigint(20) DEFAULT NULL,
  `align` varchar(10) DEFAULT 'left',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`menuGroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_menu_group: ~7 rows (approximately)
DELETE FROM `module_menu_group`;
/*!40000 ALTER TABLE `module_menu_group` DISABLE KEYS */;
INSERT INTO `module_menu_group` (`menuGroupId`, `internalName`, `settingId`, `align`, `createdAt`, `updatedAt`) VALUES
	(4, 'MainMenu-TextLinks', 34, 'left', '2020-10-19 04:38:36', '2020-10-20 02:06:41'),
	(5, 'MainMenu-TextLinks-Sub', NULL, 'right', '2020-10-20 02:59:35', '2020-10-20 03:02:08'),
	(6, 'SubMenu', 41, 'center', '2020-10-21 05:05:25', '2020-10-22 04:02:17'),
	(7, 'AS-MENU-BUTTONS', 48, 'right', '2020-10-22 04:21:48', '2020-10-23 10:03:54'),
	(8, 'AS:BTN:MAIN MENU', NULL, 'right', '2020-10-29 07:58:00', '2020-10-29 07:59:18'),
	(9, 'EMOCEAN-MAINMENU-BTN-Create', NULL, 'left', '2020-11-05 03:02:04', '2020-11-05 04:15:02'),
	(10, 'EMOCEAN-MAINMENU-SubMenu', NULL, 'right', '2020-11-05 04:18:48', '2020-11-05 04:20:16');
/*!40000 ALTER TABLE `module_menu_group` ENABLE KEYS */;

-- Dumping structure for table test.module_menu_group__buttons
CREATE TABLE IF NOT EXISTS `module_menu_group__buttons` (
  `menuGroupButtonId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menuGroupId` bigint(20) NOT NULL,
  `moduleName` varchar(128) NOT NULL,
  `moduleId` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`menuGroupButtonId`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_menu_group__buttons: ~24 rows (approximately)
DELETE FROM `module_menu_group__buttons`;
/*!40000 ALTER TABLE `module_menu_group__buttons` DISABLE KEYS */;
INSERT INTO `module_menu_group__buttons` (`menuGroupButtonId`, `menuGroupId`, `moduleName`, `moduleId`, `createdAt`, `updatedAt`) VALUES
	(92, 5, 'module_button', 15, '2020-10-20 03:02:38', '2020-10-20 03:02:38'),
	(93, 5, 'module_button', 16, '2020-10-20 03:02:38', '2020-10-20 03:02:38'),
	(94, 5, 'module_button', 17, '2020-10-20 03:02:38', '2020-10-20 03:02:38'),
	(103, 4, 'module_button', 9, '2020-10-22 01:42:42', '2020-10-22 01:42:42'),
	(104, 4, 'module_button', 10, '2020-10-22 01:42:42', '2020-10-22 01:42:42'),
	(105, 4, 'module_button', 12, '2020-10-22 01:42:42', '2020-10-22 01:42:42'),
	(106, 4, 'module_button', 13, '2020-10-22 01:42:42', '2020-10-22 01:42:42'),
	(107, 4, 'module_button', 14, '2020-10-22 01:42:42', '2020-10-22 01:42:42'),
	(108, 6, 'module_button', 15, '2020-10-22 04:02:17', '2020-10-22 04:02:17'),
	(109, 6, 'module_button', 16, '2020-10-22 04:02:17', '2020-10-22 04:02:17'),
	(110, 6, 'module_button', 17, '2020-10-22 04:02:17', '2020-10-22 04:02:17'),
	(222, 10, 'module_button', 55, '2020-11-05 04:23:43', '2020-11-05 04:23:43'),
	(223, 9, 'module_button', 50, '2020-11-05 04:24:17', '2020-11-05 04:24:17'),
	(224, 9, 'module_button', 51, '2020-11-05 04:24:17', '2020-11-05 04:24:17'),
	(225, 9, 'module_button', 52, '2020-11-05 04:24:17', '2020-11-05 04:24:17'),
	(226, 9, 'module_button', 53, '2020-11-05 04:24:17', '2020-11-05 04:24:17'),
	(227, 7, 'module_button', 19, '2020-11-10 16:49:18', '2020-11-10 16:49:18'),
	(228, 7, 'module_button', 20, '2020-11-10 16:49:18', '2020-11-10 16:49:18'),
	(229, 7, 'module_button', 21, '2020-11-10 16:49:18', '2020-11-10 16:49:18'),
	(230, 7, 'module_button', 22, '2020-11-10 16:49:18', '2020-11-10 16:49:18'),
	(231, 8, 'module_button', 41, '2020-11-30 06:57:57', '2020-11-30 06:57:57'),
	(232, 8, 'module_button', 42, '2020-11-30 06:57:57', '2020-11-30 06:57:57'),
	(233, 8, 'module_button', 43, '2020-11-30 06:57:57', '2020-11-30 06:57:57'),
	(234, 8, 'module_button', 44, '2020-11-30 06:57:57', '2020-11-30 06:57:57');
/*!40000 ALTER TABLE `module_menu_group__buttons` ENABLE KEYS */;

-- Dumping structure for table test.module_multi_columns
CREATE TABLE IF NOT EXISTS `module_multi_columns` (
  `multiColumnsId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(128) NOT NULL,
  `settingId` bigint(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'column',
  `columnCount` tinyint(10) NOT NULL,
  `columnWidths` varchar(4096) NOT NULL,
  `mobileType` varchar(10) DEFAULT 'row',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`multiColumnsId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_multi_columns: ~80 rows (approximately)
DELETE FROM `module_multi_columns`;
/*!40000 ALTER TABLE `module_multi_columns` DISABLE KEYS */;
INSERT INTO `module_multi_columns` (`multiColumnsId`, `internalName`, `settingId`, `type`, `columnCount`, `columnWidths`, `mobileType`, `createdAt`, `updatedAt`) VALUES
	(21, '3Cols3Rows', 27, 'column', 3, '1,1,1', 'row', '2020-10-19 03:56:49', '2020-10-19 09:32:14'),
	(22, 'ColThreeRows', NULL, 'row', 3, '1,1,1', 'row', '2020-10-19 04:15:28', '2020-10-19 09:32:12'),
	(23, 'MULTICOLUMN TEST', 38, 'column', 3, '1,1,1', 'row', '2020-10-21 04:53:09', '2020-10-21 05:19:04'),
	(24, 'TESTROWS01', NULL, 'row', 3, '1,1,1', 'row', '2020-10-21 04:56:13', '2020-10-21 04:56:33'),
	(25, 'Image and Text', 39, 'column', 2, '1,3', 'row', '2020-10-21 05:08:58', '2020-10-21 05:24:36'),
	(26, 'FIRST-ROW-MULTI-ROW-TEST', NULL, 'row', 2, '1,2', 'row', '2020-10-22 01:51:39', '2020-10-22 01:52:20'),
	(27, 'AS-Main-Image', 46, 'column', 1, '1', 'row', '2020-10-22 05:27:25', '2020-10-23 02:21:23'),
	(28, 'SecondSection', NULL, 'column', 1, '1', 'row', '2020-10-23 11:00:16', '2020-10-23 11:00:16'),
	(29, 'SecondSection', 50, 'column', 1, '1', 'row', '2020-10-23 17:40:55', '2020-10-23 17:41:22'),
	(30, 'ThirdSection', 52, 'column', 1, '1', 'column', '2020-10-23 18:17:36', '2020-10-29 08:20:30'),
	(31, 'ThirdSection1', 53, 'row', 2, '1,1', 'row', '2020-10-23 18:32:49', '2020-10-29 08:15:39'),
	(32, 'AS:CONTENTAREA:Partners', 56, 'row', 3, '1,1,1', 'row', '2020-10-23 20:25:45', '2020-10-30 03:40:37'),
	(33, 'AS:SHOWCASE:Distribution Partners', NULL, 'row', 2, '1,1', 'row', '2020-10-23 20:38:02', '2020-10-30 04:32:24'),
	(34, 'AS:PARNTERS:Naviswiss:Exactech', 68, 'column', 2, '1,1', 'row', '2020-10-23 20:41:00', '2020-10-30 04:35:30'),
	(35, 'AS:PARTNER:SHOWCASE:Exactech', 60, 'row', 2, '1,1', 'row', '2020-10-23 20:42:32', '2020-10-30 03:13:48'),
	(36, 'AS:PARTNER:SHOWCASE:Naviswiss', 60, 'row', 4, '1,1,1,1', 'row', '2020-10-23 20:45:02', '2020-10-30 03:15:55'),
	(37, 'AS:AREA:Partners', 67, 'column', 1, '1', 'row', '2020-10-23 21:47:36', '2020-10-30 02:38:37'),
	(39, 'Contact US', NULL, 'column', 2, '1,1', 'row', '2020-10-23 22:13:47', '2020-10-23 22:13:47'),
	(40, 'Contact US Image', 70, 'column', 1, '1', 'row', '2020-10-23 22:15:05', '2020-10-23 22:15:05'),
	(41, 'Contact US Body', 77, 'row', 1, '1', 'row', '2020-10-23 22:16:39', '2020-10-23 22:53:47'),
	(42, 'Contact US Image Content', 71, 'row', 3, '1,1,1', 'row', '2020-10-23 22:20:07', '2020-10-23 22:35:56'),
	(43, 'Contact US Image Content Mobile', 74, 'column', 2, '1,4', 'row', '2020-10-23 22:24:52', '2020-10-23 22:37:17'),
	(44, 'Contact US Image Content Address', 75, 'column', 2, '1,4', 'row', '2020-10-23 22:35:03', '2020-10-23 22:37:44'),
	(45, 'Contact US Image Content Email', NULL, 'column', 2, '1,4', 'row', '2020-10-23 22:41:07', '2020-10-23 22:41:07'),
	(46, 'Contact US Body Inside', 78, 'row', 1, '1', 'row', '2020-10-23 22:50:43', '2020-10-23 22:59:29'),
	(47, 'Contact US Body Inside Form', 79, 'column', 1, '1', 'row', '2020-10-23 22:57:35', '2020-10-23 22:57:35'),
	(48, 'Footer', 81, 'column', 1, '1', 'row', '2020-10-23 23:51:07', '2020-10-23 23:51:07'),
	(49, 'Footer Body', 82, 'row', 2, '1,1', 'row', '2020-10-23 23:52:50', '2020-10-24 05:30:27'),
	(50, 'Footer Body Text', NULL, 'column', 1, '1', 'row', '2020-10-24 05:29:59', '2020-10-24 05:29:59'),
	(52, '3Rows', NULL, 'row', 3, '1,1,1', 'row', '2020-10-27 01:39:00', '2020-10-27 02:07:36'),
	(53, 'How You Do Business', 85, 'column', 3, '1,1,1', 'row', '2020-10-27 01:39:01', '2020-10-27 02:03:54'),
	(54, 'DELETEME: 3 ROWS', NULL, 'row', 3, '1,1,1', 'row', '2020-10-27 02:05:51', '2020-10-27 02:07:13'),
	(55, 'MANAGE YOUR BUSINESS', 85, 'row', 2, '1,1', 'row', '2020-10-27 03:38:04', '2020-10-27 03:44:19'),
	(56, '4COLUMNS', NULL, 'column', 4, '1,1,1,1', 'row', '2020-10-27 03:45:17', '2020-10-27 03:53:03'),
	(57, 'COUNT ON US', 85, 'column', 3, '1,1,1', 'row', '2020-10-27 05:54:19', '2020-10-27 06:01:34'),
	(58, '3ROWS', NULL, 'row', 3, '1,1,1', 'row', '2020-10-27 05:55:04', '2020-10-27 05:55:11'),
	(59, 'Regional Agriculture', 99, 'column', 2, '1,2', 'column', '2020-10-27 05:58:45', '2020-10-28 09:21:04'),
	(60, 'Big Picture', 99, 'column', 2, '1,2', 'column', '2020-10-27 05:59:07', '2020-10-28 09:21:27'),
	(61, 'Explore', 99, 'column', 2, '1,2', 'column', '2020-10-27 06:03:44', '2020-10-28 09:21:31'),
	(62, 'Benefits Finder', 94, 'row', 2, '1,2', 'row', '2020-10-27 06:06:35', '2020-10-27 06:40:58'),
	(63, 'OPTUS:iPHONE12', 100, 'column', 2, '1,1', 'row', '2020-10-27 09:30:35', '2020-10-27 09:40:20'),
	(64, 'OPTUS:AppleWatch', 103, 'column', 1, '1', 'row', '2020-10-27 09:55:30', '2020-10-27 11:02:52'),
	(65, 'IN:SIDE', 106, 'column', 2, '1,1', 'row', '2020-10-27 10:57:16', '2020-10-27 11:07:55'),
	(66, 'FOOTER:SocialMedia', 107, 'column', 4, '1,1,1,1', 'column', '2020-10-28 05:50:43', '2020-10-28 12:12:15'),
	(68, 'FOOTER:SOCIALMEDIA', 113, 'column', 1, '1', 'column', '2020-10-28 10:26:35', '2020-10-28 12:09:37'),
	(69, 'FOOTER:ALL', 110, 'row', 4, '1,1,1,1', 'row', '2020-10-28 10:26:46', '2020-10-28 13:32:40'),
	(70, 'VIRGIN:LOGO', 111, 'column', 1, '1', 'column', '2020-10-28 11:27:32', '2020-10-28 11:44:31'),
	(71, 'FOOTER:MENU', 112, 'column', 1, '1', 'row', '2020-10-28 11:55:46', '2020-10-28 12:46:43'),
	(72, 'FOOTER:MENU:BUTTONS', 114, 'column', 5, '1,1,1,1,1', 'row', '2020-10-28 12:04:51', '2020-10-28 12:46:29'),
	(73, 'FOOTER:PrivacySection', 116, 'column', 1, '1', 'column', '2020-10-28 12:54:34', '2020-10-28 13:33:04'),
	(74, 'FOOTER:PRIVACYSECTION', NULL, 'column', 2, '1,1', 'row', '2020-10-28 13:01:00', '2020-10-28 13:01:00'),
	(75, 'AS:MAIN:Image', 118, 'column', 1, '1', 'column', '2020-10-29 08:17:20', '2020-10-29 10:43:06'),
	(76, 'AS:MAIN:IMAGE:Content Container', 120, 'column', 1, '1', 'column', '2020-10-29 08:21:31', '2020-10-29 09:36:23'),
	(77, 'AS:Who We Are', 133, 'column', 1, '1', 'column', '2020-10-29 08:42:42', '2020-10-29 10:43:27'),
	(78, 'AS:RACGP:Image', 127, 'column', 1, '1', 'column', '2020-10-29 09:41:22', '2020-10-29 10:43:54'),
	(79, 'AS:RACGP:CONTAINER:Content', 128, 'row', 2, '1,1', 'row', '2020-10-29 09:43:50', '2020-10-29 09:49:32'),
	(80, 'AS:FOOTER:PHONE:Details', NULL, 'row', 2, '1,2', 'row', '2020-10-29 11:27:24', '2020-10-30 00:57:46'),
	(81, 'AS:FOOTER:ADDRESS:Details', NULL, 'row', 2, '1,2', 'row', '2020-10-29 11:27:51', '2020-10-30 00:57:52'),
	(82, 'AS:FOOTER:EMAIL:Details', NULL, 'row', 2, '1,2', 'row', '2020-10-29 11:29:14', '2020-10-30 00:57:35'),
	(83, 'AS:FOOTER:Contact Details', 138, 'column', 3, '1,1,1', 'row', '2020-10-29 11:30:09', '2020-10-29 12:16:29'),
	(84, 'AS:FOOTER', 137, 'column', 1, '1', 'column', '2020-10-29 11:31:00', '2020-10-29 12:07:05'),
	(85, 'AS:FOOTER:ICON:PHONE:Height Control', 140, 'column', 1, '1', 'column', '2020-10-29 11:52:30', '2020-10-29 11:52:30'),
	(86, 'AS:FOOTER:ADDRESS:Height Control', 140, 'column', 1, '1', 'column', '2020-10-29 11:53:50', '2020-10-29 11:54:41'),
	(87, 'AS:FOOTER:EMAIL:Height Control', 140, 'column', 1, '1', 'column', '2020-10-29 11:55:48', '2020-10-29 11:55:48'),
	(88, 'AS:FOOTER:Copyright', NULL, 'row', 2, '1,1', 'row', '2020-10-29 12:01:58', '2020-10-29 12:10:02'),
	(89, 'AS:FOOTER:CONTAINER:Copyright', 143, 'column', 1, '1', 'column', '2020-10-29 12:10:36', '2020-10-29 12:10:52'),
	(90, 'AS:PARTNER:CONTAINER:Condor', NULL, 'row', 4, '1,1,1,1', 'row', '2020-10-30 03:12:02', '2020-10-30 03:12:02'),
	(91, 'AS:PARTNERS:BOTTOMROW', NULL, 'column', 2, '1,1', 'row', '2020-10-30 03:12:03', '2020-10-30 03:12:03'),
	(92, 'AS:PARTNERS:MAINIMAGE:Container', 147, 'column', 1, '1', 'column', '2020-10-30 03:21:29', '2020-10-30 03:21:29'),
	(93, 'AS:PARTNERS:Condor+LifeHealthcare', 69, 'column', 2, '1,1', 'row', '2020-10-30 03:39:43', '2020-10-30 04:35:23'),
	(94, 'AS:PARTNERS:SHOWCASE:Condor', 60, 'row', 2, '1,1', 'row', '2020-10-30 03:42:11', '2020-10-30 03:50:06'),
	(95, 'AS:PERTNER:SHOWCASE:Life Healthcare', 60, 'row', 2, '1,1', 'row', '2020-10-30 03:43:35', '2020-10-30 04:04:10'),
	(96, 'EMOCEAN-MAINIMAGE-Home', 158, 'column', 1, '1', 'column', '2020-11-05 04:31:41', '2020-11-05 04:31:41'),
	(97, 'EMO-MAINIMAGE-TITLE-Align', 159, 'column', 1, '1', 'column', '2020-11-05 04:34:06', '2020-11-05 04:42:30'),
	(98, 'EMO-FOR-EVERY-STAGE-BUSINESS-Rows', NULL, 'row', 3, '1,1,1', 'row', '2020-11-05 04:59:16', '2020-11-05 05:12:27'),
	(99, 'EMO-FOR-EVERY-STAGE-OF-YOUR-BUSINESS', 85, 'column', 3, '1,1,1', 'row', '2020-11-05 05:02:28', '2020-11-05 07:58:52'),
	(100, 'EMO-3COL-3ROW-CONTENTBLOCK-Container', 94, 'row', 2, '1,1', 'row', '2020-11-05 06:25:47', '2020-11-05 06:36:49'),
	(101, 'EMO-3COL-3ROW-CONTENTBLOCK-DriveTraffiContainer', 94, 'row', 2, '1,1', 'row', '2020-11-05 07:41:05', '2020-11-05 07:42:21'),
	(102, 'MA:doesn\'t matter', NULL, 'column', 2, '1,1', 'row', '2020-11-30 06:17:36', '2020-12-04 15:42:09'),
	(103, 'IMAGE:Oasis', NULL, 'column', 1, '1', 'column', '2020-11-30 07:07:12', '2020-12-04 17:42:18');
/*!40000 ALTER TABLE `module_multi_columns` ENABLE KEYS */;

-- Dumping structure for table test.module_multi_columns__columns
CREATE TABLE IF NOT EXISTS `module_multi_columns__columns` (
  `multiColumnsColumnId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `multiColumnsId` bigint(20) NOT NULL,
  `moduleName` varchar(128) NOT NULL,
  `moduleId` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`multiColumnsColumnId`)
) ENGINE=InnoDB AUTO_INCREMENT=2308 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_multi_columns__columns: ~158 rows (approximately)
DELETE FROM `module_multi_columns__columns`;
/*!40000 ALTER TABLE `module_multi_columns__columns` DISABLE KEYS */;
INSERT INTO `module_multi_columns__columns` (`multiColumnsColumnId`, `multiColumnsId`, `moduleName`, `moduleId`, `createdAt`, `updatedAt`) VALUES
	(244, 22, 'module_card', 11, '2020-10-20 11:29:51', '2020-10-20 11:29:51'),
	(245, 22, 'module_card', 13, '2020-10-20 11:29:51', '2020-10-20 11:29:51'),
	(246, 22, 'module_card', 14, '2020-10-20 11:29:51', '2020-10-20 11:29:51'),
	(316, 25, 'module_website_image', 21, '2020-10-21 05:24:36', '2020-10-21 05:24:36'),
	(317, 25, 'module_card', 16, '2020-10-21 05:24:36', '2020-10-21 05:24:36'),
	(318, 24, 'module_multi_columns', 25, '2020-10-21 05:24:38', '2020-10-21 05:24:38'),
	(319, 24, 'module_multi_columns', 25, '2020-10-21 05:24:38', '2020-10-21 05:24:38'),
	(320, 24, 'module_multi_columns', 25, '2020-10-21 05:24:38', '2020-10-21 05:24:38'),
	(323, 23, 'module_multi_columns', 25, '2020-10-21 17:18:38', '2020-10-21 17:18:38'),
	(324, 23, 'module_multi_columns', 25, '2020-10-21 17:18:38', '2020-10-21 17:18:38'),
	(325, 23, 'module_multi_columns', 25, '2020-10-21 17:18:38', '2020-10-21 17:18:38'),
	(335, 26, 'module_website_image', 20, '2020-10-22 01:52:20', '2020-10-22 01:52:20'),
	(336, 26, 'module_card', 18, '2020-10-22 01:52:20', '2020-10-22 01:52:20'),
	(344, 21, 'module_card', 10, '2020-10-22 04:00:57', '2020-10-22 04:00:57'),
	(345, 21, 'module_card', 12, '2020-10-22 04:00:57', '2020-10-22 04:00:57'),
	(346, 21, 'module_multi_columns', 22, '2020-10-22 04:00:57', '2020-10-22 04:00:57'),
	(347, 21, 'module_multi_columns', 26, '2020-10-22 04:00:57', '2020-10-22 04:00:57'),
	(351, 28, 'module_card', 20, '2020-10-23 11:00:39', '2020-10-23 11:00:39'),
	(499, 44, 'module_website_image', 33, '2020-10-23 22:37:44', '2020-10-23 22:37:44'),
	(500, 44, 'module_card', 28, '2020-10-23 22:37:44', '2020-10-23 22:37:44'),
	(521, 46, 'module_card', 30, '2020-10-23 23:49:58', '2020-10-23 23:49:58'),
	(522, 46, 'module_multi_columns', 47, '2020-10-23 23:49:58', '2020-10-23 23:49:58'),
	(523, 46, 'module_button', 24, '2020-10-23 23:49:58', '2020-10-23 23:49:58'),
	(524, 41, 'module_multi_columns', 46, '2020-10-23 23:50:02', '2020-10-23 23:50:02'),
	(530, 50, 'module_card', 31, '2020-10-24 05:29:59', '2020-10-24 05:29:59'),
	(535, 49, 'module_website_image', 36, '2020-10-24 05:33:15', '2020-10-24 05:33:15'),
	(536, 49, 'module_multi_columns', 50, '2020-10-24 05:33:15', '2020-10-24 05:33:15'),
	(537, 48, 'module_multi_columns', 49, '2020-10-24 05:33:16', '2020-10-24 05:33:16'),
	(544, 45, 'module_website_image', 34, '2020-10-24 05:44:12', '2020-10-24 05:44:12'),
	(545, 45, 'module_card', 29, '2020-10-24 05:44:12', '2020-10-24 05:44:12'),
	(561, 43, 'module_website_image', 32, '2020-10-27 01:16:47', '2020-10-27 01:16:47'),
	(562, 43, 'module_card', 27, '2020-10-27 01:16:47', '2020-10-27 01:16:47'),
	(563, 42, 'module_multi_columns', 43, '2020-10-27 01:16:49', '2020-10-27 01:16:49'),
	(564, 42, 'module_multi_columns', 44, '2020-10-27 01:16:49', '2020-10-27 01:16:49'),
	(565, 42, 'module_multi_columns', 45, '2020-10-27 01:16:49', '2020-10-27 01:16:49'),
	(566, 40, 'module_multi_columns', 42, '2020-10-27 01:16:49', '2020-10-27 01:16:49'),
	(567, 39, 'module_multi_columns', 40, '2020-10-27 01:16:50', '2020-10-27 01:16:50'),
	(568, 39, 'module_multi_columns', 41, '2020-10-27 01:16:50', '2020-10-27 01:16:50'),
	(710, 52, 'module_card', 34, '2020-10-27 05:24:42', '2020-10-27 05:24:42'),
	(711, 52, 'module_card', 35, '2020-10-27 05:24:42', '2020-10-27 05:24:42'),
	(712, 52, 'module_card', 36, '2020-10-27 05:24:42', '2020-10-27 05:24:42'),
	(736, 56, 'module_card', 39, '2020-10-27 05:44:24', '2020-10-27 05:44:24'),
	(737, 56, 'module_card', 40, '2020-10-27 05:44:24', '2020-10-27 05:44:24'),
	(738, 56, 'module_card', 41, '2020-10-27 05:44:24', '2020-10-27 05:44:24'),
	(739, 56, 'module_card', 42, '2020-10-27 05:44:24', '2020-10-27 05:44:24'),
	(745, 55, 'module_card', 38, '2020-10-27 05:48:59', '2020-10-27 05:48:59'),
	(746, 55, 'module_multi_columns', 56, '2020-10-27 05:48:59', '2020-10-27 05:48:59'),
	(864, 62, 'module_website_image', 40, '2020-10-27 06:42:27', '2020-10-27 06:42:27'),
	(865, 62, 'module_card', 46, '2020-10-27 06:42:27', '2020-10-27 06:42:27'),
	(891, 53, 'module_card', 32, '2020-10-27 09:01:45', '2020-10-27 09:01:45'),
	(892, 53, 'module_card', 33, '2020-10-27 09:01:45', '2020-10-27 09:01:45'),
	(893, 53, 'module_multi_columns', 52, '2020-10-27 09:01:45', '2020-10-27 09:01:45'),
	(1016, 58, 'module_multi_columns', 59, '2020-10-27 12:19:27', '2020-10-27 12:19:27'),
	(1017, 58, 'module_multi_columns', 60, '2020-10-27 12:19:27', '2020-10-27 12:19:27'),
	(1018, 58, 'module_multi_columns', 61, '2020-10-27 12:19:27', '2020-10-27 12:19:27'),
	(1019, 57, 'module_multi_columns', 58, '2020-10-27 12:19:28', '2020-10-27 12:19:28'),
	(1020, 57, 'module_multi_columns', 62, '2020-10-27 12:19:28', '2020-10-27 12:19:28'),
	(1021, 57, 'module_card', 47, '2020-10-27 12:19:28', '2020-10-27 12:19:28'),
	(1041, 63, 'module_website_image', 41, '2020-10-27 12:34:18', '2020-10-27 12:34:18'),
	(1042, 63, 'module_card', 48, '2020-10-27 12:34:18', '2020-10-27 12:34:18'),
	(1045, 64, 'module_multi_columns', 65, '2020-10-27 12:50:50', '2020-10-27 12:50:50'),
	(1046, 65, 'module_card', 49, '2020-10-27 12:57:53', '2020-10-27 12:57:53'),
	(1047, 65, 'module_website_image', 42, '2020-10-27 12:57:53', '2020-10-27 12:57:53'),
	(1080, 59, 'module_website_image', 37, '2020-10-28 09:21:05', '2020-10-28 09:21:05'),
	(1081, 59, 'module_card', 43, '2020-10-28 09:21:05', '2020-10-28 09:21:05'),
	(1082, 60, 'module_website_image', 38, '2020-10-28 09:21:27', '2020-10-28 09:21:27'),
	(1083, 60, 'module_card', 44, '2020-10-28 09:21:27', '2020-10-28 09:21:27'),
	(1084, 61, 'module_website_image', 39, '2020-10-28 09:21:31', '2020-10-28 09:21:31'),
	(1085, 61, 'module_card', 45, '2020-10-28 09:21:31', '2020-10-28 09:21:31'),
	(1104, 70, 'module_website_image', 47, '2020-10-28 11:44:31', '2020-10-28 11:44:31'),
	(1234, 66, 'module_website_image', 43, '2020-10-28 12:50:55', '2020-10-28 12:50:55'),
	(1235, 66, 'module_website_image', 44, '2020-10-28 12:50:55', '2020-10-28 12:50:55'),
	(1236, 66, 'module_website_image', 45, '2020-10-28 12:50:55', '2020-10-28 12:50:55'),
	(1237, 66, 'module_website_image', 46, '2020-10-28 12:50:55', '2020-10-28 12:50:55'),
	(1284, 68, 'module_multi_columns', 66, '2020-10-28 13:08:08', '2020-10-28 13:08:08'),
	(1307, 72, 'module_button', 33, '2020-10-28 13:29:09', '2020-10-28 13:29:09'),
	(1308, 72, 'module_button', 34, '2020-10-28 13:29:09', '2020-10-28 13:29:09'),
	(1309, 72, 'module_button', 35, '2020-10-28 13:29:09', '2020-10-28 13:29:09'),
	(1310, 72, 'module_button', 36, '2020-10-28 13:29:09', '2020-10-28 13:29:09'),
	(1311, 72, 'module_button', 37, '2020-10-28 13:29:09', '2020-10-28 13:29:09'),
	(1341, 74, 'module_button', 39, '2020-10-28 13:42:29', '2020-10-28 13:42:29'),
	(1342, 74, 'module_button', 38, '2020-10-28 13:42:29', '2020-10-28 13:42:29'),
	(1343, 73, 'module_multi_columns', 74, '2020-10-28 13:42:34', '2020-10-28 13:42:34'),
	(1344, 71, 'module_multi_columns', 72, '2020-10-28 13:43:22', '2020-10-28 13:43:22'),
	(1345, 69, 'module_website_image', 47, '2020-10-28 13:43:23', '2020-10-28 13:43:23'),
	(1346, 69, 'module_multi_columns', 68, '2020-10-28 13:43:23', '2020-10-28 13:43:23'),
	(1347, 69, 'module_multi_columns', 71, '2020-10-28 13:43:23', '2020-10-28 13:43:23'),
	(1348, 69, 'module_multi_columns', 73, '2020-10-28 13:43:23', '2020-10-28 13:43:23'),
	(1351, 27, 'module_card', 19, '2020-10-29 05:55:05', '2020-10-29 05:55:05'),
	(1352, 29, 'module_card', 20, '2020-10-29 05:58:51', '2020-10-29 05:58:51'),
	(1403, 31, 'module_card', 21, '2020-10-29 08:15:39', '2020-10-29 08:15:39'),
	(1404, 31, 'module_website_image', 24, '2020-10-29 08:15:39', '2020-10-29 08:15:39'),
	(1406, 30, 'module_multi_columns', 31, '2020-10-29 08:20:30', '2020-10-29 08:20:30'),
	(1489, 76, 'module_card', 51, '2020-10-29 10:23:00', '2020-10-29 10:23:00'),
	(1493, 79, 'module_card', 53, '2020-10-29 10:40:08', '2020-10-29 10:40:08'),
	(1494, 79, 'module_website_image', 50, '2020-10-29 10:40:08', '2020-10-29 10:40:08'),
	(1498, 77, 'module_card', 52, '2020-10-29 10:43:27', '2020-10-29 10:43:27'),
	(1499, 78, 'module_multi_columns', 79, '2020-10-29 10:43:54', '2020-10-29 10:43:54'),
	(1747, 86, 'module_website_image', 53, '2020-10-30 01:39:32', '2020-10-30 01:39:32'),
	(1748, 81, 'module_multi_columns', 86, '2020-10-30 01:39:34', '2020-10-30 01:39:34'),
	(1749, 81, 'module_card', 55, '2020-10-30 01:39:34', '2020-10-30 01:39:34'),
	(1754, 87, 'module_website_image', 52, '2020-10-30 01:48:30', '2020-10-30 01:48:30'),
	(1755, 82, 'module_multi_columns', 87, '2020-10-30 01:48:38', '2020-10-30 01:48:38'),
	(1756, 82, 'module_card', 56, '2020-10-30 01:48:38', '2020-10-30 01:48:38'),
	(1761, 85, 'module_website_image', 51, '2020-10-30 01:51:53', '2020-10-30 01:51:53'),
	(1764, 80, 'module_multi_columns', 85, '2020-10-30 01:56:20', '2020-10-30 01:56:20'),
	(1765, 80, 'module_card', 54, '2020-10-30 01:56:20', '2020-10-30 01:56:20'),
	(1813, 90, 'module_website_image', 56, '2020-10-30 03:12:02', '2020-10-30 03:12:02'),
	(1814, 91, 'module_multi_columns', 90, '2020-10-30 03:12:03', '2020-10-30 03:12:03'),
	(2095, 83, 'module_multi_columns', 82, '2020-10-30 04:59:00', '2020-10-30 04:59:00'),
	(2096, 83, 'module_multi_columns', 81, '2020-10-30 04:59:00', '2020-10-30 04:59:00'),
	(2097, 83, 'module_multi_columns', 80, '2020-10-30 04:59:00', '2020-10-30 04:59:00'),
	(2115, 36, 'module_card', 23, '2020-10-30 05:12:54', '2020-10-30 05:12:54'),
	(2116, 36, 'module_website_image', 29, '2020-10-30 05:12:54', '2020-10-30 05:12:54'),
	(2117, 36, 'module_card', 25, '2020-10-30 05:12:54', '2020-10-30 05:12:54'),
	(2118, 36, 'module_button', 46, '2020-10-30 05:12:54', '2020-10-30 05:12:54'),
	(2135, 35, 'module_card', 24, '2020-10-30 05:16:49', '2020-10-30 05:16:49'),
	(2136, 35, 'module_website_image', 30, '2020-10-30 05:16:49', '2020-10-30 05:16:49'),
	(2137, 35, 'module_card', 26, '2020-10-30 05:16:49', '2020-10-30 05:16:49'),
	(2138, 35, 'module_button', 23, '2020-10-30 05:16:49', '2020-10-30 05:16:49'),
	(2139, 34, 'module_multi_columns', 35, '2020-10-30 05:16:50', '2020-10-30 05:16:50'),
	(2140, 34, 'module_multi_columns', 36, '2020-10-30 05:16:50', '2020-10-30 05:16:50'),
	(2147, 95, 'module_card', 60, '2020-10-30 05:21:21', '2020-10-30 05:21:21'),
	(2148, 95, 'module_website_image', 60, '2020-10-30 05:21:21', '2020-10-30 05:21:21'),
	(2149, 95, 'module_card', 61, '2020-10-30 05:21:21', '2020-10-30 05:21:21'),
	(2150, 95, 'module_button', 48, '2020-10-30 05:21:21', '2020-10-30 05:21:21'),
	(2151, 94, 'module_card', 58, '2020-10-30 05:21:34', '2020-10-30 05:21:34'),
	(2152, 94, 'module_website_image', 58, '2020-10-30 05:21:34', '2020-10-30 05:21:34'),
	(2153, 94, 'module_card', 59, '2020-10-30 05:21:34', '2020-10-30 05:21:34'),
	(2154, 94, 'module_button', 47, '2020-10-30 05:21:34', '2020-10-30 05:21:34'),
	(2155, 93, 'module_multi_columns', 94, '2020-10-30 05:21:35', '2020-10-30 05:21:35'),
	(2156, 93, 'module_multi_columns', 95, '2020-10-30 05:21:35', '2020-10-30 05:21:35'),
	(2157, 33, 'module_multi_columns', 34, '2020-10-30 06:03:05', '2020-10-30 06:03:05'),
	(2158, 33, 'module_multi_columns', 93, '2020-10-30 06:03:05', '2020-10-30 06:03:05'),
	(2159, 32, 'module_card', 22, '2020-10-30 06:03:07', '2020-10-30 06:03:07'),
	(2160, 32, 'module_website_image', 25, '2020-10-30 06:03:07', '2020-10-30 06:03:07'),
	(2161, 32, 'module_multi_columns', 33, '2020-10-30 06:03:07', '2020-10-30 06:03:07'),
	(2162, 37, 'module_multi_columns', 32, '2020-10-30 06:03:08', '2020-10-30 06:03:08'),
	(2163, 88, 'module_button', 45, '2020-10-30 06:04:30', '2020-10-30 06:04:30'),
	(2164, 88, 'module_card', 57, '2020-10-30 06:04:30', '2020-10-30 06:04:30'),
	(2165, 89, 'module_multi_columns', 88, '2020-10-30 06:04:31', '2020-10-30 06:04:31'),
	(2166, 84, 'module_multi_columns', 83, '2020-10-30 06:08:31', '2020-10-30 06:08:31'),
	(2208, 98, 'module_card', 63, '2020-11-05 05:17:13', '2020-11-05 05:17:13'),
	(2209, 98, 'module_card', 66, '2020-11-05 05:17:13', '2020-11-05 05:17:13'),
	(2210, 98, 'module_card', 67, '2020-11-05 05:17:13', '2020-11-05 05:17:13'),
	(2255, 100, 'module_website_image', 63, '2020-11-05 07:55:51', '2020-11-05 07:55:51'),
	(2256, 100, 'module_card', 64, '2020-11-05 07:55:51', '2020-11-05 07:55:51'),
	(2257, 101, 'module_website_image', 64, '2020-11-05 07:57:02', '2020-11-05 07:57:02'),
	(2258, 101, 'module_card', 65, '2020-11-05 07:57:02', '2020-11-05 07:57:02'),
	(2259, 99, 'module_multi_columns', 100, '2020-11-05 07:58:52', '2020-11-05 07:58:52'),
	(2260, 99, 'module_multi_columns', 101, '2020-11-05 07:58:52', '2020-11-05 07:58:52'),
	(2261, 99, 'module_multi_columns', 98, '2020-11-05 07:58:52', '2020-11-05 07:58:52'),
	(2262, 97, 'module_card', 62, '2020-11-05 08:00:54', '2020-11-05 08:00:54'),
	(2264, 75, 'module_card', 51, '2020-11-06 00:33:33', '2020-11-06 00:33:33'),
	(2267, 96, 'module_card', 62, '2020-11-06 00:42:22', '2020-11-06 00:42:22'),
	(2303, 102, 'module_card', 70, '2020-12-04 17:11:49', '2020-12-04 17:11:49'),
	(2304, 102, 'module_card', 71, '2020-12-04 17:11:49', '2020-12-04 17:11:49'),
	(2305, 102, 'module_slide_show', 192, '2020-12-04 17:11:49', '2020-12-04 17:11:49'),
	(2307, 103, 'module_website_image', 65, '2020-12-04 17:42:19', '2020-12-04 17:42:19');
/*!40000 ALTER TABLE `module_multi_columns__columns` ENABLE KEYS */;

-- Dumping structure for table test.module_page_setting
CREATE TABLE IF NOT EXISTS `module_page_setting` (
  `pageSettingId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `maxWidth` varchar(1024) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`pageSettingId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_page_setting: ~2 rows (approximately)
DELETE FROM `module_page_setting`;
/*!40000 ALTER TABLE `module_page_setting` DISABLE KEYS */;
INSERT INTO `module_page_setting` (`pageSettingId`, `internalName`, `maxWidth`, `createdAt`, `updatedAt`) VALUES
	(14, 'WDITH:1280px', '1280px', '2020-10-27 02:02:26', '2020-10-27 02:03:13'),
	(15, 'PAGESETTINGS:Oasis', '1280px', '2020-11-30 06:23:43', '2020-11-30 06:24:21');
/*!40000 ALTER TABLE `module_page_setting` ENABLE KEYS */;

-- Dumping structure for table test.module_section_setting
CREATE TABLE IF NOT EXISTS `module_section_setting` (
  `sectionSettingId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `width` varchar(1024) DEFAULT NULL,
  `maxWidth` varchar(1024) DEFAULT NULL,
  `height` varchar(1024) DEFAULT NULL,
  `maxHeight` varchar(1024) DEFAULT NULL,
  `backgroundColor` varchar(1024) DEFAULT NULL,
  `backgroundImageId` bigint(20) DEFAULT NULL,
  `borders` varchar(100) DEFAULT '',
  `borderStyle` varchar(10) DEFAULT 'solid',
  `borderThickness` varchar(10) DEFAULT '0px',
  `borderColor` varchar(7) DEFAULT '#aa0000',
  `margin` varchar(1024) DEFAULT NULL,
  `padding` varchar(1024) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`sectionSettingId`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_section_setting: ~130 rows (approximately)
DELETE FROM `module_section_setting`;
/*!40000 ALTER TABLE `module_section_setting` DISABLE KEYS */;
INSERT INTO `module_section_setting` (`sectionSettingId`, `internalName`, `width`, `maxWidth`, `height`, `maxHeight`, `backgroundColor`, `backgroundImageId`, `borders`, `borderStyle`, `borderThickness`, `borderColor`, `margin`, `padding`, `createdAt`, `updatedAt`) VALUES
	(27, '3Col3Row', '', '1280px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-19 04:45:22', '2020-10-22 01:42:20'),
	(28, 'Header Setting', NULL, NULL, '90px', NULL, '', NULL, NULL, NULL, NULL, '', NULL, '0,0,0,16px', '2020-10-20 00:35:37', '2020-10-24 06:53:14'),
	(29, 'Header Logo Button 1', '250px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-20 00:36:38', '2020-10-20 00:39:47'),
	(30, 'Header Logo 2', '150px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-20 00:37:41', '2020-10-20 02:48:16'),
	(31, 'MenuGroupOneButtonSpacing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,16px,0,16px', '0,0,0,0', '2020-10-20 00:38:30', '2020-10-24 06:58:31'),
	(32, 'Content Setting', NULL, NULL, NULL, NULL, NULL, NULL, 'left,right,top,bottom', 'solid', '1px', '#C0C0C0', '0,0,0,0', '00,0,0,0', '2020-10-20 00:46:37', '2020-10-22 01:54:16'),
	(33, 'Content2 setting', NULL, NULL, NULL, NULL, NULL, NULL, 'left,right,top,bottom', 'dotted', '1px', '#f00', NULL, NULL, '2020-10-20 00:52:04', '2020-10-20 00:52:04'),
	(34, 'MenuGroup1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,0,30px', '0,0,0,0', '2020-10-20 02:06:29', '2020-10-22 01:29:12'),
	(35, 'BTN-STANDARD-SETTINGS', NULL, '30%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-20 03:06:46', '2020-10-21 05:23:21'),
	(36, '3Rows', NULL, NULL, NULL, NULL, NULL, NULL, 'top,bottom,left,right', 'solid', '1px', '#C0C0C0', NULL, NULL, '2020-10-20 08:33:19', '2020-10-20 08:43:53'),
	(37, 'SIMPLE BORDER', NULL, NULL, NULL, NULL, NULL, NULL, 'left,right,top,bottom', 'solid', '1px', '#cfd8dc', NULL, NULL, '2020-10-21 05:00:06', '2020-10-21 05:12:11'),
	(38, 'MULTICOLUMN-TEST -SETTINGS', '1500px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 05:19:02', '2020-10-21 05:20:46'),
	(39, 'SIMPLE-MARGINS-TEST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 05:24:35', '2020-10-21 05:24:35'),
	(40, 'MainSearch', '140px', NULL, '90px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 16:54:49', '2020-10-24 06:54:43'),
	(41, 'SUBMENU SETTINGS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,20px,0,20px', '0,20px,0,20px', '2020-10-22 04:02:13', '2020-10-22 04:02:13'),
	(42, 'AS-BUTTON-SETTINGS', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,0,0', '8px,16px,8px,16px', '2020-10-22 04:26:54', '2020-10-23 10:05:53'),
	(43, 'icon', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,10px,0,10px', '0,10px,0,10px', '2020-10-22 05:26:48', '2020-10-23 01:50:04'),
	(44, 'aaa', '200px', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-22 05:36:12', '2020-10-22 06:55:26'),
	(45, 'LOGO:SETTINGS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,0,0', '5px,0,5px,0', '2020-10-23 02:03:48', '2020-10-29 07:49:56'),
	(46, 'AS-MAIN-IMAGE', '100%', '', '', NULL, NULL, 22, NULL, NULL, NULL, NULL, '0,Auto,0,Auto', NULL, '2020-10-23 02:21:20', '2020-10-29 07:46:47'),
	(47, 'Header Setting', NULL, NULL, '90px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,0,0', '2020-10-23 09:57:45', '2020-10-29 07:52:27'),
	(48, 'MenuGroup1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,8px,0,8px', '2020-10-23 10:03:50', '2020-10-23 10:03:50'),
	(49, 'MAIN-IMAGE-TEXT', '900px', '', '800px', NULL, '', NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,15px,0,15px', '2020-10-23 10:14:08', '2020-10-29 07:43:36'),
	(50, 'WhoWeAreSetting', '', '1255px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '48px,0,48px,0', '2020-10-23 10:56:50', '2020-10-23 19:29:44'),
	(51, 'WhoWeAre content', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,0,0', '48px,15px,48px,15px', '2020-10-23 17:48:06', '2020-10-23 17:48:06'),
	(52, 'ThirdSection', NULL, NULL, '550px', NULL, NULL, 23, NULL, NULL, NULL, NULL, '0,0,0,0', NULL, '2020-10-23 18:19:17', '2020-10-29 06:20:15'),
	(53, 'ThirdSection1-1', '', '', '542px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,0,0', '2020-10-23 18:22:47', '2020-10-29 07:50:43'),
	(54, 'ThirdSection1-1 Setting', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '145px,auto,0,auto', NULL, '2020-10-23 18:36:24', '2020-10-29 06:27:42'),
	(55, 'ThirdImage1-Setting', '', '80%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '40px,0,0,0', '2020-10-23 19:15:49', '2020-10-29 07:51:28'),
	(56, 'AS:CONTENTAREA:SETTINGS:Distribution Partners', '', '948px', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '48px,15px,48px,15px', '2020-10-23 20:29:27', '2020-10-29 11:18:29'),
	(57, 'AS:ARROWSICON:Settings', '107px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,48px,auto', NULL, '2020-10-23 20:31:57', '2020-10-29 10:46:10'),
	(58, 'AS:SETTINGS:TITLE:Partners', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,8px,0', NULL, '2020-10-23 20:34:02', '2020-10-30 02:39:52'),
	(59, 'Section4-3 Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,0,0', NULL, '2020-10-23 20:37:58', '2020-10-30 04:32:19'),
	(60, 'AS:PARTNER:SHOWCASE:Settings', NULL, NULL, '100%', NULL, '#fff', NULL, NULL, NULL, NULL, NULL, '8px,8px,8px,8px', '20px,20px,20px,20px', '2020-10-23 20:43:52', '2020-10-30 04:34:44'),
	(61, 'AS:MAINIMAGE:SETTINGS:Right Partner', NULL, NULL, '167px', NULL, NULL, 27, NULL, NULL, NULL, NULL, '0,0,35px,0', NULL, '2020-10-23 20:47:16', '2020-10-30 03:30:01'),
	(62, 'AS:MAINIMAGE:SETTINGS:Left Partner', NULL, NULL, '167px', NULL, NULL, 28, NULL, NULL, NULL, NULL, '0,0,16px,0', NULL, '2020-10-23 20:52:58', '2020-10-30 02:43:11'),
	(63, 'AS:LOGO:SETTINGS:Naviswiss', '207px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,35px,0', NULL, '2020-10-23 20:56:33', '2020-10-30 03:29:54'),
	(64, 'AS:LOGO:SETTINGS:Left Partner', '204px', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0,0,25px,0', NULL, '2020-10-23 20:59:04', '2020-10-30 04:06:42'),
	(65, 'AS:CONTENT:SETTINGS:Naviswiss', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 21:20:52', '2020-10-30 04:54:52'),
	(66, 'AS:BTN:SETTINGS:Visit Website', NULL, NULL, NULL, NULL, NULL, NULL, 'top,bottom,left,right', 'solid', '2px', '#ff62ab', '33px,0,33px,0', '14px,26px,14px,26px', '2020-10-23 21:36:49', '2020-10-30 05:16:46'),
	(67, 'AS:CONTENTAREA:SETTINGS:Partners', NULL, NULL, NULL, NULL, '#f7f7f7', NULL, NULL, NULL, NULL, NULL, NULL, '48px,0,48px,0', '2020-10-23 21:47:28', '2020-10-30 02:38:53'),
	(68, 'AS:SETTINGS:HORIZONTALGAP:8pxBottom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,8px,0', NULL, '2020-10-23 21:54:57', '2020-10-30 02:55:06'),
	(69, 'AS:SETTINGS:HORIZONTALGAP:8pxTop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8px,0,0,0', NULL, '2020-10-23 21:59:20', '2020-10-30 02:54:50'),
	(70, 'Contact US Image Setting', NULL, NULL, '800px', NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 22:15:02', '2020-10-23 22:16:00'),
	(71, 'Contact US Image Content Setting', '', '256px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200px,0,auto,111px', NULL, '2020-10-23 22:19:48', '2020-10-23 22:47:07'),
	(72, 'Contact US Image Content Mobile Icon Setting', '', '20px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,16px,0,0', '0,0,10px,0', '2020-10-23 22:25:49', '2020-10-27 01:16:44'),
	(73, 'Contact US Image Content Address Icon Setting', '', '30px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 22:33:08', '2020-10-24 05:36:35'),
	(74, 'Contact US Image Content Mobile Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,24px,0', NULL, '2020-10-23 22:37:14', '2020-10-23 22:37:14'),
	(75, 'Contact US Image Content Address Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,48px,0', NULL, '2020-10-23 22:37:30', '2020-10-23 22:37:30'),
	(76, 'Contact US Image Content Email Icon Setting', '30px', '30px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,16px,0,0', NULL, '2020-10-23 22:39:14', '2020-10-24 05:41:44'),
	(77, 'Contact US Body Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '48px,48px,48px,48px', '0,48px,0,0', '2020-10-23 22:49:15', '2020-10-23 22:49:15'),
	(78, 'Contact US Body Inside Setting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '48px,48px,48px,48px', '2020-10-23 22:50:27', '2020-10-23 22:50:27'),
	(79, 'Contact US Body Inside Form Setting', NULL, NULL, '368px', NULL, '#fdfdfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 22:57:22', '2020-10-23 22:57:22'),
	(80, 'Contact US Body Inside Submit Setting', NULL, NULL, NULL, NULL, NULL, NULL, 'top,bottom,left,right', 'solid', '2px', '#ff62ab', 'auto,auto,auto,auto', '14px,26px,14px,26px', '2020-10-23 23:02:18', '2020-10-23 23:03:58'),
	(81, 'Footer Setting', NULL, NULL, '206px', NULL, '#111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 23:50:56', '2020-10-23 23:50:56'),
	(82, 'Footer Body Setting', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-23 23:52:35', '2020-10-24 05:31:24'),
	(83, 'Footer Body Image Setting', NULL, '215px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '48px,0,16px,0', '2020-10-23 23:54:23', '2020-10-23 23:56:19'),
	(84, 'SETTINGS:CONTENTBLOCK:1280wx464h', NULL, '1280px', '464px', NULL, NULL, NULL, 'right,left,bottom,top', 'solid', '1px', '#c4c4c4', '15px,15px,15px,15px', '30px,30px,30px,30px', '2020-10-27 02:01:44', '2020-11-05 05:14:44'),
	(85, 'WIDTH:1280pxHEIGHT:500pxCENTERED', '1280px', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50px,auto,50px,auto', NULL, '2020-10-27 02:03:52', '2020-11-05 07:57:18'),
	(86, '3ROWS:INDIVIDUAL:ROW:SETTINGS:130h', NULL, NULL, '130px', NULL, NULL, NULL, 'right,left,bottom,top', 'solid', '1px', '#C4C4C4', '15px,15px,15px,15px', '15px,20px,15px,20px', '2020-10-27 02:30:49', '2020-11-05 05:15:52'),
	(87, 'BTN:CommBank', NULL, NULL, NULL, NULL, '#c4c4c4', NULL, NULL, NULL, NULL, NULL, '0,0,30px,0', '10px,30px,10px,30px', '2020-10-27 02:57:42', '2020-10-27 11:58:20'),
	(88, 'LINE', '65%', NULL, '', NULL, NULL, NULL, 'bottom', 'solid', '1px', '#c4c4c4', '75px,auto,75px,auto', '0,0,0,0', '2020-10-27 03:27:51', '2020-10-29 02:32:12'),
	(89, 'SETTINGS:WhiteButtons', NULL, NULL, NULL, NULL, NULL, NULL, '', 'solid', '0px', '', NULL, '10px,20px,10px,20px', '2020-10-27 03:38:00', '2020-10-27 04:53:05'),
	(90, 'WIDTH:1280HEIGHT:100pxCENTERED', '1280px', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,15px,auto', '0,15px,15px,15px', '2020-10-27 03:41:46', '2020-10-27 05:48:45'),
	(91, '4COLOUMNS', NULL, NULL, '', NULL, NULL, NULL, '', 'solid', '1px', '#c4c4c4', '15px,0,15px,0', '15px,15px,15px,15px', '2020-10-27 03:51:26', '2020-10-27 05:43:51'),
	(92, '4COLUMNS-LAST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px,0,15px,0', '15px,15px,15px,15px', '2020-10-27 04:51:39', '2020-10-27 05:43:04'),
	(93, '4COLUMNS-FIRST', NULL, NULL, NULL, NULL, NULL, NULL, '', 'solid', '1px', '#c4c4c4', '15px,0,15px,0', '15px,15px,15px,15px', '2020-10-27 04:54:55', '2020-10-27 05:44:03'),
	(94, 'SETTINGS:IMAGE+CONTENT:BLOCK', NULL, NULL, NULL, NULL, NULL, NULL, 'top,bottom,left,right', 'solid', '1px', '#c4c4c4', '15px,15px,15px,15px', NULL, '2020-10-27 06:09:46', '2020-11-05 06:37:46'),
	(95, 'SETTINGS: ImageTopTextBottom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30px,30px,30px,30px', '2020-10-27 06:10:28', '2020-10-27 06:10:28'),
	(96, 'SETTINGS:3ROWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 06:16:21', '2020-10-27 06:16:21'),
	(97, 'SET:IMG:3ROWS', '132px', '132px', '132px', '132px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 06:19:42', '2020-10-27 06:48:49'),
	(98, 'SET:IMG:3ROWSTEXTAREA', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Auto,0,Auto,0', '15px,15px,15px,15px', '2020-10-27 06:23:42', '2020-10-27 12:17:28'),
	(99, 'SETTINGS:Image3Rows', NULL, NULL, NULL, NULL, NULL, NULL, 'top,bottom,left,right', 'solid', '1px', '#c4c4c4', '15px,15px,15px,15px', NULL, '2020-10-27 06:36:19', '2020-10-27 06:46:32'),
	(100, 'OPTUS:SETTINGS:iPhone12', NULL, '1100px', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '15px,auto,15px,auto', NULL, '2020-10-27 09:39:04', '2020-10-27 12:30:32'),
	(101, 'OPTUS:MOD:SETTINGS:iPhone12', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'auto,15px,auto,15px', '15px,100px,70px,15px', '2020-10-27 09:39:57', '2020-10-27 12:33:33'),
	(102, 'IMG:SETTINGS:iPhone12', '', '500px', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,65px,0', '2020-10-27 09:44:22', '2020-10-27 12:34:15'),
	(103, 'AppleWatchSettings', '', NULL, NULL, '', '#000000', NULL, NULL, NULL, NULL, NULL, '0,0,0,0', NULL, '2020-10-27 10:40:39', '2020-10-27 12:24:12'),
	(104, 'SETTINGS:AppleWatchText', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 'auto,0,auto,15px', '75px,100px,75px,15px', '2020-10-27 10:43:03', '2020-10-27 12:57:39'),
	(105, 'IMG:AppleWatch:SETTINGS', '500px', NULL, '', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, 'auto,0,auto,0', '0,0,50px,0', '2020-10-27 10:44:58', '2020-10-27 12:28:59'),
	(106, 'Settings.Apple.Watch', '1100px', '', NULL, NULL, '#000000', NULL, NULL, NULL, NULL, NULL, 'auto,auto,auto,auto', '0,0,0,0', '2020-10-27 11:07:36', '2020-10-27 12:25:25'),
	(107, 'SETTINGS: Socia lMedia', NULL, '350px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,0,0', '2020-10-28 05:55:14', '2020-10-28 12:50:53'),
	(108, 'SECTIONSETTINGS:SocialMedia', NULL, '75px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,Auto,0,Auto', '15px,15px,15px,15px', '2020-10-28 05:58:13', '2020-10-28 06:01:23'),
	(109, 'SETTINGS:VirginLogo', '200px', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45px,auto,30px,auto', '0,30px,0,30px', '2020-10-28 11:03:15', '2020-10-28 13:39:09'),
	(110, 'FOOTER:SETTINGS:ALL', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,0,0', '2020-10-28 11:17:25', '2020-10-28 13:38:44'),
	(111, 'SETTINGS:MULTI:VIRGINLOGO', '1280px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-28 11:27:17', '2020-10-28 11:37:35'),
	(112, 'SETTINGS:Footer:Menu', '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '10px,0,20px,0', '2020-10-28 12:00:43', '2020-10-28 13:43:04'),
	(113, 'SETTINGS:FOOTER:SOCIALMEDIA', NULL, '90%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,60px,0,60px', '2020-10-28 12:08:45', '2020-10-28 13:07:54'),
	(114, 'SETTINGS:VIRGIN:BTNS', '1000px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,0,0', '2020-10-28 12:19:20', '2020-10-28 13:08:20'),
	(115, 'BTN:VIRGIN:SETTINGS', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '20px,0,20px,0', '2020-10-28 12:27:05', '2020-10-28 13:30:40'),
	(116, 'FOOTER:PRIVACY:Policy', '', '600px', '', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-28 12:57:20', '2020-10-28 13:23:12'),
	(117, 'AS:MAINMENU:BTN:SETTING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,25px,0,0', '2020-10-29 07:59:59', '2020-10-29 08:14:03'),
	(118, 'AS:MAIN:IMAGE:BG Image Settings', '100%', NULL, '700px', NULL, NULL, 48, NULL, NULL, NULL, NULL, '0,0,0,0', NULL, '2020-10-29 08:17:15', '2020-11-05 04:36:43'),
	(120, 'AS:MAIN:IMAGE:SETTINGS:Container', '100%', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-29 08:24:38', '2020-10-29 10:16:25'),
	(122, 'AS:MAINIMAGE:SETTINGS:Image', NULL, '300px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px,0,15px,30px', '2020-10-29 09:01:51', '2020-10-29 10:26:42'),
	(123, 'AS:HEADER:SETTINGS', '100%', NULL, '90px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 09:06:32', '2020-10-29 10:27:13'),
	(126, 'AS:WHOWEARE:Settings', '65%', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,0,0', '2020-10-29 09:38:01', '2020-10-29 10:15:15'),
	(127, 'AS:RACGP:IMAGE:Settings', '100%', NULL, '500px', NULL, NULL, 49, NULL, NULL, NULL, NULL, '0,0,0,0', '100px,0,100px,0', '2020-10-29 09:44:53', '2020-10-29 10:35:53'),
	(128, 'AS:RACGP:CONTAINER:Settings', '65%', NULL, '300px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,0,0', '2020-10-29 09:46:37', '2020-10-29 10:36:08'),
	(129, 'AS:RACGP:LOGO:Settings', '600px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-29 09:54:51', '2020-10-29 09:55:47'),
	(130, 'AS:RACGP:LOGO:Settings', '80%', '477px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '40px,0,0,0', '2020-10-29 10:00:20', '2020-10-29 10:37:59'),
	(131, 'AS:RACGP:SETTINGS:Text', '800pxpx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 10:03:00', '2020-10-29 10:03:15'),
	(132, 'AS:MAINIMAGE:SETTINGS:Title', '65%', NULL, '700px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-29 10:11:49', '2020-10-29 10:22:40'),
	(133, 'MARGIN:TOP+BOTTOM:100px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100px,0,100px,0', '0,0,0,0', '2020-10-29 10:14:46', '2020-10-29 10:15:33'),
	(137, 'AS:FOOTER:SETTINGS', '100%', '', NULL, NULL, '#000000', NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '100px,0,50px,0', '2020-10-29 11:30:58', '2020-10-30 06:04:56'),
	(138, 'AS:FOOTER:SETTINGS:Contact Details', '', '1280px', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,0,0', '2020-10-29 11:32:29', '2020-10-30 01:53:56'),
	(139, 'AS:FOOTER:SETTINGS:Content+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25px,0,75px,0', '2020-10-29 11:39:05', '2020-10-30 01:55:20'),
	(140, 'AS:FOOTER:ICONS:SETTINGS:Height Control', NULL, NULL, '', '55px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 11:51:54', '2020-10-30 01:48:00'),
	(141, 'AS:FOOTER:SETTINGS:Icons', '55px', '55px', '', '50px', NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-10-29 11:58:44', '2020-10-30 01:51:33'),
	(142, 'AS:BTN:FOOTER:SETTINGS:Logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,20px,0', '2020-10-29 12:05:47', '2020-10-29 12:14:29'),
	(143, 'AS:FOOTER:SETTINGS:Copyright', '100%', NULL, '', NULL, '#fff', NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '40px,0,40px,0', '2020-10-29 12:08:36', '2020-10-29 12:14:01'),
	(145, 'AS:MAINIMAGE:PARTNER:SETTINGS:Main Image', NULL, NULL, '167px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:11:59', '2020-10-30 03:11:59'),
	(146, 'AS:MAINIMAGE:SETTINGS:Exactech', NULL, NULL, '', '150px', NULL, NULL, NULL, NULL, NULL, NULL, '0,0,0,0', NULL, '2020-10-30 03:16:59', '2020-10-30 03:19:13'),
	(147, 'AS:PARTNERS:MAINIMAGE:SETTINGS:Exactech', NULL, NULL, '167px', '', NULL, 57, NULL, NULL, NULL, NULL, '0,0,35px,0', NULL, '2020-10-30 03:21:17', '2020-10-30 03:46:17'),
	(148, 'AS:PARTNER:MAINIMAGE:SETTINGS:Condor', NULL, NULL, '167px', NULL, NULL, 59, NULL, NULL, NULL, NULL, '0,0,35px,0', NULL, '2020-10-30 03:45:57', '2020-10-30 03:51:52'),
	(149, 'AS:PARTNER:MAINIMAGE:SETTINGS:Life Healthcare', NULL, NULL, '167px', NULL, NULL, 61, NULL, NULL, NULL, NULL, '0,0,35px,0', NULL, '2020-10-30 03:52:59', '2020-10-30 03:55:15'),
	(150, 'AS:LOGO:SETTINGS:Condor', '204px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,25px,0', NULL, '2020-10-30 04:07:13', '2020-10-30 04:08:29'),
	(151, 'AS:LOGO:SETTINGS:Life Healthcare', '204px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,38px,0', NULL, '2020-10-30 04:25:04', '2020-10-30 04:27:40'),
	(152, 'AS:CONTENT:SETTINGS:Naviswiss', NULL, NULL, '225px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 04:46:23', '2020-10-30 04:47:53'),
	(153, 'AS:CONTENT:SETTINGS:Life Healthcare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0,50px,0', NULL, '2020-10-30 04:49:12', '2020-10-30 04:49:12'),
	(154, 'MAINMENU-SETTINGS-Emocean', '100%', NULL, NULL, NULL, NULL, NULL, 'bottom', 'solid', '1px', '#eef3f6', NULL, NULL, '2020-11-05 02:47:41', '2020-11-05 07:59:28'),
	(155, 'EMOCEAN-BTN-MAINMENU-SETTINGS-Contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,0px,0,20px', '34px,55px,34px,55px', '2020-11-05 03:17:08', '2020-11-05 04:26:59'),
	(156, 'EMOCEAN-MAINMENU-BTN-Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,30px,0,30px', '2020-11-05 04:06:08', '2020-11-05 04:23:57'),
	(157, 'EMOCEAN-SETTINGS-Logo', NULL, '290px', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '0,30px,0,20px', NULL, '2020-11-05 04:07:59', '2020-11-05 04:26:35'),
	(158, 'EMOCEAN-MAINIMAGE-BG-ImageSettings', '80%', NULL, '590px', '', NULL, 62, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-11-05 04:30:33', '2020-11-06 00:39:17'),
	(159, 'EMO-MAINIMAGE-TITLE-ALIGN-Settings', NULL, NULL, NULL, '590px', NULL, NULL, NULL, NULL, NULL, NULL, '0,250px,0,250px', NULL, '2020-11-05 04:42:15', '2020-11-05 04:42:50'),
	(160, 'EMO-MAINIMAGE-TITLE-CONTENT-Settings', '75%', '', '590px', '', NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', '0,0,50px,0', '2020-11-05 04:43:31', '2020-11-06 00:41:50'),
	(161, 'button 2', '30px', NULL, '40px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 11:17:03', '2020-11-05 11:17:03'),
	(162, 'CB:SETTINGS:Oasis', '', '500px', NULL, NULL, '#F62D94', NULL, 'top,bottom,left,right', 'solid', '1px', NULL, NULL, NULL, '2020-11-30 06:22:35', '2020-11-30 06:27:01'),
	(163, 'IMAGE:SETTINGS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50px,0,0,0', NULL, '2020-11-30 07:06:48', '2020-11-30 07:14:44'),
	(164, 'CB:Settings:withImage', '500px', NULL, NULL, NULL, NULL, NULL, 'top,bottom,left,right', 'solid', '1px', NULL, NULL, '50px,50px,50px,50px', '2020-11-30 07:08:39', '2020-11-30 07:09:24'),
	(165, 'slide show 1 setting', '80%', '', '700px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0,auto,0,auto', NULL, '2020-12-05 18:34:22', '2020-12-15 17:37:56'),
	(166, 'slide image rule', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 19:18:27', '2020-12-05 19:38:33');
/*!40000 ALTER TABLE `module_section_setting` ENABLE KEYS */;

-- Dumping structure for table test.module_seo
CREATE TABLE IF NOT EXISTS `module_seo` (
  `seoId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(128) NOT NULL,
  `slug` varchar(1024) NOT NULL,
  `featuredImageId` bigint(20) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`seoId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_seo: ~9 rows (approximately)
DELETE FROM `module_seo`;
/*!40000 ALTER TABLE `module_seo` DISABLE KEYS */;
INSERT INTO `module_seo` (`seoId`, `internalName`, `slug`, `featuredImageId`, `title`, `description`, `createdAt`, `updatedAt`) VALUES
	(27, 'SEO: Windy', 'windy', NULL, 'Windy Luxury Boats', NULL, '2020-10-19 04:07:23', '2020-10-19 04:07:23'),
	(28, 'AS-Home', 'activesurgical', NULL, 'Active Surgical - Home Page', NULL, '2020-10-22 04:15:13', '2020-10-22 04:15:13'),
	(29, 'CommBank', 'commbank', NULL, 'Testing Design', NULL, '2020-10-27 01:24:18', '2020-10-27 01:24:18'),
	(30, 'AS:SEO', 'activesurgical-review', NULL, 'Active Surgical', 'Active Surgical is committed to providing solutions to surgeons and healthcare professionals to enable them to achieve the best outcomes for their patients. We will source and provide options based on requirements and feedback from surgeons and ensure we remain at the forefront of patient healthcare.', '2020-10-29 07:54:25', '2020-11-04 12:25:28'),
	(31, 'test-page', 'test-page', NULL, NULL, NULL, '2020-11-04 12:26:27', '2020-11-04 12:26:27'),
	(32, 'SEO-Emocean', 'emocean', NULL, 'Emocean Studios', NULL, '2020-11-05 01:59:51', '2020-11-05 01:59:51'),
	(33, 'jaksj', 'www.google.com', NULL, NULL, NULL, '2020-11-05 07:32:34', '2020-11-05 07:32:34'),
	(34, 'SEO', 'masum', NULL, 'masum', NULL, '2020-11-05 07:32:54', '2020-11-05 11:03:38'),
	(35, 'SEO:Oasis', 'oasis', NULL, NULL, NULL, '2020-11-30 06:13:47', '2020-11-30 06:13:47');
/*!40000 ALTER TABLE `module_seo` ENABLE KEYS */;

-- Dumping structure for table test.module_site_setting
CREATE TABLE IF NOT EXISTS `module_site_setting` (
  `siteSettingId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `siteName` varchar(1024) DEFAULT NULL,
  `maxWidth` varchar(1024) DEFAULT NULL,
  `favicon` varchar(1024) DEFAULT NULL,
  `defaultLinkTextColor` varchar(7) DEFAULT NULL,
  `defaultLinkTextHoverColor` varchar(7) DEFAULT NULL,
  `h1Font` varchar(50) DEFAULT NULL,
  `h1FontSize` varchar(10) DEFAULT NULL,
  `h1FontColor` varchar(7) NOT NULL DEFAULT '#000000',
  `h1FontFormat` varchar(100) DEFAULT NULL,
  `h1FontAlign` varchar(10) NOT NULL DEFAULT 'Left',
  `h1LineHeight` varchar(10) NOT NULL DEFAULT '140%',
  `h1LetterSpacing` int(1) NOT NULL DEFAULT 0,
  `h2Font` varchar(50) DEFAULT NULL,
  `h2FontSize` varchar(10) DEFAULT NULL,
  `h2FontColor` varchar(7) NOT NULL DEFAULT '#000000',
  `h2FontFormat` varchar(100) DEFAULT NULL,
  `h2FontAlign` varchar(10) NOT NULL DEFAULT 'Left',
  `h2LineHeight` varchar(10) NOT NULL DEFAULT '140%',
  `h2LetterSpacing` int(1) NOT NULL DEFAULT 0,
  `h3Font` varchar(50) DEFAULT NULL,
  `h3FontSize` varchar(10) DEFAULT NULL,
  `h3FontColor` varchar(7) NOT NULL DEFAULT '#000000',
  `h3FontFormat` varchar(100) DEFAULT NULL,
  `h3FontAlign` varchar(10) NOT NULL DEFAULT 'Left',
  `h3LineHeight` varchar(10) NOT NULL DEFAULT '140%',
  `h3LetterSpacing` int(1) NOT NULL DEFAULT 0,
  `h4Font` varchar(50) DEFAULT NULL,
  `h4FontSize` varchar(10) DEFAULT NULL,
  `h4FontColor` varchar(7) NOT NULL DEFAULT '#000000',
  `h4FontFormat` varchar(100) DEFAULT NULL,
  `h4FontAlign` varchar(10) NOT NULL DEFAULT 'Left',
  `h4LineHeight` varchar(10) NOT NULL DEFAULT '140%',
  `h4LetterSpacing` int(1) NOT NULL DEFAULT 0,
  `h5Font` varchar(50) DEFAULT NULL,
  `h5FontSize` varchar(10) DEFAULT NULL,
  `h5FontColor` varchar(7) DEFAULT NULL,
  `h5FontFormat` varchar(100) DEFAULT NULL,
  `h5FontAlign` varchar(10) DEFAULT NULL,
  `h5LineHeight` varchar(10) DEFAULT NULL,
  `h5LetterSpacing` varchar(10) DEFAULT NULL,
  `h6Font` varchar(50) DEFAULT NULL,
  `h6FontSize` varchar(10) DEFAULT NULL,
  `h6FontColor` varchar(7) DEFAULT NULL,
  `h6FontFormat` varchar(100) DEFAULT NULL,
  `h6FontAlign` varchar(10) DEFAULT NULL,
  `h6LineHeight` varchar(10) DEFAULT NULL,
  `h6LetterSpacing` varchar(10) DEFAULT NULL,
  `normalFont` varchar(50) DEFAULT NULL,
  `normalFontSize` varchar(10) DEFAULT NULL,
  `normalFontColor` varchar(7) DEFAULT NULL,
  `normalFontFormat` varchar(100) DEFAULT NULL,
  `normalFontAlign` varchar(10) DEFAULT NULL,
  `normalLineHeight` varchar(10) DEFAULT NULL,
  `normalLetterSpacing` varchar(10) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`siteSettingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_site_setting: ~0 rows (approximately)
DELETE FROM `module_site_setting`;
/*!40000 ALTER TABLE `module_site_setting` DISABLE KEYS */;
INSERT INTO `module_site_setting` (`siteSettingId`, `internalName`, `siteName`, `maxWidth`, `favicon`, `defaultLinkTextColor`, `defaultLinkTextHoverColor`, `h1Font`, `h1FontSize`, `h1FontColor`, `h1FontFormat`, `h1FontAlign`, `h1LineHeight`, `h1LetterSpacing`, `h2Font`, `h2FontSize`, `h2FontColor`, `h2FontFormat`, `h2FontAlign`, `h2LineHeight`, `h2LetterSpacing`, `h3Font`, `h3FontSize`, `h3FontColor`, `h3FontFormat`, `h3FontAlign`, `h3LineHeight`, `h3LetterSpacing`, `h4Font`, `h4FontSize`, `h4FontColor`, `h4FontFormat`, `h4FontAlign`, `h4LineHeight`, `h4LetterSpacing`, `h5Font`, `h5FontSize`, `h5FontColor`, `h5FontFormat`, `h5FontAlign`, `h5LineHeight`, `h5LetterSpacing`, `h6Font`, `h6FontSize`, `h6FontColor`, `h6FontFormat`, `h6FontAlign`, `h6LineHeight`, `h6LetterSpacing`, `normalFont`, `normalFontSize`, `normalFontColor`, `normalFontFormat`, `normalFontAlign`, `normalLineHeight`, `normalLetterSpacing`, `createdAt`, `updatedAt`) VALUES
	(1, 'WindySiteSetting', 'SiteSetting', '100%', 'website-image--1603249660418.svg', '', '', 'Archivo', '24px', '#000000', '', 'left', '110%', 1, 'Archivo', '24px', '#000000', '', 'left', '110%', 0, 'Roboto', '16px', '#000000', '', 'left', '110%', 0, 'Archivo', '12px', '#000000', '', 'left', '140%', 1, 'Cardo', '12px', '#000000', '', 'right', '140%', '1', 'sans-serif', '1.25rem', '#000000', '', 'justify', '140%', '1', 'Lato', '16px', '#878787', '', 'left', '140%', '0', '2020-10-12 00:00:00', '2020-11-30 07:20:22');
/*!40000 ALTER TABLE `module_site_setting` ENABLE KEYS */;

-- Dumping structure for table test.module_slide_show
CREATE TABLE IF NOT EXISTS `module_slide_show` (
  `slideShowId` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(255) NOT NULL,
  `settingId` int(11) DEFAULT NULL,
  `slideType` varchar(200) DEFAULT NULL,
  `navigationIcon` varchar(200) DEFAULT NULL,
  `navigationIconWidth` varchar(200) DEFAULT NULL,
  `navigationIconFromTop` varchar(200) DEFAULT NULL,
  `navigationIconLeftRight` varchar(200) DEFAULT NULL,
  `paginationIcon` varchar(200) DEFAULT NULL,
  `paginationIconWidth` varchar(200) DEFAULT NULL,
  `paginationIconTop` varchar(200) DEFAULT NULL,
  `animationType` varchar(200) DEFAULT NULL,
  `autoPlayState` varchar(200) DEFAULT NULL,
  `autoPlayDuration` int(11) DEFAULT NULL,
  `multiImageWidth` varchar(200) DEFAULT NULL,
  `gapBetweenImages` varchar(200) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`slideShowId`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_slide_show: ~2 rows (approximately)
DELETE FROM `module_slide_show`;
/*!40000 ALTER TABLE `module_slide_show` DISABLE KEYS */;
INSERT INTO `module_slide_show` (`slideShowId`, `internalName`, `settingId`, `slideType`, `navigationIcon`, `navigationIconWidth`, `navigationIconFromTop`, `navigationIconLeftRight`, `paginationIcon`, `paginationIconWidth`, `paginationIconTop`, `animationType`, `autoPlayState`, `autoPlayDuration`, `multiImageWidth`, `gapBetweenImages`, `createdAt`, `updatedAt`) VALUES
	(195, 'Slide show 1', 165, 'Single Type', 'arrow-icon-02-black', '50px', '330px', '30px', 'outline-dot-icon-white', '20px', '630px', 'Fade-In-Forward', 'Turn Off', 3000, '1200px', '20px', '2020-12-05 16:30:38', '2020-12-15 21:08:58'),
	(196, 'Slide show 2', 165, 'Multi Type', 'arrow-icon-02-white', '50px', '550px', '30px', 'outline-dot-icon-black', '10px', '30px', 'Fade-In', 'Turn Off', 2000, NULL, '10px', '2020-12-05 16:36:37', '2020-12-12 23:25:51');
/*!40000 ALTER TABLE `module_slide_show` ENABLE KEYS */;

-- Dumping structure for table test.module_slide_show_box
CREATE TABLE IF NOT EXISTS `module_slide_show_box` (
  `slideShowBoxId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slideShowId` int(11) DEFAULT NULL,
  `moduleName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `moduleId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`slideShowBoxId`)
) ENGINE=InnoDB AUTO_INCREMENT=578 DEFAULT CHARSET=latin1;

-- Dumping data for table test.module_slide_show_box: ~7 rows (approximately)
DELETE FROM `module_slide_show_box`;
/*!40000 ALTER TABLE `module_slide_show_box` DISABLE KEYS */;
INSERT INTO `module_slide_show_box` (`slideShowBoxId`, `slideShowId`, `moduleName`, `moduleId`, `createdAt`, `updatedAt`) VALUES
	(448, 196, 'module_website_image', 65, '2020-12-12 23:25:51', '2020-12-12 23:25:51'),
	(449, 196, 'module_website_image', 66, '2020-12-12 23:25:51', '2020-12-12 23:25:51'),
	(450, 196, 'module_website_image', 64, '2020-12-12 23:25:51', '2020-12-12 23:25:51'),
	(574, 195, 'module_website_image', 69, '2020-12-15 21:08:58', '2020-12-15 21:08:58'),
	(575, 195, 'module_website_image', 70, '2020-12-15 21:08:58', '2020-12-15 21:08:58'),
	(576, 195, 'module_website_image', 71, '2020-12-15 21:08:58', '2020-12-15 21:08:58'),
	(577, 195, 'module_website_image', 72, '2020-12-15 21:08:58', '2020-12-15 21:08:58');
/*!40000 ALTER TABLE `module_slide_show_box` ENABLE KEYS */;

-- Dumping structure for table test.module_title_description
CREATE TABLE IF NOT EXISTS `module_title_description` (
  `titleDescriptionId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `settingId` bigint(20) DEFAULT NULL,
  `title` varchar(4096) DEFAULT NULL,
  `subhead` varchar(1024) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ctaText` varchar(1024) DEFAULT NULL,
  `ctaLink` varchar(1024) DEFAULT NULL,
  `align` varchar(1024) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`titleDescriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_title_description: ~5 rows (approximately)
DELETE FROM `module_title_description`;
/*!40000 ALTER TABLE `module_title_description` DISABLE KEYS */;
INSERT INTO `module_title_description` (`titleDescriptionId`, `internalName`, `settingId`, `title`, `subhead`, `description`, `ctaText`, `ctaLink`, `align`, `createdAt`, `updatedAt`) VALUES
	(1, 'Title Description 1', 1, 'This is title', 'subhead', 'Here is description text. Here is description text. Here is description text. Here is description text. Here is description text. Here is description text. ', 'Click here', NULL, 'center', '2020-09-04 08:01:30', '2020-09-04 08:01:33'),
	(2, 'Page Setting Test 222', 15, 'This is test title', 'This is subhead', '<p>This is description</p>', 'Learn more', '/saf/sdf/sdf', 'left', '2020-09-04 08:01:30', '2020-09-12 12:58:50'),
	(3, 'Page Setting Test 9', 1, 'This is test title', 'This is subhead', 'This is description', '/saf/sdf/sdf', '/saf/sdf/sdf', 'left', '2020-09-05 06:11:09', '2020-09-05 06:11:09'),
	(4, 'Title1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 09:39:16', '2020-09-11 09:39:16'),
	(5, 'Our features', 15, 'Appear In Google Search', 'Feature', '<p><span style="color: rgb(55, 59, 66);">5 billion searches are performed every single day! Yes 5&nbsp;BILLION, with a “B”, that’s&nbsp;BILLION&nbsp;and it’s not a typo!</span></p>', 'Read more', '/dummy-test-page', 'left', '2020-09-13 18:56:31', '2020-09-15 20:04:42');
/*!40000 ALTER TABLE `module_title_description` ENABLE KEYS */;

-- Dumping structure for table test.module_website_image
CREATE TABLE IF NOT EXISTS `module_website_image` (
  `websiteImageId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(1024) NOT NULL,
  `settingId` bigint(20) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `imageMobile` varchar(1024) DEFAULT NULL,
  `alt` varchar(4096) DEFAULT NULL,
  `caption` varchar(4096) DEFAULT NULL,
  `ctaLink` varchar(1024) DEFAULT NULL,
  `borders` varchar(100) DEFAULT NULL,
  `borderStyle` varchar(10) DEFAULT 'solid',
  `borderThickness` varchar(10) DEFAULT '0px',
  `borderColor` varchar(10) DEFAULT '#ff0000',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`websiteImageId`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- Dumping data for table test.module_website_image: ~52 rows (approximately)
DELETE FROM `module_website_image`;
/*!40000 ALTER TABLE `module_website_image` DISABLE KEYS */;
INSERT INTO `module_website_image` (`websiteImageId`, `internalName`, `settingId`, `image`, `imageMobile`, `alt`, `caption`, `ctaLink`, `borders`, `borderStyle`, `borderThickness`, `borderColor`, `createdAt`, `updatedAt`) VALUES
	(20, 'CommBank-Mobile', NULL, 'website-image--1603251306444.jpg', NULL, NULL, NULL, NULL, NULL, 'solid', '0px', '#ff0000', '2020-10-21 03:33:40', '2020-10-21 04:16:06'),
	(21, 'Image and Text', NULL, 'website-image--1603256996693.jpg', 'website-image--1603256998135.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 05:09:58', '2020-10-22 07:22:28'),
	(22, 'AS-MAIN-IMAGE', NULL, 'website-image--1603419662056.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 02:21:02', '2020-10-23 02:21:02'),
	(23, 'ThirdBackgroundImage', NULL, 'website-image--1603477150956.jpg', 'website-image--1603477152164.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 18:19:12', '2020-10-23 18:19:12'),
	(24, 'ThirdImage1', 55, 'website-image--1603478277789.png', 'website-image--1603478278562.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 18:37:58', '2020-10-29 07:51:44'),
	(25, 'AS:PARTNERS:Arrows Icon', 57, 'website-image--1603485122919.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:32:02', '2020-10-30 02:40:03'),
	(26, 'Section4-3-1-1', 61, 'website-image--1603485654775.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:40:56', '2020-10-23 20:47:18'),
	(27, 'AS:MAINIMAGE:Right Partner', NULL, 'website-image--1603486228553.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:50:29', '2020-10-30 02:44:43'),
	(28, 'Section4-3-1-2 div image', NULL, 'website-image--1603486373794.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:52:54', '2020-10-23 20:52:54'),
	(29, 'AS:LOGO:Naviswiss', 63, 'website-image--1603970123247.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:54:53', '2020-10-30 03:29:55'),
	(30, 'AS:LOGO:Exactech', 64, 'website-image--1604026526576.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 20:59:22', '2020-10-30 03:47:56'),
	(31, 'Contact US Image Setting Background', NULL, 'website-image--1603491300515.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 22:15:01', '2020-10-23 22:15:01'),
	(32, 'Contact US Image Content Mobile Icon', 72, 'website-image--1603491890031.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 22:24:50', '2020-10-27 01:16:46'),
	(33, 'Contact US Image Content Address Icon', 73, 'website-image--1603492391515.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 22:33:11', '2020-10-24 05:36:38'),
	(34, 'Contact US Image Content Email Icon', 76, 'website-image--1603492765773.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 22:39:25', '2020-10-24 05:44:09'),
	(35, 'Footer Body Image Setting Image', NULL, 'website-image--1603497260567.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 23:54:21', '2020-10-23 23:54:21'),
	(36, 'Footer Body Image', 83, 'website-image--1603497330945.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 23:54:39', '2020-10-23 23:56:21'),
	(37, 'Regional Agriculture', 97, 'website-image--1603778297306.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 05:58:17', '2020-10-27 06:48:51'),
	(38, 'Big Picture', 97, 'website-image--1603778362858.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 05:59:23', '2020-10-27 06:19:52'),
	(39, 'Explore', 97, 'website-image--1603778622303.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 06:03:42', '2020-10-27 06:20:29'),
	(40, 'Yellow Image', NULL, 'website-image--1603778746129.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 06:05:46', '2020-10-27 06:05:46'),
	(41, 'IMG:iPHONE', 102, 'website-image--1603791103562.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 09:31:43', '2020-10-27 12:34:16'),
	(42, 'IMAGE:AppleWatch', 105, 'website-image--1603792461256.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 09:54:21', '2020-10-27 12:29:01'),
	(43, 'IMAGE:SM:Facebook', 108, 'website-image--1603864356361.svg', NULL, NULL, NULL, 'http://www.facebook.com', NULL, NULL, NULL, NULL, '2020-10-28 05:52:36', '2020-10-28 06:01:06'),
	(44, 'IMAGE:SM:Instagram', 108, 'website-image--1603864413256.svg', NULL, NULL, NULL, 'http://www.instagram.com', NULL, NULL, NULL, NULL, '2020-10-28 05:53:33', '2020-10-28 05:58:21'),
	(45, 'IMAGE:SM:LinkedIn', 108, 'website-image--1603864450007.svg', NULL, NULL, NULL, 'http://www.linkedin.com', NULL, NULL, NULL, NULL, '2020-10-28 05:54:10', '2020-10-28 05:58:25'),
	(46, 'IMAGE:SM:Twitter', 108, 'website-image--1603864474647.svg', NULL, NULL, NULL, 'http://www.twitter.com', NULL, NULL, NULL, NULL, '2020-10-28 05:54:36', '2020-10-28 06:01:24'),
	(47, 'VIRGIN LOGO', 109, 'website-image--1603882950567.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-28 11:02:30', '2020-10-28 13:39:31'),
	(48, 'AS:Main Image BG', NULL, 'website-image--1603959434206.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 08:17:14', '2020-10-29 08:17:14'),
	(49, 'AS:RACGP:IMAGE:BG', 129, 'website-image--1603964749058.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 09:45:49', '2020-10-29 09:55:52'),
	(50, 'AS:RACGP:IMAGE:Logos', 130, 'website-image--1603964934805.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 09:48:54', '2020-10-29 10:39:39'),
	(51, 'AS:ICON:Phone', 141, 'website-image--1604021960667.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 11:27:06', '2020-10-30 01:51:34'),
	(52, 'AS:ICON:Email', 141, 'website-image--1604021946244.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 11:29:02', '2020-10-30 01:47:45'),
	(53, 'AS:ICON:Address', 141, 'website-image--1604021970922.svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-29 11:30:05', '2020-10-30 01:39:30'),
	(54, 'FOOTER:BG:Image', NULL, 'website-image--1604025437441.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 01:49:51', '2020-10-30 02:38:19'),
	(56, 'AS:MAINIMAGE:Condor', 145, 'website-image--1604027438091.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:10:38', '2020-10-30 03:12:00'),
	(57, 'AS:MAINIMAGE:Exactech-test', 146, 'website-image--1604027727759.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:15:28', '2020-10-30 03:19:24'),
	(58, 'AS:LOGO:Condor', 150, 'website-image--1604029700165.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:48:20', '2020-10-30 04:08:35'),
	(59, 'AS:MAINIMAGE:MODULE:Condor', NULL, 'website-image--1604029911607.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:51:22', '2020-10-30 03:51:51'),
	(60, 'AS:LOGO:Life Healthcare', 151, 'website-image--1604030030243.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:53:50', '2020-10-30 04:27:44'),
	(61, 'AS:MAINIMAGE:Life Healthcare', NULL, 'website-image--1604030114410.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-30 03:55:14', '2020-10-30 03:55:14'),
	(62, 'EMOCEAN-MAINIMAGE-IMG-Home', NULL, 'website-image--1604550686832.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 04:31:27', '2020-11-05 04:31:27'),
	(63, 'IMG-Design-Build-Website', NULL, 'website-image--1604561089014.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 06:31:12', '2020-11-05 07:24:49'),
	(64, 'IMG-DriveTraffic', 166, 'website-image--1604562482996.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 07:40:52', '2020-12-05 19:29:14'),
	(65, 'IMAGE:OasisTest', 166, 'website-image--1606719964518.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-30 07:06:05', '2020-12-05 19:29:03'),
	(66, 'IMAGE:CB:Oasis', NULL, 'website-image--1606720062356.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-30 07:07:43', '2020-11-30 07:07:43'),
	(67, 'qewrqwer', NULL, 'website-image--1606830649342.png', 'website-image--1606830649359.png', 'asdf', NULL, 'asdfsfd', NULL, 'solid', '0px', '#ff0000', '2020-12-01 16:50:49', '2020-12-01 16:50:49'),
	(68, 'slide image', 166, 'website-image--1607180181772.png', 'website-image--1607180181776.png', '', '', 'https://google.com', NULL, 'solid', '0px', '#ff0000', '2020-12-05 17:56:21', '2020-12-05 19:30:55'),
	(69, 'slide1', NULL, 'website-image--1607366457406.jpg', 'website-image--1607366457411.jpg', 'slide1', '', '', NULL, 'solid', '0px', '#ff0000', '2020-12-07 21:40:57', '2020-12-14 16:55:39'),
	(70, 'slide2', NULL, 'website-image--1607366490497.jpg', 'website-image--1607366490500.jpg', 'slide2', NULL, '', NULL, 'solid', '0px', '#ff0000', '2020-12-07 21:41:30', '2020-12-14 16:55:48'),
	(71, 'slide3', NULL, 'website-image--1607366514843.jpg', 'website-image--1607366514845.jpg', 'slide3', '', '', NULL, 'solid', '0px', '#ff0000', '2020-12-07 21:41:54', '2020-12-14 16:55:57'),
	(72, 'slide image 4', NULL, 'website-image--1608055591706.jpg', 'website-image--1608055591714.jpg', 'a', NULL, NULL, NULL, 'solid', '0px', '#ff0000', '2020-12-15 21:06:31', '2020-12-15 21:06:31');
/*!40000 ALTER TABLE `module_website_image` ENABLE KEYS */;

-- Dumping structure for table test.page
CREATE TABLE IF NOT EXISTS `page` (
  `pageId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `internalName` varchar(128) NOT NULL,
  `seoId` bigint(20) DEFAULT NULL,
  `pageSettingId` bigint(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Dumping data for table test.page: ~6 rows (approximately)
DELETE FROM `page`;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` (`pageId`, `internalName`, `seoId`, `pageSettingId`, `createdAt`, `updatedAt`) VALUES
	(37, 'WindyBoats', 27, NULL, '2020-10-19 04:15:32', '2020-10-19 04:15:32'),
	(38, 'ActiveSurgical', 28, NULL, '2020-10-22 04:15:15', '2020-10-22 04:15:15'),
	(39, 'CommBank', 29, NULL, '2020-10-27 01:39:03', '2020-10-27 02:03:55'),
	(40, 'Active Surgical Live', 30, NULL, '2020-10-29 07:58:04', '2020-10-29 07:58:04'),
	(42, 'Emocean - Home', 32, NULL, '2020-11-05 02:46:23', '2020-11-05 02:46:23');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;

-- Dumping structure for table test.page__modules
CREATE TABLE IF NOT EXISTS `page__modules` (
  `pageModuleId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pageId` bigint(20) NOT NULL,
  `moduleName` varchar(128) NOT NULL,
  `moduleId` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`pageModuleId`)
) ENGINE=InnoDB AUTO_INCREMENT=1539 DEFAULT CHARSET=utf8;

-- Dumping data for table test.page__modules: ~33 rows (approximately)
DELETE FROM `page__modules`;
/*!40000 ALTER TABLE `page__modules` DISABLE KEYS */;
INSERT INTO `page__modules` (`pageModuleId`, `pageId`, `moduleName`, `moduleId`, `createdAt`, `updatedAt`) VALUES
	(299, 37, 'module_header', 2, '2020-10-26 04:26:56', '2020-10-26 04:26:56'),
	(300, 37, 'module_multi_columns', 21, '2020-10-26 04:26:56', '2020-10-26 04:26:56'),
	(301, 37, 'module_multi_columns', 23, '2020-10-26 04:26:56', '2020-10-26 04:26:56'),
	(302, 37, 'module_button', 11, '2020-10-26 04:26:56', '2020-10-26 04:26:56'),
	(998, 39, 'module_multi_columns', 53, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(999, 39, 'module_card', 37, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1000, 39, 'module_multi_columns', 55, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1001, 39, 'module_card', 37, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1002, 39, 'module_card', 38, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1003, 39, 'module_multi_columns', 57, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1004, 39, 'module_card', 37, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1005, 39, 'module_multi_columns', 63, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1006, 39, 'module_multi_columns', 64, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1007, 39, 'module_multi_columns', 69, '2020-10-28 13:43:24', '2020-10-28 13:43:24'),
	(1412, 38, 'module_header', 4, '2020-11-10 16:49:23', '2020-11-10 16:49:23'),
	(1413, 38, 'module_multi_columns', 27, '2020-11-10 16:49:23', '2020-11-10 16:49:23'),
	(1414, 38, 'module_multi_columns', 29, '2020-11-10 16:49:23', '2020-11-10 16:49:23'),
	(1415, 38, 'module_multi_columns', 30, '2020-11-10 16:49:23', '2020-11-10 16:49:23'),
	(1416, 38, 'module_multi_columns', 37, '2020-11-10 16:49:23', '2020-11-10 16:49:23'),
	(1417, 38, 'module_multi_columns', 39, '2020-11-10 16:49:23', '2020-11-10 16:49:23'),
	(1418, 38, 'module_multi_columns', 48, '2020-11-10 16:49:23', '2020-11-10 16:49:23'),
	(1441, 40, 'module_header', 5, '2020-11-30 06:58:00', '2020-11-30 06:58:00'),
	(1442, 40, 'module_multi_columns', 75, '2020-11-30 06:58:00', '2020-11-30 06:58:00'),
	(1443, 40, 'module_multi_columns', 77, '2020-11-30 06:58:00', '2020-11-30 06:58:00'),
	(1444, 40, 'module_multi_columns', 78, '2020-11-30 06:58:00', '2020-11-30 06:58:00'),
	(1445, 40, 'module_multi_columns', 37, '2020-11-30 06:58:00', '2020-11-30 06:58:00'),
	(1446, 40, 'module_multi_columns', 84, '2020-11-30 06:58:00', '2020-11-30 06:58:00'),
	(1447, 40, 'module_multi_columns', 89, '2020-11-30 06:58:00', '2020-11-30 06:58:00'),
	(1534, 42, 'module_header', 6, '2020-12-12 23:08:29', '2020-12-12 23:08:29'),
	(1535, 42, 'module_multi_columns', 96, '2020-12-12 23:08:29', '2020-12-12 23:08:29'),
	(1536, 42, 'module_multi_columns', 99, '2020-12-12 23:08:30', '2020-12-12 23:08:30'),
	(1537, 42, 'module_slide_show', 195, '2020-12-12 23:08:30', '2020-12-12 23:08:30'),
	(1538, 42, 'module_slide_show', 196, '2020-12-12 23:08:30', '2020-12-12 23:08:30');
/*!40000 ALTER TABLE `page__modules` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
