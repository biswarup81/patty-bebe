-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2020 at 06:18 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zigisa_lite`
--

-- --------------------------------------------------------

--
-- Table structure for table `lc_cart_items`
--

CREATE TABLE `lc_cart_items` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cart_uid` varchar(13) COLLATE utf8_swedish_ci NOT NULL,
  `key` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `options` varchar(2048) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_cart_items`
--

INSERT INTO `lc_cart_items` (`id`, `customer_id`, `cart_uid`, `key`, `product_id`, `options`, `quantity`, `date_updated`, `date_created`) VALUES
(5, 0, '5d69f9d488ac5', '54e0efb3d6063376193966045fc4ec95', 1, 'a:0:{}', '1.0000', '2019-08-31 10:09:08', '2019-08-31 10:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `lc_categories`
--

CREATE TABLE `lc_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `google_taxonomy_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `list_style` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `dock` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_categories`
--

INSERT INTO `lc_categories` (`id`, `parent_id`, `google_taxonomy_id`, `status`, `code`, `list_style`, `dock`, `keywords`, `image`, `priority`, `date_updated`, `date_created`) VALUES
(1, 0, 0, 1, 'Skin Care', 'columns', 'menu,tree', 'Skin Care', '', 1, '2019-08-08 12:38:37', '2019-08-08 12:20:55'),
(2, 0, 0, 1, 'Undies', 'columns', 'menu,tree', 'Undies', '', 2, '2019-08-08 12:38:46', '2019-08-08 12:35:59'),
(3, 0, 0, 1, 'Fashion', 'columns', 'menu,tree', 'Fashion', '', 3, '2019-08-08 12:38:55', '2019-08-08 12:36:25'),
(4, 0, 0, 1, 'Books', 'columns', 'menu,tree', 'Books', '', 4, '2019-08-08 12:39:04', '2019-08-08 12:36:39'),
(5, 0, 0, 1, 'Events', 'columns', 'menu,tree', 'Events', '', 5, '2019-08-08 12:39:14', '2019-08-08 12:37:06'),
(6, 0, 0, 1, 'Photo and Video Gallery', 'columns', 'menu', 'Photo and Video Gallery', '', 6, '2019-08-08 12:39:23', '2019-08-08 12:38:08'),
(7, 5, 0, 1, 'Travel & Adventure', 'columns', '', 'Travel & Adventure', 'categories/7-travel-adventure.jpg', 0, '2019-08-08 13:39:50', '2019-08-08 13:39:50'),
(8, 5, 0, 1, 'Biz & Networking', 'columns', '', 'Biz & Networking', 'categories/8-biz-networking.jpg', 0, '2019-08-08 13:40:42', '2019-08-08 13:40:42'),
(9, 5, 0, 1, 'Entertainment', 'columns', '', 'Entertainment', 'categories/9-entertainment.jpg', 0, '2019-08-08 13:41:22', '2019-08-08 13:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `lc_categories_info`
--

CREATE TABLE `lc_categories_info` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `h1_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_categories_info`
--

INSERT INTO `lc_categories_info` (`id`, `category_id`, `language_code`, `name`, `short_description`, `description`, `head_title`, `h1_title`, `meta_description`) VALUES
(1, 1, 'en', 'Skin Care', '', '', '', '', ''),
(2, 2, 'en', 'Undies', '', '', '', '', ''),
(3, 3, 'en', 'Fashion', '', '', '', '', ''),
(4, 4, 'en', 'Books', '', '', '', '', ''),
(5, 5, 'en', 'Events', '', '', '', '', ''),
(6, 6, 'en', 'Photo and Video Gallery', '', '', '', '', ''),
(7, 7, 'en', 'Travel & Adventure', '', '', '', '', ''),
(8, 8, 'en', 'Biz & Networking', '', '', '', '', ''),
(9, 9, 'en', 'Entertainment', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_countries`
--

CREATE TABLE `lc_countries` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `domestic_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `iso_code_1` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `iso_code_3` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `tax_id_format` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address_format` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `postcode_format` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `language_code` varchar(2) CHARACTER SET utf8 NOT NULL,
  `currency_code` varchar(3) CHARACTER SET utf8 NOT NULL,
  `phone_code` varchar(3) CHARACTER SET utf8 NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_countries`
--

INSERT INTO `lc_countries` (`id`, `status`, `name`, `domestic_name`, `iso_code_1`, `iso_code_2`, `iso_code_3`, `tax_id_format`, `address_format`, `postcode_format`, `postcode_required`, `language_code`, `currency_code`, `phone_code`, `date_updated`, `date_created`) VALUES
(1, 1, 'Afghanistan', '', '004', 'AF', 'AFG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fa', 'AFN', '93', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(2, 1, 'Albania', '', '008', 'AL', 'ALB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sq', 'ALL', '355', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(3, 1, 'Algeria', '', '012', 'DZ', 'DZA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'DZD', '213', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(4, 1, 'American Samoa', '', '016', 'AS', 'ASM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '96799', 0, 'en', 'USD', '168', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(5, 1, 'Andorra', '', '020', 'AD', 'AND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'AD[0-9]{3}', 0, 'ca', 'EUR', '376', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(6, 1, 'Angola', '', '024', 'AO', 'AGO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'AOA', '244', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(7, 1, 'Anguilla', '', '660', 'AI', 'AIA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '126', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(8, 1, 'Antarctica', '', '010', 'AQ', 'ATA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'XCD', '672', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(9, 1, 'Antigua and Barbuda', '', '028', 'AG', 'ATG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '126', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(10, 1, 'Argentina', '', '032', 'AR', 'ARG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([A-HJ-NP-Z])?[0-9]{4}([A-Z]{3})?', 0, 'es', 'ARS', '54', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(11, 1, 'Armenia', '', '051', 'AM', 'ARM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(37)?[0-9]{4}', 0, 'hy', 'AMD', '374', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(12, 1, 'Aruba', '', '533', 'AW', 'ABW', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'AWG', '297', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(13, 1, 'Australia', '', '036', 'AU', 'AUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'AUD', '61', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(14, 1, 'Austria', '', '040', 'AT', 'AUT', '^(AT)?U[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'de', 'EUR', '43', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(15, 1, 'Azerbaijan', '', '031', 'AZ', 'AZE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'az', 'AZN', '994', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(16, 1, 'Bahamas', '', '044', 'BS', 'BHS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BSD', '124', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(17, 1, 'Bahrain', '', '048', 'BH', 'BHR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '((1[0-2]|[2-9])[0-9]{2})?', 0, 'ar', 'BHD', '973', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(18, 1, 'Bangladesh', '', '050', 'BD', 'BGD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'bn', 'BDT', '880', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(19, 1, 'Barbados', '', '052', 'BB', 'BRB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(BB[0-9]{5})?', 0, 'en', 'BBD', '124', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(20, 1, 'Belarus', '', '112', 'BY', 'BLR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'be', 'BYR', '375', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(21, 1, 'Belgium', '', '056', 'BE', 'BEL', '^(BE)?0[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'nl', 'EUR', '32', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(22, 1, 'Belize', '', '084', 'BZ', 'BLZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BZD', '501', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(23, 1, 'Benin', '', '204', 'BJ', 'BEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '229', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(24, 1, 'Bermuda', '', '060', 'BM', 'BMU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[A-Z]{2}[ ]?[A-Z0-9]{2}', 0, 'en', 'BMD', '144', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(25, 1, 'Bhutan', '', '064', 'BT', 'BTN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'dz', 'BTN', '975', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(26, 1, 'Bolivia', '', '068', 'BO', 'BOL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'BOB', '591', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(27, 1, 'Bosnia and Herzegowina', '', '070', 'BA', 'BIH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'bs', 'BAM', '387', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(28, 1, 'Botswana', '', '072', 'BW', 'BWA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BWP', '267', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(29, 1, 'Bouvet Island', '', '074', 'BV', 'BVT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'NOK', '47', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(30, 1, 'Brazil', '', '076', 'BR', 'BRA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}[\\-]?[0-9]{3}', 0, 'pt', 'BRL', '55', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(31, 1, 'British Indian Ocean Territory', '', '086', 'IO', 'IOT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'BBND 1ZZ', 0, 'en', 'USD', '246', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(32, 1, 'Brunei Darussalam', '', '096', 'BN', 'BRN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[A-Z]{2}[ ]?[0-9]{4}', 0, 'ms', 'BND', '673', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(33, 1, 'Bulgaria', '', '100', 'BG', 'BGR', '^(BG)?[0-9]{9,10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'bg', 'BGN', '359', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(34, 1, 'Burkina Faso', '', '854', 'BF', 'BFA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '226', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(35, 1, 'Burundi', '', '108', 'BI', 'BDI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'BIF', '257', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(36, 1, 'Cambodia', '', '116', 'KH', 'KHM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'km', 'KHR', '855', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(37, 1, 'Cameroon', '', '120', 'CM', 'CMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XAF', '237', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(38, 1, 'Canada', '', '124', 'CA', 'CAN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJ-NPRSTV-Z][ ]?[0-9][ABCEGHJ-NPRSTV-Z][0-9]', 0, 'en', 'CAD', '1', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(39, 1, 'Cape Verde', '', '132', 'CV', 'CPV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'pt', 'CVE', '238', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(40, 1, 'Cayman Islands', '', '136', 'KY', 'CYM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'KYD', '134', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(41, 1, 'Central African Republic', '', '140', 'CF', 'CAF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '236', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(42, 1, 'Chad', '', '148', 'TD', 'TCD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '235', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(43, 1, 'Chile', '', '152', 'CL', 'CHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'CLP', '56', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(44, 1, 'China', '', '156', 'CN', 'CHN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'zh', 'CNY', '86', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(45, 1, 'Christmas Island', '', '162', 'CX', 'CXR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '6798', 0, 'en', 'AUD', '61', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(46, 1, 'Cocos (Keeling) Islands', '', '166', 'CC', 'CCK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '6799', 0, 'ms', 'AUD', '61', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(47, 1, 'Colombia', '', '170', 'CO', 'COL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'COP', '57', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(48, 1, 'Comoros', '', '174', 'KM', 'COM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'KMF', '269', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(49, 1, 'Congo', '', '178', 'CG', 'COG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '242', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(50, 1, 'Cook Islands', '', '184', 'CK', 'COK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'NZD', '682', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(51, 1, 'Costa Rica', '', '188', 'CR', 'CRI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4,5}|[0-9]{3}-[0-9]{4}', 0, 'es', 'CRC', '506', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(52, 1, 'Cote D\'Ivoire', '', '384', 'CI', 'CIV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '225', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(53, 1, 'Croatia', '', '191', 'HR', 'HRV', '^(HR)?[0-9]{11}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'hr', 'HRK', '385', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(54, 1, 'Cuba', '', '192', 'CU', 'CUB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'CUP', '53', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(55, 1, 'Cyprus', '', '196', 'CY', 'CYP', '^(CY)?[0-9]{8}L$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'el', 'EUR', '357', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(56, 1, 'Czech Republic', '', '203', 'CZ', 'CZE', '^(CZ)?[0-9]{8,10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'cs', 'CZK', '420', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(57, 1, 'Denmark', '', '208', 'DK', 'DNK', '^(DK)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'da', 'DKK', '45', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(58, 1, 'Djibouti', '', '262', 'DJ', 'DJI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'DJF', '253', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(59, 1, 'Dominica', '', '212', 'DM', 'DMA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '176', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(60, 1, 'Dominican Republic', '', '214', 'DO', 'DOM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'DOP', '180', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(61, 1, 'East Timor', '', '626', 'TP', 'TMP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'USD', '670', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(62, 1, 'Ecuador', '', '218', 'EC', 'ECU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([A-Z][0-9]{4}[A-Z]|(?:[A-Z]{2})?[0-9]{6})?', 0, 'es', 'ECS', '593', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(63, 1, 'Egypt', '', '818', 'EG', 'EGY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'EGP', '20', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(64, 1, 'El Salvador', '', '222', 'SV', 'SLV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'SVC', '503', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(65, 1, 'Equatorial Guinea', '', '226', 'GQ', 'GNQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'XAF', '240', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(66, 1, 'Eritrea', '', '232', 'ER', 'ERI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'aa', 'ERN', '291', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(67, 1, 'Estonia', '', '233', 'EE', 'EST', '^(EE)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'et', 'EUR', '372', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(68, 1, 'Ethiopia', '', '231', 'ET', 'ETH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'am', 'ETB', '251', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(69, 1, 'Falkland Islands (Malvinas)', '', '238', 'FK', 'FLK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'FIQQ 1ZZ', 0, 'en', 'FKP', '500', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(70, 1, 'Faroe Islands', '', '234', 'FO', 'FRO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'fo', 'DKK', '298', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(71, 1, 'Fiji', '', '242', 'FJ', 'FJI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'FJD', '679', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(72, 1, 'Finland', '', '246', 'FI', 'FIN', '^(FI)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'fi', 'EUR', '358', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(73, 1, 'France', '', '250', 'FR', 'FRA', '^(FR)?[0-9A-Z]{2}[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{2}[ ]?[0-9]{3}', 0, 'fr', 'EUR', '33', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(75, 1, 'French Guiana', '', '254', 'GF', 'GUF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]3[0-9]{2}', 0, 'fr', 'EUR', '594', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(76, 1, 'French Polynesia', '', '258', 'PF', 'PYF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '987[0-9]{2}', 0, 'fr', 'XPF', '689', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(77, 1, 'French Southern Territories', '', '260', 'TF', 'ATF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'EUR', '262', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(78, 1, 'Gabon', '', '266', 'GA', 'GAB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '241', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(79, 1, 'Gambia', '', '270', 'GM', 'GMB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GMD', '220', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(80, 1, 'Georgia', '', '268', 'GE', 'GEO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ka', 'GEL', '995', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(81, 1, 'Germany', '', '276', 'DE', 'DEU', '^(DE)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'de', 'EUR', '49', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(82, 1, 'Ghana', '', '288', 'GH', 'GHA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GHS', '233', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(83, 1, 'Gibraltar', '', '292', 'GI', 'GIB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GIP', '350', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(84, 1, 'Greece', '', '300', 'GR', 'GRC', '^(EL|GR)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'el', 'EUR', '30', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(85, 1, 'Greenland', '', '304', 'GL', 'GRL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '39[0-9]{2}', 0, 'kl', 'DKK', '299', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(86, 1, 'Grenada', '', '308', 'GD', 'GRD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '147', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(87, 1, 'Guadeloupe', '', '312', 'GP', 'GLP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78][01][0-9]{2}', 0, 'fr', 'EUR', '590', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(88, 1, 'Guam', '', '316', 'GU', 'GUM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '969[123][0-9]([ \\-][0-9]{4})?', 0, 'en', 'USD', '167', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(89, 1, 'Guatemala', '', '320', 'GT', 'GTM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'QTQ', '502', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(90, 1, 'Guinea', '', '324', 'GN', 'GIN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'fr', 'GNF', '224', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(91, 1, 'Guinea-bissau', '', '624', 'GW', 'GNB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'pt', 'GWP', '245', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(92, 1, 'Guyana', '', '328', 'GY', 'GUY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GYD', '592', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(93, 1, 'Haiti', '', '332', 'HT', 'HTI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ht', 'HTG', '509', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(94, 1, 'Heard and McDonald Islands', '', '334', 'HM', 'HMD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, '', 'AUD', '0', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(95, 1, 'Honduras', '', '340', 'HN', 'HND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(?:[0-9]{5})?', 0, 'es', 'HNL', '504', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(96, 1, 'Hong Kong', '', '344', 'HK', 'HKG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'zh', 'HKD', '852', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(97, 1, 'Hungary', '', '348', 'HU', 'HUN', '^(HU)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'hu', 'HUF', '36', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(98, 1, 'Iceland', '', '352', 'IS', 'ISL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'is', 'ISK', '354', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(99, 1, 'India', '', '356', 'IN', 'IND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'en', 'INR', '91', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(100, 1, 'Indonesia', '', '360', 'ID', 'IDN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'id', 'IDR', '62', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(101, 1, 'Iran, Islamic Republic of', '', '364', 'IR', 'IRN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fa', 'IRR', '98', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(102, 1, 'Iraq', '', '368', 'IQ', 'IRQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'IQD', '964', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(103, 1, 'Ireland', '', '372', 'IE', 'IRL', '^(IE)?[0-9]S[0-9]{5}L$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'EUR', '353', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(104, 1, 'Israel', '', '376', 'IL', 'ISR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'he', 'ILS', '972', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(105, 1, 'Italy', '', '380', 'IT', 'ITA', '^(IT)?[0-9]{11}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'it', 'EUR', '39', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(106, 1, 'Jamaica', '', '388', 'JM', 'JAM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'JMD', '187', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(107, 1, 'Japan', '', '392', 'JP', 'JPN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}-[0-9]{4}', 0, 'ja', 'JPY', '81', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(108, 1, 'Jordan', '', '400', 'JO', 'JOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'JOD', '962', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(109, 1, 'Kazakhstan', '', '398', 'KZ', 'KAZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'kk', 'KZT', '7', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(110, 1, 'Kenya', '', '404', 'KE', 'KEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'en', 'KES', '254', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(111, 1, 'Kiribati', '', '296', 'KI', 'KIR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'AUD', '686', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(112, 1, 'North Korea', '', '408', 'KP', 'PRK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ko', 'KPW', '850', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(113, 1, 'Korea, Republic of', '', '410', 'KR', 'KOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[\\-][0-9]{3}', 0, 'ko', 'KRW', '82', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(114, 1, 'Kuwait', '', '414', 'KW', 'KWT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'KWD', '965', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(115, 1, 'Kyrgyzstan', '', '417', 'KG', 'KGZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'ky', 'KGS', '996', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(116, 1, 'Lao People\'s Democratic Republic', '', '418', 'LA', 'LAO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'lo', 'LAK', '856', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(117, 1, 'Latvia', '', '428', 'LV', 'LVA', '^(LV)?[0-9]{11}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'lv', 'LVL', '371', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(118, 1, 'Lebanon', '', '422', 'LB', 'LBN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([0-9]{4}([ ]?[0-9]{4})?)?', 0, 'ar', 'LBP', '961', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(119, 1, 'Lesotho', '', '426', 'LS', 'LSO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'en', 'LSL', '266', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(120, 1, 'Liberia', '', '430', 'LR', 'LBR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'LRD', '231', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(121, 1, 'Libyan Arab Jamahiriya', '', '434', 'LY', 'LBY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'LYD', '218', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(122, 1, 'Liechtenstein', '', '438', 'LI', 'LIE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(948[5-9])|(949[0-7])', 0, 'de', 'CHF', '423', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(123, 1, 'Lithuania', '', '440', 'LT', 'LTU', '^(LT)?([0-9]{9}|[0-9]{12})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'lt', 'LTL', '370', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(124, 1, 'Luxembourg', '', '442', 'LU', 'LUX', '^(LU)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'lb', 'EUR', '352', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(125, 1, 'Macau', '', '446', 'MO', 'MAC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'zh', 'MOP', '853', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(126, 1, 'Macedonia', '', '807', 'MK', 'MKD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'mk', 'MKD', '389', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(127, 1, 'Madagascar', '', '450', 'MG', 'MDG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'fr', 'MGF', '261', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(128, 1, 'Malawi', '', '454', 'MW', 'MWI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ny', 'MWK', '265', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(129, 1, 'Malaysia', '', '458', 'MY', 'MYS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ms', 'MYR', '60', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(130, 1, 'Maldives', '', '462', 'MV', 'MDV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'dv', 'MVR', '960', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(131, 1, 'Mali', '', '466', 'ML', 'MLI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '223', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(132, 1, 'Malta', '', '470', 'MT', 'MLT', '^(MT)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'mt', 'EUR', '356', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(133, 1, 'Marshall Islands', '', '584', 'MH', 'MHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '969[67][0-9]([ \\-][0-9]{4})?', 0, 'mh', 'USD', '692', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(134, 1, 'Martinique', '', '474', 'MQ', 'MTQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]2[0-9]{2}', 0, 'fr', 'EUR', '596', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(135, 1, 'Mauritania', '', '478', 'MR', 'MRT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'MRO', '222', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(136, 1, 'Mauritius', '', '480', 'MU', 'MUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([0-9]{3}[A-Z]{2}[0-9]{3})?', 0, 'en', 'MUR', '230', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(137, 1, 'Mayotte', '', '175', 'YT', 'MYT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '976[0-9]{2}', 0, 'fr', 'EUR', '262', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(138, 1, 'Mexico', '', '484', 'MX', 'MEX', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'MXN', '52', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(139, 1, 'Micronesia, Federated States of', '', '583', 'FM', 'FSM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(9694[1-4])([ \\-][0-9]{4})?', 0, 'en', 'USD', '691', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(140, 1, 'Moldova, Republic of', '', '498', 'MD', 'MDA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ro', 'MDL', '373', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(141, 1, 'Monaco', '', '492', 'MC', 'MCO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '980[0-9]{2}', 0, 'fr', 'EUR', '377', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(142, 1, 'Mongolia', '', '496', 'MN', 'MNG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'mn', 'MNT', '976', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(143, 1, 'Montserrat', '', '500', 'MS', 'MSR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '166', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(144, 1, 'Morocco', '', '504', 'MA', 'MAR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'MAD', '212', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(145, 1, 'Mozambique', '', '508', 'MZ', 'MOZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'MZN', '258', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(146, 1, 'Myanmar', '', '104', 'MM', 'MMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'my', 'MMK', '95', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(147, 1, 'Namibia', '', '516', 'NA', 'NAM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NAD', '264', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(148, 1, 'Nauru', '', '520', 'NR', 'NRU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'na', 'AUD', '674', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(149, 1, 'Nepal', '', '524', 'NP', 'NPL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ne', 'NPR', '977', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(150, 1, 'Netherlands', '', '528', 'NL', 'NLD', '^(NL)?[0-9]{9}B[0-9]{2}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[1-9][0-9]{3} ?[a-zA-Z]{2}', 0, 'nl', 'EUR', '31', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(151, 1, 'Netherlands Antilles', '', '530', 'AN', 'ANT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'ANG', '599', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(152, 1, 'New Caledonia', '', '540', 'NC', 'NCL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '988[0-9]{2}', 0, 'fr', 'XPF', '687', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(153, 1, 'New Zealand', '', '554', 'NZ', 'NZL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'NZD', '64', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(154, 1, 'Nicaragua', '', '558', 'NI', 'NIC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(([0-9]{4}-)?[0-9]{3}-[0-9]{3}(-[0-9]{1})?)?', 0, 'es', 'NIO', '505', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(155, 1, 'Niger', '', '562', 'NE', 'NER', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'fr', 'XOF', '227', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(156, 1, 'Nigeria', '', '566', 'NG', 'NGA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([0-9]{6})?', 0, 'en', 'NGN', '234', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(157, 1, 'Niue', '', '570', 'NU', 'NIU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NZD', '683', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(158, 1, 'Norfolk Island', '', '574', 'NF', 'NFK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '2899', 0, 'en', 'AUD', '672', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(159, 1, 'Northern Mariana Islands', '', '580', 'MP', 'MNP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9695[012]([ \\-][0-9]{4})?', 0, 'tl', 'USD', '167', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(160, 1, 'Norway', '', '578', 'NO', 'NOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'nb', 'NOK', '47', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(161, 1, 'Oman', '', '512', 'OM', 'OMN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(PC )?[0-9]{3}', 0, 'ar', 'OMR', '968', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(162, 1, 'Pakistan', '', '586', 'PK', 'PAK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ur', 'PKR', '92', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(163, 1, 'Palau', '', '585', 'PW', 'PLW', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '96940', 0, 'en', 'USD', '680', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(164, 1, 'Panama', '', '591', 'PA', 'PAN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'PAB', '507', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(165, 1, 'Papua New Guinea', '', '598', 'PG', 'PNG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'en', 'PGK', '675', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(166, 1, 'Paraguay', '', '600', 'PY', 'PRY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'es', 'PYG', '595', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(167, 1, 'Peru', '', '604', 'PE', 'PER', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'PEN', '51', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(168, 1, 'Philippines', '', '608', 'PH', 'PHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'tl', 'PHP', '63', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(169, 1, 'Pitcairn', '', '612', 'PN', 'PCN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'PCRN 1ZZ', 0, 'en', 'NZD', '870', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(170, 1, 'Poland', '', '616', 'PL', 'POL', '^(PL)?[0-9]{10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{2}-[0-9]{3}', 0, 'pl', 'PLN', '48', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(171, 1, 'Portugal', '', '620', 'PT', 'PRT', '^(PT)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}([\\-][0-9]{3})?', 0, 'pt', 'EUR', '351', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(172, 1, 'Puerto Rico', '', '630', 'PR', 'PRI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '00[679][0-9]{2}([ \\-][0-9]{4})?', 0, 'en', 'USD', '1', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(173, 1, 'Qatar', '', '634', 'QA', 'QAT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'QAR', '974', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(174, 1, 'Reunion', '', '638', 'RE', 'REU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]4[0-9]{2}', 0, 'fr', 'EUR', '262', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(175, 1, 'Romania', '', '642', 'RO', 'ROM', '^(RO)?[0-9]{2,10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'ro', 'RON', '40', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(176, 1, 'Russian Federation', '', '643', 'RU', 'RUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'ru', 'RUB', '7', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(177, 1, 'Rwanda', '', '646', 'RW', 'RWA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'rw', 'RWF', '250', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(178, 1, 'Saint Kitts and Nevis', '', '659', 'KN', 'KNA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '186', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(179, 1, 'Saint Lucia', '', '662', 'LC', 'LCA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '175', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(180, 1, 'Saint Vincent and the Grenadines', '', '670', 'VC', 'VCT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '178', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(181, 1, 'Samoa', '', '882', 'WS', 'WSM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sm', 'WST', '685', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(182, 1, 'San Marino', '', '674', 'SM', 'SMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '4789[0-9]', 0, 'it', 'EUR', '378', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(183, 1, 'Sao Tome and Principe', '', '678', 'ST', 'STP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'STD', '239', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(184, 1, 'Saudi Arabia', '', '682', 'SA', 'SAU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'SAR', '966', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(185, 1, 'Senegal', '', '686', 'SN', 'SEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'fr', 'XOF', '221', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(186, 1, 'Seychelles', '', '690', 'SC', 'SYC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SCR', '248', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(187, 1, 'Sierra Leone', '', '694', 'SL', 'SLE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SLL', '232', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(188, 1, 'Singapore', '', '702', 'SG', 'SGP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'en', 'SGD', '65', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(189, 1, 'Slovak Republic', '', '703', 'SK', 'SVK', '^(SK)?[0-9]{10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'sk', 'EUR', '421', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(190, 1, 'Slovenia', '', '705', 'SI', 'SVN', '^(SI)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'sl', 'EUR', '386', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(191, 1, 'Solomon Islands', '', '090', 'SB', 'SLB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SBD', '677', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(192, 1, 'Somalia', '', '706', 'SO', 'SOM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'so', 'SOS', '252', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(193, 1, 'South Africa', '', '710', 'ZA', 'ZAF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'zu', 'ZAR', '27', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(194, 1, 'South Georgia and South Sandwich Islands', '', '239', 'GS', 'SGS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'SIQQ 1ZZ', 0, 'en', 'GBP', '500', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(195, 1, 'Spain', '', '724', 'ES', 'ESP', '^(ES)?[0-9A-Z][0-9]{7}[0-9A-Z]$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'EUR', '34', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(196, 1, 'Sri Lanka', '', '144', 'LK', 'LKA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'si', 'LKR', '94', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(197, 1, 'St. Helena', '', '654', 'SH', 'SHN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(ASCN|STHL) 1ZZ', 0, 'en', 'SHP', '290', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(198, 1, 'St. Pierre and Miquelon', '', '666', 'PM', 'SPM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]5[0-9]{2}', 0, 'fr', 'EUR', '508', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(199, 1, 'Sudan', '', '729', 'SD', 'SDN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'SDG', '249', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(200, 1, 'Suriname', '', '740', 'SR', 'SUR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'SRD', '597', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(201, 1, 'Svalbard and Jan Mayen Islands', '', '744', 'SJ', 'SJM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'no', 'NOK', '47', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(202, 1, 'Swaziland', '', '748', 'SZ', 'SWZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[HLMS][0-9]{3}', 0, 'en', 'SZL', '268', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(203, 1, 'Sweden', '', '752', 'SE', 'SWE', '^(SE)?(16|19|20)?[0-9]{6}-?[0-9]{4}?(01)?$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'sv', 'SEK', '46', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(204, 1, 'Switzerland', '', '756', 'CH', 'CHE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'de', 'CHF', '41', '2019-08-08 11:54:25', '2019-08-08 11:54:25');
INSERT INTO `lc_countries` (`id`, `status`, `name`, `domestic_name`, `iso_code_1`, `iso_code_2`, `iso_code_3`, `tax_id_format`, `address_format`, `postcode_format`, `postcode_required`, `language_code`, `currency_code`, `phone_code`, `date_updated`, `date_created`) VALUES
(205, 1, 'Syrian Arab Republic', '', '760', 'SY', 'SYR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'SYP', '963', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(206, 1, 'Taiwan', '', '158', 'TW', 'TWN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}([0-9]{2})?', 0, 'zh', 'TWD', '886', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(207, 1, 'Tajikistan', '', '762', 'TJ', 'TJK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'tg', 'TJS', '992', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(208, 1, 'Tanzania, United Republic of', '', '834', 'TZ', 'TZA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sw', 'TZS', '255', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(209, 1, 'Thailand', '', '764', 'TH', 'THA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'th', 'THB', '66', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(210, 1, 'Togo', '', '768', 'TG', 'TGO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '228', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(211, 1, 'Tokelau', '', '772', 'TK', 'TKL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NZD', '690', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(212, 1, 'Tonga', '', '776', 'TO', 'TON', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'to', 'TOP', '676', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(213, 1, 'Trinidad and Tobago', '', '780', 'TT', 'TTO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'TTD', '186', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(214, 1, 'Tunisia', '', '788', 'TN', 'TUN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ar', 'TND', '216', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(215, 1, 'Turkey', '', '792', 'TR', 'TUR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'tr', 'TRY', '90', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(216, 1, 'Turkmenistan', '', '795', 'TM', 'TKM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'tk', 'TMT', '993', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(217, 1, 'Turks and Caicos Islands', '', '796', 'TC', 'TCA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'TKCA 1ZZ', 0, 'en', 'USD', '164', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(218, 1, 'Tuvalu', '', '798', 'TV', 'TUV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'AUD', '688', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(219, 1, 'Uganda', '', '800', 'UG', 'UGA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'UGX', '256', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(220, 1, 'Ukraine', '', '804', 'UA', 'UKR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'uk', 'UAH', '380', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(221, 1, 'United Arab Emirates', '', '784', 'AE', 'ARE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'AED', '971', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(222, 1, 'United Kingdom', '', '826', 'GB', 'GBR', '^(GB)?([0-9]{9}([0-9]{3})?|[A-Z]{2}[0-9]{3})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[a-zA-Z]{1,2}[0-9][0-9a-zA-Z]? ?[0-9][a-zA-Z]{2}', 1, 'en', 'GBP', '44', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(223, 1, 'United States', '', '840', 'US', 'USA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}([ \\-][0-9]{4})?', 0, 'en', 'USD', '1', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(224, 1, 'United States Minor Outlying Islands', '', '581', 'UM', 'UMI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'USD', '1', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(225, 1, 'Uruguay', '', '858', 'UY', 'URY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'UYU', '598', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(226, 1, 'Uzbekistan', '', '860', 'UZ', 'UZB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'uz', 'UZS', '998', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(227, 1, 'Vanuatu', '', '548', 'VU', 'VUT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'bi', 'VUV', '678', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(228, 1, 'Vatican City State (Holy See)', '', '336', 'VA', 'VAT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '00120', 0, 'la', 'EUR', '39', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(229, 1, 'Venezuela', '', '862', 'VE', 'VEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'es', 'VEF', '58', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(230, 1, 'Viet Nam', '', '704', 'VN', 'VNM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'vi', 'VND', '84', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(231, 1, 'Virgin Islands (British)', '', '092', 'VG', 'VGB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'USD', '128', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(232, 1, 'Virgin Islands (U.S.)', '', '850', 'VI', 'VIR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '008(([0-4][0-9])|(5[01]))([ \\-][0-9]{4})?', 0, 'en', 'USD', '134', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(233, 1, 'Wallis and Futuna Islands', '', '876', 'WF', 'WLF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '986[0-9]{2}', 0, 'fr', 'XPF', '681', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(234, 1, 'Western Sahara', '', '732', 'EH', 'ESH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'MAD', '212', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(235, 1, 'Yemen', '', '887', 'YE', 'YEM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'YER', '967', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(236, 1, 'Serbia', '', '381', 'RS', 'SRB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sr', 'RSD', '381', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(237, 1, 'Democratic Republic of Congo', '', '180', 'CD', 'COD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '243', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(238, 1, 'Zambia', '', '894', 'ZM', 'ZMB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'en', 'ZMW', '260', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(239, 1, 'Zimbabwe', '', '716', 'ZW', 'ZWE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'ZWD', '263', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(240, 1, 'Guernsey', '', '831', 'GG', 'GGY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '44', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(241, 1, 'Montenegro', '', '499', 'ME', 'MNE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '382', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(242, 1, 'Jersey', '', '832', 'JE', 'JEY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '44', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(243, 1, 'Isle of Man', '', '833', 'IM', 'IMN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '44', '2019-08-08 11:54:25', '2019-08-08 11:54:25'),
(244, 1, 'Åland Islands', '', '248', 'AX', 'ALA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sv', 'EUR', '358', '2019-08-08 11:54:25', '2019-08-08 11:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `lc_currencies`
--

CREATE TABLE `lc_currencies` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `number` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `value` decimal(11,6) NOT NULL,
  `decimals` tinyint(1) NOT NULL,
  `prefix` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `suffix` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_currencies`
--

INSERT INTO `lc_currencies` (`id`, `status`, `code`, `number`, `name`, `value`, `decimals`, `prefix`, `suffix`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'USD', '840', 'US Dollars', '1.000000', 2, '$', '', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, 1, 'EUR', '978', 'Euros', '0.726000', 2, '', ' €', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_customers`
--

CREATE TABLE `lc_customers` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `tax_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `different_shipping_address` tinyint(1) NOT NULL,
  `shipping_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `notes` text COLLATE utf8_swedish_ci NOT NULL,
  `password_reset_token` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_delivery_statuses`
--

CREATE TABLE `lc_delivery_statuses` (
  `id` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_delivery_statuses`
--

INSERT INTO `lc_delivery_statuses` (`id`, `date_updated`, `date_created`) VALUES
(1, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_delivery_statuses_info`
--

CREATE TABLE `lc_delivery_statuses_info` (
  `id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_delivery_statuses_info`
--

INSERT INTO `lc_delivery_statuses_info` (`id`, `delivery_status_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', '1-3 days', ''),
(2, 2, 'en', '3-5 days', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_geo_zones`
--

CREATE TABLE `lc_geo_zones` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_geo_zones`
--

INSERT INTO `lc_geo_zones` (`id`, `code`, `name`, `description`, `date_updated`, `date_created`) VALUES
(1, '', 'European Union', 'All countries in the European Union', '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_languages`
--

CREATE TABLE `lc_languages` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `code2` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `locale` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `charset` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `raw_date` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `raw_time` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `raw_datetime` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_date` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_time` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_datetime` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `decimal_point` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `thousands_sep` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_languages`
--

INSERT INTO `lc_languages` (`id`, `status`, `code`, `code2`, `name`, `locale`, `charset`, `raw_date`, `raw_time`, `raw_datetime`, `format_date`, `format_time`, `format_datetime`, `decimal_point`, `thousands_sep`, `currency_code`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'en', 'eng', 'English', 'en_US.utf8,en_US.UTF-8,english', 'UTF-8', 'm/d/y', 'h:i:s A', 'm/d/y h:i:s A', '%b %e %Y', '%I:%M %p', '%b %e %Y %I:%M %p', '.', ',', '', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_manufacturers`
--

CREATE TABLE `lc_manufacturers` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_manufacturers`
--

INSERT INTO `lc_manufacturers` (`id`, `status`, `featured`, `code`, `name`, `keywords`, `image`, `date_updated`, `date_created`) VALUES
(1, 1, 1, '', 'Zigisa Consultancy', '', 'manufacturers/1-zigisa-consultancy.png', '0000-00-00 00:00:00', '2019-08-08 15:56:27'),
(2, 1, 1, '', 'DXN Marketing', '', 'manufacturers/2-dxn-marketing.png', '0000-00-00 00:00:00', '2019-08-08 15:58:33'),
(3, 1, 1, 'Oriflame Marketing', 'Oriflame Marketing', 'Oriflame Marketing', 'manufacturers/3-oriflame-marketing.png', '0000-00-00 00:00:00', '2019-08-08 16:02:20'),
(4, 1, 1, 'Amway Marketing', 'Amway Marketing', 'Amway Marketing', 'manufacturers/4-amway-marketing.png', '0000-00-00 00:00:00', '2019-08-08 16:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `lc_manufacturers_info`
--

CREATE TABLE `lc_manufacturers_info` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `h1_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_manufacturers_info`
--

INSERT INTO `lc_manufacturers_info` (`id`, `manufacturer_id`, `language_code`, `short_description`, `description`, `h1_title`, `head_title`, `meta_description`, `link`) VALUES
(1, 1, 'en', '', '', '', '', '', ''),
(2, 2, 'en', '', '', '', '', '', ''),
(3, 3, 'en', '', '', '', '', '', ''),
(4, 4, 'en', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_modules`
--

CREATE TABLE `lc_modules` (
  `id` int(11) NOT NULL,
  `module_id` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `settings` text COLLATE utf8_swedish_ci NOT NULL,
  `last_log` text COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_modules`
--

INSERT INTO `lc_modules` (`id`, `module_id`, `type`, `status`, `priority`, `settings`, `last_log`, `date_updated`, `date_created`) VALUES
(1, 'ot_subtotal', 'order_total', 1, 1, '{\"status\":\"1\",\"priority\":\"1\"}', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, 'ot_shipping_fee', 'order_total', 1, 20, '{\"status\":\"1\",\"free_shipping_amount\":\"0\",\"priority\":\"20\"}', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(3, 'ot_payment_fee', 'order_total', 1, 30, '{\"status\":\"1\",\"priority\":\"30\"}', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(4, 'job_error_reporter', 'job', 1, 0, '{\"status\":\"1\",\"report_frequency\":\"Weekly\",\"email_receipient\":\"\",\"priority\":\"0\"}', '######################################################\n# job_error_reporter executed at 2019-11-11 11:34:28 #\n######################################################\nNothing to report\n########################\n# Completed in 0.001 s #\n########################\n', '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_groups`
--

CREATE TABLE `lc_option_groups` (
  `id` int(11) NOT NULL,
  `function` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  `sort` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_groups_info`
--

CREATE TABLE `lc_option_groups_info` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_values`
--

CREATE TABLE `lc_option_values` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_option_values_info`
--

CREATE TABLE `lc_option_values_info` (
  `id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders`
--

CREATE TABLE `lc_orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(13) COLLATE utf8_swedish_ci NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `customer_phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `customer_tax_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `customer_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `customer_postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `customer_country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `customer_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_option_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_option_name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_tracking_id` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `payment_option_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `payment_option_name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `payment_transaction_id` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `weight_total` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `currency_value` decimal(11,6) NOT NULL,
  `payment_due` decimal(11,4) NOT NULL,
  `tax_total` decimal(11,4) NOT NULL,
  `client_ip` varchar(39) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_orders`
--

INSERT INTO `lc_orders` (`id`, `uid`, `order_status_id`, `customer_id`, `customer_company`, `customer_firstname`, `customer_lastname`, `customer_email`, `customer_phone`, `customer_tax_id`, `customer_address1`, `customer_address2`, `customer_city`, `customer_postcode`, `customer_country_code`, `customer_zone_code`, `shipping_company`, `shipping_firstname`, `shipping_lastname`, `shipping_address1`, `shipping_address2`, `shipping_city`, `shipping_postcode`, `shipping_country_code`, `shipping_zone_code`, `shipping_phone`, `shipping_option_id`, `shipping_option_name`, `shipping_tracking_id`, `payment_option_id`, `payment_option_name`, `payment_transaction_id`, `language_code`, `weight_total`, `weight_class`, `currency_code`, `currency_value`, `payment_due`, `tax_total`, `client_ip`, `date_updated`, `date_created`) VALUES
(1, '5d4be9e40a55c', 3, 0, 'asd', 'asd', 'asd', 's@s.com', '9999999999', 'root', 'asd', 'asd', 'asd', '700153', 'IN', '', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '700153', 'IN', '', '9999999999', '', '', '', '', '', '', 'en', '0.0000', 'kg', 'USD', '1.000000', '785.0000', '0.0000', '::1', '2019-08-08 14:53:55', '2019-08-08 14:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders_comments`
--

CREATE TABLE `lc_orders_comments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `author` enum('system','staff','customer') COLLATE utf8_swedish_ci NOT NULL,
  `text` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders_items`
--

CREATE TABLE `lc_orders_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_stock_combination` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `options` varchar(4096) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `price` decimal(11,4) NOT NULL,
  `tax` decimal(11,4) NOT NULL,
  `weight` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_orders_items`
--

INSERT INTO `lc_orders_items` (`id`, `order_id`, `product_id`, `option_stock_combination`, `options`, `name`, `sku`, `quantity`, `price`, `tax`, `weight`, `weight_class`) VALUES
(1, 1, 3, '', 's:0:\"\";', 'Khadi Herbal Natural Apricot & Charcoal Face Scrub 180g || (Pack Of 1)', '', '1.0000', '35.0000', '0.0000', '0.0000', 'kg'),
(2, 1, 7, '', 's:0:\"\";', 'Walk Down the Glorious Nostalgia of Park Street', '', '1.0000', '750.0000', '0.0000', '0.0000', 'kg');

-- --------------------------------------------------------

--
-- Table structure for table `lc_orders_totals`
--

CREATE TABLE `lc_orders_totals` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `module_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `value` decimal(11,4) NOT NULL,
  `tax` decimal(11,4) NOT NULL,
  `calculate` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_orders_totals`
--

INSERT INTO `lc_orders_totals` (`id`, `order_id`, `module_id`, `title`, `value`, `tax`, `calculate`, `priority`) VALUES
(1, 1, 'ot_subtotal', 'Subtotal', '785.0000', '0.0000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lc_order_statuses`
--

CREATE TABLE `lc_order_statuses` (
  `id` int(11) NOT NULL,
  `icon` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_swedish_ci NOT NULL,
  `is_sale` tinyint(1) NOT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_order_statuses`
--

INSERT INTO `lc_order_statuses` (`id`, `icon`, `color`, `is_sale`, `is_archived`, `notify`, `priority`, `date_updated`, `date_created`) VALUES
(1, 'fa-money', '#c0c0c0', 0, 0, 0, 1, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, 'fa-clock-o', '#d7d96f', 1, 0, 0, 2, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(3, 'fa-cog', '#ffa851', 1, 0, 0, 3, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(4, 'fa-truck', '#99cc66', 1, 1, 0, 4, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(5, 'fa-times', '#ff6666', 0, 1, 0, 5, '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_order_statuses_info`
--

CREATE TABLE `lc_order_statuses_info` (
  `id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `email_subject` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `email_message` varchar(2048) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_order_statuses_info`
--

INSERT INTO `lc_order_statuses_info` (`id`, `order_status_id`, `language_code`, `name`, `description`, `email_subject`, `email_message`) VALUES
(1, 1, 'en', 'Awaiting payment', '', '', ''),
(2, 2, 'en', 'Pending', '', '', ''),
(3, 3, 'en', 'Processing', '', '', ''),
(4, 4, 'en', 'Dispatched', '', '', ''),
(5, 5, 'en', 'Cancelled', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_pages`
--

CREATE TABLE `lc_pages` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dock` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_pages_info`
--

CREATE TABLE `lc_pages_info` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `content` mediumtext COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_products`
--

CREATE TABLE `lc_products` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `sold_out_status_id` int(11) NOT NULL,
  `default_category_id` int(11) NOT NULL,
  `product_groups` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `mpn` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `upc` varchar(24) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Deprecated, use GTIN',
  `gtin` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `taric` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `quantity_unit_id` int(1) NOT NULL,
  `weight` decimal(10,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `dim_x` decimal(10,4) NOT NULL,
  `dim_y` decimal(10,4) NOT NULL,
  `dim_z` decimal(10,4) NOT NULL,
  `dim_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `purchase_price` decimal(10,4) NOT NULL,
  `purchase_price_currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `views` int(11) NOT NULL,
  `purchases` int(11) NOT NULL,
  `date_valid_from` date NOT NULL,
  `date_valid_to` date NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products`
--

INSERT INTO `lc_products` (`id`, `status`, `manufacturer_id`, `supplier_id`, `delivery_status_id`, `sold_out_status_id`, `default_category_id`, `product_groups`, `keywords`, `code`, `sku`, `mpn`, `upc`, `gtin`, `taric`, `quantity`, `quantity_unit_id`, `weight`, `weight_class`, `dim_x`, `dim_y`, `dim_z`, `dim_class`, `purchase_price`, `purchase_price_currency_code`, `tax_class_id`, `image`, `views`, `purchases`, `date_valid_from`, `date_valid_to`, `date_updated`, `date_created`) VALUES
(1, 1, 0, 0, 1, 1, 1, '', 'ALOE VERA DAG EN NACHTCREME', '', '', '', '', '', '', '100.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '20.0000', 'EUR', 0, 'products/1-aloe-vera-dag-en-nachtcreme-1.jpg', 3, 0, '0000-00-00', '0000-00-00', '2019-08-08 12:52:20', '2019-08-08 12:51:46'),
(2, 1, 0, 0, 1, 1, 0, '', 'Pond\'s Pure White Anti Pollution With Activated Charcoal Facewash,100g', '', '', '', '', '', '', '100.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '40.0000', '', 0, 'products/2-pond-s-pure-white-anti-pollution-with-activated-charcoal-facewash-100g-1.jpg', 1, 0, '0000-00-00', '0000-00-00', '2019-08-08 12:56:31', '2019-08-08 12:56:30'),
(3, 1, 0, 0, 1, 1, 0, '', 'Khadi Herbal Natural Apricot & Charcoal Face Scrub 180g || (Pack Of 1)', '', '', '', '', '', '', '99.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '25.0000', '', 0, 'products/3-khadi-herbal-natural-apricot-charcoal-face-scrub-180g-pack-of-1-1.jpg', 6, 1, '0000-00-00', '0000-00-00', '2019-08-08 12:58:55', '2019-08-08 12:58:54'),
(4, 1, 0, 0, 1, 1, 0, '', 'INVEDA Argan Oil and Dragon Fruit Facial Kit', '', '', '', '', '', '', '100.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '75.0000', '', 0, 'products/4-inveda-argan-oil-and-dragon-fruit-facial-kit-1.jpg', 0, 0, '0000-00-00', '0000-00-00', '2019-08-08 13:01:13', '2019-08-08 13:00:10'),
(5, 1, 0, 0, 1, 1, 5, '', '', '', '', '', '', '', '', '100.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '400.0000', 'USD', 0, 'products/5-a-matter-of-life-and-death-south-park-street-cemetery-walk-1.jpg', 3, 0, '0000-00-00', '0000-00-00', '2019-08-08 13:45:53', '2019-08-08 13:43:05'),
(6, 1, 0, 0, 1, 1, 5, '', 'A Trip Down the Chinese Lanes', 'A Trip Down the Chinese Lanes', '', '', '', '', '', '100.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '1000.0000', 'USD', 0, 'products/6-a-trip-down-the-chinese-lanes-1.jpg', 2, 0, '0000-00-00', '0000-00-00', '2019-08-08 13:52:03', '2019-08-08 13:46:58'),
(7, 1, 0, 0, 1, 1, 5, '', 'Walk Down the Glorious Nostalgia of Park Street', 'Walk Down the Glorious Nostalgia', '', '', '', '', '', '99.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '650.0000', 'USD', 0, 'products/7-walk-down-the-glorious-nostalgia-of-park-street-1.jpg', 6, 1, '0000-00-00', '0000-00-00', '2019-08-08 13:53:37', '2019-08-08 13:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_campaigns`
--

CREATE TABLE `lc_products_campaigns` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_images`
--

CREATE TABLE `lc_products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `filename` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `checksum` char(32) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_images`
--

INSERT INTO `lc_products_images` (`id`, `product_id`, `filename`, `checksum`, `priority`) VALUES
(1, 1, 'products/1-aloe-vera-dag-en-nachtcreme-1.jpg', '3f103c810bce1d86b5567f4868c8a7ac', 1),
(2, 2, 'products/2-pond-s-pure-white-anti-pollution-with-activated-charcoal-facewash-100g-1.jpg', 'c05345df7e008a86c46853de00180b89', 1),
(3, 3, 'products/3-khadi-herbal-natural-apricot-charcoal-face-scrub-180g-pack-of-1-1.jpg', 'aebba4364f9a9f7defeffd9d1c4c8a81', 1),
(4, 4, 'products/4-inveda-argan-oil-and-dragon-fruit-facial-kit-1.jpg', '1f51d43023f7b241e854139dd780083a', 1),
(5, 5, 'products/5-a-matter-of-life-and-death-south-park-street-cemetery-walk-1.jpg', '564e86282ed7d0e1e03e2a5188733ef8', 1),
(6, 6, 'products/6-a-trip-down-the-chinese-lanes-1.jpg', '76e79b5bf23b2a414a62e8e301d3dc3c', 1),
(7, 7, 'products/7-walk-down-the-glorious-nostalgia-of-park-street-1.jpg', 'efd1d697de3f0e86a83dba42de43c5ef', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_info`
--

CREATE TABLE `lc_products_info` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `attributes` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_info`
--

INSERT INTO `lc_products_info` (`id`, `product_id`, `language_code`, `name`, `short_description`, `description`, `head_title`, `meta_description`, `attributes`) VALUES
(1, 1, 'en', 'ALOE VERA DAG EN NACHTCREME', 'De anti-oxidanten hierin beschermen de huid tegen de schadelijke invloeden. ', '<p>Het sap van de Aloë Vera is rijk aan vitaminen, verzachtend, vochtregulerend en ondersteunt het herstellend vermogen van de huid. Deze dag en nachtcrème bevat 70% Aloë Vera concentraat. Aanbevolen gebruik: Geschikt voor dagelijks gebruik, voor ieder huidtype. \r\n</p>\r\nInhoud: 120 ml&nbsp;&nbsp;<br>\r\n<p>Allergie informatie: Bevat geen kleurstoffen en is conserveringsvrij. Ingrediënten: (INCI ) : Aqua, Paraffinum Liquidum, Aloe Barbadensis, Glyceryl Stearate SE, Pentylene Glycol, Caprulic/Capric Triglyceride, Propylene Glycol, Camellia Oleifrera Leaf Extract, Dimethicone, Sodium Cetearyl Sulfate, Cetyl Alcohol, Parfum, Trisodium EDTA, Benzyl Salicytate, Hexyl Cinnamal, Linalool, Coumarin, Citronellol, Hydroxycitronellal, Alpha-isomethyl Ionone</p>', '', '', ''),
(2, 2, 'en', 'Pond\'s Pure White Anti Pollution With Activated Charcoal Facewash, 100g', 'Pond\'s Pure White Anti Pollution With Activated Charcoal Facewash, 100g', '<p>Contains activated carbon, which easily absorbs and lifts away the black impurities and pollution particles\r\n</p><p>Helps reduce the causes of blemishes\r\n</p><p>Reveals your natural pure looking white skin\r\n</p><p>Clears uneven skin tone\r\n</p><p>Removes dirt and impurities from deep within the skin\r\n</p><p>Gives you a pollution free glow</p>', '', '', ''),
(3, 3, 'en', 'Khadi Herbal Natural Apricot & Charcoal Face Scrub 180g || (Pack Of 1)', 'Khadi Herbal Natural Apricot & Charcoal Face Scrub 180g || (Pack Of 1)', '<p>Skin Type: Normal Skin, Application Area: Face\r\n</p><p>How To Use: Apply Khadi Natural Herbal Charcoal Face Scrub and massage gently with wet fingers in circular motion and rinse off. For best results, leave it on for 10 minutes before rinsing. Pat dry skin with a soft towel and continue with the rest of your skin care routine.\r\n</p><p>Container Type: Jar\r\n</p><p>Deep Cleansing, Exfoliates dead skin from face, Gives clear, smooth and radiant skin.\r\n</p><p>Quantity: 180 gm, Item Form: Cream</p>', '', '', ''),
(4, 4, 'en', 'INVEDA Argan Oil and Dragon Fruit Facial Kit', 'INVEDA Argan Oil and Dragon Fruit Facial Kit', '<p>Skin protectors, all skin type\r\n</p><p>To Use: Step 1 : Cleanse the face with a few drops of Argan Oil &amp; Dragon Fruit Cleanser, Step 2 : Exfoliate gently with Argan Oil &amp; Dragon Fruit Scrub for 2 to 3 minutes. Use a few drops of water for smooth movements. Clean the face. Step 3 : Nourish with Argan Oil Fruit Massage Cream by taking Small quantity at a time for about 5 to 6 minutes or till Cream gets absorbed. Give right Pressure and strokes. Massage can be extended if it is done professionally.\r\n</p><p>Ingredient: 1. Argan Oil - Gives skin a natural boost. 2. Dragon Fruit Extract - Fights Signs of Ageing. 3. Bio Sodium Hyaluronate - Skin conditioning humectants. 4. Panax Ginsend Extracts - Improves Complexion. 5. Ashwagandha Extract - Reduces wrinkles, dark spots, fine line and blemishes. 6. Vitamin B3 (Niacinamide) - Protects from UV damage\r\n</p><p>Type: For All Skin Types</p>', '', '', ''),
(5, 5, 'en', 'A Matter of Life and Death: South Park Street Cemetery Walk', 'A Matter of Life and Death: South Park Street Cemetery Walk', '<p>Park Street was originally known as the Burial Ground Road because it was home to a number of cemeteries and covered by patches of jungle. The 250 year old South Park Street Cemetery was the first to be established in the area and is the final resting place of renowned personalities such as Henry Louis Vivian Derozio and William Jones. It is the women buried in the cemetery however, who have some fascinating tales to tell. The walk unearths and brings to light these largely untold stories through letters, memoirs and other contemporary sources. It attempts to piece together the lives of these women, including those of a famed beauty known for her wits, a reputed botanist and the outspoken Indian \"bibi\" of an English lawyer.\r\n</p>\r\n<p>Start Point: Entrance to South Park Street Cemetery (Opposite Mercy Hospital)</p>', '', '', ''),
(6, 6, 'en', 'A Trip Down the Chinese Lanes', 'A Trip Down the Chinese Lanes', '<p>OVERVIEW\r\n</p><p>Chinese??? Oh aren\'t they the one who eat frogs, snakes and everything that you can imagine!! As far as Chinese food is concerned in Kolkata, we simply love items like Chowmin, Fried Rice and Chilli Chicken and is more like a staple food for us and we love them as much as we love Alu Posto. Their numbers are dwindling rapidly and only a handful of shoe shops can be found in Bentinck Street area. And not to forget a few Chinese dentist still operating around the city of joy.\r\n</p>\r\n<p>This is our limited knowledge about his short (pun intended) but interesting community in Kolkata. But there\'s a lot of interesting stories behind how they happened to come to Kolkata and became an integral part of Bengali culture. We hardly know or rather care to know about that. Even the sugar that we use in our daily life, is their contribution or rather gift to us. We do all know that Chinese civilization is one of the oldest in the world and so they are culturally very rich.\r\n</p>\r\n<p>From what was a community of 23000 in 1947, it stands at just 2000 at the moment mainly based at Chinatown in Tangra and Bow Bazar area. Let\'s take an effort to know about this amazing people, culture and food and make sure they continue to be a part of our diverse society.</p>', '', '', ''),
(7, 7, 'en', 'Walk Down the Glorious Nostalgia of Park Street', 'Walk Down the Glorious Nostalgia of Park Street', '<p>OVERVIEW\r\n</p><p>Park Street!!\r\n</p>\r\n<p>The mention of this name brings to our mind images of a brightly lit street and the crave for arguably the best food hub. But originally this street was called Burial Ground Road because of the presence of burial grounds in close vicinity of this place. These burial grounds were what one knows today as the South Park Street Cemetery which was opened in 1767 and closed in 1790. Another cemetery called the North cemetery was opened opposite the South cemetery after 1790.There\'s a lot of history behind this road being renamed to Park Street.\r\n</p>\r\n<p>We will embark on a search for these hidden stories in our walk. We will also check out those graves where the greatest luminaries of those times were laid to rest.\r\n</p>\r\n<p>Let\'s walk down the glorious nostalgia of Park Street.</p>', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_options`
--

CREATE TABLE `lc_products_options` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `price_operator` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_options_stock`
--

CREATE TABLE `lc_products_options_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `combination` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `weight` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `dim_x` decimal(11,4) NOT NULL,
  `dim_y` decimal(11,4) NOT NULL,
  `dim_z` decimal(11,4) NOT NULL,
  `dim_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_prices`
--

CREATE TABLE `lc_products_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_prices`
--

INSERT INTO `lc_products_prices` (`id`, `product_id`, `USD`, `EUR`) VALUES
(1, 1, '32.0000', '21.0000'),
(2, 2, '50.0000', '0.0000'),
(3, 3, '35.0000', '0.0000'),
(4, 4, '78.0000', '0.0000'),
(5, 5, '450.0000', '0.0000'),
(6, 6, '1200.0000', '0.0000'),
(7, 7, '750.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `lc_products_to_categories`
--

CREATE TABLE `lc_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_products_to_categories`
--

INSERT INTO `lc_products_to_categories` (`product_id`, `category_id`) VALUES
(1, 0),
(1, 1),
(2, 0),
(2, 1),
(3, 0),
(3, 1),
(4, 0),
(4, 1),
(5, 5),
(5, 7),
(6, 5),
(6, 7),
(7, 5),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups`
--

CREATE TABLE `lc_product_groups` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups_info`
--

CREATE TABLE `lc_product_groups_info` (
  `id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups_values`
--

CREATE TABLE `lc_product_groups_values` (
  `id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_product_groups_values_info`
--

CREATE TABLE `lc_product_groups_values_info` (
  `id` int(11) NOT NULL,
  `product_group_value_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_quantity_units`
--

CREATE TABLE `lc_quantity_units` (
  `id` int(11) NOT NULL,
  `decimals` tinyint(1) NOT NULL,
  `separate` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_quantity_units`
--

INSERT INTO `lc_quantity_units` (`id`, `decimals`, `separate`, `priority`, `date_updated`, `date_created`) VALUES
(1, 0, 0, 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_quantity_units_info`
--

CREATE TABLE `lc_quantity_units_info` (
  `id` int(11) NOT NULL,
  `quantity_unit_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_quantity_units_info`
--

INSERT INTO `lc_quantity_units_info` (`id`, `quantity_unit_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', 'pcs', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_settings`
--

CREATE TABLE `lc_settings` (
  `id` int(11) NOT NULL,
  `setting_group_key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `type` enum('global','local') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'local',
  `key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `value` varchar(8192) COLLATE utf8_swedish_ci NOT NULL,
  `function` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_settings`
--

INSERT INTO `lc_settings` (`id`, `setting_group_key`, `type`, `key`, `title`, `description`, `value`, `function`, `priority`, `date_updated`, `date_created`) VALUES
(1, '', 'global', 'platform_database_version', 'Platform Database Version', 'The platform version of the database', '2.1.6', '', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, 'store_info', 'global', 'store_name', 'Store Name', 'The name of your store.', 'PattyBebe ', 'input()', 10, '2019-08-08 16:13:24', '2019-08-08 11:54:26'),
(3, 'store_info', 'global', 'store_email', 'Store Email', 'The store e-mail address.', 'info@zigisa.com', 'input()', 11, '2019-08-08 16:13:39', '2019-08-08 11:54:26'),
(4, 'store_info', 'local', 'store_tax_id', 'Store Tax ID', 'The store tax ID or VATIN.', 'XX000000000000', 'input()', 12, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(5, 'store_info', 'local', 'store_postal_address', 'Store Postal Address', 'The store postal address.', '77 Rabindra Nagar, Kolkata-700153, India', 'bigtext()', 13, '2019-08-08 16:14:05', '2019-08-08 11:54:26'),
(6, 'store_info', 'local', 'store_visiting_address', 'Store Visiting Address', 'The store visiting address if applicable.', '77 Rabindra Nagar, Kolkata-700153, India', 'bigtext()', 14, '2019-08-08 16:14:10', '2019-08-08 11:54:26'),
(7, 'store_info', 'local', 'store_phone', 'Store Phone Number', 'The store phone number.', '9830382796', 'input()', 15, '2019-08-08 16:14:24', '2019-08-08 11:54:26'),
(8, 'store_info', 'global', 'store_country_code', 'Store Country', 'The country of your store.', 'IN', 'countries()', 16, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(9, 'store_info', 'global', 'store_timezone', 'Store Time Zone', 'The store time zone.', 'Asia/Kolkata', 'timezones()', 17, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(10, 'store_info', 'local', 'store_language_code', 'Store Language', 'The spoken language of your organization.', 'en', 'languages()', 18, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(11, 'store_info', 'global', 'store_currency_code', 'Store Currency', 'The currency of which all prices conform to.', 'USD', 'currencies()', 19, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(12, 'store_info', 'global', 'store_zone_code', 'Store Zone', 'The zone of your store.', '', 'zones()', 20, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(13, 'store_info', 'global', 'store_weight_class', 'Store Weight Class', 'The prefered weight class.', 'kg', 'weight_classes()', 21, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(14, 'store_info', 'global', 'store_length_class', 'Store Length Class', 'The prefered length class.', 'cm', 'length_classes()', 22, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(15, 'defaults', 'global', 'default_language_code', 'Default Language', 'The default language selected, if failed to identify.', 'en', 'languages()', 10, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(16, 'defaults', 'global', 'default_currency_code', 'Default Currency', 'The default currency selected, if failed to identify.', 'USD', 'currencies()', 11, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(17, 'defaults', 'global', 'default_country_code', 'Default Country', 'The default country selected if not set otherwise.', 'IN', 'countries()', 12, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(18, 'defaults', 'global', 'default_zone_code', 'Default Zone', 'The default zone selected if not set otherwise.', '', 'zones()', 13, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(19, 'defaults', 'local', 'default_tax_class_id', 'Default Tax Class', 'Default tax class that will be preset when creating new products.', '1', 'tax_classes()', 14, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(20, 'defaults', 'global', 'default_display_prices_including_tax', 'Default Display Prices Including Tax', 'Displays prices including tax by default.', '1', 'toggle()', 15, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(21, 'defaults', 'global', 'default_quantity_unit_id', 'Default Quantity Unit', 'Default quantity unit that will be preset when creating new products.', '1', 'quantity_units()', 16, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(22, 'defaults', 'global', 'default_sold_out_status_id', 'Default Sold Out Status', 'Default sold out status that will be preset when creating new products.', '1', 'sold_out_statuses()', 17, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(23, 'defaults', 'global', 'default_delivery_status_id', 'Default Delivery Status', 'Default delivery status that will be preset when creating new products.', '1', 'delivery_statuses()', 18, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(24, 'email', 'local', 'smtp_status', 'SMTP Enabled', 'Wheither or not to use an SMTP server for delivering email.', '0', 'toggle(\"e/d\")', 10, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(25, 'email', 'local', 'smtp_host', 'SMTP Host', 'SMTP hostname e.g. smtp.myprovider.com.', 'localhost', 'input()', 11, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(26, 'email', 'local', 'smtp_port', 'SMTP Port', 'SMTP port e.g. 25, 465 (SSL/TLS), or 587 (STARTTLS).', '25', 'number()', 12, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(27, 'email', 'local', 'smtp_username', 'SMTP Username', 'Username for SMTP authentication.', '', 'input()', 13, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(28, 'email', 'local', 'smtp_password', 'SMTP Password', 'Password for SMTP authentication.', '', 'password()', 14, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(29, 'listings', 'global', 'maintenance_mode', 'Maintenance Mode', 'Setting the store in maintenance mode will prevent users from browsing your site.', '0', 'toggle()', 2, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(30, 'listings', 'global', 'catalog_only_mode', 'Catalog Only Mode', 'Disables the cart and checkout features leaving only a browsable catalog.', '0', 'toggle(\"t/f\")', 1, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(31, 'listings', 'local', 'items_per_page', 'Items Per Page', 'The number of items to be displayed per page.', '20', 'int()', 10, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(32, 'listings', 'local', 'data_table_rows_per_page', 'Data Table Rows', 'The number of data table rows per page.', '25', 'input()', 11, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(33, 'listings', 'local', 'display_stock_count', 'Display Stock Count', 'Show the available amounts of products in stock.', '1', 'toggle()', 12, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(34, 'listings', 'local', 'display_cheapest_shipping', 'Cheapest Shipping', 'Display the cheapest shipping cost on product page.', '1', 'toggle()', 13, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(35, 'listings', 'local', 'new_products_max_age', 'Max Age for New Products', 'Display the new sticker for products younger than the give age. E.g. 1 month or 14 days', '1 month', 'input()', 14, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(36, 'listings', 'local', 'box_similar_products_num_items', 'Similar Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '10', 'int()', 15, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(37, 'listings', 'local', 'box_recently_viewed_products_num_items', 'Recently Viewed Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '4', 'int()', 16, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(38, 'listings', 'local', 'box_latest_products_num_items', 'Latest Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '10', 'int()', 17, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(39, 'listings', 'local', 'box_popular_products_num_items', 'Popular Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '10', 'int()', 18, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(40, 'listings', 'local', 'box_campaign_products_num_items', 'Campaign Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '5', 'int()', 19, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(41, 'listings', 'local', 'box_also_purchased_products_num_items', 'Also Purchased Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '4', 'int()', 20, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(42, 'listings', 'local', 'auto_decimals', 'Auto Decimals', 'Show only decimals if there are any to display.', '1', 'toggle(\"e/d\")', 20, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(43, 'images', 'global', 'cache_clear_thumbnails', 'Clear Thumbnails Cache', 'Remove all cached image thumbnails from disk.', '0', 'toggle()', 1, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(44, 'images', 'local', 'category_image_ratio', 'Category Images: Aspect Ratio', 'The aspect ratio of the category thumbnails', '2:3', 'select(\"1:1\",\"2:3\",\"3:2\",\"3:4\",\"4:3\",\"16:9\")', 10, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(45, 'images', 'local', 'category_image_clipping', 'Category Images: Clipping Method', 'The clipping method used for scaled category thumbnails.', 'CROP', 'select(\"CROP\",\"FIT\",\"FIT_USE_WHITESPACING\")', 11, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(46, 'images', 'local', 'product_image_ratio', 'Product Images: Aspect Ratio', 'The aspect ratio of the product thumbnails', '1:1', 'select(\"1:1\",\"2:3\",\"3:2\",\"3:4\",\"4:3\",\"16:9\")', 30, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(47, 'images', 'local', 'product_image_clipping', 'Product Images: Clipping Method', 'The clipping method used for scaled product thumbnails.', 'FIT_USE_WHITESPACING', 'select(\"CROP\",\"FIT\",\"FIT_USE_WHITESPACING\")', 31, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(48, 'images', 'local', 'product_image_trim', 'Product Images: Trim Whitespace', 'Trim whitespace before generating thumbnail images.', '0', 'toggle(\"y/n\")', 33, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(49, 'images', 'local', 'product_image_watermark', 'Product Images: Watermark', 'Watermark product images with the store logo.', '0', 'toggle(\"y/n\")', 34, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(50, 'images', 'local', 'image_downsample_size', 'Downsample', 'Downsample large uploaded images to best fit within the given dimensions of \"width,height\" or leave empty. Default: 2048,2048', '2048,2048', 'smallinput()', 34, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(51, 'images', 'local', 'image_quality', 'Image Quality', 'The JPEG quality for uploaded images (0-100). Default: 90', '90', 'int()', 40, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(52, 'images', 'local', 'image_thumbnail_quality', 'Thumbnail Quality', 'The JPEG quality for thumbnail images (0-100). Default: 65', '65', 'int()', 41, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(53, 'images', 'local', 'image_thumbnail_interlaced', 'Interlaced Thumbnails', 'Generate interlaced thumbnail images for progressive loading. Increases the filesize by 10-20% but improves user experience.', '0', 'toggle()', 42, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(54, 'images', 'local', 'image_whitespace_color', 'Whitespace Color', 'Set the color of any generated whitespace to the given RGB value. Default: 255,255,255', '255,255,255', 'smallinput()', 43, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(55, 'checkout', 'local', 'register_guests', 'Register Guests', 'Force guests to create an account.', '0', 'toggle()', 10, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(56, 'checkout', 'local', 'email_order_copy', 'Order Copy Recipients', 'Send order copies to the following e-mail addresses. Separate by semi-colons.', 'store@email.com', 'mediumtext()', 12, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(57, 'checkout', 'global', 'round_amounts', 'Round Amounts', 'Round currency amounts to prevent hidden decimals.', '1', 'toggle()', 13, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(58, 'advanced', 'global', 'cache_enabled', 'System Cache Enabled', 'Enables the system cache module which caches frequently used data.', '0', 'toggle()', 10, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(59, 'advanced', 'global', 'cache_clear', 'Clear System Cache', 'Remove all cached system information.', '0', 'toggle()', 11, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(60, 'advanced', 'global', 'seo_links_language_prefix', 'SEO Links Language Prefix', 'Precede links with language code e.g. /en/....', '1', 'toggle()', 13, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(61, 'advanced', 'global', 'regional_settings_screen_enabled', 'Regional Settings Screen', 'Enables the regional settings screen upon first visit.', '0', 'toggle()', 14, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(62, 'advanced', 'global', 'gzip_enabled', 'GZIP Enabled', 'Compresses browser data. Increases the load on the server but decreases the bandwidth.', '1', 'toggle()', 15, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(63, 'advanced', 'global', 'jobs_last_run', 'Jobs Last Run', 'Time when background jobs where last executed.', '2019-11-11 11:34:28', 'input()', 16, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(64, 'advanced', 'local', 'jobs_interval', 'Jobs Interval', 'The amount of minutes between each execution of jobs.', '60', 'int()', 17, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(65, 'advanced', 'local', 'database_admin_link', 'Database Admin Link', 'The URL to your database manager e.g. phpMyAdmin.', '?app=settings&doc=advanced&action=edit&key=database_admin_link', 'input()', 18, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(66, 'advanced', 'local', 'webmail_link', 'Webmail Link', 'The URL to your webmail client.', '?app=settings&doc=advanced&action=edit&key=webmail_link', 'input()', 19, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(67, 'advanced', 'global', 'seo_links_enabled', 'SEO Links Enabled', 'Enabling this requires .htaccess and mod_rewrite rules.', '1', 'toggle()', 20, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(68, 'security', 'global', 'security_blacklist', 'Blacklist', 'Deny blacklisted clients access to the site.', '0', 'toggle(\"e/d\")', 10, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(69, 'security', 'global', 'security_session_hijacking', 'Session Hijacking Protection', 'Destroy sessions that were signed for a different IP address and user agent.', '0', 'toggle(\"e/d\")', 11, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(70, 'security', 'global', 'security_http_post', 'HTTP POST Protection', 'Deny incoming HTTP POST data from external sites by checking for valid form tickets.', '0', 'toggle(\"e/d\")', 12, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(71, 'security', 'global', 'security_bot_trap', 'Bad Bot Trap', 'Catch bad behaving bots from crawling your website by setting up a trap.', '0', 'toggle(\"e/d\")', 13, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(72, 'security', 'global', 'security_xss', 'Cross-site Scripting (XSS) Detection', 'Detect common XSS attacks and deny access to the site.', '1', 'toggle(\"e/d\")', 14, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(73, 'security', 'global', 'security_bad_urls', 'Bad URLs Access Detection', 'Detect access to commonly attacked URLs.', '1', 'toggle(\"e/d\")', 15, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(74, 'security', 'local', 'captcha_enabled', 'CAPTCHA', 'Prevent robots from posting form data by enabling CAPTCHA security.', '1', 'toggle()', 16, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(75, '', 'global', 'store_template_catalog', 'Catalog Template', '', 'default.catalog', 'templates(\"catalog\")', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(76, '', 'global', 'store_template_catalog_settings', 'Catalog Template Settings', '', '{\"product_modal_window\":\"1\",\"sidebar_parallax_effect\":\"1\",\"cookie_acceptance\":\"1\"}', 'smalltext()', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(77, '', 'global', 'store_template_admin', 'Admin Template', '', 'default.admin', 'templates(\"admin\")', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(78, '', 'global', 'jobs_last_push', 'Jobs Last Push', 'Time when background jobs where last pushed for execution.', '2019-11-11 11:34:28', 'input()', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(79, '', 'local', 'cache_system_breakpoint', 'Date Cache Cleared', 'Do not use system cache older than breakpoint.', '2019-08-08 16:02:44', 'input()', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(80, '', 'local', 'job_error_reporter:last_run', 'Errors Last Reported', 'Time when errors where last reported by the background job.', '2019-11-11 11:34:28', 'input()', 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_settings_groups`
--

CREATE TABLE `lc_settings_groups` (
  `id` int(11) NOT NULL,
  `key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_settings_groups`
--

INSERT INTO `lc_settings_groups` (`id`, `key`, `name`, `description`, `priority`) VALUES
(1, 'store_info', 'Store Info', 'Store information', 10),
(2, 'defaults', 'Defaults', 'Store default settings', 20),
(3, 'email', 'Email', 'Email and SMTP', 30),
(4, 'listings', 'Listings', 'Settings for the catalog listing', 40),
(5, 'images', 'Images', 'Settings for graphical elements', 50),
(6, 'checkout', 'Checkout', 'Checkout settings', 60),
(7, 'advanced', 'Advanced', 'Advanced settings', 70),
(8, 'security', 'Security', 'Site security and protection against threats', 80);

-- --------------------------------------------------------

--
-- Table structure for table `lc_slides`
--

CREATE TABLE `lc_slides` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `languages` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_valid_from` datetime NOT NULL,
  `date_valid_to` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_slides`
--

INSERT INTO `lc_slides` (`id`, `status`, `languages`, `name`, `image`, `priority`, `date_valid_from`, `date_valid_to`, `date_updated`, `date_created`) VALUES
(1, 1, '', 'Family At The Beach', 'slides/1-family-at-the-beach.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-08 14:54:40', '2019-08-08 11:54:26'),
(2, 1, '', 's', 'slides/2-s.jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-08 14:55:05', '2019-08-08 14:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `lc_slides_info`
--

CREATE TABLE `lc_slides_info` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `caption` text COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_slides_info`
--

INSERT INTO `lc_slides_info` (`id`, `slide_id`, `language_code`, `caption`, `link`) VALUES
(1, 1, 'en', '', ''),
(2, 2, 'en', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_sold_out_statuses`
--

CREATE TABLE `lc_sold_out_statuses` (
  `id` int(11) NOT NULL,
  `orderable` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_sold_out_statuses`
--

INSERT INTO `lc_sold_out_statuses` (`id`, `orderable`, `date_updated`, `date_created`) VALUES
(1, 0, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, 1, '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(3, 1, '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_sold_out_statuses_info`
--

CREATE TABLE `lc_sold_out_statuses_info` (
  `id` int(11) NOT NULL,
  `sold_out_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_sold_out_statuses_info`
--

INSERT INTO `lc_sold_out_statuses_info` (`id`, `sold_out_status_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', 'Sold Out', ''),
(2, 2, 'en', 'Temporary Sold Out', ''),
(3, 3, 'en', 'Backorder Item', '');

-- --------------------------------------------------------

--
-- Table structure for table `lc_suppliers`
--

CREATE TABLE `lc_suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_tax_classes`
--

CREATE TABLE `lc_tax_classes` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_tax_rates`
--

CREATE TABLE `lc_tax_rates` (
  `id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `rate` decimal(10,4) NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'percent',
  `address_type` enum('shipping','payment') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'shipping',
  `customer_type` enum('individuals','companies','both') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'both',
  `tax_id_rule` enum('with','without','both') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'both',
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lc_translations`
--

CREATE TABLE `lc_translations` (
  `id` int(11) NOT NULL,
  `code` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `text_en` text COLLATE utf8_swedish_ci NOT NULL,
  `html` tinyint(1) NOT NULL,
  `frontend` tinyint(1) NOT NULL,
  `backend` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_translations`
--

INSERT INTO `lc_translations` (`id`, `code`, `text_en`, `html`, `frontend`, `backend`, `date_updated`, `date_created`) VALUES
(1, 'title_home', 'Home', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(2, 'template:title_product_modal_window', 'Product Modal Window', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(3, 'template:description_product_modal_window', 'Enables or disables the product modal window.', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(4, 'template:title_sidebar_parallax_effect', 'Sidebar Parallax Effect', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(5, 'template:description_sidebar_parallax_effect', 'Enables or disables the sidebar parallax effect.', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(6, 'template:title_compact_category_tree', 'Compact Category Tree', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(7, 'template:description_compact_category_tree', 'Hide the other categories while browsing a category branch.', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(8, 'template:title_cookie_acceptance', 'Cookie Acceptance', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(9, 'template:description_cookie_acceptance', 'Enables or disables the cookie acceptance notice.', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(10, 'index:head_title', 'Online Store', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(11, 'index:meta_description', '', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(12, 'title_categories', 'Categories', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(13, 'title_popular_products', 'Popular Products', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(14, 'title_latest_products', 'Latest Products', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(15, 'title_change', 'Change', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(16, 'title_shopping_cart', 'Shopping Cart', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(17, 'text_items', 'item(s)', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(18, 'text_search_products', 'Search products', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(19, 'title_sign_in', 'Sign In', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(20, 'title_email_address', 'Email Address', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(21, 'title_password', 'Password', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(22, 'text_new_customers_click_here', 'New customers click here', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(23, 'text_lost_your_password', 'Lost your password?', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(24, 'terms_cookies_acceptance', 'We rely on cookies to provide our services. By using our services, you agree to our use of cookies.', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(25, 'title_ok', 'OK', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(26, 'title_account', 'Account', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(27, 'title_customer_service', 'Customer Service', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(28, 'title_regional_settings', 'Regional Settings', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(29, 'title_create_account', 'Create Account', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(30, 'title_login', 'Login', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(31, 'title_information', 'Information', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(32, 'title_contact', 'Contact', 0, 1, 0, '2019-08-08 11:54:49', '2019-08-08 11:54:49'),
(33, 'title_username', 'Username', 0, 1, 0, '2019-08-08 11:55:05', '2019-08-08 11:55:05'),
(34, 'title_remember_me', 'Remember Me', 0, 1, 0, '2019-08-08 11:55:05', '2019-08-08 11:55:05'),
(35, 'success_now_logged_in_as', 'You are now logged in as %username', 0, 0, 0, '2019-08-08 11:55:11', '2019-08-08 11:55:11'),
(36, 'title_admin_panel', 'Admin Panel', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(37, 'title_appearance', 'Appearance', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(38, 'title_template', 'Template', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(39, 'title_logotype', 'Logotype', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(40, 'title_catalog', 'Catalog', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(41, 'title_product_groups', 'Product Groups', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(42, 'title_option_groups', 'Option Groups', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(43, 'title_manufacturers', 'Manufacturers', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(44, 'title_suppliers', 'Suppliers', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(45, 'title_delivery_statuses', 'Delivery Statuses', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(46, 'title_sold_out_statuses', 'Sold Out Statuses', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(47, 'title_quantity_units', 'Quantity Units', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(48, 'title_csv_import_export', 'CSV Import/Export', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(49, 'title_countries', 'Countries', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(50, 'title_currencies', 'Currencies', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(51, 'title_customers', 'Customers', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(52, 'title_newsletter', 'Newsletter', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(53, 'title_geo_zones', 'Geo Zones', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(54, 'title_languages', 'Languages', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(55, 'title_storage_encoding', 'Storage Encoding', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(56, 'title_modules', 'Modules', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(57, 'title_customer_modules', 'Customer Modules', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(58, 'title_shipping_modules', 'Shipping Modules', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(59, 'title_payment_modules', 'Payment Modules', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(60, 'title_order_modules', 'Order Modules', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(61, 'title_order_total_modules', 'Order Total Modules', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(62, 'title_job_modules', 'Job Modules', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(63, 'title_orders', 'Orders', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(64, 'title_order_statuses', 'Order Statuses', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(65, 'title_pages', 'Pages', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(66, 'title_reports', 'Reports', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(67, 'title_monthly_sales', 'Monthly Sales', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(68, 'title_most_sold_products', 'Most Sold Products', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(69, 'title_most_shopping_customers', 'Most Shopping Customers', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(70, 'title_settings', 'Settings', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(71, 'settings_group:title_store_info', 'Store Info', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(72, 'settings_group:title_defaults', 'Defaults', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(73, 'settings_group:title_email', 'Email', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(74, 'settings_group:title_listings', 'Listings', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(75, 'settings_group:title_images', 'Images', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(76, 'settings_group:title_checkout', 'Checkout', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(77, 'settings_group:title_advanced', 'Advanced', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(78, 'settings_group:title_security', 'Security', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(79, 'title_slides', 'Slides', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(80, 'title_tax', 'Tax', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(81, 'title_tax_rates', 'Tax Rates', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(82, 'title_tax_classes', 'Tax Classes', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(83, 'title_translations', 'Translations', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(84, 'title_search_translations', 'Search Translations', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(85, 'title_scan_files', 'Scan Files', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(86, 'title_users', 'Users', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(87, 'title_vqmods', 'vQmods', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(88, 'title_addons', 'Add-ons', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(89, 'title_discussions', 'Discussions', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(90, 'title_graphs', 'Graphs', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(91, 'title_statistics', 'Statistics', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(92, 'title_daily_sales', 'Daily Sales', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(93, 'title_total_sales', 'Total Sales', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(94, 'title_total_number_of_customers', 'Total Number of Customers', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(95, 'title_total_number_of_orders', 'Total Number of Orders', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(96, 'title_monthly_average_number_of_orders', 'Monthly Average Number of Orders', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(97, 'title_average_order_amount', 'Average Order Amount', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(98, 'title_highest_order_amount', 'Highest Order Amount', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(99, 'title_id', 'ID', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(100, 'title_customer', 'Customer', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(101, 'title_order_status', 'Order Status', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(102, 'title_amount', 'Amount', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(103, 'title_date', 'Date', 0, 1, 0, '2019-08-08 11:55:12', '2019-08-08 11:55:12'),
(104, 'title_latest_addons', 'Latest Add-ons', 0, 1, 0, '2019-08-08 11:55:21', '2019-08-08 11:55:21'),
(105, 'title_most_recent_forum_topics', 'Most Recent Forum Topics', 0, 1, 0, '2019-08-08 11:55:23', '2019-08-08 11:55:23'),
(106, 'text_by', 'by', 0, 1, 0, '2019-08-08 11:55:23', '2019-08-08 11:55:23'),
(107, 'title_webmail', 'Webmail', 0, 1, 0, '2019-08-08 11:55:23', '2019-08-08 11:55:23'),
(108, 'title_database_manager', 'Database Manager', 0, 1, 0, '2019-08-08 11:55:23', '2019-08-08 11:55:23'),
(109, 'text_logout', 'Logout', 0, 1, 0, '2019-08-08 11:55:23', '2019-08-08 11:55:23'),
(110, 'title_search', 'Search', 0, 1, 0, '2019-08-08 11:55:23', '2019-08-08 11:55:23'),
(111, 'title_total', 'Total', 0, 1, 0, '2019-08-08 11:55:50', '2019-08-08 11:55:50'),
(112, 'text_search_phrase_or_keyword', 'Search phrase or keyword', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(113, 'title_add_new_category', 'Add New Category', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(114, 'title_add_new_product', 'Add New Product', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(115, 'title_name', 'Name', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(116, 'title_root', 'Root', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(117, 'title_products', 'Products', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(118, 'text_with_selected', 'With selected', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(119, 'title_enable', 'Enable', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(120, 'title_disable', 'Disable', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(121, 'title_select', 'Select', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(122, 'title_move', 'Move', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(123, 'warning_mounting_points_will_be_replaced', 'Warning: All current mounting points will be replaced.', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(124, 'title_copy', 'Copy', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(125, 'title_duplicate', 'Duplicate', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(126, 'title_unmount', 'Unmount', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(127, 'title_delete', 'Delete', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(128, 'text_are_you_sure', 'Are you sure?', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(129, 'title_help', 'Help', 0, 1, 0, '2019-08-08 12:00:02', '2019-08-08 12:00:02'),
(130, 'title_general', 'General', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(131, 'title_status', 'Status', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(132, 'title_enabled', 'Enabled', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(133, 'title_disabled', 'Disabled', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(134, 'title_parent_category', 'Parent Category', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(135, 'title_google_taxonomy_id', 'Google Taxonomy ID', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(136, 'title_dock', 'Dock', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(137, 'text_dock_in_menu', 'Dock in top menu', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(138, 'text_dock_in_tree', 'Dock in category tree', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(139, 'title_priority', 'Priority', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(140, 'title_code', 'Code', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(141, 'title_list_style', 'List Style', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(142, 'title_columns', 'Columns', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(143, 'title_rows', 'Rows', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(144, 'title_keywords', 'Keywords', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(145, 'title_image', 'Image', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(146, 'title_h1_title', 'H1 Title', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(147, 'title_short_description', 'Short Description', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(148, 'title_description', 'Description', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(149, 'title_head_title', 'Head Title', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(150, 'title_meta_description', 'Meta Description', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(151, 'title_save', 'Save', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(152, 'title_cancel', 'Cancel', 0, 1, 0, '2019-08-08 12:16:21', '2019-08-08 12:16:21'),
(153, 'success_changes_saved', 'Changes saved successfully', 0, 0, 0, '2019-08-08 12:20:55', '2019-08-08 12:20:55'),
(154, 'title_edit', 'Edit', 0, 1, 0, '2019-08-08 12:20:55', '2019-08-08 12:20:55'),
(155, 'title_edit_category', 'Edit Category', 0, 1, 0, '2019-08-08 12:38:33', '2019-08-08 12:38:33'),
(156, 'title_date_updated', 'Date Updated', 0, 1, 0, '2019-08-08 12:38:33', '2019-08-08 12:38:33'),
(157, 'title_date_created', 'Date Created', 0, 1, 0, '2019-08-08 12:38:33', '2019-08-08 12:38:33'),
(158, 'title_prices', 'Prices', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(159, 'title_options', 'Options', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(160, 'title_stock', 'Stock', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(161, 'title_default_category', 'Default Category', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(162, 'description_no_existing_product_groups', 'There are no existing product groups.', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(163, 'title_date_valid_from', 'Date Valid From', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(164, 'title_date_valid_to', 'Date Valid To', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(165, 'title_sku', 'SKU', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(166, 'title_mpn', 'MPN', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(167, 'title_gtin', 'GTIN', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(168, 'title_taric', 'TARIC', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(169, 'title_manufacturer', 'Manufacturer', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(170, 'title_supplier', 'Supplier', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(171, 'title_images', 'Images', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(172, 'title_remove', 'Remove', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(173, 'text_add', 'Add', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(174, 'title_attributes', 'Attributes', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(175, 'title_purchase_price', 'Purchase Price', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(176, 'title_tax_class', 'Tax Class', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(177, 'title_price', 'Price', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(178, 'title_price_incl_tax', 'Price Incl. Tax', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(179, 'title_campaigns', 'Campaigns', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(180, 'text_add_campaign', 'Add Campaign', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(181, 'title_group', 'Group', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(182, 'title_value', 'Value', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(183, 'title_price_operator', 'Price Operator', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(184, 'title_price_adjustment', 'Price Adjustment', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(185, 'title_add_option', 'Add Option', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(186, 'title_quantity_unit', 'Quantity Unit', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(187, 'title_delivery_status', 'Delivery Status', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(188, 'title_sold_out_status', 'Sold Out Status', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(189, 'title_option', 'Option', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(190, 'title_weight', 'Weight', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(191, 'title_dimensions', 'Dimensions', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(192, 'title_qty', 'Qty', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(193, 'title_default_item', 'Default Item', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(194, 'title_add_stock_option', 'Add Stock Option', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(195, 'title_new_stock_option', 'New Stock Option', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(196, 'title_add_to_combination', 'Add To Combination', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(197, 'tooltip_field_price_incl_tax', 'This field helps you calculate net price based on the store region tax. All prices input to database are always excluding tax.', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(198, 'title_start_date', 'Start Date', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(199, 'title_end_date', 'End Date', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(200, 'text_move_up', 'Move up', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(201, 'text_move_down', 'Move down', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(202, 'error_empty_option_group', 'Error: Empty option group', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(203, 'error_empty_option_value', 'Error: Empty option value', 0, 1, 0, '2019-08-08 12:47:50', '2019-08-08 12:47:50'),
(204, 'title_edit_product', 'Edit Product', 0, 1, 0, '2019-08-08 12:51:58', '2019-08-08 12:51:58'),
(205, 'title_new', 'New', 0, 1, 0, '2019-08-08 12:52:04', '2019-08-08 12:52:04'),
(206, 'sticker_new', 'New', 0, 1, 0, '2019-08-08 12:52:04', '2019-08-08 12:52:04'),
(207, 'title_popularity', 'Popularity', 0, 1, 0, '2019-08-08 12:52:29', '2019-08-08 12:52:29'),
(208, 'text_view_full_page', 'View full page', 0, 1, 0, '2019-08-08 13:01:46', '2019-08-08 13:01:46'),
(209, 'title_excluding_tax', 'Excluding Tax', 0, 1, 0, '2019-08-08 13:01:46', '2019-08-08 13:01:46'),
(210, 'title_stock_status', 'Stock Status', 0, 1, 0, '2019-08-08 13:01:46', '2019-08-08 13:01:46'),
(211, 'title_quantity', 'Quantity', 0, 1, 0, '2019-08-08 13:01:46', '2019-08-08 13:01:46'),
(212, 'title_add_to_cart', 'Add To Cart', 0, 1, 0, '2019-08-08 13:01:46', '2019-08-08 13:01:46'),
(213, 'text_share_on_s', 'Share on %s', 0, 1, 0, '2019-08-08 13:01:46', '2019-08-08 13:01:46'),
(214, 'text_link_to_this_product', 'Link to this product', 0, 1, 0, '2019-08-08 13:01:46', '2019-08-08 13:01:46'),
(215, 'title_recently_viewed', 'Recently Viewed', 0, 1, 0, '2019-08-08 13:01:50', '2019-08-08 13:01:50'),
(216, 'title_similar_products', 'Similar Products', 0, 1, 0, '2019-08-08 13:01:50', '2019-08-08 13:01:50'),
(217, 'success_product_added_to_cart', 'Your product was successfully added to the cart.', 0, 0, 0, '2019-08-08 13:01:58', '2019-08-08 13:01:58'),
(218, 'title_key', 'Key', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(219, 'settings_key:title_store_name', 'Store Name', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(220, 'settings_key:description_store_name', 'The name of your store.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(221, 'settings_key:title_store_email', 'Store Email', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(222, 'settings_key:description_store_email', 'The store e-mail address.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(223, 'settings_key:title_store_tax_id', 'Store Tax ID', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(224, 'settings_key:description_store_tax_id', 'The store tax ID or VATIN.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(225, 'settings_key:title_store_postal_address', 'Store Postal Address', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(226, 'settings_key:description_store_postal_address', 'The store postal address.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(227, 'settings_key:title_store_visiting_address', 'Store Visiting Address', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(228, 'settings_key:description_store_visiting_address', 'The store visiting address if applicable.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(229, 'settings_key:title_store_phone', 'Store Phone Number', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(230, 'settings_key:description_store_phone', 'The store phone number.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(231, 'settings_key:title_store_country_code', 'Store Country', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(232, 'settings_key:description_store_country_code', 'The country of your store.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(233, 'settings_key:title_store_timezone', 'Store Time Zone', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(234, 'settings_key:description_store_timezone', 'The store time zone.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(235, 'settings_key:title_store_language_code', 'Store Language', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(236, 'settings_key:description_store_language_code', 'The spoken language of your organization.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(237, 'settings_key:title_store_currency_code', 'Store Currency', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(238, 'settings_key:description_store_currency_code', 'The currency of which all prices conform to.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(239, 'settings_key:title_store_zone_code', 'Store Zone', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(240, 'settings_key:description_store_zone_code', 'The zone of your store.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(241, 'settings_key:title_store_weight_class', 'Store Weight Class', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(242, 'settings_key:description_store_weight_class', 'The prefered weight class.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(243, 'settings_key:title_store_length_class', 'Store Length Class', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(244, 'settings_key:description_store_length_class', 'The prefered length class.', 0, 1, 0, '2019-08-08 13:53:54', '2019-08-08 13:53:54'),
(245, 'title_false', 'False', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(246, 'settings_key:title_catalog_only_mode', 'Catalog Only Mode', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(247, 'settings_key:description_catalog_only_mode', 'Disables the cart and checkout features leaving only a browsable catalog.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(248, 'settings_key:title_maintenance_mode', 'Maintenance Mode', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(249, 'settings_key:description_maintenance_mode', 'Setting the store in maintenance mode will prevent users from browsing your site.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(250, 'settings_key:title_items_per_page', 'Items Per Page', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(251, 'settings_key:description_items_per_page', 'The number of items to be displayed per page.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(252, 'settings_key:title_data_table_rows_per_page', 'Data Table Rows', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(253, 'settings_key:description_data_table_rows_per_page', 'The number of data table rows per page.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(254, 'title_true', 'True', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(255, 'settings_key:title_display_stock_count', 'Display Stock Count', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(256, 'settings_key:description_display_stock_count', 'Show the available amounts of products in stock.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(257, 'settings_key:title_display_cheapest_shipping', 'Cheapest Shipping', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(258, 'settings_key:description_display_cheapest_shipping', 'Display the cheapest shipping cost on product page.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(259, 'settings_key:title_new_products_max_age', 'Max Age for New Products', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(260, 'settings_key:description_new_products_max_age', 'Display the new sticker for products younger than the give age. E.g. 1 month or 14 days', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(261, 'settings_key:title_box_similar_products_num_items', 'Similar Products Box: Number of Items', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(262, 'settings_key:description_box_similar_products_num_items', 'The maximum amount of items to be display in the box.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(263, 'settings_key:title_box_recently_viewed_products_num_items', 'Recently Viewed Products Box: Number of Items', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(264, 'settings_key:description_box_recently_viewed_products_num_items', 'The maximum amount of items to be display in the box.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(265, 'settings_key:title_box_latest_products_num_items', 'Latest Products Box: Number of Items', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(266, 'settings_key:description_box_latest_products_num_items', 'The maximum amount of items to be display in the box.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(267, 'settings_key:title_box_popular_products_num_items', 'Popular Products Box: Number of Items', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(268, 'settings_key:description_box_popular_products_num_items', 'The maximum amount of items to be display in the box.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(269, 'settings_key:title_box_campaign_products_num_items', 'Campaign Products Box: Number of Items', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(270, 'settings_key:description_box_campaign_products_num_items', 'The maximum amount of items to be display in the box.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(271, 'settings_key:title_auto_decimals', 'Auto Decimals', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(272, 'settings_key:description_auto_decimals', 'Show only decimals if there are any to display.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(273, 'settings_key:title_box_also_purchased_products_num_items', 'Also Purchased Products Box: Number of Items', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(274, 'settings_key:description_box_also_purchased_products_num_items', 'The maximum amount of items to be display in the box.', 0, 1, 0, '2019-08-08 13:54:00', '2019-08-08 13:54:00'),
(275, 'settings_key:title_default_language_code', 'Default Language', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(276, 'settings_key:description_default_language_code', 'The default language selected, if failed to identify.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(277, 'settings_key:title_default_currency_code', 'Default Currency', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(278, 'settings_key:description_default_currency_code', 'The default currency selected, if failed to identify.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(279, 'settings_key:title_default_country_code', 'Default Country', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(280, 'settings_key:description_default_country_code', 'The default country selected if not set otherwise.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(281, 'settings_key:title_default_zone_code', 'Default Zone', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(282, 'settings_key:description_default_zone_code', 'The default zone selected if not set otherwise.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(283, 'settings_key:title_default_tax_class_id', 'Default Tax Class', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(284, 'settings_key:description_default_tax_class_id', 'Default tax class that will be preset when creating new products.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(285, 'settings_key:title_default_display_prices_including_tax', 'Default Display Prices Including Tax', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(286, 'settings_key:description_default_display_prices_including_tax', 'Displays prices including tax by default.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(287, 'settings_key:title_default_quantity_unit_id', 'Default Quantity Unit', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(288, 'settings_key:description_default_quantity_unit_id', 'Default quantity unit that will be preset when creating new products.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(289, 'settings_key:title_default_sold_out_status_id', 'Default Sold Out Status', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(290, 'settings_key:description_default_sold_out_status_id', 'Default sold out status that will be preset when creating new products.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(291, 'settings_key:title_default_delivery_status_id', 'Default Delivery Status', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(292, 'settings_key:description_default_delivery_status_id', 'Default delivery status that will be preset when creating new products.', 0, 1, 0, '2019-08-08 13:54:08', '2019-08-08 13:54:08'),
(293, 'settings_key:title_smtp_status', 'SMTP Enabled', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(294, 'settings_key:description_smtp_status', 'Wheither or not to use an SMTP server for delivering email.', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(295, 'settings_key:title_smtp_host', 'SMTP Host', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(296, 'settings_key:description_smtp_host', 'SMTP hostname e.g. smtp.myprovider.com.', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(297, 'settings_key:title_smtp_port', 'SMTP Port', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(298, 'settings_key:description_smtp_port', 'SMTP port e.g. 25, 465 (SSL/TLS), or 587 (STARTTLS).', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(299, 'settings_key:title_smtp_username', 'SMTP Username', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(300, 'settings_key:description_smtp_username', 'Username for SMTP authentication.', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(301, 'settings_key:title_smtp_password', 'SMTP Password', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(302, 'settings_key:description_smtp_password', 'Password for SMTP authentication.', 0, 1, 0, '2019-08-08 13:54:33', '2019-08-08 13:54:33'),
(303, 'settings_key:title_cache_enabled', 'System Cache Enabled', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(304, 'settings_key:description_cache_enabled', 'Enables the system cache module which caches frequently used data.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(305, 'settings_key:title_cache_clear', 'Clear System Cache', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(306, 'settings_key:description_cache_clear', 'Remove all cached system information.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(307, 'settings_key:title_seo_links_language_prefix', 'SEO Links Language Prefix', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(308, 'settings_key:description_seo_links_language_prefix', 'Precede links with language code e.g. /en/....', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(309, 'settings_key:title_regional_settings_screen_enabled', 'Regional Settings Screen', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(310, 'settings_key:description_regional_settings_screen_enabled', 'Enables the regional settings screen upon first visit.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(311, 'settings_key:title_gzip_enabled', 'GZIP Enabled', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(312, 'settings_key:description_gzip_enabled', 'Compresses browser data. Increases the load on the server but decreases the bandwidth.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(313, 'settings_key:title_jobs_last_run', 'Jobs Last Run', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(314, 'settings_key:description_jobs_last_run', 'Time when background jobs where last executed.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(315, 'settings_key:title_jobs_interval', 'Jobs Interval', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(316, 'settings_key:description_jobs_interval', 'The amount of minutes between each execution of jobs.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(317, 'settings_key:title_database_admin_link', 'Database Admin Link', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(318, 'settings_key:description_database_admin_link', 'The URL to your database manager e.g. phpMyAdmin.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(319, 'settings_key:title_webmail_link', 'Webmail Link', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(320, 'settings_key:description_webmail_link', 'The URL to your webmail client.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(321, 'settings_key:title_seo_links_enabled', 'SEO Links Enabled', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(322, 'settings_key:description_seo_links_enabled', 'Enabling this requires .htaccess and mod_rewrite rules.', 0, 1, 0, '2019-08-08 13:55:28', '2019-08-08 13:55:28'),
(323, 'title_version', 'Version', 0, 1, 0, '2019-08-08 13:55:41', '2019-08-08 13:55:41'),
(324, 'title_developer', 'Developer', 0, 1, 0, '2019-08-08 13:55:41', '2019-08-08 13:55:41'),
(325, 'title_install', 'Install', 0, 1, 0, '2019-08-08 13:55:41', '2019-08-08 13:55:41'),
(326, 'title_external_link', 'External Link', 0, 1, 0, '2019-08-08 13:55:41', '2019-08-08 13:55:41'),
(327, 'title_create_new_page', 'Create New Page', 0, 1, 0, '2019-08-08 13:55:47', '2019-08-08 13:55:47'),
(328, 'title_title', 'Title', 0, 1, 0, '2019-08-08 13:55:47', '2019-08-08 13:55:47'),
(329, 'title_date_period', 'Date Period', 0, 1, 0, '2019-08-08 13:55:56', '2019-08-08 13:55:56'),
(330, 'title_filter_now', 'Filter', 0, 1, 0, '2019-08-08 13:55:56', '2019-08-08 13:55:56'),
(331, 'title_month', 'Month', 0, 1, 0, '2019-08-08 13:55:56', '2019-08-08 13:55:56'),
(332, 'title_subtotal', 'Subtotal', 0, 1, 0, '2019-08-08 13:55:56', '2019-08-08 13:55:56'),
(333, 'title_shipping_fees', 'Shipping Fees', 0, 1, 0, '2019-08-08 13:55:56', '2019-08-08 13:55:56'),
(334, 'title_payment_fees', 'Payment Fees', 0, 1, 0, '2019-08-08 13:55:56', '2019-08-08 13:55:56'),
(335, 'title_add_new_slide', 'Add New Slide', 0, 1, 0, '2019-08-08 13:56:01', '2019-08-08 13:56:01'),
(336, 'title_valid_from', 'Valid From', 0, 1, 0, '2019-08-08 13:56:01', '2019-08-08 13:56:01'),
(337, 'title_valid_to', 'Valid To', 0, 1, 0, '2019-08-08 13:56:01', '2019-08-08 13:56:01'),
(338, 'title_all', 'All', 0, 1, 0, '2019-08-08 13:56:01', '2019-08-08 13:56:01'),
(339, 'settings_key:title_security_blacklist', 'Blacklist', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(340, 'settings_key:description_security_blacklist', 'Deny blacklisted clients access to the site.', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(341, 'settings_key:title_security_session_hijacking', 'Session Hijacking Protection', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(342, 'settings_key:description_security_session_hijacking', 'Destroy sessions that were signed for a different IP address and user agent.', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(343, 'settings_key:title_security_http_post', 'HTTP POST Protection', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(344, 'settings_key:description_security_http_post', 'Deny incoming HTTP POST data from external sites by checking for valid form tickets.', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(345, 'settings_key:title_security_bot_trap', 'Bad Bot Trap', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(346, 'settings_key:description_security_bot_trap', 'Catch bad behaving bots from crawling your website by setting up a trap.', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(347, 'settings_key:title_security_xss', 'Cross-site Scripting (XSS) Detection', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(348, 'settings_key:description_security_xss', 'Detect common XSS attacks and deny access to the site.', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(349, 'settings_key:title_security_bad_urls', 'Bad URLs Access Detection', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(350, 'settings_key:description_security_bad_urls', 'Detect access to commonly attacked URLs.', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(351, 'settings_key:title_captcha_enabled', 'CAPTCHA', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(352, 'settings_key:description_captcha_enabled', 'Prevent robots from posting form data by enabling CAPTCHA security.', 0, 1, 0, '2019-08-08 14:00:22', '2019-08-08 14:00:22'),
(353, 'settings_key:title_cache_clear_thumbnails', 'Clear Thumbnails Cache', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(354, 'settings_key:description_cache_clear_thumbnails', 'Remove all cached image thumbnails from disk.', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(355, 'settings_key:title_category_image_ratio', 'Category Images: Aspect Ratio', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(356, 'settings_key:description_category_image_ratio', 'The aspect ratio of the category thumbnails', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(357, 'settings_key:title_category_image_clipping', 'Category Images: Clipping Method', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(358, 'settings_key:description_category_image_clipping', 'The clipping method used for scaled category thumbnails.', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(359, 'settings_key:title_product_image_ratio', 'Product Images: Aspect Ratio', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(360, 'settings_key:description_product_image_ratio', 'The aspect ratio of the product thumbnails', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(361, 'settings_key:title_product_image_clipping', 'Product Images: Clipping Method', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(362, 'settings_key:description_product_image_clipping', 'The clipping method used for scaled product thumbnails.', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(363, 'settings_key:title_product_image_trim', 'Product Images: Trim Whitespace', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(364, 'settings_key:description_product_image_trim', 'Trim whitespace before generating thumbnail images.', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(365, 'settings_key:title_image_downsample_size', 'Downsample', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(366, 'settings_key:description_image_downsample_size', 'Downsample large uploaded images to best fit within the given dimensions of \"width,height\" or leave empty. Default: 2048,2048', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(367, 'settings_key:title_product_image_watermark', 'Product Images: Watermark', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(368, 'settings_key:description_product_image_watermark', 'Watermark product images with the store logo.', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(369, 'settings_key:title_image_quality', 'Image Quality', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(370, 'settings_key:description_image_quality', 'The JPEG quality for uploaded images (0-100). Default: 90', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(371, 'settings_key:title_image_thumbnail_quality', 'Thumbnail Quality', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(372, 'settings_key:description_image_thumbnail_quality', 'The JPEG quality for thumbnail images (0-100). Default: 65', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(373, 'settings_key:title_image_thumbnail_interlaced', 'Interlaced Thumbnails', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(374, 'settings_key:description_image_thumbnail_interlaced', 'Generate interlaced thumbnail images for progressive loading. Increases the filesize by 10-20% but improves user experience.', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(375, 'settings_key:title_image_whitespace_color', 'Whitespace Color', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(376, 'settings_key:description_image_whitespace_color', 'Set the color of any generated whitespace to the given RGB value. Default: 255,255,255', 0, 1, 0, '2019-08-08 14:00:28', '2019-08-08 14:00:28'),
(377, 'settings_key:title_register_guests', 'Register Guests', 0, 1, 0, '2019-08-08 14:02:11', '2019-08-08 14:02:11'),
(378, 'settings_key:description_register_guests', 'Force guests to create an account.', 0, 1, 0, '2019-08-08 14:02:11', '2019-08-08 14:02:11'),
(379, 'settings_key:title_email_order_copy', 'Order Copy Recipients', 0, 1, 0, '2019-08-08 14:02:11', '2019-08-08 14:02:11'),
(380, 'settings_key:description_email_order_copy', 'Send order copies to the following e-mail addresses. Separate by semi-colons.', 0, 1, 0, '2019-08-08 14:02:11', '2019-08-08 14:02:11'),
(381, 'settings_key:title_round_amounts', 'Round Amounts', 0, 1, 0, '2019-08-08 14:02:11', '2019-08-08 14:02:11'),
(382, 'settings_key:description_round_amounts', 'Round currency amounts to prevent hidden decimals.', 0, 1, 0, '2019-08-08 14:02:11', '2019-08-08 14:02:11'),
(383, 'job_error_reporter:title_status', 'Status', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(384, 'job_error_reporter:description_status', 'Enables or disables the module.', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(385, 'job_error_reporter:title_report_frequency', 'Report Frequency', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(386, 'job_error_reporter:description_report_frequency', 'How often the reports should be sent.', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(387, 'job_error_reporter:title_working_hours', 'Working Hours', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(388, 'job_error_reporter:description_working_hours', 'During what hours of the day the job would operate e.g. 07:00-21:00.', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(389, 'job_error_reporter:title_email_recipient', 'Email Recipient', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(390, 'job_error_reporter:description_email_recipient', 'The email address where reports will be sent.', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(391, 'job_error_reporter:title_priority', 'Priority', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(392, 'job_error_reporter:description_priority', 'Process this module in the given priority order.', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(393, 'title_run_now', 'Run Now', 0, 1, 0, '2019-08-08 14:05:03', '2019-08-08 14:05:03'),
(394, 'checkout:head_title', 'Checkout', 0, 1, 0, '2019-08-08 14:51:41', '2019-08-08 14:51:41'),
(395, 'title_checkout', 'Checkout', 0, 1, 0, '2019-08-08 14:51:41', '2019-08-08 14:51:41'),
(396, 'warning_your_customer_information_unsaved', 'Your customer information contains unsaved changes.', 0, 1, 0, '2019-08-08 14:51:41', '2019-08-08 14:51:41'),
(397, 'text_please_wait', 'Please wait', 0, 1, 0, '2019-08-08 14:51:41', '2019-08-08 14:51:41'),
(398, 'title_item', 'Item', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(399, 'title_sum', 'Sum', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(400, 'title_update', 'Update', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(401, 'title_customer_details', 'Customer Details', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(402, 'title_tax_id', 'Tax ID / VATIN', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(403, 'title_company', 'Company', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(404, 'title_firstname', 'First Name', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(405, 'title_lastname', 'Last Name', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(406, 'title_address1', 'Address 1', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(407, 'title_address2', 'Address 2', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(408, 'title_postcode', 'Postal Code', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(409, 'title_city', 'City', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(410, 'title_country', 'Country', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(411, 'title_zone_state_province', 'Zone/State/Province', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(412, 'title_email', 'Email', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(413, 'title_phone', 'Phone', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(414, 'title_different_shipping_address', 'Different Shipping Address', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(415, 'title_desired_password', 'Desired Password', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(416, 'title_confirm_password', 'Confirm Password', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(417, 'title_save_changes', 'Save Changes', 0, 1, 0, '2019-08-08 14:51:42', '2019-08-08 14:51:42'),
(418, 'ot_subtotal:title_subtotal', 'Subtotal', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(419, 'ot_subtotal:title_status', 'Status', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(420, 'ot_subtotal:description_status', 'Enables or disables the module.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(421, 'ot_subtotal:title_priority', 'Priority', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(422, 'ot_subtotal:description_priority', 'Process this module by the given priority value.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(423, 'ot_shipping_fee:title_shipping_fee', 'Shipping Fee', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(424, 'ot_shipping_fee:title_status', 'Status', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(425, 'ot_shipping_fee:description_status', 'Enables or disables the module.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(426, 'ot_shipping_fee:title_free_shipping_table', 'Free Shipping Table', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(427, 'ot_shipping_fee:description_free_shipping_table', 'Free shipping table in standard CSV format with column headers.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(428, 'ot_shipping_fee:title_priority', 'Priority', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(429, 'ot_shipping_fee:description_priority', 'Process this module by the given priority value.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(430, 'ot_payment_fee:title_payment_fee', 'Payment Fee', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(431, 'ot_payment_fee:title_status', 'Status', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43');
INSERT INTO `lc_translations` (`id`, `code`, `text_en`, `html`, `frontend`, `backend`, `date_updated`, `date_created`) VALUES
(432, 'ot_payment_fee:description_status', 'Enables or disables the module.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(433, 'ot_payment_fee:title_priority', 'Priority', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(434, 'ot_payment_fee:description_priority', 'Process this module by the given priority value.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(435, 'title_including_tax', 'Including Tax', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(436, 'error_missing_firstname', 'You must enter a firstname.', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(437, 'title_confirm_order', 'Confirm Order', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(438, 'title_order_summary', 'Order Summary', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(439, 'title_payment_due', 'Payment Due', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(440, 'title_comments', 'Comments', 0, 1, 0, '2019-08-08 14:51:43', '2019-08-08 14:51:43'),
(441, 'error_invalid_email_address', 'Invalid email address', 0, 1, 0, '2019-08-08 14:52:19', '2019-08-08 14:52:19'),
(442, 'error_invalid_postcode_format', 'Invalid postcode format.', 0, 1, 0, '2019-08-08 14:52:27', '2019-08-08 14:52:27'),
(443, 'checkout_summary:terms_of_purchase', 'By proceeding you hereby confirm and accept the Terms and Conditions of Purchase.', 0, 1, 0, '2019-08-08 14:52:38', '2019-08-08 14:52:38'),
(444, 'title_order', 'Order', 0, 1, 0, '2019-08-08 14:52:44', '2019-08-08 14:52:44'),
(445, 'title_order_confirmation', 'Order Confirmation', 0, 0, 0, '2019-08-08 14:52:44', '2019-08-08 14:52:44'),
(446, 'email_order_confirmation', 'Thank you for your purchase!\r\n\r\nYour order #%order_id has successfully been created with a total of %payment_due for the following ordered items:\r\n\r\n%order_items\r\n\r\nA printable order copy is available here:\r\n%order_copy_url\r\n\r\nRegards,\r\n%store_name\r\n%store_url\r\n', 0, 0, 0, '2019-08-08 14:52:44', '2019-08-08 14:52:44'),
(447, 'title_order_success', 'Order Success', 0, 1, 0, '2019-08-08 14:52:46', '2019-08-08 14:52:46'),
(448, 'title_order_completed', 'Your order #%order_id is successfully completed!', 0, 1, 0, '2019-08-08 14:52:46', '2019-08-08 14:52:46'),
(449, 'description_order_completed', 'Thank you for your purchase. An order confirmation email has been sent. We will process your order shortly.', 0, 1, 0, '2019-08-08 14:52:46', '2019-08-08 14:52:46'),
(450, 'title_order_total', 'Order Total', 0, 1, 0, '2019-08-08 14:52:46', '2019-08-08 14:52:46'),
(451, 'description_click_printable_copy', 'Click here for a printable copy', 0, 1, 0, '2019-08-08 14:52:46', '2019-08-08 14:52:46'),
(452, 'title_order_copy', 'Order Copy', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(453, 'title_shipping_address', 'Shipping Address', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(454, 'title_shipping_weight', 'Shipping Weight', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(455, 'title_billing_address', 'Billing Address', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(456, 'title_shipping_option', 'Shipping Option', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(457, 'title_shipping_tracking_id', 'Shipping Tracking ID', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(458, 'title_payment_option', 'Payment Option', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(459, 'title_transaction_number', 'Transaction Number', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(460, 'title_unit_price', 'Unit Price', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(461, 'title_grand_total', 'Grand Total', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(462, 'title_address', 'Address', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(463, 'title_website', 'Website', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(464, 'title_vat_registration_id', 'VAT Registration ID', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(465, 'title_print', 'Print', 0, 1, 0, '2019-08-08 14:53:00', '2019-08-08 14:53:00'),
(466, 'title_payment_method', 'Payment Method', 0, 1, 0, '2019-08-08 14:53:20', '2019-08-08 14:53:20'),
(467, 'title_create_new_order', 'Create New Order', 0, 1, 0, '2019-08-08 14:53:20', '2019-08-08 14:53:20'),
(468, 'title_customer_name', 'Customer Name', 0, 1, 0, '2019-08-08 14:53:20', '2019-08-08 14:53:20'),
(469, 'title_guest', 'Guest', 0, 1, 0, '2019-08-08 14:53:20', '2019-08-08 14:53:20'),
(470, 'title_unprocessed', 'Unprocessed', 0, 1, 0, '2019-08-08 14:53:20', '2019-08-08 14:53:20'),
(471, 'title_packing_slip', 'Packing Slip', 0, 1, 0, '2019-08-08 14:53:20', '2019-08-08 14:53:20'),
(472, 'title_edit_order', 'Edit Order', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(473, 'title_order_information', 'Order Information', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(474, 'title_ip_address', 'IP Address', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(475, 'title_language', 'Language', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(476, 'title_currency', 'Currency', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(477, 'title_currency_value', 'Currency Value', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(478, 'title_customer_information', 'Customer Information', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(479, 'title_get_address', 'Get Address', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(480, 'title_copy_billing_address', 'Copy Billing Address', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(481, 'title_payment_information', 'Payment Information', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(482, 'title_option_id', 'Option ID', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(483, 'title_transaction_id', 'Transaction ID', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(484, 'title_shipping_information', 'Shipping Information', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(485, 'title_tracking_id', 'Tracking ID', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(486, 'title_add', 'Add', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(487, 'title_add_comment', 'Add Comment', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(488, 'title_order_items', 'Order Items', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(489, 'title_add_product', 'Add Product', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(490, 'title_add_custom_item', 'Add Custom Item', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(491, 'title_module_id', 'Module ID', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(492, 'title_calculate', 'Calculate', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(493, 'title_insert_', 'Insert', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(494, 'title_send_order_copy_email', 'Send order copy email', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(495, 'title_date_registered', 'Date Registered', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(496, 'text_set_as_guest', 'Set As Guest', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(497, 'title_notify', 'Notify', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(498, 'title_hidden', 'Hidden', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(499, 'text_insert_before', 'Insert before', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(500, 'text_no_results', 'No results', 0, 1, 0, '2019-08-08 14:53:26', '2019-08-08 14:53:26'),
(501, 'title_add_new_country', 'Add New Country', 0, 1, 0, '2019-08-08 14:54:05', '2019-08-08 14:54:05'),
(502, 'title_zones', 'Zones', 0, 1, 0, '2019-08-08 14:54:05', '2019-08-08 14:54:05'),
(503, 'title_catalog_template', 'Catalog Template', 0, 1, 0, '2019-08-08 14:54:08', '2019-08-08 14:54:08'),
(504, 'title_admin_template', 'Admin Template', 0, 1, 0, '2019-08-08 14:54:08', '2019-08-08 14:54:08'),
(505, 'title_add_new_language', 'Add New Language', 0, 1, 0, '2019-08-08 14:54:11', '2019-08-08 14:54:11'),
(506, 'title_default_language', 'Default Language', 0, 1, 0, '2019-08-08 14:54:11', '2019-08-08 14:54:11'),
(507, 'title_store_language', 'Store Language', 0, 1, 0, '2019-08-08 14:54:11', '2019-08-08 14:54:11'),
(508, 'title_edit_slide', 'Edit Slide', 0, 1, 0, '2019-08-08 14:54:28', '2019-08-08 14:54:28'),
(509, 'text_leave_blank_for_all', 'Leave blank for all', 0, 1, 0, '2019-08-08 14:54:28', '2019-08-08 14:54:28'),
(510, 'title_caption', 'Caption', 0, 1, 0, '2019-08-08 14:54:28', '2019-08-08 14:54:28'),
(511, 'title_link', 'Link', 0, 1, 0, '2019-08-08 14:54:28', '2019-08-08 14:54:28'),
(512, 'error_must_enter_name', 'You must enter a name', 0, 1, 0, '2019-08-08 14:54:53', '2019-08-08 14:54:53'),
(513, 'title_create_new_group', 'Create New Group', 0, 1, 0, '2019-08-08 15:33:29', '2019-08-08 15:33:29'),
(514, 'title_function', 'Function', 0, 1, 0, '2019-08-08 15:33:29', '2019-08-08 15:33:29'),
(515, 'title_add_new_manufacturer', 'Add New Manufacturer', 0, 1, 0, '2019-08-08 15:33:31', '2019-08-08 15:33:31'),
(516, 'title_add_new_supplier', 'Add New Supplier', 0, 1, 0, '2019-08-08 15:33:32', '2019-08-08 15:33:32'),
(517, 'title_values', 'Values', 0, 1, 0, '2019-08-08 15:33:33', '2019-08-08 15:33:33'),
(518, 'title_frontend', 'Frontend', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(519, 'title_backend', 'Backend', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(520, 'text_inlcude_modules', 'Include modules', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(521, 'text_only_untranslated', 'Only untranslated', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(522, 'title_filter', 'Filter', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(523, 'text_html_enabled', 'HTML enabled', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(524, 'title_previous', 'Previous', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(525, 'title_next', 'Next', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(526, 'title_translator_tool', 'Translator Tool', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(527, 'title_from_language', 'From Language', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(528, 'title_to_language', 'To Language', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(529, 'text_copy_below_to_translation_service', 'Copy below to translation service', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(530, 'text_paste_your_translated_result_below', 'Paste your translated result below', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(531, 'title_prefill_fields', 'Prefill Fields', 0, 1, 0, '2019-08-08 15:33:42', '2019-08-08 15:33:42'),
(532, 'title_featured', 'Featured', 0, 1, 0, '2019-08-08 15:55:46', '2019-08-08 15:55:46'),
(533, 'title_yes', 'Yes', 0, 1, 0, '2019-08-08 15:55:46', '2019-08-08 15:55:46'),
(534, 'title_no', 'No', 0, 1, 0, '2019-08-08 15:55:46', '2019-08-08 15:55:46'),
(535, 'title_contact_us', 'Contact Us', 0, 1, 0, '2019-08-08 16:14:37', '2019-08-08 16:14:37'),
(536, 'consent_newsletter', 'I would like to be notified occasionally via e-mail when there are new products or campaigns.', 0, 1, 0, '2019-08-08 16:14:37', '2019-08-08 16:14:37'),
(537, 'title_captcha', 'CAPTCHA', 0, 1, 0, '2019-08-08 16:14:37', '2019-08-08 16:14:37'),
(538, 'title_also_purchased_products', 'Also Purchased Products', 0, 1, 0, '2019-08-10 04:30:58', '2019-08-10 04:30:58'),
(539, 'categories:head_title', 'Categories', 0, 1, 0, '2019-08-10 05:13:27', '2019-08-10 05:13:27'),
(540, 'categories:meta_description', '', 0, 1, 0, '2019-08-10 05:13:27', '2019-08-10 05:13:27'),
(541, 'description_no_items_in_cart', 'There are no items in your cart.', 0, 1, 0, '2019-08-27 10:35:32', '2019-08-27 10:35:32'),
(542, 'title_back', 'Back', 0, 1, 0, '2019-08-27 10:35:32', '2019-08-27 10:35:32'),
(543, 'regional_settings:head_title', 'Regional Settings', 0, 1, 0, '2019-11-03 17:09:08', '2019-11-03 17:09:08'),
(544, 'title_display_prices', 'Display Prices', 0, 1, 0, '2019-11-03 17:09:08', '2019-11-03 17:09:08'),
(545, 'title_excl_tax', 'Excl. Tax', 0, 1, 0, '2019-11-03 17:09:08', '2019-11-03 17:09:08'),
(546, 'title_incl_tax', 'Incl. Tax', 0, 1, 0, '2019-11-03 17:09:08', '2019-11-03 17:09:08'),
(547, 'customer_service:head_title', 'Customer Service', 0, 1, 0, '2019-11-03 17:09:20', '2019-11-03 17:09:20'),
(548, 'customer_service:meta_description', '', 0, 1, 0, '2019-11-03 17:09:20', '2019-11-03 17:09:20'),
(549, 'title_subject', 'Subject', 0, 1, 0, '2019-11-03 17:09:20', '2019-11-03 17:09:20'),
(550, 'title_message', 'Message', 0, 1, 0, '2019-11-03 17:09:20', '2019-11-03 17:09:20'),
(551, 'title_send', 'Send', 0, 1, 0, '2019-11-03 17:09:20', '2019-11-03 17:09:20'),
(552, 'title_contact_details', 'Contact Details', 0, 1, 0, '2019-11-03 17:09:20', '2019-11-03 17:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `lc_users`
--

CREATE TABLE `lc_users` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `username` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `permissions` varchar(4096) COLLATE utf8_swedish_ci NOT NULL,
  `last_ip` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `last_host` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `total_logins` int(11) NOT NULL,
  `date_blocked` datetime NOT NULL,
  `date_expires` datetime NOT NULL,
  `date_active` datetime NOT NULL,
  `date_login` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_users`
--

INSERT INTO `lc_users` (`id`, `status`, `username`, `password`, `permissions`, `last_ip`, `last_host`, `login_attempts`, `total_logins`, `date_blocked`, `date_expires`, `date_active`, `date_login`, `date_updated`, `date_created`) VALUES
(1, 1, 'admin', '2de91f26c9a2d166498f031d77e3ebe462b08bacd2951d9b421380b7ade7d81b', '', '::1', 'DEV', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-09 16:51:36', '2019-08-08 11:55:11', '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `lc_zones`
--

CREATE TABLE `lc_zones` (
  `id` int(11) NOT NULL,
  `country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_zones`
--

INSERT INTO `lc_zones` (`id`, `country_code`, `code`, `name`, `date_updated`, `date_created`) VALUES
(1, 'AU', 'ACT', 'Australian Capital Territory', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, 'AU', 'NSW', 'New South Wales', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(3, 'AU', 'NT', 'Northern Territory', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(4, 'AU', 'QLD', 'Queensland', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(5, 'AU', 'SA', 'South Australia', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(6, 'AU', 'TAS', 'Tasmania', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(7, 'AU', 'VIC', 'Victoria', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(8, 'AU', 'WA', 'Western Australia', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(9, 'CA', 'AB', 'Alberta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'CA', 'BC', 'British Columbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'CA', 'MB', 'Manitoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CA', 'NB', 'New Brunswick', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CA', 'NL', 'Newfoundland and Labrador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'CA', 'NT', 'Northwest Territories', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'CA', 'NS', 'Nova Scotia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'CA', 'NU', 'Nunavut', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'CA', 'ON', 'Ontario', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'CA', 'PE', 'Prince Edward Island', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'CA', 'QC', 'Québec', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'CA', 'SK', 'Saskatchewan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'CA', 'YT', 'Yukon Territory', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'US', 'AL', 'Alabama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'US', 'AK', 'Alaska', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'US', 'AZ', 'Arizona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'US', 'AR', 'Arkansas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'US', 'CA', 'California', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'US', 'CO', 'Colorado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'US', 'CT', 'Connecticut', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'US', 'DE', 'Delaware', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'US', 'FL', 'Florida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'US', 'GA', 'Georgia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'US', 'HI', 'Hawaii', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'US', 'ID', 'Idaho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'US', 'IL', 'Illinois', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'US', 'IN', 'Indiana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'US', 'IA', 'Iowa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'US', 'KS', 'Kansas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'US', 'KY', 'Kentucky', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'US', 'LA', 'Louisiana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'US', 'ME', 'Maine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'US', 'MD', 'Maryland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'US', 'MA', 'Massachusetts', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'US', 'MI', 'Michigan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'US', 'MN', 'Minnesota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'US', 'MS', 'Mississippi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'US', 'MO', 'Missouri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'US', 'MT', 'Montana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'US', 'NE', 'Nebraska', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'US', 'NV', 'Nevada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'US', 'NH', 'New Hampshire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'US', 'NJ', 'New Jersey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'US', 'NM', 'New Mexico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'US', 'NY', 'New York', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'US', 'NC', 'North Carolina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'US', 'ND', 'North Dakota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'US', 'OH', 'Ohio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'US', 'OK', 'Oklahoma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'US', 'OR', 'Oregon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'US', 'PA', 'Pennsylvania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'US', 'RI', 'Rhode Island', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'US', 'SC', 'South Carolina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'US', 'SD', 'South Dakota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'US', 'TN', 'Tennessee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'US', 'TX', 'Texas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'US', 'UT', 'Utah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'US', 'VT', 'Vermont', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'US', 'VA', 'Virginia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'US', 'WA', 'Washington', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'US', 'WV', 'West Virginia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'US', 'WI', 'Wisconsin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'US', 'WY', 'Wyoming', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lc_zones_to_geo_zones`
--

CREATE TABLE `lc_zones_to_geo_zones` (
  `id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `lc_zones_to_geo_zones`
--

INSERT INTO `lc_zones_to_geo_zones` (`id`, `geo_zone_id`, `country_code`, `zone_code`, `date_updated`, `date_created`) VALUES
(1, 1, 'AT', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(2, 1, 'BE', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(3, 1, 'BG', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(4, 1, 'CY', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(5, 1, 'CZ', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(6, 1, 'DE', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(7, 1, 'DK', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(8, 1, 'EE', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(9, 1, 'ES', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(10, 1, 'FR', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(11, 1, 'FI', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(12, 1, 'GB', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(13, 1, 'GR', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(14, 1, 'HR', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(15, 1, 'HU', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(16, 1, 'IE', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(17, 1, 'IT', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(18, 1, 'LT', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(19, 1, 'LU', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(20, 1, 'LV', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(21, 1, 'MT', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(22, 1, 'NL', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(23, 1, 'PL', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(24, 1, 'PT', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(25, 1, 'RO', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(26, 1, 'SE', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(27, 1, 'SI', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26'),
(28, 1, 'SK', '', '2019-08-08 11:54:26', '2019-08-08 11:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_cart_items`
--

CREATE TABLE `zigisa_cart_items` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cart_uid` varchar(13) COLLATE utf8_swedish_ci NOT NULL,
  `key` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `options` varchar(2048) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_categories`
--

CREATE TABLE `zigisa_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `google_taxonomy_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `list_style` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `dock` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_categories`
--

INSERT INTO `zigisa_categories` (`id`, `parent_id`, `google_taxonomy_id`, `status`, `code`, `list_style`, `dock`, `keywords`, `image`, `priority`, `date_updated`, `date_created`) VALUES
(1, 0, 0, 1, 'About Us', 'columns', 'menu,tree', 'My Projects', '', 1, '2020-02-21 14:15:26', '2019-11-11 07:53:57'),
(2, 0, 0, 1, 'Store', 'columns', 'menu,tree', 'Shop', '', 2, '2020-02-22 10:41:52', '2019-11-11 07:54:17'),
(3, 0, 0, 1, '', 'columns', 'menu,tree', 'Be-Be Editions', '', 3, '2020-02-21 14:02:36', '2019-11-11 07:54:37'),
(4, 0, 0, 1, 'Be-Be Events Store', 'columns', 'menu,tree', 'Ticketing & Events', '', 4, '2020-02-21 13:58:43', '2019-11-11 07:54:57'),
(5, 0, 0, 0, 'Be-Be Services Store', 'columns', 'menu,tree', 'Be-Be Services Store', '', 5, '2020-02-21 07:26:22', '2019-11-11 07:55:21'),
(6, 1, 0, 0, 'Editions Be-Be', 'columns', 'tree', 'Editions Be-Be', '', 1, '2020-02-21 07:27:35', '2019-11-11 07:58:19'),
(7, 1, 0, 0, 'Actual Book', 'columns', '', 'Actual Book', '', 2, '2020-02-21 07:27:35', '2019-11-11 07:58:58'),
(8, 2, 0, 1, 'Fashion & accessories ', 'columns', '', 'Fashion & accessories', '', 0, '2020-02-21 12:54:36', '2019-11-11 10:19:18'),
(9, 2, 0, 1, 'Hair Care', 'columns', '', 'Books', '', 0, '2020-02-21 12:54:09', '2019-11-11 10:19:43'),
(10, 2, 0, 0, 'Nail Care', 'columns', '', 'Nail Care', '', 3, '2020-02-21 12:53:49', '2019-11-11 10:20:06'),
(11, 2, 0, 0, 'Make-up', 'columns', '', 'Make-up', '', 4, '2020-02-21 12:53:49', '2019-11-11 10:20:37'),
(12, 3, 0, 0, 'Kids Fashion', 'columns', '', 'Kids Fashion', '', 0, '2020-02-21 12:55:10', '2019-11-11 10:24:07'),
(13, 3, 0, 0, 'Women Fashion', 'columns', '', 'Women Fashion', '', 0, '2020-02-21 12:55:22', '2019-11-11 10:24:38'),
(14, 3, 0, 0, 'Men Fashion', 'columns', '', 'Men Fashion', '', 0, '2020-02-21 12:55:10', '2019-11-11 10:25:21'),
(15, 3, 0, 0, 'Food & Snacks', 'columns', '', 'Food & Snacks', '', 0, '2020-02-21 12:55:10', '2019-11-11 10:25:41'),
(16, 5, 0, 0, 'Editions', 'columns', '', 'Editions', '', 0, '2019-11-11 10:27:05', '2019-11-11 10:27:05'),
(17, 5, 0, 1, 'Training & Coaching', 'columns', '', 'Training & Coaching', '', 0, '2019-11-11 10:27:25', '2019-11-11 10:27:25'),
(18, 5, 0, 1, 'Counselling', 'columns', '', 'Counselling', '', 0, '2019-11-11 10:27:48', '2019-11-11 10:27:48'),
(19, 5, 0, 1, 'Real Estate', 'columns', '', 'Real Estate', '', 0, '2019-11-11 10:28:07', '2019-11-11 10:28:07'),
(20, 5, 0, 1, 'Jobs Agency', 'columns', '', 'Jobs Agency', '', 0, '2019-11-11 10:28:29', '2019-11-11 10:28:29'),
(21, 0, 0, 1, 'Gallery', 'columns', 'menu', 'Gallery', '', 6, '2020-02-21 13:53:01', '2020-02-21 13:50:50'),
(22, 0, 0, 1, 'Contact', 'columns', 'menu', 'Contact', '', 7, '2020-02-21 13:54:35', '2020-02-21 13:53:45'),
(23, 0, 0, 1, 'Faq', 'columns', 'menu', 'Faq', '', 8, '2020-02-21 13:55:08', '2020-02-21 13:55:08'),
(24, 0, 0, 1, '', 'columns', 'menu', 'Be-Be Services', '', 4, '2020-02-22 10:46:26', '2020-02-22 10:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_categories_info`
--

CREATE TABLE `zigisa_categories_info` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `h1_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_categories_info`
--

INSERT INTO `zigisa_categories_info` (`id`, `category_id`, `language_code`, `name`, `short_description`, `description`, `head_title`, `h1_title`, `meta_description`) VALUES
(1, 1, 'en', 'About Us', 'About Us', '<p>Founded by <strong>Patty Bebe</strong>, a Kamerunian Author and Entrepreneur, Be-Be Store is an online concept store primarily made to promote Author Patty BEBE’s work as well as a large selection of great books from talented African and Afro-descendants Authors. \r\n</p><p>We are to the extend, an Editions Start-up willing to give a room to new Authors, focused on African Writers.\r\n</p><p>To be complete according to market demand, we also offer some exclusive fashion and cosmetics items as well as accessories for your pleasure. \r\n</p><p>Furthermore, this is a secured online shopping gateway.\r\n</p><p>Our service allows users to follow our activities, browse, buy, comment, review…\r\n</p><p>We also offer ads banners against fees to event organizers, ticketing services, event’s promotion unless the event is free.\r\n</p><p>We are a Professional Customer Service Committed to Quality with 100% Satisfaction Guaranteed.\r\n</p><p><strong>You DREAMED It; We CREATED It!\r\n</strong></p>\r\n\r\n<p><strong><span style=\"background-color: rgb(242, 195, 20);\">Vision</span>\r\n</strong></p><p>We change the narrative by taking our place and making things happen with passion.\r\n</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong style=\"background-color: rgb(247, 150, 70);\">Mission\r\n</strong></p>\r\n\r\n<p>We aim to become by 2022 the BEST and UNIQUE online gateway to African literature, Authors and African Creative by offering to customers what the World has never thought about.\r\n</p><p>We stand for a new vision of African Narrative &amp; Civilization! \r\n</p>\r\n<br>', '', 'About Us', ''),
(2, 1, 'nl', 'My Projects', '', '', '', '', ''),
(3, 2, 'en', 'Shop', '', '', '', '', ''),
(4, 2, 'nl', 'Shop', '', '', '', '', ''),
(5, 3, 'en', 'Be-Be Editions', '', '<p>Are you an African or Afro-descendant dreaming to edit a book?\r\n</p><p>Do you dream of becoming a well-known author? Do you have a manuscript?\r\n</p><p>It has never been this easy and close to happen.\r\n</p><p><strong>For, Be-Be Editions is here right for you. \r\n</strong></p><p>We also offer online and in-class writing coaching to give you the skills you need to grow. \r\n</p><p>We will coach you to get the best out of you.\r\n</p><p>We will find the best price possible for editing your manuscript and transforming it into a book best-seller.\r\n</p><p>Millions of good writers keep their work in the drawers. Don\'t be one of them.\r\n</p><p>We commit to offer you the best publishing experience of your life.\r\n</p><p><strong>Your Success, Our Story!\r\n</strong></p><p>Contact us and let\'s make it together.  Now or never!\r\n</p>\r\n<br>', '', '', ''),
(6, 3, 'nl', 'Be-Be Editions', '', '', '', '', ''),
(7, 4, 'en', 'Ticketing & Events', '', '<p><strong>Be-Be Events</strong> promote your event wherever it is taking place.\r\n</p><p>We also manage tickets selling for your event against some fees. \r\n</p><p>By Subscribing, we guaranty you a premium priority. This allows you to advertise on the main banner for up to a month.\r\n</p><p><em>Any questions? Please contact us!\r\n</em></p>\r\n<br>', '', '', ''),
(8, 4, 'nl', 'Ticketing & Events', '', '', '', '', ''),
(9, 5, 'en', 'Be-Be Services Store', '', '', '', '', ''),
(10, 5, 'nl', 'Be-Be Services Store', '', '', '', '', ''),
(11, 6, 'en', 'Editions Be-Be', '', '', '', '', ''),
(12, 6, 'nl', 'Editions Be-Be', '', '', '', '', ''),
(13, 7, 'en', 'Actual Book', '', '', '', '', ''),
(14, 7, 'nl', 'Actual Book', '', '', '', '', ''),
(15, 8, 'en', 'Fashion & accessories ', '', '', '', '', ''),
(16, 8, 'nl', 'Skin Care', '', '', '', '', ''),
(17, 9, 'en', 'Books', '', '', '', '', ''),
(18, 9, 'nl', 'Books', '', '', '', '', ''),
(19, 10, 'en', 'Nail Care', '', '', '', '', ''),
(20, 10, 'nl', 'Nail Care', '', '', '', '', ''),
(21, 11, 'en', 'Make-up', '', '', '', '', ''),
(22, 11, 'nl', 'Make-up', '', '', '', '', ''),
(23, 12, 'en', 'Kids Fashion', '', '', '', '', ''),
(24, 12, 'nl', 'Kids Fashion', '', '', '', '', ''),
(25, 13, 'en', 'Women Fashion', '', '', '', '', ''),
(26, 13, 'nl', 'Women Fashion', '', '', '', '', ''),
(27, 14, 'en', 'Men Fashion', '', '', '', '', ''),
(28, 14, 'nl', 'Men Fashion', '', '', '', '', ''),
(29, 15, 'en', 'Food & Snacks', '', '', '', '', ''),
(30, 15, 'nl', 'Food & Snacks', '', '', '', '', ''),
(31, 16, 'en', 'Editions', '', '', '', '', ''),
(32, 16, 'nl', 'Editions', '', '', '', '', ''),
(33, 17, 'en', 'Training & Coaching', '', '', '', '', ''),
(34, 17, 'nl', 'Training & Coaching', '', '', '', '', ''),
(35, 18, 'en', 'Counselling', '', '', '', '', ''),
(36, 18, 'nl', 'Counselling', '', '', '', '', ''),
(37, 19, 'en', 'Real Estate', '', '', '', '', ''),
(38, 19, 'nl', 'Real Estate', '', '', '', '', ''),
(39, 20, 'en', 'Jobs Agency', '', '', '', '', ''),
(40, 20, 'nl', 'Jobs Agency', '', '', '', '', ''),
(41, 21, 'en', 'Gallery', '', '', '', '', ''),
(42, 21, 'nl', 'Gallery', '', '', '', '', ''),
(43, 22, 'en', 'Contact', '', '', '', '', ''),
(44, 22, 'nl', 'Contact', '', '', '', '', ''),
(45, 23, 'en', 'Faq', '', '', '', '', ''),
(46, 23, 'nl', 'Faq', '', '', '', '', ''),
(47, 24, 'en', 'Be-Be Services', '', '<p><strong>At Be-Be Services, we provide dedicated services tailored to  your needs.\r\n</strong></p><p><ul><li>\r\nAre you looking for a competitive yet high quality website for your business or organization? We have the right expertise for you.&nbsp;</li><li>Are you looking for a great Application or Software for your business or organization? We have the right expertise for you.&nbsp;</li><li>Do you need to enhance your employee’s skills? Our certified Trainers in Customer Care, Complains Management, Business Process Accuracy, Time Management and Reporting are ready for you with their expertise.&nbsp;</li><li>Do you have an event to plan (Conference, Date &amp; Dinner, Graduation, Wedding, Meeting, …) and want to impress your guests? We have the right expertise for you.&nbsp;</li><li>Do you need a competitive flight and hotel booking for your next trip in the World? We have the right expertise for you.&nbsp;</li></ul></p><p><span style=\"background-color: rgb(255, 230, 148);\">\r\n<strong>The ONLY thing you need to do is contacting us with your request. Our Team of Specialists is ready!</strong></span></p>', '', '', ''),
(48, 24, 'nl', 'Be-Be Services', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_countries`
--

CREATE TABLE `zigisa_countries` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `domestic_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `iso_code_1` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `iso_code_3` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `tax_id_format` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address_format` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `postcode_format` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `language_code` varchar(2) CHARACTER SET utf8 NOT NULL,
  `currency_code` varchar(3) CHARACTER SET utf8 NOT NULL,
  `phone_code` varchar(3) CHARACTER SET utf8 NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_countries`
--

INSERT INTO `zigisa_countries` (`id`, `status`, `name`, `domestic_name`, `iso_code_1`, `iso_code_2`, `iso_code_3`, `tax_id_format`, `address_format`, `postcode_format`, `postcode_required`, `language_code`, `currency_code`, `phone_code`, `date_updated`, `date_created`) VALUES
(1, 1, 'Afghanistan', '', '004', 'AF', 'AFG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fa', 'AFN', '93', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 1, 'Albania', '', '008', 'AL', 'ALB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sq', 'ALL', '355', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 1, 'Algeria', '', '012', 'DZ', 'DZA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'DZD', '213', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(4, 1, 'American Samoa', '', '016', 'AS', 'ASM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '96799', 0, 'en', 'USD', '168', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(5, 1, 'Andorra', '', '020', 'AD', 'AND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'AD[0-9]{3}', 0, 'ca', 'EUR', '376', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(6, 1, 'Angola', '', '024', 'AO', 'AGO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'AOA', '244', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(7, 1, 'Anguilla', '', '660', 'AI', 'AIA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '126', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(8, 1, 'Antarctica', '', '010', 'AQ', 'ATA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'XCD', '672', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(9, 1, 'Antigua and Barbuda', '', '028', 'AG', 'ATG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '126', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(10, 1, 'Argentina', '', '032', 'AR', 'ARG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([A-HJ-NP-Z])?[0-9]{4}([A-Z]{3})?', 0, 'es', 'ARS', '54', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(11, 1, 'Armenia', '', '051', 'AM', 'ARM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(37)?[0-9]{4}', 0, 'hy', 'AMD', '374', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(12, 1, 'Aruba', '', '533', 'AW', 'ABW', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'AWG', '297', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(13, 1, 'Australia', '', '036', 'AU', 'AUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'AUD', '61', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(14, 1, 'Austria', '', '040', 'AT', 'AUT', '^(AT)?U[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'de', 'EUR', '43', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(15, 1, 'Azerbaijan', '', '031', 'AZ', 'AZE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'az', 'AZN', '994', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(16, 1, 'Bahamas', '', '044', 'BS', 'BHS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BSD', '124', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(17, 1, 'Bahrain', '', '048', 'BH', 'BHR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '((1[0-2]|[2-9])[0-9]{2})?', 0, 'ar', 'BHD', '973', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(18, 1, 'Bangladesh', '', '050', 'BD', 'BGD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'bn', 'BDT', '880', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(19, 1, 'Barbados', '', '052', 'BB', 'BRB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(BB[0-9]{5})?', 0, 'en', 'BBD', '124', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(20, 1, 'Belarus', '', '112', 'BY', 'BLR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'be', 'BYR', '375', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(21, 1, 'Belgium', '', '056', 'BE', 'BEL', '^(BE)?0[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'nl', 'EUR', '32', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(22, 1, 'Belize', '', '084', 'BZ', 'BLZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BZD', '501', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(23, 1, 'Benin', '', '204', 'BJ', 'BEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '229', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(24, 1, 'Bermuda', '', '060', 'BM', 'BMU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[A-Z]{2}[ ]?[A-Z0-9]{2}', 0, 'en', 'BMD', '144', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(25, 1, 'Bhutan', '', '064', 'BT', 'BTN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'dz', 'BTN', '975', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(26, 1, 'Bolivia', '', '068', 'BO', 'BOL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'BOB', '591', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(27, 1, 'Bosnia and Herzegowina', '', '070', 'BA', 'BIH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'bs', 'BAM', '387', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(28, 1, 'Botswana', '', '072', 'BW', 'BWA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'BWP', '267', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(29, 1, 'Bouvet Island', '', '074', 'BV', 'BVT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'NOK', '47', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(30, 1, 'Brazil', '', '076', 'BR', 'BRA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}[\\-]?[0-9]{3}', 0, 'pt', 'BRL', '55', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(31, 1, 'British Indian Ocean Territory', '', '086', 'IO', 'IOT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'BBND 1ZZ', 0, 'en', 'USD', '246', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(32, 1, 'Brunei Darussalam', '', '096', 'BN', 'BRN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[A-Z]{2}[ ]?[0-9]{4}', 0, 'ms', 'BND', '673', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(33, 1, 'Bulgaria', '', '100', 'BG', 'BGR', '^(BG)?[0-9]{9,10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'bg', 'BGN', '359', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(34, 1, 'Burkina Faso', '', '854', 'BF', 'BFA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '226', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(35, 1, 'Burundi', '', '108', 'BI', 'BDI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'BIF', '257', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(36, 1, 'Cambodia', '', '116', 'KH', 'KHM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'km', 'KHR', '855', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(37, 1, 'Cameroon', '', '120', 'CM', 'CMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XAF', '237', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(38, 1, 'Canada', '', '124', 'CA', 'CAN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJ-NPRSTV-Z][ ]?[0-9][ABCEGHJ-NPRSTV-Z][0-9]', 0, 'en', 'CAD', '1', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(39, 1, 'Cape Verde', '', '132', 'CV', 'CPV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'pt', 'CVE', '238', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(40, 1, 'Cayman Islands', '', '136', 'KY', 'CYM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'KYD', '134', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(41, 1, 'Central African Republic', '', '140', 'CF', 'CAF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '236', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(42, 1, 'Chad', '', '148', 'TD', 'TCD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '235', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(43, 1, 'Chile', '', '152', 'CL', 'CHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'CLP', '56', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(44, 1, 'China', '', '156', 'CN', 'CHN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'zh', 'CNY', '86', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(45, 1, 'Christmas Island', '', '162', 'CX', 'CXR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '6798', 0, 'en', 'AUD', '61', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(46, 1, 'Cocos (Keeling) Islands', '', '166', 'CC', 'CCK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '6799', 0, 'ms', 'AUD', '61', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(47, 1, 'Colombia', '', '170', 'CO', 'COL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'COP', '57', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(48, 1, 'Comoros', '', '174', 'KM', 'COM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'KMF', '269', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(49, 1, 'Congo', '', '178', 'CG', 'COG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '242', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(50, 1, 'Cook Islands', '', '184', 'CK', 'COK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'NZD', '682', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(51, 1, 'Costa Rica', '', '188', 'CR', 'CRI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4,5}|[0-9]{3}-[0-9]{4}', 0, 'es', 'CRC', '506', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(52, 1, 'Cote D\'Ivoire', '', '384', 'CI', 'CIV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '225', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(53, 1, 'Croatia', '', '191', 'HR', 'HRV', '^(HR)?[0-9]{11}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'hr', 'HRK', '385', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(54, 1, 'Cuba', '', '192', 'CU', 'CUB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'CUP', '53', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(55, 1, 'Cyprus', '', '196', 'CY', 'CYP', '^(CY)?[0-9]{8}L$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'el', 'EUR', '357', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(56, 1, 'Czech Republic', '', '203', 'CZ', 'CZE', '^(CZ)?[0-9]{8,10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'cs', 'CZK', '420', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(57, 1, 'Denmark', '', '208', 'DK', 'DNK', '^(DK)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'da', 'DKK', '45', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(58, 1, 'Djibouti', '', '262', 'DJ', 'DJI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'DJF', '253', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(59, 1, 'Dominica', '', '212', 'DM', 'DMA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '176', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(60, 1, 'Dominican Republic', '', '214', 'DO', 'DOM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'DOP', '180', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(61, 1, 'East Timor', '', '626', 'TP', 'TMP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, '', 'USD', '670', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(62, 1, 'Ecuador', '', '218', 'EC', 'ECU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([A-Z][0-9]{4}[A-Z]|(?:[A-Z]{2})?[0-9]{6})?', 0, 'es', 'ECS', '593', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(63, 1, 'Egypt', '', '818', 'EG', 'EGY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'EGP', '20', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(64, 1, 'El Salvador', '', '222', 'SV', 'SLV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'SVC', '503', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(65, 1, 'Equatorial Guinea', '', '226', 'GQ', 'GNQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'XAF', '240', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(66, 1, 'Eritrea', '', '232', 'ER', 'ERI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'aa', 'ERN', '291', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(67, 1, 'Estonia', '', '233', 'EE', 'EST', '^(EE)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'et', 'EUR', '372', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(68, 1, 'Ethiopia', '', '231', 'ET', 'ETH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'am', 'ETB', '251', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(69, 1, 'Falkland Islands (Malvinas)', '', '238', 'FK', 'FLK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'FIQQ 1ZZ', 0, 'en', 'FKP', '500', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(70, 1, 'Faroe Islands', '', '234', 'FO', 'FRO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'fo', 'DKK', '298', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(71, 1, 'Fiji', '', '242', 'FJ', 'FJI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'FJD', '679', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(72, 1, 'Finland', '', '246', 'FI', 'FIN', '^(FI)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'fi', 'EUR', '358', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(73, 1, 'France', '', '250', 'FR', 'FRA', '^(FR)?[0-9A-Z]{2}[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{2}[ ]?[0-9]{3}', 0, 'fr', 'EUR', '33', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(75, 1, 'French Guiana', '', '254', 'GF', 'GUF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]3[0-9]{2}', 0, 'fr', 'EUR', '594', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(76, 1, 'French Polynesia', '', '258', 'PF', 'PYF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '987[0-9]{2}', 0, 'fr', 'XPF', '689', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(77, 1, 'French Southern Territories', '', '260', 'TF', 'ATF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'EUR', '262', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(78, 1, 'Gabon', '', '266', 'GA', 'GAB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '241', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(79, 1, 'Gambia', '', '270', 'GM', 'GMB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GMD', '220', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(80, 1, 'Georgia', '', '268', 'GE', 'GEO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ka', 'GEL', '995', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(81, 1, 'Germany', '', '276', 'DE', 'DEU', '^(DE)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'de', 'EUR', '49', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(82, 1, 'Ghana', '', '288', 'GH', 'GHA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GHS', '233', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(83, 1, 'Gibraltar', '', '292', 'GI', 'GIB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GIP', '350', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(84, 1, 'Greece', '', '300', 'GR', 'GRC', '^(EL|GR)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'el', 'EUR', '30', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(85, 1, 'Greenland', '', '304', 'GL', 'GRL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '39[0-9]{2}', 0, 'kl', 'DKK', '299', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(86, 1, 'Grenada', '', '308', 'GD', 'GRD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '147', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(87, 1, 'Guadeloupe', '', '312', 'GP', 'GLP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78][01][0-9]{2}', 0, 'fr', 'EUR', '590', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(88, 1, 'Guam', '', '316', 'GU', 'GUM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '969[123][0-9]([ \\-][0-9]{4})?', 0, 'en', 'USD', '167', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(89, 1, 'Guatemala', '', '320', 'GT', 'GTM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'QTQ', '502', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(90, 1, 'Guinea', '', '324', 'GN', 'GIN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'fr', 'GNF', '224', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(91, 1, 'Guinea-bissau', '', '624', 'GW', 'GNB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'pt', 'GWP', '245', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(92, 1, 'Guyana', '', '328', 'GY', 'GUY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'GYD', '592', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(93, 1, 'Haiti', '', '332', 'HT', 'HTI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ht', 'HTG', '509', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(94, 1, 'Heard and McDonald Islands', '', '334', 'HM', 'HMD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, '', 'AUD', '0', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(95, 1, 'Honduras', '', '340', 'HN', 'HND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(?:[0-9]{5})?', 0, 'es', 'HNL', '504', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(96, 1, 'Hong Kong', '', '344', 'HK', 'HKG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'zh', 'HKD', '852', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(97, 1, 'Hungary', '', '348', 'HU', 'HUN', '^(HU)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'hu', 'HUF', '36', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(98, 1, 'Iceland', '', '352', 'IS', 'ISL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'is', 'ISK', '354', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(99, 1, 'India', '', '356', 'IN', 'IND', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'en', 'INR', '91', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(100, 1, 'Indonesia', '', '360', 'ID', 'IDN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'id', 'IDR', '62', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(101, 1, 'Iran, Islamic Republic of', '', '364', 'IR', 'IRN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fa', 'IRR', '98', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(102, 1, 'Iraq', '', '368', 'IQ', 'IRQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'IQD', '964', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(103, 1, 'Ireland', '', '372', 'IE', 'IRL', '^(IE)?[0-9]S[0-9]{5}L$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'EUR', '353', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(104, 1, 'Israel', '', '376', 'IL', 'ISR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'he', 'ILS', '972', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(105, 1, 'Italy', '', '380', 'IT', 'ITA', '^(IT)?[0-9]{11}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'it', 'EUR', '39', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(106, 1, 'Jamaica', '', '388', 'JM', 'JAM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'JMD', '187', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(107, 1, 'Japan', '', '392', 'JP', 'JPN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}-[0-9]{4}', 0, 'ja', 'JPY', '81', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(108, 1, 'Jordan', '', '400', 'JO', 'JOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'JOD', '962', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(109, 1, 'Kazakhstan', '', '398', 'KZ', 'KAZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'kk', 'KZT', '7', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(110, 1, 'Kenya', '', '404', 'KE', 'KEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'en', 'KES', '254', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(111, 1, 'Kiribati', '', '296', 'KI', 'KIR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'AUD', '686', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(112, 1, 'North Korea', '', '408', 'KP', 'PRK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ko', 'KPW', '850', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(113, 1, 'Korea, Republic of', '', '410', 'KR', 'KOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[\\-][0-9]{3}', 0, 'ko', 'KRW', '82', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(114, 1, 'Kuwait', '', '414', 'KW', 'KWT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'KWD', '965', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(115, 1, 'Kyrgyzstan', '', '417', 'KG', 'KGZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'ky', 'KGS', '996', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(116, 1, 'Lao People\'s Democratic Republic', '', '418', 'LA', 'LAO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'lo', 'LAK', '856', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(117, 1, 'Latvia', '', '428', 'LV', 'LVA', '^(LV)?[0-9]{11}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'lv', 'LVL', '371', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(118, 1, 'Lebanon', '', '422', 'LB', 'LBN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([0-9]{4}([ ]?[0-9]{4})?)?', 0, 'ar', 'LBP', '961', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(119, 1, 'Lesotho', '', '426', 'LS', 'LSO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'en', 'LSL', '266', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(120, 1, 'Liberia', '', '430', 'LR', 'LBR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'LRD', '231', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(121, 1, 'Libyan Arab Jamahiriya', '', '434', 'LY', 'LBY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'LYD', '218', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(122, 1, 'Liechtenstein', '', '438', 'LI', 'LIE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(948[5-9])|(949[0-7])', 0, 'de', 'CHF', '423', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(123, 1, 'Lithuania', '', '440', 'LT', 'LTU', '^(LT)?([0-9]{9}|[0-9]{12})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'lt', 'LTL', '370', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(124, 1, 'Luxembourg', '', '442', 'LU', 'LUX', '^(LU)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'lb', 'EUR', '352', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(125, 1, 'Macau', '', '446', 'MO', 'MAC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'zh', 'MOP', '853', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(126, 1, 'Macedonia', '', '807', 'MK', 'MKD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'mk', 'MKD', '389', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(127, 1, 'Madagascar', '', '450', 'MG', 'MDG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'fr', 'MGF', '261', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(128, 1, 'Malawi', '', '454', 'MW', 'MWI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ny', 'MWK', '265', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(129, 1, 'Malaysia', '', '458', 'MY', 'MYS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ms', 'MYR', '60', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(130, 1, 'Maldives', '', '462', 'MV', 'MDV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'dv', 'MVR', '960', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(131, 1, 'Mali', '', '466', 'ML', 'MLI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '223', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(132, 1, 'Malta', '', '470', 'MT', 'MLT', '^(MT)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'mt', 'EUR', '356', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(133, 1, 'Marshall Islands', '', '584', 'MH', 'MHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '969[67][0-9]([ \\-][0-9]{4})?', 0, 'mh', 'USD', '692', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(134, 1, 'Martinique', '', '474', 'MQ', 'MTQ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]2[0-9]{2}', 0, 'fr', 'EUR', '596', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(135, 1, 'Mauritania', '', '478', 'MR', 'MRT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'MRO', '222', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(136, 1, 'Mauritius', '', '480', 'MU', 'MUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([0-9]{3}[A-Z]{2}[0-9]{3})?', 0, 'en', 'MUR', '230', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(137, 1, 'Mayotte', '', '175', 'YT', 'MYT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '976[0-9]{2}', 0, 'fr', 'EUR', '262', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(138, 1, 'Mexico', '', '484', 'MX', 'MEX', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'MXN', '52', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(139, 1, 'Micronesia, Federated States of', '', '583', 'FM', 'FSM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(9694[1-4])([ \\-][0-9]{4})?', 0, 'en', 'USD', '691', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(140, 1, 'Moldova, Republic of', '', '498', 'MD', 'MDA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ro', 'MDL', '373', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(141, 1, 'Monaco', '', '492', 'MC', 'MCO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '980[0-9]{2}', 0, 'fr', 'EUR', '377', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(142, 1, 'Mongolia', '', '496', 'MN', 'MNG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'mn', 'MNT', '976', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(143, 1, 'Montserrat', '', '500', 'MS', 'MSR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '166', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(144, 1, 'Morocco', '', '504', 'MA', 'MAR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'MAD', '212', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(145, 1, 'Mozambique', '', '508', 'MZ', 'MOZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'MZN', '258', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(146, 1, 'Myanmar', '', '104', 'MM', 'MMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'my', 'MMK', '95', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(147, 1, 'Namibia', '', '516', 'NA', 'NAM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NAD', '264', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(148, 1, 'Nauru', '', '520', 'NR', 'NRU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'na', 'AUD', '674', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(149, 1, 'Nepal', '', '524', 'NP', 'NPL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ne', 'NPR', '977', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(150, 1, 'Netherlands', '', '528', 'NL', 'NLD', '^(NL)?[0-9]{9}B[0-9]{2}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[1-9][0-9]{3} ?[a-zA-Z]{2}', 0, 'nl', 'EUR', '31', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(151, 1, 'Netherlands Antilles', '', '530', 'AN', 'ANT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'ANG', '599', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(152, 1, 'New Caledonia', '', '540', 'NC', 'NCL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '988[0-9]{2}', 0, 'fr', 'XPF', '687', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(153, 1, 'New Zealand', '', '554', 'NZ', 'NZL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'en', 'NZD', '64', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(154, 1, 'Nicaragua', '', '558', 'NI', 'NIC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(([0-9]{4}-)?[0-9]{3}-[0-9]{3}(-[0-9]{1})?)?', 0, 'es', 'NIO', '505', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(155, 1, 'Niger', '', '562', 'NE', 'NER', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'fr', 'XOF', '227', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(156, 1, 'Nigeria', '', '566', 'NG', 'NGA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '([0-9]{6})?', 0, 'en', 'NGN', '234', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(157, 1, 'Niue', '', '570', 'NU', 'NIU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NZD', '683', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(158, 1, 'Norfolk Island', '', '574', 'NF', 'NFK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '2899', 0, 'en', 'AUD', '672', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(159, 1, 'Northern Mariana Islands', '', '580', 'MP', 'MNP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9695[012]([ \\-][0-9]{4})?', 0, 'tl', 'USD', '167', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(160, 1, 'Norway', '', '578', 'NO', 'NOR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'nb', 'NOK', '47', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(161, 1, 'Oman', '', '512', 'OM', 'OMN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(PC )?[0-9]{3}', 0, 'ar', 'OMR', '968', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(162, 1, 'Pakistan', '', '586', 'PK', 'PAK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ur', 'PKR', '92', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(163, 1, 'Palau', '', '585', 'PW', 'PLW', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '96940', 0, 'en', 'USD', '680', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(164, 1, 'Panama', '', '591', 'PA', 'PAN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'PAB', '507', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(165, 1, 'Papua New Guinea', '', '598', 'PG', 'PNG', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}', 0, 'en', 'PGK', '675', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(166, 1, 'Paraguay', '', '600', 'PY', 'PRY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'es', 'PYG', '595', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(167, 1, 'Peru', '', '604', 'PE', 'PER', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'es', 'PEN', '51', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(168, 1, 'Philippines', '', '608', 'PH', 'PHL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'tl', 'PHP', '63', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(169, 1, 'Pitcairn', '', '612', 'PN', 'PCN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'PCRN 1ZZ', 0, 'en', 'NZD', '870', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(170, 1, 'Poland', '', '616', 'PL', 'POL', '^(PL)?[0-9]{10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{2}-[0-9]{3}', 0, 'pl', 'PLN', '48', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(171, 1, 'Portugal', '', '620', 'PT', 'PRT', '^(PT)?[0-9]{9}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}([\\-][0-9]{3})?', 0, 'pt', 'EUR', '351', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(172, 1, 'Puerto Rico', '', '630', 'PR', 'PRI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '00[679][0-9]{2}([ \\-][0-9]{4})?', 0, 'en', 'USD', '1', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(173, 1, 'Qatar', '', '634', 'QA', 'QAT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'QAR', '974', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(174, 1, 'Reunion', '', '638', 'RE', 'REU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]4[0-9]{2}', 0, 'fr', 'EUR', '262', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(175, 1, 'Romania', '', '642', 'RO', 'ROM', '^(RO)?[0-9]{2,10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'ro', 'RON', '40', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(176, 1, 'Russian Federation', '', '643', 'RU', 'RUS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'ru', 'RUB', '7', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(177, 1, 'Rwanda', '', '646', 'RW', 'RWA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'rw', 'RWF', '250', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(178, 1, 'Saint Kitts and Nevis', '', '659', 'KN', 'KNA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '186', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(179, 1, 'Saint Lucia', '', '662', 'LC', 'LCA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '175', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(180, 1, 'Saint Vincent and the Grenadines', '', '670', 'VC', 'VCT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'XCD', '178', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(181, 1, 'Samoa', '', '882', 'WS', 'WSM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sm', 'WST', '685', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(182, 1, 'San Marino', '', '674', 'SM', 'SMR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '4789[0-9]', 0, 'it', 'EUR', '378', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(183, 1, 'Sao Tome and Principe', '', '678', 'ST', 'STP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'pt', 'STD', '239', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(184, 1, 'Saudi Arabia', '', '682', 'SA', 'SAU', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'ar', 'SAR', '966', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(185, 1, 'Senegal', '', '686', 'SN', 'SEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'fr', 'XOF', '221', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(186, 1, 'Seychelles', '', '690', 'SC', 'SYC', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SCR', '248', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(187, 1, 'Sierra Leone', '', '694', 'SL', 'SLE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SLL', '232', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(188, 1, 'Singapore', '', '702', 'SG', 'SGP', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'en', 'SGD', '65', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(189, 1, 'Slovak Republic', '', '703', 'SK', 'SVK', '^(SK)?[0-9]{10}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'sk', 'EUR', '421', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(190, 1, 'Slovenia', '', '705', 'SI', 'SVN', '^(SI)?[0-9]{8}$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'sl', 'EUR', '386', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(191, 1, 'Solomon Islands', '', '090', 'SB', 'SLB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'SBD', '677', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(192, 1, 'Somalia', '', '706', 'SO', 'SOM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'so', 'SOS', '252', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(193, 1, 'South Africa', '', '710', 'ZA', 'ZAF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'zu', 'ZAR', '27', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(194, 1, 'South Georgia and South Sandwich Islands', '', '239', 'GS', 'SGS', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'SIQQ 1ZZ', 0, 'en', 'GBP', '500', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(195, 1, 'Spain', '', '724', 'ES', 'ESP', '^(ES)?[0-9A-Z][0-9]{7}[0-9A-Z]$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'EUR', '34', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(196, 1, 'Sri Lanka', '', '144', 'LK', 'LKA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'si', 'LKR', '94', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(197, 1, 'St. Helena', '', '654', 'SH', 'SHN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '(ASCN|STHL) 1ZZ', 0, 'en', 'SHP', '290', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(198, 1, 'St. Pierre and Miquelon', '', '666', 'PM', 'SPM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '9[78]5[0-9]{2}', 0, 'fr', 'EUR', '508', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(199, 1, 'Sudan', '', '729', 'SD', 'SDN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'SDG', '249', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(200, 1, 'Suriname', '', '740', 'SR', 'SUR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'nl', 'SRD', '597', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(201, 1, 'Svalbard and Jan Mayen Islands', '', '744', 'SJ', 'SJM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'no', 'NOK', '47', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(202, 1, 'Swaziland', '', '748', 'SZ', 'SWZ', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[HLMS][0-9]{3}', 0, 'en', 'SZL', '268', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(203, 1, 'Sweden', '', '752', 'SE', 'SWE', '^(SE)?(16|19|20)?[0-9]{6}-?[0-9]{4}?(01)?$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}[ ]?[0-9]{2}', 0, 'sv', 'SEK', '46', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(204, 1, 'Switzerland', '', '756', 'CH', 'CHE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'de', 'CHF', '41', '2019-11-11 00:49:30', '2019-11-11 00:49:30');
INSERT INTO `zigisa_countries` (`id`, `status`, `name`, `domestic_name`, `iso_code_1`, `iso_code_2`, `iso_code_3`, `tax_id_format`, `address_format`, `postcode_format`, `postcode_required`, `language_code`, `currency_code`, `phone_code`, `date_updated`, `date_created`) VALUES
(205, 1, 'Syrian Arab Republic', '', '760', 'SY', 'SYR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'SYP', '963', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(206, 1, 'Taiwan', '', '158', 'TW', 'TWN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{3}([0-9]{2})?', 0, 'zh', 'TWD', '886', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(207, 1, 'Tajikistan', '', '762', 'TJ', 'TJK', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'tg', 'TJS', '992', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(208, 1, 'Tanzania, United Republic of', '', '834', 'TZ', 'TZA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sw', 'TZS', '255', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(209, 1, 'Thailand', '', '764', 'TH', 'THA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'th', 'THB', '66', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(210, 1, 'Togo', '', '768', 'TG', 'TGO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XOF', '228', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(211, 1, 'Tokelau', '', '772', 'TK', 'TKL', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'NZD', '690', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(212, 1, 'Tonga', '', '776', 'TO', 'TON', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'to', 'TOP', '676', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(213, 1, 'Trinidad and Tobago', '', '780', 'TT', 'TTO', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'TTD', '186', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(214, 1, 'Tunisia', '', '788', 'TN', 'TUN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'ar', 'TND', '216', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(215, 1, 'Turkey', '', '792', 'TR', 'TUR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'tr', 'TRY', '90', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(216, 1, 'Turkmenistan', '', '795', 'TM', 'TKM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'tk', 'TMT', '993', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(217, 1, 'Turks and Caicos Islands', '', '796', 'TC', 'TCA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', 'TKCA 1ZZ', 0, 'en', 'USD', '164', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(218, 1, 'Tuvalu', '', '798', 'TV', 'TUV', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'AUD', '688', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(219, 1, 'Uganda', '', '800', 'UG', 'UGA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'UGX', '256', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(220, 1, 'Ukraine', '', '804', 'UA', 'UKR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'uk', 'UAH', '380', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(221, 1, 'United Arab Emirates', '', '784', 'AE', 'ARE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'AED', '971', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(222, 1, 'United Kingdom', '', '826', 'GB', 'GBR', '^(GB)?([0-9]{9}([0-9]{3})?|[A-Z]{2}[0-9]{3})$', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[a-zA-Z]{1,2}[0-9][0-9a-zA-Z]? ?[0-9][a-zA-Z]{2}', 1, 'en', 'GBP', '44', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(223, 1, 'United States', '', '840', 'US', 'USA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}([ \\-][0-9]{4})?', 0, 'en', 'USD', '1', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(224, 1, 'United States Minor Outlying Islands', '', '581', 'UM', 'UMI', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'USD', '1', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(225, 1, 'Uruguay', '', '858', 'UY', 'URY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'es', 'UYU', '598', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(226, 1, 'Uzbekistan', '', '860', 'UZ', 'UZB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{6}', 0, 'uz', 'UZS', '998', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(227, 1, 'Vanuatu', '', '548', 'VU', 'VUT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'bi', 'VUV', '678', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(228, 1, 'Vatican City State (Holy See)', '', '336', 'VA', 'VAT', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '00120', 0, 'la', 'EUR', '39', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(229, 1, 'Venezuela', '', '862', 'VE', 'VEN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{4}', 0, 'es', 'VEF', '58', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(230, 1, 'Viet Nam', '', '704', 'VN', 'VNM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'vi', 'VND', '84', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(231, 1, 'Virgin Islands (British)', '', '092', 'VG', 'VGB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'USD', '128', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(232, 1, 'Virgin Islands (U.S.)', '', '850', 'VI', 'VIR', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '008(([0-4][0-9])|(5[01]))([ \\-][0-9]{4})?', 0, 'en', 'USD', '134', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(233, 1, 'Wallis and Futuna Islands', '', '876', 'WF', 'WLF', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '986[0-9]{2}', 0, 'fr', 'XPF', '681', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(234, 1, 'Western Sahara', '', '732', 'EH', 'ESH', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'MAD', '212', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(235, 1, 'Yemen', '', '887', 'YE', 'YEM', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'ar', 'YER', '967', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(236, 1, 'Serbia', '', '381', 'RS', 'SRB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sr', 'RSD', '381', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(237, 1, 'Democratic Republic of Congo', '', '180', 'CD', 'COD', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'fr', 'XAF', '243', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(238, 1, 'Zambia', '', '894', 'ZM', 'ZMB', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '[0-9]{5}', 0, 'en', 'ZMW', '260', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(239, 1, 'Zimbabwe', '', '716', 'ZW', 'ZWE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', 'ZWD', '263', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(240, 1, 'Guernsey', '', '831', 'GG', 'GGY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '44', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(241, 1, 'Montenegro', '', '499', 'ME', 'MNE', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '382', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(242, 1, 'Jersey', '', '832', 'JE', 'JEY', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '44', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(243, 1, 'Isle of Man', '', '833', 'IM', 'IMN', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'en', '', '44', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(244, 1, 'Åland Islands', '', '248', 'AX', 'ALA', '', '%company\r\n%firstname %lastname\r\n%address1\r\n%address2\r\n%postcode %city\r\n%zone_name\r\n%country_name', '', 0, 'sv', 'EUR', '358', '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_currencies`
--

CREATE TABLE `zigisa_currencies` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `number` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `value` decimal(11,6) NOT NULL,
  `decimals` tinyint(1) NOT NULL,
  `prefix` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `suffix` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_currencies`
--

INSERT INTO `zigisa_currencies` (`id`, `status`, `code`, `number`, `name`, `value`, `decimals`, `prefix`, `suffix`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'USD', '840', 'US Dollars', '1.059700', 2, '$', '', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 1, 'EUR', '978', 'Euros', '1.000000', 2, '', ' €', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_customers`
--

CREATE TABLE `zigisa_customers` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `tax_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `different_shipping_address` tinyint(1) NOT NULL,
  `shipping_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `notes` text COLLATE utf8_swedish_ci NOT NULL,
  `password_reset_token` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_delivery_statuses`
--

CREATE TABLE `zigisa_delivery_statuses` (
  `id` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_delivery_statuses`
--

INSERT INTO `zigisa_delivery_statuses` (`id`, `date_updated`, `date_created`) VALUES
(1, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_delivery_statuses_info`
--

CREATE TABLE `zigisa_delivery_statuses_info` (
  `id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_delivery_statuses_info`
--

INSERT INTO `zigisa_delivery_statuses_info` (`id`, `delivery_status_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', '1-3 days', ''),
(2, 2, 'en', '3-5 days', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_geo_zones`
--

CREATE TABLE `zigisa_geo_zones` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_geo_zones`
--

INSERT INTO `zigisa_geo_zones` (`id`, `code`, `name`, `description`, `date_updated`, `date_created`) VALUES
(1, '', 'NL VAT Zone', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, '', 'EU VAT Zone', 'European Union excl. NL', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, '', 'European Union', 'All countries in the European Union', '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_languages`
--

CREATE TABLE `zigisa_languages` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `code2` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `locale` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `charset` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `raw_date` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `raw_time` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `raw_datetime` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_date` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_time` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `format_datetime` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `decimal_point` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `thousands_sep` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_languages`
--

INSERT INTO `zigisa_languages` (`id`, `status`, `code`, `code2`, `name`, `locale`, `charset`, `raw_date`, `raw_time`, `raw_datetime`, `format_date`, `format_time`, `format_datetime`, `decimal_point`, `thousands_sep`, `currency_code`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'en', 'eng', 'English', 'en_US.utf8,en_US.UTF-8,english', 'UTF-8', 'm/d/y', 'h:i:s A', 'm/d/y h:i:s A', '%b %e %Y', '%I:%M %p', '%b %e %Y %I:%M %p', '.', ',', '', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 1, 'nl', 'ned', 'Nederlands', 'nl_NL.utf8,nl_NL.UTF-8,dutch', 'UTF-8', 'Y-m-d', 'H:i', 'Y-m-d H:i', '%b %e %Y', '%H:%M', '%b %e %Y %H:%M', ',', ' ', '', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_manufacturers`
--

CREATE TABLE `zigisa_manufacturers` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_manufacturers_info`
--

CREATE TABLE `zigisa_manufacturers_info` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `h1_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_modules`
--

CREATE TABLE `zigisa_modules` (
  `id` int(11) NOT NULL,
  `module_id` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `settings` text COLLATE utf8_swedish_ci NOT NULL,
  `last_log` text COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_modules`
--

INSERT INTO `zigisa_modules` (`id`, `module_id`, `type`, `status`, `priority`, `settings`, `last_log`, `date_updated`, `date_created`) VALUES
(1, 'ot_subtotal', 'order_total', 1, 1, '{\"status\":\"1\",\"priority\":\"1\"}', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 'ot_shipping_fee', 'order_total', 1, 20, '{\"status\":\"1\",\"free_shipping_amount\":\"0\",\"priority\":\"20\"}', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 'ot_payment_fee', 'order_total', 1, 30, '{\"status\":\"1\",\"priority\":\"30\"}', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(4, 'job_error_reporter', 'job', 1, 0, '{\"status\":\"1\",\"report_frequency\":\"Weekly\",\"email_receipient\":\"\",\"priority\":\"0\"}', '######################################################\n# job_error_reporter executed at 2020-02-25 09:42:35 #\n######################################################\nNothing to report\n########################\n# Completed in 0.001 s #\n########################\n', '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_option_groups`
--

CREATE TABLE `zigisa_option_groups` (
  `id` int(11) NOT NULL,
  `function` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  `sort` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_option_groups_info`
--

CREATE TABLE `zigisa_option_groups_info` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_option_values`
--

CREATE TABLE `zigisa_option_values` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_option_values_info`
--

CREATE TABLE `zigisa_option_values_info` (
  `id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_orders`
--

CREATE TABLE `zigisa_orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(13) COLLATE utf8_swedish_ci NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `customer_phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `customer_tax_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `customer_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `customer_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `customer_postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `customer_country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `customer_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_company` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_firstname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_lastname` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address1` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_address2` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_city` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_postcode` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_option_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_option_name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `shipping_tracking_id` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `payment_option_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `payment_option_name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `payment_transaction_id` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `weight_total` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `currency_value` decimal(11,6) NOT NULL,
  `payment_due` decimal(11,4) NOT NULL,
  `tax_total` decimal(11,4) NOT NULL,
  `client_ip` varchar(39) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_orders_comments`
--

CREATE TABLE `zigisa_orders_comments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `author` enum('system','staff','customer') COLLATE utf8_swedish_ci NOT NULL,
  `text` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_orders_items`
--

CREATE TABLE `zigisa_orders_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_stock_combination` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `options` varchar(4096) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `price` decimal(11,4) NOT NULL,
  `tax` decimal(11,4) NOT NULL,
  `weight` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_orders_totals`
--

CREATE TABLE `zigisa_orders_totals` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `module_id` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `value` decimal(11,4) NOT NULL,
  `tax` decimal(11,4) NOT NULL,
  `calculate` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_order_statuses`
--

CREATE TABLE `zigisa_order_statuses` (
  `id` int(11) NOT NULL,
  `icon` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_swedish_ci NOT NULL,
  `is_sale` tinyint(1) NOT NULL,
  `is_archived` tinyint(1) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_order_statuses`
--

INSERT INTO `zigisa_order_statuses` (`id`, `icon`, `color`, `is_sale`, `is_archived`, `notify`, `priority`, `date_updated`, `date_created`) VALUES
(1, 'fa-money', '#c0c0c0', 0, 0, 0, 1, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 'fa-clock-o', '#d7d96f', 1, 0, 0, 2, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 'fa-cog', '#ffa851', 1, 0, 0, 3, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(4, 'fa-truck', '#99cc66', 1, 1, 0, 4, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(5, 'fa-times', '#ff6666', 0, 1, 0, 5, '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_order_statuses_info`
--

CREATE TABLE `zigisa_order_statuses_info` (
  `id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `email_subject` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `email_message` varchar(2048) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_order_statuses_info`
--

INSERT INTO `zigisa_order_statuses_info` (`id`, `order_status_id`, `language_code`, `name`, `description`, `email_subject`, `email_message`) VALUES
(1, 1, 'en', 'Awaiting payment', '', '', ''),
(2, 2, 'en', 'Pending', '', '', ''),
(3, 3, 'en', 'Processing', '', '', ''),
(4, 4, 'en', 'Dispatched', '', '', ''),
(5, 5, 'en', 'Cancelled', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_pages`
--

CREATE TABLE `zigisa_pages` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dock` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_pages`
--

INSERT INTO `zigisa_pages` (`id`, `status`, `dock`, `priority`, `date_updated`, `date_created`) VALUES
(1, 1, 'information', 1, '2020-02-21 07:30:08', '2019-11-11 07:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_pages_info`
--

CREATE TABLE `zigisa_pages_info` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `content` mediumtext COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_pages_info`
--

INSERT INTO `zigisa_pages_info` (`id`, `page_id`, `language_code`, `title`, `content`, `head_title`, `meta_description`) VALUES
(1, 1, 'en', 'About Us', '<p>Be-Be is a Cameroon-based start-up created by the Cameroon-born Author and Businesswoman Patty Bebe in order to promote her work and vision in a unique platform.\r\n</p><p>From Editions to Fashion, from Entertainment to Services, the website pattybebe.com gives you a ticket entry into a beautiful yet user friendly environment where One click takes you to a journey of all possibilities. Furthermore, it is a secured online shopping gateway.\r\n</p><p>Our service allows users to follow the Author’s activities updates, browse, buy, create and promote local products and events. The service charges a fee to event organizers in exchange for online advertisement and ticketing services, unless the event is free. <strong>You DREAMED It ; We CREATE It !\r\n</strong></p><br>', 'About Us', 'About Us'),
(2, 1, 'nl', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products`
--

CREATE TABLE `zigisa_products` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `delivery_status_id` int(11) NOT NULL,
  `sold_out_status_id` int(11) NOT NULL,
  `default_category_id` int(11) NOT NULL,
  `product_groups` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `keywords` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `mpn` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `upc` varchar(24) COLLATE utf8_swedish_ci NOT NULL COMMENT 'Deprecated, use GTIN',
  `gtin` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `taric` varchar(16) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `quantity_unit_id` int(1) NOT NULL,
  `weight` decimal(10,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `dim_x` decimal(10,4) NOT NULL,
  `dim_y` decimal(10,4) NOT NULL,
  `dim_z` decimal(10,4) NOT NULL,
  `dim_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `purchase_price` decimal(10,4) NOT NULL,
  `purchase_price_currency_code` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `views` int(11) NOT NULL,
  `purchases` int(11) NOT NULL,
  `date_valid_from` date NOT NULL,
  `date_valid_to` date NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_products`
--

INSERT INTO `zigisa_products` (`id`, `status`, `manufacturer_id`, `supplier_id`, `delivery_status_id`, `sold_out_status_id`, `default_category_id`, `product_groups`, `keywords`, `code`, `sku`, `mpn`, `upc`, `gtin`, `taric`, `quantity`, `quantity_unit_id`, `weight`, `weight_class`, `dim_x`, `dim_y`, `dim_z`, `dim_class`, `purchase_price`, `purchase_price_currency_code`, `tax_class_id`, `image`, `views`, `purchases`, `date_valid_from`, `date_valid_to`, `date_updated`, `date_created`) VALUES
(1, 1, 0, 0, 1, 1, 4, '', '', '', '', '', '', '', '', '0.0000', 1, '0.0000', 'kg', '0.0000', '0.0000', '0.0000', 'cm', '10.0000', 'EUR', 1, 'products/1-designing-a-sustainable-future-1.jpg', 3, 0, '0000-00-00', '0000-00-00', '2020-02-22 11:04:29', '2020-02-22 10:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products_campaigns`
--

CREATE TABLE `zigisa_products_campaigns` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products_images`
--

CREATE TABLE `zigisa_products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `filename` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `checksum` char(32) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_products_images`
--

INSERT INTO `zigisa_products_images` (`id`, `product_id`, `filename`, `checksum`, `priority`) VALUES
(1, 1, 'products/1-designing-a-sustainable-future-1.jpg', '9baa7000d5ee75e0762e4705c95c37b0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products_info`
--

CREATE TABLE `zigisa_products_info` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `short_description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `head_title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `meta_description` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `attributes` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_products_info`
--

INSERT INTO `zigisa_products_info` (`id`, `product_id`, `language_code`, `name`, `short_description`, `description`, `head_title`, `meta_description`, `attributes`) VALUES
(1, 1, 'en', 'Designing a Sustainable Future', 'Designing a Sustainable Future', '<p>Designing a Sustainable Future</p>', '', '', ''),
(2, 1, 'nl', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products_options`
--

CREATE TABLE `zigisa_products_options` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `price_operator` varchar(1) COLLATE utf8_swedish_ci NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products_options_stock`
--

CREATE TABLE `zigisa_products_options_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `combination` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `weight` decimal(11,4) NOT NULL,
  `weight_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `dim_x` decimal(11,4) NOT NULL,
  `dim_y` decimal(11,4) NOT NULL,
  `dim_z` decimal(11,4) NOT NULL,
  `dim_class` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` decimal(11,4) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products_prices`
--

CREATE TABLE `zigisa_products_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `USD` decimal(11,4) NOT NULL,
  `EUR` decimal(11,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_products_prices`
--

INSERT INTO `zigisa_products_prices` (`id`, `product_id`, `USD`, `EUR`) VALUES
(1, 1, '0.0000', '10.0000');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_products_to_categories`
--

CREATE TABLE `zigisa_products_to_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_products_to_categories`
--

INSERT INTO `zigisa_products_to_categories` (`product_id`, `category_id`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_product_groups`
--

CREATE TABLE `zigisa_product_groups` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_product_groups_info`
--

CREATE TABLE `zigisa_product_groups_info` (
  `id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_product_groups_values`
--

CREATE TABLE `zigisa_product_groups_values` (
  `id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_product_groups_values_info`
--

CREATE TABLE `zigisa_product_groups_values_info` (
  `id` int(11) NOT NULL,
  `product_group_value_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_quantity_units`
--

CREATE TABLE `zigisa_quantity_units` (
  `id` int(11) NOT NULL,
  `decimals` tinyint(1) NOT NULL,
  `separate` tinyint(1) NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_quantity_units`
--

INSERT INTO `zigisa_quantity_units` (`id`, `decimals`, `separate`, `priority`, `date_updated`, `date_created`) VALUES
(1, 0, 0, 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_quantity_units_info`
--

CREATE TABLE `zigisa_quantity_units_info` (
  `id` int(11) NOT NULL,
  `quantity_unit_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_quantity_units_info`
--

INSERT INTO `zigisa_quantity_units_info` (`id`, `quantity_unit_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', 'pcs', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_settings`
--

CREATE TABLE `zigisa_settings` (
  `id` int(11) NOT NULL,
  `setting_group_key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `type` enum('global','local') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'local',
  `key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_swedish_ci NOT NULL,
  `value` varchar(8192) COLLATE utf8_swedish_ci NOT NULL,
  `function` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_settings`
--

INSERT INTO `zigisa_settings` (`id`, `setting_group_key`, `type`, `key`, `title`, `description`, `value`, `function`, `priority`, `date_updated`, `date_created`) VALUES
(1, '', 'global', 'platform_database_version', 'Platform Database Version', 'The platform version of the database', '2.1.6', '', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 'store_info', 'global', 'store_name', 'Store Name', 'The name of your store.', 'Patty Bebe', 'input()', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 'store_info', 'global', 'store_email', 'Store Email', 'The store e-mail address.', 'info@pattybebe.com', 'input()', 11, '2019-11-11 10:33:28', '2019-11-11 00:49:30'),
(4, 'store_info', 'local', 'store_tax_id', 'Store Tax ID', 'The store tax ID or VATIN.', 'XX000000000000', 'input()', 12, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(5, 'store_info', 'local', 'store_postal_address', 'Store Postal Address', 'The store postal address.', 'Be-Be Store\r\nTel. and WhatsApps symbol: +31621210858\r\nInstagram symbol: Iampattybebe\r\nContacts: info@pattybebe.com', 'bigtext()', 13, '2019-11-11 14:13:02', '2019-11-11 00:49:30'),
(6, 'store_info', 'local', 'store_visiting_address', 'Store Visiting Address', 'The store visiting address if applicable.', '', 'bigtext()', 14, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(7, 'store_info', 'local', 'store_phone', 'Store Phone Number', 'The store phone number.', '+31621210858', 'input()', 15, '2019-11-11 10:33:48', '2019-11-11 00:49:30'),
(8, 'store_info', 'global', 'store_country_code', 'Store Country', 'The country of your store.', 'NL', 'countries()', 16, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(9, 'store_info', 'global', 'store_timezone', 'Store Time Zone', 'The store time zone.', 'Europe/Amsterdam', 'timezones()', 17, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(10, 'store_info', 'local', 'store_language_code', 'Store Language', 'The spoken language of your organization.', 'en', 'languages()', 18, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(11, 'store_info', 'global', 'store_currency_code', 'Store Currency', 'The currency of which all prices conform to.', 'EUR', 'currencies()', 19, '2020-02-22 11:02:34', '2019-11-11 00:49:30'),
(12, 'store_info', 'global', 'store_zone_code', 'Store Zone', 'The zone of your store.', '', 'zones()', 20, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(13, 'store_info', 'global', 'store_weight_class', 'Store Weight Class', 'The prefered weight class.', 'kg', 'weight_classes()', 21, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(14, 'store_info', 'global', 'store_length_class', 'Store Length Class', 'The prefered length class.', 'cm', 'length_classes()', 22, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(15, 'defaults', 'global', 'default_language_code', 'Default Language', 'The default language selected, if failed to identify.', 'en', 'languages()', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(16, 'defaults', 'global', 'default_currency_code', 'Default Currency', 'The default currency selected, if failed to identify.', 'EUR', 'currencies()', 11, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(17, 'defaults', 'global', 'default_country_code', 'Default Country', 'The default country selected if not set otherwise.', 'GF', 'countries()', 12, '2019-11-11 10:34:38', '2019-11-11 00:49:30'),
(18, 'defaults', 'global', 'default_zone_code', 'Default Zone', 'The default zone selected if not set otherwise.', '', 'zones()', 13, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(19, 'defaults', 'local', 'default_tax_class_id', 'Default Tax Class', 'Default tax class that will be preset when creating new products.', '1', 'tax_classes()', 14, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(20, 'defaults', 'global', 'default_display_prices_including_tax', 'Default Display Prices Including Tax', 'Displays prices including tax by default.', '1', 'toggle()', 15, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(21, 'defaults', 'global', 'default_quantity_unit_id', 'Default Quantity Unit', 'Default quantity unit that will be preset when creating new products.', '1', 'quantity_units()', 16, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(22, 'defaults', 'global', 'default_sold_out_status_id', 'Default Sold Out Status', 'Default sold out status that will be preset when creating new products.', '1', 'sold_out_statuses()', 17, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(23, 'defaults', 'global', 'default_delivery_status_id', 'Default Delivery Status', 'Default delivery status that will be preset when creating new products.', '1', 'delivery_statuses()', 18, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(24, 'email', 'local', 'smtp_status', 'SMTP Enabled', 'Wheither or not to use an SMTP server for delivering email.', '0', 'toggle(\"e/d\")', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(25, 'email', 'local', 'smtp_host', 'SMTP Host', 'SMTP hostname e.g. smtp.myprovider.com.', 'localhost', 'input()', 11, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(26, 'email', 'local', 'smtp_port', 'SMTP Port', 'SMTP port e.g. 25, 465 (SSL/TLS), or 587 (STARTTLS).', '25', 'number()', 12, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(27, 'email', 'local', 'smtp_username', 'SMTP Username', 'Username for SMTP authentication.', '', 'input()', 13, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(28, 'email', 'local', 'smtp_password', 'SMTP Password', 'Password for SMTP authentication.', '', 'password()', 14, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(29, 'listings', 'global', 'maintenance_mode', 'Maintenance Mode', 'Setting the store in maintenance mode will prevent users from browsing your site.', '0', 'toggle()', 2, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(30, 'listings', 'global', 'catalog_only_mode', 'Catalog Only Mode', 'Disables the cart and checkout features leaving only a browsable catalog.', '0', 'toggle(\"t/f\")', 1, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(31, 'listings', 'local', 'items_per_page', 'Items Per Page', 'The number of items to be displayed per page.', '20', 'int()', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(32, 'listings', 'local', 'data_table_rows_per_page', 'Data Table Rows', 'The number of data table rows per page.', '25', 'input()', 11, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(33, 'listings', 'local', 'display_stock_count', 'Display Stock Count', 'Show the available amounts of products in stock.', '1', 'toggle()', 12, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(34, 'listings', 'local', 'display_cheapest_shipping', 'Cheapest Shipping', 'Display the cheapest shipping cost on product page.', '1', 'toggle()', 13, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(35, 'listings', 'local', 'new_products_max_age', 'Max Age for New Products', 'Display the new sticker for products younger than the give age. E.g. 1 month or 14 days', '1 month', 'input()', 14, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(36, 'listings', 'local', 'box_similar_products_num_items', 'Similar Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '10', 'int()', 15, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(37, 'listings', 'local', 'box_recently_viewed_products_num_items', 'Recently Viewed Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '4', 'int()', 16, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(38, 'listings', 'local', 'box_latest_products_num_items', 'Latest Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '10', 'int()', 17, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(39, 'listings', 'local', 'box_popular_products_num_items', 'Popular Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '10', 'int()', 18, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(40, 'listings', 'local', 'box_campaign_products_num_items', 'Campaign Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '5', 'int()', 19, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(41, 'listings', 'local', 'box_also_purchased_products_num_items', 'Also Purchased Products Box: Number of Items', 'The maximum amount of items to be display in the box.', '4', 'int()', 20, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(42, 'listings', 'local', 'auto_decimals', 'Auto Decimals', 'Show only decimals if there are any to display.', '1', 'toggle(\"e/d\")', 20, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(43, 'images', 'global', 'cache_clear_thumbnails', 'Clear Thumbnails Cache', 'Remove all cached image thumbnails from disk.', '0', 'toggle()', 1, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(44, 'images', 'local', 'category_image_ratio', 'Category Images: Aspect Ratio', 'The aspect ratio of the category thumbnails', '2:3', 'select(\"1:1\",\"2:3\",\"3:2\",\"3:4\",\"4:3\",\"16:9\")', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(45, 'images', 'local', 'category_image_clipping', 'Category Images: Clipping Method', 'The clipping method used for scaled category thumbnails.', 'CROP', 'select(\"CROP\",\"FIT\",\"FIT_USE_WHITESPACING\")', 11, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(46, 'images', 'local', 'product_image_ratio', 'Product Images: Aspect Ratio', 'The aspect ratio of the product thumbnails', '1:1', 'select(\"1:1\",\"2:3\",\"3:2\",\"3:4\",\"4:3\",\"16:9\")', 30, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(47, 'images', 'local', 'product_image_clipping', 'Product Images: Clipping Method', 'The clipping method used for scaled product thumbnails.', 'FIT_USE_WHITESPACING', 'select(\"CROP\",\"FIT\",\"FIT_USE_WHITESPACING\")', 31, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(48, 'images', 'local', 'product_image_trim', 'Product Images: Trim Whitespace', 'Trim whitespace before generating thumbnail images.', '0', 'toggle(\"y/n\")', 33, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(49, 'images', 'local', 'product_image_watermark', 'Product Images: Watermark', 'Watermark product images with the store logo.', '0', 'toggle(\"y/n\")', 34, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(50, 'images', 'local', 'image_downsample_size', 'Downsample', 'Downsample large uploaded images to best fit within the given dimensions of \"width,height\" or leave empty. Default: 2048,2048', '2048,2048', 'smallinput()', 34, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(51, 'images', 'local', 'image_quality', 'Image Quality', 'The JPEG quality for uploaded images (0-100). Default: 90', '90', 'int()', 40, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(52, 'images', 'local', 'image_thumbnail_quality', 'Thumbnail Quality', 'The JPEG quality for thumbnail images (0-100). Default: 65', '65', 'int()', 41, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(53, 'images', 'local', 'image_thumbnail_interlaced', 'Interlaced Thumbnails', 'Generate interlaced thumbnail images for progressive loading. Increases the filesize by 10-20% but improves user experience.', '0', 'toggle()', 42, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(54, 'images', 'local', 'image_whitespace_color', 'Whitespace Color', 'Set the color of any generated whitespace to the given RGB value. Default: 255,255,255', '255,255,255', 'smallinput()', 43, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(55, 'checkout', 'local', 'register_guests', 'Register Guests', 'Force guests to create an account.', '0', 'toggle()', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(56, 'checkout', 'local', 'email_order_copy', 'Order Copy Recipients', 'Send order copies to the following e-mail addresses. Separate by semi-colons.', 'info@zigisa.com', 'mediumtext()', 12, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(57, 'checkout', 'global', 'round_amounts', 'Round Amounts', 'Round currency amounts to prevent hidden decimals.', '1', 'toggle()', 13, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(58, 'advanced', 'global', 'cache_enabled', 'System Cache Enabled', 'Enables the system cache module which caches frequently used data.', '0', 'toggle()', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(59, 'advanced', 'global', 'cache_clear', 'Clear System Cache', 'Remove all cached system information.', '0', 'toggle()', 11, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(60, 'advanced', 'global', 'seo_links_language_prefix', 'SEO Links Language Prefix', 'Precede links with language code e.g. /en/....', '1', 'toggle()', 13, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(61, 'advanced', 'global', 'regional_settings_screen_enabled', 'Regional Settings Screen', 'Enables the regional settings screen upon first visit.', '0', 'toggle()', 14, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(62, 'advanced', 'global', 'gzip_enabled', 'GZIP Enabled', 'Compresses browser data. Increases the load on the server but decreases the bandwidth.', '1', 'toggle()', 15, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(63, 'advanced', 'global', 'jobs_last_run', 'Jobs Last Run', 'Time when background jobs where last executed.', '2020-02-25 09:42:35', 'input()', 16, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(64, 'advanced', 'local', 'jobs_interval', 'Jobs Interval', 'The amount of minutes between each execution of jobs.', '60', 'int()', 17, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(65, 'advanced', 'local', 'database_admin_link', 'Database Admin Link', 'The URL to your database manager e.g. phpMyAdmin.', '?app=settings&doc=advanced&action=edit&key=database_admin_link', 'input()', 18, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(66, 'advanced', 'local', 'webmail_link', 'Webmail Link', 'The URL to your webmail client.', '?app=settings&doc=advanced&action=edit&key=webmail_link', 'input()', 19, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(67, 'advanced', 'global', 'seo_links_enabled', 'SEO Links Enabled', 'Enabling this requires .htaccess and mod_rewrite rules.', '1', 'toggle()', 20, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(68, 'security', 'global', 'security_blacklist', 'Blacklist', 'Deny blacklisted clients access to the site.', '0', 'toggle(\"e/d\")', 10, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(69, 'security', 'global', 'security_session_hijacking', 'Session Hijacking Protection', 'Destroy sessions that were signed for a different IP address and user agent.', '0', 'toggle(\"e/d\")', 11, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(70, 'security', 'global', 'security_http_post', 'HTTP POST Protection', 'Deny incoming HTTP POST data from external sites by checking for valid form tickets.', '0', 'toggle(\"e/d\")', 12, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(71, 'security', 'global', 'security_bot_trap', 'Bad Bot Trap', 'Catch bad behaving bots from crawling your website by setting up a trap.', '0', 'toggle(\"e/d\")', 13, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(72, 'security', 'global', 'security_xss', 'Cross-site Scripting (XSS) Detection', 'Detect common XSS attacks and deny access to the site.', '1', 'toggle(\"e/d\")', 14, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(73, 'security', 'global', 'security_bad_urls', 'Bad URLs Access Detection', 'Detect access to commonly attacked URLs.', '1', 'toggle(\"e/d\")', 15, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(74, 'security', 'local', 'captcha_enabled', 'CAPTCHA', 'Prevent robots from posting form data by enabling CAPTCHA security.', '1', 'toggle()', 16, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(75, '', 'global', 'store_template_catalog', 'Catalog Template', '', 'default.catalog', 'templates(\"catalog\")', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(76, '', 'global', 'store_template_catalog_settings', 'Catalog Template Settings', '', '{\"product_modal_window\":\"1\",\"sidebar_parallax_effect\":\"1\",\"cookie_acceptance\":\"1\"}', 'smalltext()', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(77, '', 'global', 'store_template_admin', 'Admin Template', '', 'default.admin', 'templates(\"admin\")', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(78, '', 'global', 'jobs_last_push', 'Jobs Last Push', 'Time when background jobs where last pushed for execution.', '2020-02-25 09:42:35', 'input()', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(79, '', 'local', 'cache_system_breakpoint', 'Date Cache Cleared', 'Do not use system cache older than breakpoint.', '2020-02-22 11:04:29', 'input()', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(80, '', 'local', 'job_error_reporter:last_run', 'Errors Last Reported', 'Time when errors where last reported by the background job.', '2020-02-25 09:42:35', 'input()', 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_settings_groups`
--

CREATE TABLE `zigisa_settings_groups` (
  `id` int(11) NOT NULL,
  `key` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_settings_groups`
--

INSERT INTO `zigisa_settings_groups` (`id`, `key`, `name`, `description`, `priority`) VALUES
(1, 'store_info', 'Store Info', 'Store information', 10),
(2, 'defaults', 'Defaults', 'Store default settings', 20),
(3, 'email', 'Email', 'Email and SMTP', 30),
(4, 'listings', 'Listings', 'Settings for the catalog listing', 40),
(5, 'images', 'Images', 'Settings for graphical elements', 50),
(6, 'checkout', 'Checkout', 'Checkout settings', 60),
(7, 'advanced', 'Advanced', 'Advanced settings', 70),
(8, 'security', 'Security', 'Site security and protection against threats', 80);

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_slides`
--

CREATE TABLE `zigisa_slides` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `languages` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `priority` tinyint(2) NOT NULL,
  `date_valid_from` datetime NOT NULL,
  `date_valid_to` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_slides`
--

INSERT INTO `zigisa_slides` (`id`, `status`, `languages`, `name`, `image`, `priority`, `date_valid_from`, `date_valid_to`, `date_updated`, `date_created`) VALUES
(2, 1, '', 'PattyBebe', 'slides/2-pattybebe.jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-11 13:12:25', '2019-11-11 13:07:18'),
(3, 1, '', 'PattyBebe', 'slides/3-pattybebe.jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-11 13:10:00', '2019-11-11 13:10:00'),
(4, 1, '', 'PattyBebe', 'slides/4-pattybebe.jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-11 13:13:09', '2019-11-11 13:13:09'),
(5, 1, '', 'PattyBebe', 'slides/5-pattybebe.jpg', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-11-11 14:15:51', '2019-11-11 14:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_slides_info`
--

CREATE TABLE `zigisa_slides_info` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `caption` text COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_slides_info`
--

INSERT INTO `zigisa_slides_info` (`id`, `slide_id`, `language_code`, `caption`, `link`) VALUES
(4, 2, 'nl', '', ''),
(3, 2, 'en', '<p>PattyBebe</p>', ''),
(5, 3, 'en', '', ''),
(6, 3, 'nl', '', ''),
(7, 4, 'en', '<p>PattyBebe</p>', ''),
(8, 4, 'nl', '', ''),
(9, 5, 'en', '<p>PattyBebe</p>', ''),
(10, 5, 'nl', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_sold_out_statuses`
--

CREATE TABLE `zigisa_sold_out_statuses` (
  `id` int(11) NOT NULL,
  `orderable` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_sold_out_statuses`
--

INSERT INTO `zigisa_sold_out_statuses` (`id`, `orderable`, `date_updated`, `date_created`) VALUES
(1, 0, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 1, '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 1, '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_sold_out_statuses_info`
--

CREATE TABLE `zigisa_sold_out_statuses_info` (
  `id` int(11) NOT NULL,
  `sold_out_status_id` int(11) NOT NULL,
  `language_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_sold_out_statuses_info`
--

INSERT INTO `zigisa_sold_out_statuses_info` (`id`, `sold_out_status_id`, `language_code`, `name`, `description`) VALUES
(1, 1, 'en', 'Sold Out', ''),
(2, 2, 'en', 'Temporary Sold Out', ''),
(3, 3, 'en', 'Backorder Item', '');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_suppliers`
--

CREATE TABLE `zigisa_suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` text COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(256) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_tax_classes`
--

CREATE TABLE `zigisa_tax_classes` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_tax_classes`
--

INSERT INTO `zigisa_tax_classes` (`id`, `code`, `name`, `description`, `date_updated`, `date_created`) VALUES
(1, '', 'High', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, '', 'Low', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, '', '0% tariff', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_tax_rates`
--

CREATE TABLE `zigisa_tax_rates` (
  `id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `rate` decimal(10,4) NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'percent',
  `address_type` enum('shipping','payment') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'shipping',
  `customer_type` enum('individuals','companies','both') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'both',
  `tax_id_rule` enum('with','without','both') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'both',
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_tax_rates`
--

INSERT INTO `zigisa_tax_rates` (`id`, `tax_class_id`, `geo_zone_id`, `code`, `name`, `description`, `rate`, `type`, `address_type`, `customer_type`, `tax_id_rule`, `date_updated`, `date_created`) VALUES
(1, 1, 1, '', 'NL VAT 21%', '', '21.0000', 'percent', 'shipping', 'both', 'both', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 1, 2, '', 'NL VAT 21%', '', '21.0000', 'percent', 'shipping', 'individuals', 'both', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 1, 2, '', 'NL VAT 21%', '', '21.0000', 'percent', 'shipping', 'companies', 'without', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(4, 2, 1, '', 'NL VAT 6%', '', '6.0000', 'percent', 'shipping', 'both', 'both', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(5, 2, 2, '', 'NL VAT 6%', '', '6.0000', 'percent', 'shipping', 'individuals', 'both', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(6, 2, 2, '', 'NL VAT 6%', '', '6.0000', 'percent', 'shipping', 'companies', 'without', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(7, 3, 1, '', 'NL VAT 0%', '', '0.0000', 'percent', 'shipping', 'both', 'both', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(8, 3, 2, '', 'NL VAT 0%', '', '0.0000', 'percent', 'shipping', 'individuals', 'both', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(9, 3, 2, '', 'NL VAT 0%', '', '0.0000', 'percent', 'shipping', 'companies', 'without', '2019-11-11 00:49:30', '2019-11-11 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_translations`
--

CREATE TABLE `zigisa_translations` (
  `id` int(11) NOT NULL,
  `code` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `text_en` text COLLATE utf8_swedish_ci NOT NULL,
  `text_nl` text COLLATE utf8_swedish_ci NOT NULL,
  `html` tinyint(1) NOT NULL,
  `frontend` tinyint(1) NOT NULL,
  `backend` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_translations`
--

INSERT INTO `zigisa_translations` (`id`, `code`, `text_en`, `text_nl`, `html`, `frontend`, `backend`, `date_updated`, `date_created`) VALUES
(1, 'title_home', 'Home', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(2, 'template:title_product_modal_window', 'Product Modal Window', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(3, 'template:description_product_modal_window', 'Enables or disables the product modal window.', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(4, 'template:title_sidebar_parallax_effect', 'Sidebar Parallax Effect', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(5, 'template:description_sidebar_parallax_effect', 'Enables or disables the sidebar parallax effect.', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(6, 'template:title_compact_category_tree', 'Compact Category Tree', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(7, 'template:description_compact_category_tree', 'Hide the other categories while browsing a category branch.', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(8, 'template:title_cookie_acceptance', 'Cookie Acceptance', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(9, 'template:description_cookie_acceptance', 'Enables or disables the cookie acceptance notice.', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(10, 'index:head_title', 'Online Store', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(11, 'index:meta_description', '', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(12, 'title_categories', 'Categories', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(13, 'title_popular_products', 'Popular Products', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(14, 'title_latest_products', 'Latest Products', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(15, 'title_change', 'Change', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(16, 'title_shopping_cart', 'Shopping Cart', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(17, 'text_items', 'item(s)', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(18, 'text_search_products', 'Search products', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(19, 'title_sign_in', 'Sign In', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(20, 'title_email_address', 'Email Address', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(21, 'title_password', 'Password', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(22, 'text_new_customers_click_here', 'New customers click here', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(23, 'text_lost_your_password', 'Lost your password?', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(24, 'title_account', 'Account', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(25, 'title_customer_service', 'Customer Service', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(26, 'title_regional_settings', 'Regional Settings', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(27, 'title_create_account', 'Create Account', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(28, 'title_login', 'Login', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(29, 'title_information', 'Information', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(30, 'title_contact', 'Contact', '', 0, 1, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(31, 'job_error_reporter:title_status', 'Status', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(32, 'job_error_reporter:description_status', 'Enables or disables the module.', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(33, 'job_error_reporter:title_report_frequency', 'Report Frequency', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(34, 'job_error_reporter:description_report_frequency', 'How often the reports should be sent.', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(35, 'job_error_reporter:title_working_hours', 'Working Hours', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(36, 'job_error_reporter:description_working_hours', 'During what hours of the day the job would operate e.g. 07:00-21:00.', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(37, 'job_error_reporter:title_email_recipient', 'Email Recipient', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(38, 'job_error_reporter:description_email_recipient', 'The email address where reports will be sent.', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(39, 'job_error_reporter:title_priority', 'Priority', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(40, 'job_error_reporter:description_priority', 'Process this module in the given priority order.', '', 0, 0, 0, '2019-11-11 07:50:21', '2019-11-11 07:50:21'),
(41, 'title_username', 'Username', '', 0, 1, 0, '2019-11-11 07:50:28', '2019-11-11 07:50:28'),
(42, 'title_remember_me', 'Remember Me', '', 0, 1, 0, '2019-11-11 07:50:28', '2019-11-11 07:50:28'),
(43, 'success_now_logged_in_as', 'You are now logged in as %username', '', 0, 0, 0, '2019-11-11 07:50:52', '2019-11-11 07:50:52'),
(44, 'title_admin_panel', 'Admin Panel', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(45, 'title_appearance', 'Appearance', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(46, 'title_template', 'Template', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(47, 'title_logotype', 'Logotype', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(48, 'title_catalog', 'Catalog', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(49, 'title_product_groups', 'Product Groups', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(50, 'title_option_groups', 'Option Groups', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(51, 'title_manufacturers', 'Manufacturers', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(52, 'title_suppliers', 'Suppliers', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(53, 'title_delivery_statuses', 'Delivery Statuses', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(54, 'title_sold_out_statuses', 'Sold Out Statuses', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(55, 'title_quantity_units', 'Quantity Units', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(56, 'title_csv_import_export', 'CSV Import/Export', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(57, 'title_countries', 'Countries', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(58, 'title_currencies', 'Currencies', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(59, 'title_customers', 'Customers', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(60, 'title_newsletter', 'Newsletter', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(61, 'title_geo_zones', 'Geo Zones', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(62, 'title_languages', 'Languages', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(63, 'title_storage_encoding', 'Storage Encoding', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(64, 'title_modules', 'Modules', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(65, 'title_customer_modules', 'Customer Modules', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(66, 'title_shipping_modules', 'Shipping Modules', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(67, 'title_payment_modules', 'Payment Modules', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(68, 'title_order_modules', 'Order Modules', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(69, 'title_order_total_modules', 'Order Total Modules', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(70, 'title_job_modules', 'Job Modules', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(71, 'title_orders', 'Orders', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(72, 'title_order_statuses', 'Order Statuses', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(73, 'title_pages', 'Pages', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(74, 'title_reports', 'Reports', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(75, 'title_monthly_sales', 'Monthly Sales', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(76, 'title_most_sold_products', 'Most Sold Products', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(77, 'title_most_shopping_customers', 'Most Shopping Customers', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(78, 'title_settings', 'Settings', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(79, 'settings_group:title_store_info', 'Store Info', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(80, 'settings_group:title_defaults', 'Defaults', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(81, 'settings_group:title_email', 'Email', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(82, 'settings_group:title_listings', 'Listings', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(83, 'settings_group:title_images', 'Images', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(84, 'settings_group:title_checkout', 'Checkout', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(85, 'settings_group:title_advanced', 'Advanced', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(86, 'settings_group:title_security', 'Security', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(87, 'title_slides', 'Slides', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(88, 'title_tax', 'Tax', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(89, 'title_tax_rates', 'Tax Rates', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(90, 'title_tax_classes', 'Tax Classes', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(91, 'title_translations', 'Translations', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(92, 'title_search_translations', 'Search Translations', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(93, 'title_scan_files', 'Scan Files', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(94, 'title_users', 'Users', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(95, 'title_vqmods', 'vQmods', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(96, 'title_addons', 'Add-ons', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(97, 'title_discussions', 'Discussions', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(98, 'title_graphs', 'Graphs', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(99, 'title_statistics', 'Statistics', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(100, 'title_daily_sales', 'Daily Sales', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(101, 'title_total_sales', 'Total Sales', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(102, 'title_total_number_of_customers', 'Total Number of Customers', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(103, 'title_total_number_of_orders', 'Total Number of Orders', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(104, 'title_monthly_average_number_of_orders', 'Monthly Average Number of Orders', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(105, 'title_average_order_amount', 'Average Order Amount', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(106, 'title_highest_order_amount', 'Highest Order Amount', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(107, 'title_id', 'ID', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(108, 'title_customer', 'Customer', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(109, 'title_order_status', 'Order Status', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(110, 'title_amount', 'Amount', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(111, 'title_date', 'Date', '', 0, 1, 0, '2019-11-11 07:50:53', '2019-11-11 07:50:53'),
(112, 'title_latest_addons', 'Latest Add-ons', '', 0, 1, 0, '2019-11-11 07:50:54', '2019-11-11 07:50:54'),
(113, 'title_most_recent_forum_topics', 'Most Recent Forum Topics', '', 0, 1, 0, '2019-11-11 07:50:55', '2019-11-11 07:50:55'),
(114, 'text_by', 'by', '', 0, 1, 0, '2019-11-11 07:50:55', '2019-11-11 07:50:55'),
(115, 'title_webmail', 'Webmail', '', 0, 1, 0, '2019-11-11 07:50:55', '2019-11-11 07:50:55'),
(116, 'title_database_manager', 'Database Manager', '', 0, 1, 0, '2019-11-11 07:50:55', '2019-11-11 07:50:55'),
(117, 'text_logout', 'Logout', '', 0, 1, 0, '2019-11-11 07:50:55', '2019-11-11 07:50:55'),
(118, 'title_search', 'Search', '', 0, 1, 0, '2019-11-11 07:50:55', '2019-11-11 07:50:55'),
(119, 'title_total', 'Total', '', 0, 0, 0, '2019-11-11 07:51:22', '2019-11-11 07:51:22'),
(120, 'text_search_phrase_or_keyword', 'Search phrase or keyword', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(121, 'title_add_new_category', 'Add New Category', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(122, 'title_add_new_product', 'Add New Product', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(123, 'title_name', 'Name', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(124, 'title_root', 'Root', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(125, 'title_products', 'Products', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(126, 'text_with_selected', 'With selected', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(127, 'title_enable', 'Enable', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(128, 'title_disable', 'Disable', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(129, 'title_select', 'Select', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(130, 'title_move', 'Move', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(131, 'warning_mounting_points_will_be_replaced', 'Warning: All current mounting points will be replaced.', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(132, 'title_copy', 'Copy', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(133, 'title_duplicate', 'Duplicate', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(134, 'title_unmount', 'Unmount', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(135, 'title_delete', 'Delete', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(136, 'text_are_you_sure', 'Are you sure?', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(137, 'title_help', 'Help', '', 0, 1, 0, '2019-11-11 07:52:44', '2019-11-11 07:52:44'),
(138, 'title_general', 'General', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(139, 'title_status', 'Status', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(140, 'title_enabled', 'Enabled', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(141, 'title_disabled', 'Disabled', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(142, 'title_parent_category', 'Parent Category', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(143, 'title_google_taxonomy_id', 'Google Taxonomy ID', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(144, 'title_dock', 'Dock', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(145, 'text_dock_in_menu', 'Dock in top menu', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(146, 'text_dock_in_tree', 'Dock in category tree', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(147, 'title_priority', 'Priority', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(148, 'title_code', 'Code', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(149, 'title_list_style', 'List Style', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(150, 'title_columns', 'Columns', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(151, 'title_rows', 'Rows', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(152, 'title_keywords', 'Keywords', '', 0, 1, 0, '2019-11-11 07:52:57', '2019-11-11 07:52:57'),
(153, 'title_image', 'Image', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(154, 'title_h1_title', 'H1 Title', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(155, 'title_short_description', 'Short Description', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(156, 'title_description', 'Description', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(157, 'title_head_title', 'Head Title', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(158, 'title_meta_description', 'Meta Description', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(159, 'title_save', 'Save', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(160, 'title_cancel', 'Cancel', '', 0, 1, 0, '2019-11-11 07:52:58', '2019-11-11 07:52:58'),
(161, 'success_changes_saved', 'Changes saved successfully', '', 0, 0, 0, '2019-11-11 07:53:57', '2019-11-11 07:53:57'),
(162, 'title_edit', 'Edit', '', 0, 1, 0, '2019-11-11 07:53:58', '2019-11-11 07:53:58'),
(163, 'title_edit_category', 'Edit Category', '', 0, 1, 0, '2019-11-11 07:55:31', '2019-11-11 07:55:31'),
(164, 'title_date_updated', 'Date Updated', '', 0, 1, 0, '2019-11-11 07:55:32', '2019-11-11 07:55:32'),
(165, 'title_date_created', 'Date Created', '', 0, 1, 0, '2019-11-11 07:55:32', '2019-11-11 07:55:32'),
(166, 'title_create_new_page', 'Create New Page', '', 0, 1, 0, '2019-11-11 07:55:58', '2019-11-11 07:55:58'),
(167, 'title_title', 'Title', '', 0, 1, 0, '2019-11-11 07:55:58', '2019-11-11 07:55:58'),
(168, 'error_must_select_pages', 'You must select pages', '', 0, 1, 0, '2019-11-11 07:56:03', '2019-11-11 07:56:03'),
(169, 'title_create_new_pages', 'Create New Page', '', 0, 1, 0, '2019-11-11 07:56:17', '2019-11-11 07:56:17'),
(170, 'text_dock_in_dock_menu', 'Dock in site menu', '', 0, 1, 0, '2019-11-11 07:56:17', '2019-11-11 07:56:17'),
(171, 'text_dock_in_customer_service', 'Dock in customer service', '', 0, 1, 0, '2019-11-11 07:56:17', '2019-11-11 07:56:17'),
(172, 'text_dock_in_information', 'Dock in information', '', 0, 1, 0, '2019-11-11 07:56:17', '2019-11-11 07:56:17'),
(173, 'title_content', 'Content', '', 0, 1, 0, '2019-11-11 07:56:17', '2019-11-11 07:56:17'),
(174, 'title_edit_page', 'Edit Page', '', 0, 1, 0, '2019-11-11 07:57:17', '2019-11-11 07:57:17'),
(175, 'title_empty', 'Empty', '', 0, 1, 0, '2019-11-11 10:31:10', '2019-11-11 10:31:10'),
(176, 'error_missing_dock', 'You must select a dock.', '', 0, 1, 0, '2019-11-11 10:32:13', '2019-11-11 10:32:13'),
(177, 'title_key', 'Key', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(178, 'title_value', 'Value', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(179, 'settings_key:title_store_name', 'Store Name', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(180, 'settings_key:description_store_name', 'The name of your store.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(181, 'settings_key:title_store_email', 'Store Email', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(182, 'settings_key:description_store_email', 'The store e-mail address.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(183, 'settings_key:title_store_tax_id', 'Store Tax ID', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(184, 'settings_key:description_store_tax_id', 'The store tax ID or VATIN.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(185, 'settings_key:title_store_postal_address', 'Store Postal Address', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(186, 'settings_key:description_store_postal_address', 'The store postal address.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(187, 'settings_key:title_store_visiting_address', 'Store Visiting Address', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(188, 'settings_key:description_store_visiting_address', 'The store visiting address if applicable.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(189, 'settings_key:title_store_phone', 'Store Phone Number', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(190, 'settings_key:description_store_phone', 'The store phone number.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(191, 'settings_key:title_store_country_code', 'Store Country', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(192, 'settings_key:description_store_country_code', 'The country of your store.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(193, 'settings_key:title_store_timezone', 'Store Time Zone', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(194, 'settings_key:description_store_timezone', 'The store time zone.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(195, 'settings_key:title_store_language_code', 'Store Language', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(196, 'settings_key:description_store_language_code', 'The spoken language of your organization.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(197, 'settings_key:title_store_currency_code', 'Store Currency', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(198, 'settings_key:description_store_currency_code', 'The currency of which all prices conform to.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(199, 'settings_key:title_store_zone_code', 'Store Zone', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(200, 'settings_key:description_store_zone_code', 'The zone of your store.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(201, 'settings_key:title_store_weight_class', 'Store Weight Class', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(202, 'settings_key:description_store_weight_class', 'The prefered weight class.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(203, 'settings_key:title_store_length_class', 'Store Length Class', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(204, 'settings_key:description_store_length_class', 'The prefered length class.', '', 0, 1, 0, '2019-11-11 10:33:20', '2019-11-11 10:33:20'),
(205, 'settings_key:title_default_language_code', 'Default Language', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(206, 'settings_key:description_default_language_code', 'The default language selected, if failed to identify.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(207, 'settings_key:title_default_currency_code', 'Default Currency', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(208, 'settings_key:description_default_currency_code', 'The default currency selected, if failed to identify.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(209, 'settings_key:title_default_country_code', 'Default Country', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(210, 'settings_key:description_default_country_code', 'The default country selected if not set otherwise.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(211, 'settings_key:title_default_zone_code', 'Default Zone', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(212, 'settings_key:description_default_zone_code', 'The default zone selected if not set otherwise.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(213, 'settings_key:title_default_tax_class_id', 'Default Tax Class', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(214, 'settings_key:description_default_tax_class_id', 'Default tax class that will be preset when creating new products.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(215, 'title_true', 'True', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(216, 'settings_key:title_default_display_prices_including_tax', 'Default Display Prices Including Tax', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(217, 'settings_key:description_default_display_prices_including_tax', 'Displays prices including tax by default.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(218, 'settings_key:title_default_quantity_unit_id', 'Default Quantity Unit', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(219, 'settings_key:description_default_quantity_unit_id', 'Default quantity unit that will be preset when creating new products.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(220, 'settings_key:title_default_sold_out_status_id', 'Default Sold Out Status', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(221, 'settings_key:description_default_sold_out_status_id', 'Default sold out status that will be preset when creating new products.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(222, 'settings_key:title_default_delivery_status_id', 'Default Delivery Status', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(223, 'settings_key:description_default_delivery_status_id', 'Default delivery status that will be preset when creating new products.', '', 0, 1, 0, '2019-11-11 10:34:07', '2019-11-11 10:34:07'),
(224, 'title_price', 'Price', '', 0, 1, 0, '2019-11-11 10:42:16', '2019-11-11 10:42:16'),
(225, 'title_popularity', 'Popularity', '', 0, 1, 0, '2019-11-11 10:42:16', '2019-11-11 10:42:16'),
(226, 'title_false', 'False', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(227, 'settings_key:title_smtp_status', 'SMTP Enabled', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(228, 'settings_key:description_smtp_status', 'Wheither or not to use an SMTP server for delivering email.', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(229, 'settings_key:title_smtp_host', 'SMTP Host', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(230, 'settings_key:description_smtp_host', 'SMTP hostname e.g. smtp.myprovider.com.', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(231, 'settings_key:title_smtp_port', 'SMTP Port', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(232, 'settings_key:description_smtp_port', 'SMTP port e.g. 25, 465 (SSL/TLS), or 587 (STARTTLS).', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(233, 'settings_key:title_smtp_username', 'SMTP Username', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(234, 'settings_key:description_smtp_username', 'Username for SMTP authentication.', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(235, 'settings_key:title_smtp_password', 'SMTP Password', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(236, 'settings_key:description_smtp_password', 'Password for SMTP authentication.', '', 0, 1, 0, '2019-11-11 10:44:00', '2019-11-11 10:44:00'),
(237, 'settings_key:title_catalog_only_mode', 'Catalog Only Mode', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(238, 'settings_key:description_catalog_only_mode', 'Disables the cart and checkout features leaving only a browsable catalog.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(239, 'settings_key:title_maintenance_mode', 'Maintenance Mode', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(240, 'settings_key:description_maintenance_mode', 'Setting the store in maintenance mode will prevent users from browsing your site.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(241, 'settings_key:title_items_per_page', 'Items Per Page', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(242, 'settings_key:description_items_per_page', 'The number of items to be displayed per page.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(243, 'settings_key:title_data_table_rows_per_page', 'Data Table Rows', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(244, 'settings_key:description_data_table_rows_per_page', 'The number of data table rows per page.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(245, 'settings_key:title_display_stock_count', 'Display Stock Count', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(246, 'settings_key:description_display_stock_count', 'Show the available amounts of products in stock.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(247, 'settings_key:title_display_cheapest_shipping', 'Cheapest Shipping', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(248, 'settings_key:description_display_cheapest_shipping', 'Display the cheapest shipping cost on product page.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(249, 'settings_key:title_new_products_max_age', 'Max Age for New Products', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(250, 'settings_key:description_new_products_max_age', 'Display the new sticker for products younger than the give age. E.g. 1 month or 14 days', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(251, 'settings_key:title_box_similar_products_num_items', 'Similar Products Box: Number of Items', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(252, 'settings_key:description_box_similar_products_num_items', 'The maximum amount of items to be display in the box.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(253, 'settings_key:title_box_recently_viewed_products_num_items', 'Recently Viewed Products Box: Number of Items', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(254, 'settings_key:description_box_recently_viewed_products_num_items', 'The maximum amount of items to be display in the box.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(255, 'settings_key:title_box_latest_products_num_items', 'Latest Products Box: Number of Items', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(256, 'settings_key:description_box_latest_products_num_items', 'The maximum amount of items to be display in the box.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(257, 'settings_key:title_box_popular_products_num_items', 'Popular Products Box: Number of Items', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(258, 'settings_key:description_box_popular_products_num_items', 'The maximum amount of items to be display in the box.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(259, 'settings_key:title_box_campaign_products_num_items', 'Campaign Products Box: Number of Items', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(260, 'settings_key:description_box_campaign_products_num_items', 'The maximum amount of items to be display in the box.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(261, 'settings_key:title_auto_decimals', 'Auto Decimals', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(262, 'settings_key:description_auto_decimals', 'Show only decimals if there are any to display.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(263, 'settings_key:title_box_also_purchased_products_num_items', 'Also Purchased Products Box: Number of Items', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(264, 'settings_key:description_box_also_purchased_products_num_items', 'The maximum amount of items to be display in the box.', '', 0, 1, 0, '2019-11-11 10:44:05', '2019-11-11 10:44:05'),
(265, 'settings_key:title_cache_enabled', 'System Cache Enabled', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(266, 'settings_key:description_cache_enabled', 'Enables the system cache module which caches frequently used data.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(267, 'settings_key:title_cache_clear', 'Clear System Cache', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(268, 'settings_key:description_cache_clear', 'Remove all cached system information.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(269, 'settings_key:title_seo_links_language_prefix', 'SEO Links Language Prefix', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(270, 'settings_key:description_seo_links_language_prefix', 'Precede links with language code e.g. /en/....', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(271, 'settings_key:title_regional_settings_screen_enabled', 'Regional Settings Screen', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(272, 'settings_key:description_regional_settings_screen_enabled', 'Enables the regional settings screen upon first visit.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(273, 'settings_key:title_gzip_enabled', 'GZIP Enabled', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(274, 'settings_key:description_gzip_enabled', 'Compresses browser data. Increases the load on the server but decreases the bandwidth.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(275, 'settings_key:title_jobs_last_run', 'Jobs Last Run', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(276, 'settings_key:description_jobs_last_run', 'Time when background jobs where last executed.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(277, 'settings_key:title_jobs_interval', 'Jobs Interval', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(278, 'settings_key:description_jobs_interval', 'The amount of minutes between each execution of jobs.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(279, 'settings_key:title_database_admin_link', 'Database Admin Link', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(280, 'settings_key:description_database_admin_link', 'The URL to your database manager e.g. phpMyAdmin.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(281, 'settings_key:title_webmail_link', 'Webmail Link', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(282, 'settings_key:description_webmail_link', 'The URL to your webmail client.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(283, 'settings_key:title_seo_links_enabled', 'SEO Links Enabled', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(284, 'settings_key:description_seo_links_enabled', 'Enabling this requires .htaccess and mod_rewrite rules.', '', 0, 1, 0, '2019-11-11 10:44:09', '2019-11-11 10:44:09'),
(285, 'settings_key:title_security_blacklist', 'Blacklist', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(286, 'settings_key:description_security_blacklist', 'Deny blacklisted clients access to the site.', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(287, 'settings_key:title_security_session_hijacking', 'Session Hijacking Protection', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(288, 'settings_key:description_security_session_hijacking', 'Destroy sessions that were signed for a different IP address and user agent.', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(289, 'settings_key:title_security_http_post', 'HTTP POST Protection', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(290, 'settings_key:description_security_http_post', 'Deny incoming HTTP POST data from external sites by checking for valid form tickets.', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(291, 'settings_key:title_security_bot_trap', 'Bad Bot Trap', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(292, 'settings_key:description_security_bot_trap', 'Catch bad behaving bots from crawling your website by setting up a trap.', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(293, 'settings_key:title_security_xss', 'Cross-site Scripting (XSS) Detection', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(294, 'settings_key:description_security_xss', 'Detect common XSS attacks and deny access to the site.', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(295, 'settings_key:title_security_bad_urls', 'Bad URLs Access Detection', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(296, 'settings_key:description_security_bad_urls', 'Detect access to commonly attacked URLs.', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(297, 'settings_key:title_captcha_enabled', 'CAPTCHA', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(298, 'settings_key:description_captcha_enabled', 'Prevent robots from posting form data by enabling CAPTCHA security.', '', 0, 1, 0, '2019-11-11 10:44:13', '2019-11-11 10:44:13'),
(299, 'title_add_new_country', 'Add New Country', '', 0, 1, 0, '2019-11-11 10:44:26', '2019-11-11 10:44:26'),
(300, 'title_zones', 'Zones', '', 0, 1, 0, '2019-11-11 10:44:26', '2019-11-11 10:44:26'),
(301, 'title_add_new_slide', 'Add New Slide', '', 0, 1, 0, '2019-11-11 12:50:09', '2019-11-11 12:50:09'),
(302, 'title_valid_from', 'Valid From', '', 0, 1, 0, '2019-11-11 12:50:09', '2019-11-11 12:50:09'),
(303, 'title_valid_to', 'Valid To', '', 0, 1, 0, '2019-11-11 12:50:09', '2019-11-11 12:50:09'),
(304, 'title_all', 'All', '', 0, 1, 0, '2019-11-11 12:50:09', '2019-11-11 12:50:09'),
(305, 'title_edit_slide', 'Edit Slide', '', 0, 1, 0, '2019-11-11 12:50:13', '2019-11-11 12:50:13'),
(306, 'text_leave_blank_for_all', 'Leave blank for all', '', 0, 1, 0, '2019-11-11 12:50:13', '2019-11-11 12:50:13'),
(307, 'title_caption', 'Caption', '', 0, 1, 0, '2019-11-11 12:50:13', '2019-11-11 12:50:13'),
(308, 'title_link', 'Link', '', 0, 1, 0, '2019-11-11 12:50:13', '2019-11-11 12:50:13'),
(309, 'title_date_valid_from', 'Date Valid From', '', 0, 1, 0, '2019-11-11 12:50:13', '2019-11-11 12:50:13'),
(310, 'title_date_valid_to', 'Date Valid To', '', 0, 1, 0, '2019-11-11 12:50:13', '2019-11-11 12:50:13'),
(311, 'title_contact_us', 'Contact Us', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(312, 'title_tax_id', 'Tax ID / VATIN', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(313, 'title_company', 'Company', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(314, 'title_firstname', 'First Name', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(315, 'title_lastname', 'Last Name', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(316, 'title_address1', 'Address 1', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(317, 'title_address2', 'Address 2', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(318, 'title_postcode', 'Postal Code', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(319, 'title_city', 'City', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(320, 'title_country', 'Country', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(321, 'title_zone_state_province', 'Zone/State/Province', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(322, 'title_email', 'Email', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(323, 'title_phone', 'Phone', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(324, 'title_desired_password', 'Desired Password', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(325, 'title_confirm_password', 'Confirm Password', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(326, 'consent_newsletter', 'I would like to be notified occasionally via e-mail when there are new products or campaigns.', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(327, 'title_captcha', 'CAPTCHA', '', 0, 1, 0, '2019-11-11 13:10:31', '2019-11-11 13:10:31'),
(328, 'customer_service:head_title', 'Customer Service', '', 0, 1, 0, '2019-11-11 14:11:29', '2019-11-11 14:11:29'),
(329, 'customer_service:meta_description', '', '', 0, 1, 0, '2019-11-11 14:11:29', '2019-11-11 14:11:29'),
(330, 'title_subject', 'Subject', '', 0, 1, 0, '2019-11-11 14:11:29', '2019-11-11 14:11:29'),
(331, 'title_message', 'Message', '', 0, 1, 0, '2019-11-11 14:11:29', '2019-11-11 14:11:29'),
(332, 'title_send', 'Send', '', 0, 1, 0, '2019-11-11 14:11:29', '2019-11-11 14:11:29'),
(333, 'title_contact_details', 'Contact Details', '', 0, 1, 0, '2019-11-11 14:11:29', '2019-11-11 14:11:29'),
(334, 'regional_settings:head_title', 'Regional Settings', '', 0, 1, 0, '2019-11-11 14:11:38', '2019-11-11 14:11:38'),
(335, 'title_language', 'Language', '', 0, 1, 0, '2019-11-11 14:11:38', '2019-11-11 14:11:38'),
(336, 'title_currency', 'Currency', '', 0, 1, 0, '2019-11-11 14:11:38', '2019-11-11 14:11:38'),
(337, 'title_display_prices', 'Display Prices', '', 0, 1, 0, '2019-11-11 14:11:38', '2019-11-11 14:11:38'),
(338, 'title_excl_tax', 'Excl. Tax', '', 0, 1, 0, '2019-11-11 14:11:38', '2019-11-11 14:11:38'),
(339, 'title_incl_tax', 'Incl. Tax', '', 0, 1, 0, '2019-11-11 14:11:38', '2019-11-11 14:11:38'),
(340, 'settings_key:title_register_guests', 'Register Guests', '', 0, 1, 0, '2019-11-11 14:25:33', '2019-11-11 14:25:33'),
(341, 'settings_key:description_register_guests', 'Force guests to create an account.', '', 0, 1, 0, '2019-11-11 14:25:33', '2019-11-11 14:25:33'),
(342, 'settings_key:title_email_order_copy', 'Order Copy Recipients', '', 0, 1, 0, '2019-11-11 14:25:33', '2019-11-11 14:25:33'),
(343, 'settings_key:description_email_order_copy', 'Send order copies to the following e-mail addresses. Separate by semi-colons.', '', 0, 1, 0, '2019-11-11 14:25:33', '2019-11-11 14:25:33'),
(344, 'settings_key:title_round_amounts', 'Round Amounts', '', 0, 1, 0, '2019-11-11 14:25:33', '2019-11-11 14:25:33'),
(345, 'settings_key:description_round_amounts', 'Round currency amounts to prevent hidden decimals.', '', 0, 1, 0, '2019-11-11 14:25:33', '2019-11-11 14:25:33'),
(346, 'terms_cookies_acceptance', 'We rely on cookies to provide our services. By using our services, you agree to our use of cookies.', '', 0, 1, 0, '2019-11-12 11:13:11', '2019-11-12 11:13:11'),
(347, 'title_ok', 'OK', '', 0, 1, 0, '2019-11-12 11:13:11', '2019-11-12 11:13:11'),
(348, 'checkout:head_title', 'Checkout', '', 0, 1, 0, '2020-02-20 11:02:07', '2020-02-20 11:02:07'),
(349, 'title_checkout', 'Checkout', '', 0, 1, 0, '2020-02-20 11:02:07', '2020-02-20 11:02:07'),
(350, 'warning_your_customer_information_unsaved', 'Your customer information contains unsaved changes.', '', 0, 1, 0, '2020-02-20 11:02:07', '2020-02-20 11:02:07'),
(351, 'text_please_wait', 'Please wait', '', 0, 1, 0, '2020-02-20 11:02:07', '2020-02-20 11:02:07'),
(352, 'description_no_items_in_cart', 'There are no items in your cart.', '', 0, 1, 0, '2020-02-20 11:02:09', '2020-02-20 11:02:09'),
(353, 'title_back', 'Back', '', 0, 1, 0, '2020-02-20 11:02:09', '2020-02-20 11:02:09'),
(354, 'title_reset_password', 'Reset Password', '', 0, 1, 0, '2020-02-20 11:02:27', '2020-02-20 11:02:27'),
(355, 'error_only_products_are_supported', 'Only products are supported for this operation', '', 0, 1, 0, '2020-02-21 07:27:04', '2020-02-21 07:27:04'),
(356, 'title_add_new_language', 'Add New Language', '', 0, 1, 0, '2020-02-21 07:43:21', '2020-02-21 07:43:21'),
(357, 'title_default_language', 'Default Language', '', 0, 1, 0, '2020-02-21 07:43:21', '2020-02-21 07:43:21'),
(358, 'title_store_language', 'Store Language', '', 0, 1, 0, '2020-02-21 07:43:21', '2020-02-21 07:43:21'),
(359, 'title_edit_language', 'Edit Language', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(360, 'title_charset', 'Charset', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(361, 'title_system_locale', 'System Locale', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(362, 'title_date_format', 'Date Format', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(363, 'title_time_format', 'Time Format', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(364, 'title_raw_date_format', 'Raw Date Format', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(365, 'title_raw_time_format', 'Raw Time Format', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(366, 'title_decimal_point', 'Decimal Point', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(367, 'char_dot', 'Dot', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(368, 'char_comma', 'Comma', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(369, 'title_thousands_sep', 'Thousands Separator', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(370, 'char_space', 'Space', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(371, 'char_nonbreaking_space', 'Non-Breaking Space', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(372, 'char_single_quote', 'Single quote', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(373, 'title_force_currency_code', 'Force Currency Code', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(374, 'description_set_as_default_language', 'Set as default language', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(375, 'description_set_as_store_language', 'Set as store language', '', 0, 1, 0, '2020-02-21 07:43:26', '2020-02-21 07:43:26'),
(376, 'warning_account_previously_used_by_another_host', 'Your account was previously used by another location or hostname (%hostname). If this was not you then your login credentials might be compromised.', '', 0, 0, 0, '2020-02-21 12:52:26', '2020-02-21 12:52:26'),
(377, 'categories:head_title', 'Categories', '', 0, 1, 0, '2020-02-22 09:40:01', '2020-02-22 09:40:01'),
(378, 'categories:meta_description', '', '', 0, 1, 0, '2020-02-22 09:40:01', '2020-02-22 09:40:01'),
(379, 'title_prices', 'Prices', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(380, 'title_options', 'Options', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(381, 'title_stock', 'Stock', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(382, 'title_default_category', 'Default Category', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(383, 'description_no_existing_product_groups', 'There are no existing product groups.', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(384, 'title_sku', 'SKU', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(385, 'title_mpn', 'MPN', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(386, 'title_gtin', 'GTIN', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(387, 'title_taric', 'TARIC', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(388, 'title_manufacturer', 'Manufacturer', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(389, 'title_supplier', 'Supplier', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(390, 'title_images', 'Images', '', 0, 1, 0, '2020-02-22 10:54:45', '2020-02-22 10:54:45'),
(391, 'title_remove', 'Remove', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(392, 'text_add', 'Add', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(393, 'title_attributes', 'Attributes', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(394, 'title_purchase_price', 'Purchase Price', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(395, 'title_tax_class', 'Tax Class', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(396, 'title_price_incl_tax', 'Price Incl. Tax', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(397, 'title_campaigns', 'Campaigns', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(398, 'text_add_campaign', 'Add Campaign', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(399, 'title_group', 'Group', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(400, 'title_price_operator', 'Price Operator', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(401, 'title_price_adjustment', 'Price Adjustment', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(402, 'title_add_option', 'Add Option', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(403, 'title_quantity_unit', 'Quantity Unit', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(404, 'title_delivery_status', 'Delivery Status', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(405, 'title_sold_out_status', 'Sold Out Status', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(406, 'title_option', 'Option', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(407, 'title_weight', 'Weight', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(408, 'title_dimensions', 'Dimensions', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(409, 'title_qty', 'Qty', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(410, 'title_default_item', 'Default Item', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(411, 'title_add_stock_option', 'Add Stock Option', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(412, 'title_new_stock_option', 'New Stock Option', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(413, 'title_add_to_combination', 'Add To Combination', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(414, 'tooltip_field_price_incl_tax', 'This field helps you calculate net price based on the store region tax. All prices input to database are always excluding tax.', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(415, 'title_start_date', 'Start Date', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(416, 'title_end_date', 'End Date', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(417, 'text_move_up', 'Move up', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(418, 'text_move_down', 'Move down', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(419, 'error_empty_option_group', 'Error: Empty option group', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(420, 'error_empty_option_value', 'Error: Empty option value', '', 0, 1, 0, '2020-02-22 10:54:46', '2020-02-22 10:54:46'),
(421, 'title_new', 'New', '', 0, 1, 0, '2020-02-22 10:58:29', '2020-02-22 10:58:29'),
(422, 'sticker_new', 'New', '', 0, 1, 0, '2020-02-22 10:58:29', '2020-02-22 10:58:29'),
(423, 'title_edit_product', 'Edit Product', '', 0, 1, 0, '2020-02-22 11:00:03', '2020-02-22 11:00:03'),
(424, 'text_view_full_page', 'View full page', '', 0, 1, 0, '2020-02-22 11:04:39', '2020-02-22 11:04:39'),
(425, 'title_excluding_tax', 'Excluding Tax', '', 0, 1, 0, '2020-02-22 11:04:39', '2020-02-22 11:04:39'),
(426, 'title_stock_status', 'Stock Status', '', 0, 1, 0, '2020-02-22 11:04:39', '2020-02-22 11:04:39'),
(427, 'title_quantity', 'Quantity', '', 0, 1, 0, '2020-02-22 11:04:39', '2020-02-22 11:04:39'),
(428, 'title_add_to_cart', 'Add To Cart', '', 0, 1, 0, '2020-02-22 11:04:39', '2020-02-22 11:04:39');
INSERT INTO `zigisa_translations` (`id`, `code`, `text_en`, `text_nl`, `html`, `frontend`, `backend`, `date_updated`, `date_created`) VALUES
(429, 'text_share_on_s', 'Share on %s', '', 0, 1, 0, '2020-02-22 11:04:39', '2020-02-22 11:04:39'),
(430, 'text_link_to_this_product', 'Link to this product', '', 0, 1, 0, '2020-02-22 11:04:39', '2020-02-22 11:04:39'),
(431, 'title_recently_viewed', 'Recently Viewed', '', 0, 1, 0, '2020-02-22 11:05:05', '2020-02-22 11:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_users`
--

CREATE TABLE `zigisa_users` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `username` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `permissions` varchar(4096) COLLATE utf8_swedish_ci NOT NULL,
  `last_ip` varchar(15) COLLATE utf8_swedish_ci NOT NULL,
  `last_host` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `total_logins` int(11) NOT NULL,
  `date_blocked` datetime NOT NULL,
  `date_expires` datetime NOT NULL,
  `date_active` datetime NOT NULL,
  `date_login` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_users`
--

INSERT INTO `zigisa_users` (`id`, `status`, `username`, `password`, `permissions`, `last_ip`, `last_host`, `login_attempts`, `total_logins`, `date_blocked`, `date_expires`, `date_active`, `date_login`, `date_updated`, `date_created`) VALUES
(1, 1, 'admin', '5238e89437da259df2889246ff910762406dc90891c2173513ad8482487b53a2', '', '223.31.237.61', '223-30-0-0.lan.sify.net', 0, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2020-02-25 10:07:38', '2020-02-25 09:43:33', '2019-11-11 07:49:30', '2019-11-11 07:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_zones`
--

CREATE TABLE `zigisa_zones` (
  `id` int(11) NOT NULL,
  `country_code` varchar(4) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_zones`
--

INSERT INTO `zigisa_zones` (`id`, `country_code`, `code`, `name`, `date_updated`, `date_created`) VALUES
(1, 'AU', 'ACT', 'Australian Capital Territory', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 'AU', 'NSW', 'New South Wales', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 'AU', 'NT', 'Northern Territory', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(4, 'AU', 'QLD', 'Queensland', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(5, 'AU', 'SA', 'South Australia', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(6, 'AU', 'TAS', 'Tasmania', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(7, 'AU', 'VIC', 'Victoria', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(8, 'AU', 'WA', 'Western Australia', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(9, 'CA', 'AB', 'Alberta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'CA', 'BC', 'British Columbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'CA', 'MB', 'Manitoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CA', 'NB', 'New Brunswick', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CA', 'NL', 'Newfoundland and Labrador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'CA', 'NT', 'Northwest Territories', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'CA', 'NS', 'Nova Scotia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'CA', 'NU', 'Nunavut', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'CA', 'ON', 'Ontario', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'CA', 'PE', 'Prince Edward Island', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'CA', 'QC', 'Québec', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'CA', 'SK', 'Saskatchewan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'CA', 'YT', 'Yukon Territory', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'US', 'AL', 'Alabama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'US', 'AK', 'Alaska', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'US', 'AZ', 'Arizona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'US', 'AR', 'Arkansas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'US', 'CA', 'California', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'US', 'CO', 'Colorado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'US', 'CT', 'Connecticut', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'US', 'DE', 'Delaware', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'US', 'FL', 'Florida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'US', 'GA', 'Georgia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'US', 'HI', 'Hawaii', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'US', 'ID', 'Idaho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'US', 'IL', 'Illinois', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'US', 'IN', 'Indiana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'US', 'IA', 'Iowa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'US', 'KS', 'Kansas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'US', 'KY', 'Kentucky', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'US', 'LA', 'Louisiana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'US', 'ME', 'Maine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'US', 'MD', 'Maryland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'US', 'MA', 'Massachusetts', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'US', 'MI', 'Michigan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'US', 'MN', 'Minnesota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'US', 'MS', 'Mississippi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'US', 'MO', 'Missouri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'US', 'MT', 'Montana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'US', 'NE', 'Nebraska', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'US', 'NV', 'Nevada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'US', 'NH', 'New Hampshire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'US', 'NJ', 'New Jersey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'US', 'NM', 'New Mexico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'US', 'NY', 'New York', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'US', 'NC', 'North Carolina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'US', 'ND', 'North Dakota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'US', 'OH', 'Ohio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'US', 'OK', 'Oklahoma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'US', 'OR', 'Oregon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'US', 'PA', 'Pennsylvania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'US', 'RI', 'Rhode Island', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'US', 'SC', 'South Carolina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'US', 'SD', 'South Dakota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'US', 'TN', 'Tennessee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'US', 'TX', 'Texas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'US', 'UT', 'Utah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'US', 'VT', 'Vermont', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'US', 'VA', 'Virginia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'US', 'WA', 'Washington', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'US', 'WV', 'West Virginia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'US', 'WI', 'Wisconsin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'US', 'WY', 'Wyoming', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `zigisa_zones_to_geo_zones`
--

CREATE TABLE `zigisa_zones_to_geo_zones` (
  `id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `country_code` varchar(2) COLLATE utf8_swedish_ci NOT NULL,
  `zone_code` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `zigisa_zones_to_geo_zones`
--

INSERT INTO `zigisa_zones_to_geo_zones` (`id`, `geo_zone_id`, `country_code`, `zone_code`, `date_updated`, `date_created`) VALUES
(1, 1, 'NL', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(2, 2, 'AT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(3, 2, 'BE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(4, 2, 'BG', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(5, 2, 'CY', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(6, 2, 'CZ', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(7, 2, 'DE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(8, 2, 'DK', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(9, 2, 'EE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(10, 2, 'ES', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(11, 2, 'FR', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(12, 2, 'FI', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(13, 2, 'GB', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(14, 2, 'GR', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(15, 2, 'HR', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(16, 2, 'HU', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(17, 2, 'IE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(18, 2, 'IT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(19, 2, 'LV', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(20, 2, 'LT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(21, 2, 'LU', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(22, 2, 'MT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(23, 2, 'PL', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(24, 2, 'PT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(25, 2, 'RO', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(26, 2, 'SE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(27, 2, 'SI', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(28, 2, 'SK', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(29, 3, 'AT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(30, 3, 'BE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(31, 3, 'BG', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(32, 3, 'CY', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(33, 3, 'CZ', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(34, 3, 'DE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(35, 3, 'DK', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(36, 3, 'EE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(37, 3, 'ES', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(38, 3, 'FR', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(39, 3, 'FI', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(40, 3, 'GB', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(41, 3, 'GR', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(42, 3, 'HR', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(43, 3, 'HU', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(44, 3, 'IE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(45, 3, 'IT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(46, 3, 'LT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(47, 3, 'LU', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(48, 3, 'LV', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(49, 3, 'MT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(50, 3, 'NL', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(51, 3, 'PL', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(52, 3, 'PT', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(53, 3, 'RO', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(54, 3, 'SE', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(55, 3, 'SI', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30'),
(56, 3, 'SK', '', '2019-11-11 00:49:30', '2019-11-11 00:49:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lc_cart_items`
--
ALTER TABLE `lc_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `cart_uid` (`cart_uid`);

--
-- Indexes for table `lc_categories`
--
ALTER TABLE `lc_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `dock` (`dock`);

--
-- Indexes for table `lc_categories_info`
--
ALTER TABLE `lc_categories_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category_id`,`language_code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_countries`
--
ALTER TABLE `lc_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iso_code_2` (`iso_code_2`),
  ADD UNIQUE KEY `iso_code_3` (`iso_code_3`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_currencies`
--
ALTER TABLE `lc_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_customers`
--
ALTER TABLE `lc_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `lc_delivery_statuses`
--
ALTER TABLE `lc_delivery_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_delivery_statuses_info`
--
ALTER TABLE `lc_delivery_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_status` (`delivery_status_id`,`language_code`),
  ADD KEY `delivery_status_id` (`delivery_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_geo_zones`
--
ALTER TABLE `lc_geo_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_languages`
--
ALTER TABLE `lc_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_manufacturers`
--
ALTER TABLE `lc_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_manufacturers_info`
--
ALTER TABLE `lc_manufacturers_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturer` (`manufacturer_id`,`language_code`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_modules`
--
ALTER TABLE `lc_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_id` (`module_id`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_option_groups`
--
ALTER TABLE `lc_option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_option_groups_info`
--
ALTER TABLE `lc_option_groups_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_option_values`
--
ALTER TABLE `lc_option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `lc_option_values_info`
--
ALTER TABLE `lc_option_values_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `value_id` (`value_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_orders`
--
ALTER TABLE `lc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_id` (`order_status_id`);

--
-- Indexes for table `lc_orders_comments`
--
ALTER TABLE `lc_orders_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `lc_orders_items`
--
ALTER TABLE `lc_orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `lc_orders_totals`
--
ALTER TABLE `lc_orders_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `lc_order_statuses`
--
ALTER TABLE `lc_order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_order_statuses_info`
--
ALTER TABLE `lc_order_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_pages`
--
ALTER TABLE `lc_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `dock` (`dock`);

--
-- Indexes for table `lc_pages_info`
--
ALTER TABLE `lc_pages_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_products`
--
ALTER TABLE `lc_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `default_category_id` (`default_category_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `keywords` (`keywords`),
  ADD KEY `code` (`code`),
  ADD KEY `sku` (`sku`),
  ADD KEY `mpn` (`mpn`),
  ADD KEY `gtin` (`gtin`),
  ADD KEY `taric` (`taric`),
  ADD KEY `date_valid_from` (`date_valid_from`),
  ADD KEY `date_valid_to` (`date_valid_to`),
  ADD KEY `purchases` (`purchases`),
  ADD KEY `views` (`views`),
  ADD KEY `product_groups` (`product_groups`);

--
-- Indexes for table `lc_products_campaigns`
--
ALTER TABLE `lc_products_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_images`
--
ALTER TABLE `lc_products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_info`
--
ALTER TABLE `lc_products_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_products_options`
--
ALTER TABLE `lc_products_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_options_stock`
--
ALTER TABLE `lc_products_options_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_prices`
--
ALTER TABLE `lc_products_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lc_products_to_categories`
--
ALTER TABLE `lc_products_to_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `lc_product_groups`
--
ALTER TABLE `lc_product_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `lc_product_groups_info`
--
ALTER TABLE `lc_product_groups_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_id` (`product_group_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_product_groups_values`
--
ALTER TABLE `lc_product_groups_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_id` (`product_group_id`);

--
-- Indexes for table `lc_product_groups_values_info`
--
ALTER TABLE `lc_product_groups_values_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_value_id` (`product_group_value_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_quantity_units`
--
ALTER TABLE `lc_quantity_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_quantity_units_info`
--
ALTER TABLE `lc_quantity_units_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quantity_unit_id` (`quantity_unit_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_settings`
--
ALTER TABLE `lc_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `setting_group_key` (`setting_group_key`);

--
-- Indexes for table `lc_settings_groups`
--
ALTER TABLE `lc_settings_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `lc_slides`
--
ALTER TABLE `lc_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_slides_info`
--
ALTER TABLE `lc_slides_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slide_info` (`slide_id`,`language_code`),
  ADD KEY `slide_id` (`slide_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_sold_out_statuses`
--
ALTER TABLE `lc_sold_out_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_sold_out_statuses_info`
--
ALTER TABLE `lc_sold_out_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sold_out_status_id` (`sold_out_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `lc_suppliers`
--
ALTER TABLE `lc_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `lc_tax_classes`
--
ALTER TABLE `lc_tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_tax_rates`
--
ALTER TABLE `lc_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_class_id` (`tax_class_id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`);

--
-- Indexes for table `lc_translations`
--
ALTER TABLE `lc_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `frontend` (`frontend`),
  ADD KEY `backend` (`backend`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `lc_users`
--
ALTER TABLE `lc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lc_zones`
--
ALTER TABLE `lc_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `lc_zones_to_geo_zones`
--
ALTER TABLE `lc_zones_to_geo_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `zone_code` (`zone_code`);

--
-- Indexes for table `zigisa_cart_items`
--
ALTER TABLE `zigisa_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `cart_uid` (`cart_uid`);

--
-- Indexes for table `zigisa_categories`
--
ALTER TABLE `zigisa_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `dock` (`dock`);

--
-- Indexes for table `zigisa_categories_info`
--
ALTER TABLE `zigisa_categories_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category_id`,`language_code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_countries`
--
ALTER TABLE `zigisa_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iso_code_2` (`iso_code_2`),
  ADD UNIQUE KEY `iso_code_3` (`iso_code_3`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `zigisa_currencies`
--
ALTER TABLE `zigisa_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `zigisa_customers`
--
ALTER TABLE `zigisa_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `zigisa_delivery_statuses`
--
ALTER TABLE `zigisa_delivery_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_delivery_statuses_info`
--
ALTER TABLE `zigisa_delivery_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_status` (`delivery_status_id`,`language_code`),
  ADD KEY `delivery_status_id` (`delivery_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_geo_zones`
--
ALTER TABLE `zigisa_geo_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_languages`
--
ALTER TABLE `zigisa_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `zigisa_manufacturers`
--
ALTER TABLE `zigisa_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `zigisa_manufacturers_info`
--
ALTER TABLE `zigisa_manufacturers_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturer` (`manufacturer_id`,`language_code`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_modules`
--
ALTER TABLE `zigisa_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_id` (`module_id`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `zigisa_option_groups`
--
ALTER TABLE `zigisa_option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_option_groups_info`
--
ALTER TABLE `zigisa_option_groups_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_option_values`
--
ALTER TABLE `zigisa_option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `zigisa_option_values_info`
--
ALTER TABLE `zigisa_option_values_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `value_id` (`value_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_orders`
--
ALTER TABLE `zigisa_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_id` (`order_status_id`);

--
-- Indexes for table `zigisa_orders_comments`
--
ALTER TABLE `zigisa_orders_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `zigisa_orders_items`
--
ALTER TABLE `zigisa_orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `zigisa_orders_totals`
--
ALTER TABLE `zigisa_orders_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `zigisa_order_statuses`
--
ALTER TABLE `zigisa_order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_order_statuses_info`
--
ALTER TABLE `zigisa_order_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_id` (`order_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_pages`
--
ALTER TABLE `zigisa_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `dock` (`dock`);

--
-- Indexes for table `zigisa_pages_info`
--
ALTER TABLE `zigisa_pages_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_products`
--
ALTER TABLE `zigisa_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `default_category_id` (`default_category_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `keywords` (`keywords`),
  ADD KEY `code` (`code`),
  ADD KEY `sku` (`sku`),
  ADD KEY `mpn` (`mpn`),
  ADD KEY `gtin` (`gtin`),
  ADD KEY `taric` (`taric`),
  ADD KEY `date_valid_from` (`date_valid_from`),
  ADD KEY `date_valid_to` (`date_valid_to`),
  ADD KEY `purchases` (`purchases`),
  ADD KEY `views` (`views`),
  ADD KEY `product_groups` (`product_groups`);

--
-- Indexes for table `zigisa_products_campaigns`
--
ALTER TABLE `zigisa_products_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `zigisa_products_images`
--
ALTER TABLE `zigisa_products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `zigisa_products_info`
--
ALTER TABLE `zigisa_products_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_products_options`
--
ALTER TABLE `zigisa_products_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `zigisa_products_options_stock`
--
ALTER TABLE `zigisa_products_options_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `zigisa_products_prices`
--
ALTER TABLE `zigisa_products_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `zigisa_products_to_categories`
--
ALTER TABLE `zigisa_products_to_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `zigisa_product_groups`
--
ALTER TABLE `zigisa_product_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `zigisa_product_groups_info`
--
ALTER TABLE `zigisa_product_groups_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_id` (`product_group_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_product_groups_values`
--
ALTER TABLE `zigisa_product_groups_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_id` (`product_group_id`);

--
-- Indexes for table `zigisa_product_groups_values_info`
--
ALTER TABLE `zigisa_product_groups_values_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_value_id` (`product_group_value_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_quantity_units`
--
ALTER TABLE `zigisa_quantity_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_quantity_units_info`
--
ALTER TABLE `zigisa_quantity_units_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quantity_unit_id` (`quantity_unit_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_settings`
--
ALTER TABLE `zigisa_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `setting_group_key` (`setting_group_key`);

--
-- Indexes for table `zigisa_settings_groups`
--
ALTER TABLE `zigisa_settings_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `zigisa_slides`
--
ALTER TABLE `zigisa_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_slides_info`
--
ALTER TABLE `zigisa_slides_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slide_info` (`slide_id`,`language_code`),
  ADD KEY `slide_id` (`slide_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_sold_out_statuses`
--
ALTER TABLE `zigisa_sold_out_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_sold_out_statuses_info`
--
ALTER TABLE `zigisa_sold_out_statuses_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sold_out_status_id` (`sold_out_status_id`),
  ADD KEY `language_code` (`language_code`);

--
-- Indexes for table `zigisa_suppliers`
--
ALTER TABLE `zigisa_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `zigisa_tax_classes`
--
ALTER TABLE `zigisa_tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_tax_rates`
--
ALTER TABLE `zigisa_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_class_id` (`tax_class_id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`);

--
-- Indexes for table `zigisa_translations`
--
ALTER TABLE `zigisa_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `frontend` (`frontend`),
  ADD KEY `backend` (`backend`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `zigisa_users`
--
ALTER TABLE `zigisa_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zigisa_zones`
--
ALTER TABLE `zigisa_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `zigisa_zones_to_geo_zones`
--
ALTER TABLE `zigisa_zones_to_geo_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `geo_zone_id` (`geo_zone_id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `zone_code` (`zone_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lc_cart_items`
--
ALTER TABLE `lc_cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_categories`
--
ALTER TABLE `lc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lc_categories_info`
--
ALTER TABLE `lc_categories_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lc_countries`
--
ALTER TABLE `lc_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `lc_currencies`
--
ALTER TABLE `lc_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_customers`
--
ALTER TABLE `lc_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_delivery_statuses`
--
ALTER TABLE `lc_delivery_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_delivery_statuses_info`
--
ALTER TABLE `lc_delivery_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_geo_zones`
--
ALTER TABLE `lc_geo_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_languages`
--
ALTER TABLE `lc_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_manufacturers`
--
ALTER TABLE `lc_manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lc_manufacturers_info`
--
ALTER TABLE `lc_manufacturers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lc_modules`
--
ALTER TABLE `lc_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lc_option_groups`
--
ALTER TABLE `lc_option_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_option_groups_info`
--
ALTER TABLE `lc_option_groups_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_option_values`
--
ALTER TABLE `lc_option_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_option_values_info`
--
ALTER TABLE `lc_option_values_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_orders`
--
ALTER TABLE `lc_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_orders_comments`
--
ALTER TABLE `lc_orders_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_orders_items`
--
ALTER TABLE `lc_orders_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_orders_totals`
--
ALTER TABLE `lc_orders_totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_order_statuses`
--
ALTER TABLE `lc_order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_order_statuses_info`
--
ALTER TABLE `lc_order_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lc_pages`
--
ALTER TABLE `lc_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_pages_info`
--
ALTER TABLE `lc_pages_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_products`
--
ALTER TABLE `lc_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lc_products_campaigns`
--
ALTER TABLE `lc_products_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_products_images`
--
ALTER TABLE `lc_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lc_products_info`
--
ALTER TABLE `lc_products_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lc_products_options`
--
ALTER TABLE `lc_products_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_products_options_stock`
--
ALTER TABLE `lc_products_options_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_products_prices`
--
ALTER TABLE `lc_products_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lc_product_groups`
--
ALTER TABLE `lc_product_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_product_groups_info`
--
ALTER TABLE `lc_product_groups_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_product_groups_values`
--
ALTER TABLE `lc_product_groups_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_product_groups_values_info`
--
ALTER TABLE `lc_product_groups_values_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_quantity_units`
--
ALTER TABLE `lc_quantity_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_quantity_units_info`
--
ALTER TABLE `lc_quantity_units_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_settings`
--
ALTER TABLE `lc_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `lc_settings_groups`
--
ALTER TABLE `lc_settings_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lc_slides`
--
ALTER TABLE `lc_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_slides_info`
--
ALTER TABLE `lc_slides_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_sold_out_statuses`
--
ALTER TABLE `lc_sold_out_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_sold_out_statuses_info`
--
ALTER TABLE `lc_sold_out_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_suppliers`
--
ALTER TABLE `lc_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_tax_classes`
--
ALTER TABLE `lc_tax_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_tax_rates`
--
ALTER TABLE `lc_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_translations`
--
ALTER TABLE `lc_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `lc_users`
--
ALTER TABLE `lc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lc_zones`
--
ALTER TABLE `lc_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `lc_zones_to_geo_zones`
--
ALTER TABLE `lc_zones_to_geo_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `zigisa_cart_items`
--
ALTER TABLE `zigisa_cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_categories`
--
ALTER TABLE `zigisa_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `zigisa_categories_info`
--
ALTER TABLE `zigisa_categories_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `zigisa_countries`
--
ALTER TABLE `zigisa_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `zigisa_currencies`
--
ALTER TABLE `zigisa_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zigisa_customers`
--
ALTER TABLE `zigisa_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_delivery_statuses`
--
ALTER TABLE `zigisa_delivery_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zigisa_delivery_statuses_info`
--
ALTER TABLE `zigisa_delivery_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zigisa_geo_zones`
--
ALTER TABLE `zigisa_geo_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zigisa_languages`
--
ALTER TABLE `zigisa_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zigisa_manufacturers`
--
ALTER TABLE `zigisa_manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_manufacturers_info`
--
ALTER TABLE `zigisa_manufacturers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_modules`
--
ALTER TABLE `zigisa_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zigisa_option_groups`
--
ALTER TABLE `zigisa_option_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_option_groups_info`
--
ALTER TABLE `zigisa_option_groups_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_option_values`
--
ALTER TABLE `zigisa_option_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_option_values_info`
--
ALTER TABLE `zigisa_option_values_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_orders`
--
ALTER TABLE `zigisa_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_orders_comments`
--
ALTER TABLE `zigisa_orders_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_orders_items`
--
ALTER TABLE `zigisa_orders_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_orders_totals`
--
ALTER TABLE `zigisa_orders_totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_order_statuses`
--
ALTER TABLE `zigisa_order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zigisa_order_statuses_info`
--
ALTER TABLE `zigisa_order_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zigisa_pages`
--
ALTER TABLE `zigisa_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zigisa_pages_info`
--
ALTER TABLE `zigisa_pages_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zigisa_products`
--
ALTER TABLE `zigisa_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zigisa_products_campaigns`
--
ALTER TABLE `zigisa_products_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_products_images`
--
ALTER TABLE `zigisa_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zigisa_products_info`
--
ALTER TABLE `zigisa_products_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zigisa_products_options`
--
ALTER TABLE `zigisa_products_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_products_options_stock`
--
ALTER TABLE `zigisa_products_options_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_products_prices`
--
ALTER TABLE `zigisa_products_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zigisa_product_groups`
--
ALTER TABLE `zigisa_product_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_product_groups_info`
--
ALTER TABLE `zigisa_product_groups_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_product_groups_values`
--
ALTER TABLE `zigisa_product_groups_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_product_groups_values_info`
--
ALTER TABLE `zigisa_product_groups_values_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_quantity_units`
--
ALTER TABLE `zigisa_quantity_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zigisa_quantity_units_info`
--
ALTER TABLE `zigisa_quantity_units_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zigisa_settings`
--
ALTER TABLE `zigisa_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `zigisa_settings_groups`
--
ALTER TABLE `zigisa_settings_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zigisa_slides`
--
ALTER TABLE `zigisa_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zigisa_slides_info`
--
ALTER TABLE `zigisa_slides_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zigisa_sold_out_statuses`
--
ALTER TABLE `zigisa_sold_out_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zigisa_sold_out_statuses_info`
--
ALTER TABLE `zigisa_sold_out_statuses_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zigisa_suppliers`
--
ALTER TABLE `zigisa_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zigisa_tax_classes`
--
ALTER TABLE `zigisa_tax_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zigisa_tax_rates`
--
ALTER TABLE `zigisa_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zigisa_translations`
--
ALTER TABLE `zigisa_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `zigisa_users`
--
ALTER TABLE `zigisa_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zigisa_zones`
--
ALTER TABLE `zigisa_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `zigisa_zones_to_geo_zones`
--
ALTER TABLE `zigisa_zones_to_geo_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
