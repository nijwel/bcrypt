-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2024 at 02:12 AM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobiyolh_bcrypt`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `phone` int(5) NOT NULL,
  `code` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `capital` varchar(80) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `continent` varchar(30) DEFAULT NULL,
  `continent_code` varchar(2) DEFAULT NULL,
  `alpha_3` char(3) DEFAULT NULL,
  `currency_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `phone`, `code`, `name`, `symbol`, `capital`, `currency`, `continent`, `continent_code`, `alpha_3`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 93, 'AF', 'Afghanistan', '؋', 'Kabul', 'AFN', 'Asia', 'AS', 'AFG', 88.99, '2022-12-29 13:29:12', '2022-12-29 07:29:12'),
(2, 358, 'AX', 'Aland Islands', '€', 'Mariehamn', 'EUR', 'Europe', 'EU', 'ALA', 0.00, NULL, NULL),
(3, 355, 'AL', 'Albania', 'Lek', 'Tirana', 'ALL', 'Europe', 'EU', 'ALB', 0.00, NULL, NULL),
(4, 213, 'DZ', 'Algeria', 'دج', 'Algiers', 'DZD', 'Africa', 'AF', 'DZA', 0.00, NULL, NULL),
(5, 1684, 'AS', 'American Samoa', '$', 'Pago Pago', 'USD', 'Oceania', 'OC', 'ASM', 0.00, NULL, NULL),
(6, 376, 'AD', 'Andorra', '€', 'Andorra la Vella', 'EUR', 'Europe', 'EU', 'AND', 0.00, NULL, NULL),
(7, 244, 'AO', 'Angola', 'Kz', 'Luanda', 'AOA', 'Africa', 'AF', 'AGO', 0.00, NULL, NULL),
(8, 1264, 'AI', 'Anguilla', '$', 'The Valley', 'XCD', 'North America', 'NA', 'AIA', 0.00, NULL, NULL),
(9, 672, 'AQ', 'Antarctica', '$', 'Antarctica', 'AAD', 'Antarctica', 'AN', 'ATA', 0.00, NULL, NULL),
(10, 1268, 'AG', 'Antigua and Barbuda', '$', 'St. John\'s', 'XCD', 'North America', 'NA', 'ATG', 0.00, NULL, NULL),
(11, 54, 'AR', 'Argentina', '$', 'Buenos Aires', 'ARS', 'South America', 'SA', 'ARG', 0.00, NULL, NULL),
(12, 374, 'AM', 'Armenia', '֏', 'Yerevan', 'AMD', 'Asia', 'AS', 'ARM', 0.00, NULL, NULL),
(13, 297, 'AW', 'Aruba', 'ƒ', 'Oranjestad', 'AWG', 'North America', 'NA', 'ABW', 0.00, NULL, NULL),
(14, 61, 'AU', 'Australia', '$', 'Canberra', 'AUD', 'Oceania', 'OC', 'AUS', 0.00, NULL, NULL),
(15, 43, 'AT', 'Austria', '€', 'Vienna', 'EUR', 'Europe', 'EU', 'AUT', 0.00, NULL, NULL),
(16, 994, 'AZ', 'Azerbaijan', 'm', 'Baku', 'AZN', 'Asia', 'AS', 'AZE', 0.00, NULL, NULL),
(17, 1242, 'BS', 'Bahamas', 'B$', 'Nassau', 'BSD', 'North America', 'NA', 'BHS', 0.00, NULL, NULL),
(18, 973, 'BH', 'Bahrain', '.د.ب', 'Manama', 'BHD', 'Asia', 'AS', 'BHR', 0.00, NULL, NULL),
(19, 880, 'BD', 'Bangladesh', '৳', 'Dhaka', 'BDT', 'Asia', 'AS', 'BGD', 102.67, '2022-12-29 13:29:53', '2022-12-29 07:29:53'),
(20, 1246, 'BB', 'Barbados', 'Bds$', 'Bridgetown', 'BBD', 'North America', 'NA', 'BRB', 0.00, NULL, NULL),
(21, 375, 'BY', 'Belarus', 'Br', 'Minsk', 'BYN', 'Europe', 'EU', 'BLR', 0.00, NULL, NULL),
(22, 32, 'BE', 'Belgium', '€', 'Brussels', 'EUR', 'Europe', 'EU', 'BEL', 0.00, NULL, NULL),
(23, 501, 'BZ', 'Belize', '$', 'Belmopan', 'BZD', 'North America', 'NA', 'BLZ', 0.00, NULL, NULL),
(24, 229, 'BJ', 'Benin', 'CFA', 'Porto-Novo', 'XOF', 'Africa', 'AF', 'BEN', 0.00, NULL, NULL),
(25, 1441, 'BM', 'Bermuda', '$', 'Hamilton', 'BMD', 'North America', 'NA', 'BMU', 0.00, NULL, NULL),
(26, 975, 'BT', 'Bhutan', 'Nu.', 'Thimphu', 'BTN', 'Asia', 'AS', 'BTN', 0.00, NULL, NULL),
(27, 591, 'BO', 'Bolivia', 'Bs.', 'Sucre', 'BOB', 'South America', 'SA', 'BOL', 0.00, NULL, NULL),
(28, 599, 'BQ', 'Bonaire, Sint Eustatius and Saba', '$', 'Kralendijk', 'USD', 'North America', 'NA', 'BES', 0.00, NULL, NULL),
(29, 387, 'BA', 'Bosnia and Herzegovina', 'KM', 'Sarajevo', 'BAM', 'Europe', 'EU', 'BIH', 0.00, NULL, NULL),
(30, 267, 'BW', 'Botswana', 'P', 'Gaborone', 'BWP', 'Africa', 'AF', 'BWA', 0.00, NULL, NULL),
(31, 55, 'BV', 'Bouvet Island', 'kr', '', 'NOK', 'Antarctica', 'AN', 'BVT', 0.00, NULL, NULL),
(32, 55, 'BR', 'Brazil', 'R$', 'Brasilia', 'BRL', 'South America', 'SA', 'BRA', 0.00, NULL, NULL),
(33, 246, 'IO', 'British Indian Ocean Territory', '$', 'Diego Garcia', 'USD', 'Asia', 'AS', 'IOT', 0.00, NULL, NULL),
(34, 673, 'BN', 'Brunei Darussalam', 'B$', 'Bandar Seri Begawan', 'BND', 'Asia', 'AS', 'BRN', 0.00, NULL, NULL),
(35, 359, 'BG', 'Bulgaria', 'Лв.', 'Sofia', 'BGN', 'Europe', 'EU', 'BGR', 0.00, NULL, NULL),
(36, 226, 'BF', 'Burkina Faso', 'CFA', 'Ouagadougou', 'XOF', 'Africa', 'AF', 'BFA', 0.00, NULL, NULL),
(37, 257, 'BI', 'Burundi', 'FBu', 'Bujumbura', 'BIF', 'Africa', 'AF', 'BDI', 0.00, NULL, NULL),
(38, 855, 'KH', 'Cambodia', 'KHR', 'Phnom Penh', 'KHR', 'Asia', 'AS', 'KHM', 0.00, NULL, NULL),
(39, 237, 'CM', 'Cameroon', 'FCFA', 'Yaounde', 'XAF', 'Africa', 'AF', 'CMR', 0.00, NULL, NULL),
(40, 1, 'CA', 'Canada', '$', 'Ottawa', 'CAD', 'North America', 'NA', 'CAN', 0.00, NULL, NULL),
(41, 238, 'CV', 'Cape Verde', '$', 'Praia', 'CVE', 'Africa', 'AF', 'CPV', 0.00, NULL, NULL),
(42, 1345, 'KY', 'Cayman Islands', '$', 'George Town', 'KYD', 'North America', 'NA', 'CYM', 0.00, NULL, NULL),
(43, 236, 'CF', 'Central African Republic', 'FCFA', 'Bangui', 'XAF', 'Africa', 'AF', 'CAF', 0.00, NULL, NULL),
(44, 235, 'TD', 'Chad', 'FCFA', 'N\'Djamena', 'XAF', 'Africa', 'AF', 'TCD', 0.00, NULL, NULL),
(45, 56, 'CL', 'Chile', '$', 'Santiago', 'CLP', 'South America', 'SA', 'CHL', 0.00, NULL, NULL),
(46, 86, 'CN', 'China', '¥', 'Beijing', 'CNY', 'Asia', 'AS', 'CHN', 0.00, NULL, NULL),
(47, 61, 'CX', 'Christmas Island', '$', 'Flying Fish Cove', 'AUD', 'Asia', 'AS', 'CXR', 0.00, NULL, NULL),
(48, 672, 'CC', 'Cocos (Keeling) Islands', '$', 'West Island', 'AUD', 'Asia', 'AS', 'CCK', 0.00, NULL, NULL),
(49, 57, 'CO', 'Colombia', '$', 'Bogota', 'COP', 'South America', 'SA', 'COL', 0.00, NULL, NULL),
(50, 269, 'KM', 'Comoros', 'CF', 'Moroni', 'KMF', 'Africa', 'AF', 'COM', 0.00, NULL, NULL),
(51, 242, 'CG', 'Congo', 'FC', 'Brazzaville', 'XAF', 'Africa', 'AF', 'COG', 0.00, NULL, NULL),
(52, 242, 'CD', 'Congo, Democratic Republic of the Congo', 'FC', 'Kinshasa', 'CDF', 'Africa', 'AF', 'COD', 0.00, NULL, NULL),
(53, 682, 'CK', 'Cook Islands', '$', 'Avarua', 'NZD', 'Oceania', 'OC', 'COK', 0.00, NULL, NULL),
(54, 506, 'CR', 'Costa Rica', '₡', 'San Jose', 'CRC', 'North America', 'NA', 'CRI', 0.00, NULL, NULL),
(55, 225, 'CI', 'Cote D\'Ivoire', 'CFA', 'Yamoussoukro', 'XOF', 'Africa', 'AF', 'CIV', 0.00, NULL, NULL),
(56, 385, 'HR', 'Croatia', 'kn', 'Zagreb', 'HRK', 'Europe', 'EU', 'HRV', 0.00, NULL, NULL),
(57, 53, 'CU', 'Cuba', '$', 'Havana', 'CUP', 'North America', 'NA', 'CUB', 0.00, NULL, NULL),
(58, 599, 'CW', 'Curacao', 'ƒ', 'Willemstad', 'ANG', 'North America', 'NA', 'CUW', 0.00, NULL, NULL),
(59, 357, 'CY', 'Cyprus', '€', 'Nicosia', 'EUR', 'Asia', 'AS', 'CYP', 0.00, NULL, NULL),
(60, 420, 'CZ', 'Czech Republic', 'Kč', 'Prague', 'CZK', 'Europe', 'EU', 'CZE', 0.00, NULL, NULL),
(61, 45, 'DK', 'Denmark', 'Kr.', 'Copenhagen', 'DKK', 'Europe', 'EU', 'DNK', 0.00, NULL, NULL),
(62, 253, 'DJ', 'Djibouti', 'Fdj', 'Djibouti', 'DJF', 'Africa', 'AF', 'DJI', 0.00, NULL, NULL),
(63, 1767, 'DM', 'Dominica', '$', 'Roseau', 'XCD', 'North America', 'NA', 'DMA', 0.00, NULL, NULL),
(64, 1809, 'DO', 'Dominican Republic', '$', 'Santo Domingo', 'DOP', 'North America', 'NA', 'DOM', 0.00, NULL, NULL),
(65, 593, 'EC', 'Ecuador', '$', 'Quito', 'USD', 'South America', 'SA', 'ECU', 0.00, NULL, NULL),
(66, 20, 'EG', 'Egypt', 'ج.م', 'Cairo', 'EGP', 'Africa', 'AF', 'EGY', 0.00, NULL, NULL),
(67, 503, 'SV', 'El Salvador', '$', 'San Salvador', 'USD', 'North America', 'NA', 'SLV', 0.00, NULL, NULL),
(68, 240, 'GQ', 'Equatorial Guinea', 'FCFA', 'Malabo', 'XAF', 'Africa', 'AF', 'GNQ', 0.00, NULL, NULL),
(69, 291, 'ER', 'Eritrea', 'Nfk', 'Asmara', 'ERN', 'Africa', 'AF', 'ERI', 0.00, NULL, NULL),
(70, 372, 'EE', 'Estonia', '€', 'Tallinn', 'EUR', 'Europe', 'EU', 'EST', 0.00, NULL, NULL),
(71, 251, 'ET', 'Ethiopia', 'Nkf', 'Addis Ababa', 'ETB', 'Africa', 'AF', 'ETH', 0.00, NULL, NULL),
(72, 500, 'FK', 'Falkland Islands (Malvinas)', '£', 'Stanley', 'FKP', 'South America', 'SA', 'FLK', 0.00, NULL, NULL),
(73, 298, 'FO', 'Faroe Islands', 'Kr.', 'Torshavn', 'DKK', 'Europe', 'EU', 'FRO', 0.00, NULL, NULL),
(74, 679, 'FJ', 'Fiji', 'FJ$', 'Suva', 'FJD', 'Oceania', 'OC', 'FJI', 0.00, NULL, NULL),
(75, 358, 'FI', 'Finland', '€', 'Helsinki', 'EUR', 'Europe', 'EU', 'FIN', 0.00, NULL, NULL),
(76, 33, 'FR', 'France', '€', 'Paris', 'EUR', 'Europe', 'EU', 'FRA', 0.00, NULL, NULL),
(77, 594, 'GF', 'French Guiana', '€', 'Cayenne', 'EUR', 'South America', 'SA', 'GUF', 0.00, NULL, NULL),
(78, 689, 'PF', 'French Polynesia', '₣', 'Papeete', 'XPF', 'Oceania', 'OC', 'PYF', 0.00, NULL, NULL),
(79, 262, 'TF', 'French Southern Territories', '€', 'Port-aux-Francais', 'EUR', 'Antarctica', 'AN', 'ATF', 0.00, NULL, NULL),
(80, 241, 'GA', 'Gabon', 'FCFA', 'Libreville', 'XAF', 'Africa', 'AF', 'GAB', 0.00, NULL, NULL),
(81, 220, 'GM', 'Gambia', 'D', 'Banjul', 'GMD', 'Africa', 'AF', 'GMB', 0.00, NULL, NULL),
(82, 995, 'GE', 'Georgia', 'ლ', 'Tbilisi', 'GEL', 'Asia', 'AS', 'GEO', 0.00, NULL, NULL),
(83, 49, 'DE', 'Germany', '€', 'Berlin', 'EUR', 'Europe', 'EU', 'DEU', 0.00, NULL, NULL),
(84, 233, 'GH', 'Ghana', 'GH₵', 'Accra', 'GHS', 'Africa', 'AF', 'GHA', 0.00, NULL, NULL),
(85, 350, 'GI', 'Gibraltar', '£', 'Gibraltar', 'GIP', 'Europe', 'EU', 'GIB', 0.00, NULL, NULL),
(86, 30, 'GR', 'Greece', '€', 'Athens', 'EUR', 'Europe', 'EU', 'GRC', 0.00, NULL, NULL),
(87, 299, 'GL', 'Greenland', 'Kr.', 'Nuuk', 'DKK', 'North America', 'NA', 'GRL', 0.00, NULL, NULL),
(88, 1473, 'GD', 'Grenada', '$', 'St. George\'s', 'XCD', 'North America', 'NA', 'GRD', 0.00, NULL, NULL),
(89, 590, 'GP', 'Guadeloupe', '€', 'Basse-Terre', 'EUR', 'North America', 'NA', 'GLP', 0.00, NULL, NULL),
(90, 1671, 'GU', 'Guam', '$', 'Hagatna', 'USD', 'Oceania', 'OC', 'GUM', 0.00, NULL, NULL),
(91, 502, 'GT', 'Guatemala', 'Q', 'Guatemala City', 'GTQ', 'North America', 'NA', 'GTM', 0.00, NULL, NULL),
(92, 44, 'GG', 'Guernsey', '£', 'St Peter Port', 'GBP', 'Europe', 'EU', 'GGY', 0.00, NULL, NULL),
(93, 224, 'GN', 'Guinea', 'FG', 'Conakry', 'GNF', 'Africa', 'AF', 'GIN', 0.00, NULL, NULL),
(94, 245, 'GW', 'Guinea-Bissau', 'CFA', 'Bissau', 'XOF', 'Africa', 'AF', 'GNB', 0.00, NULL, NULL),
(95, 592, 'GY', 'Guyana', '$', 'Georgetown', 'GYD', 'South America', 'SA', 'GUY', 0.00, NULL, NULL),
(96, 509, 'HT', 'Haiti', 'G', 'Port-au-Prince', 'HTG', 'North America', 'NA', 'HTI', 0.00, NULL, NULL),
(97, 0, 'HM', 'Heard Island and McDonald Islands', '$', '', 'AUD', 'Antarctica', 'AN', 'HMD', 0.00, NULL, NULL),
(98, 39, 'VA', 'Holy See (Vatican City State)', '€', 'Vatican City', 'EUR', 'Europe', 'EU', 'VAT', 0.00, NULL, NULL),
(99, 504, 'HN', 'Honduras', 'L', 'Tegucigalpa', 'HNL', 'North America', 'NA', 'HND', 0.00, NULL, NULL),
(100, 852, 'HK', 'Hong Kong', '$', 'Hong Kong', 'HKD', 'Asia', 'AS', 'HKG', 0.00, NULL, NULL),
(101, 36, 'HU', 'Hungary', 'Ft', 'Budapest', 'HUF', 'Europe', 'EU', 'HUN', 0.00, NULL, NULL),
(102, 354, 'IS', 'Iceland', 'kr', 'Reykjavik', 'ISK', 'Europe', 'EU', 'ISL', 0.00, NULL, NULL),
(103, 91, 'IN', 'India', '₹', 'New Delhi', 'INR', 'Asia', 'AS', 'IND', 0.00, NULL, NULL),
(104, 62, 'ID', 'Indonesia', 'Rp', 'Jakarta', 'IDR', 'Asia', 'AS', 'IDN', 0.00, NULL, NULL),
(105, 98, 'IR', 'Iran, Islamic Republic of', '﷼', 'Tehran', 'IRR', 'Asia', 'AS', 'IRN', 0.00, NULL, NULL),
(106, 964, 'IQ', 'Iraq', 'د.ع', 'Baghdad', 'IQD', 'Asia', 'AS', 'IRQ', 0.00, NULL, NULL),
(107, 353, 'IE', 'Ireland', '€', 'Dublin', 'EUR', 'Europe', 'EU', 'IRL', 0.00, NULL, NULL),
(108, 44, 'IM', 'Isle of Man', '£', 'Douglas, Isle of Man', 'GBP', 'Europe', 'EU', 'IMN', 0.00, NULL, NULL),
(109, 972, 'IL', 'Israel', '₪', 'Jerusalem', 'ILS', 'Asia', 'AS', 'ISR', 0.00, NULL, NULL),
(110, 39, 'IT', 'Italy', '€', 'Rome', 'EUR', 'Europe', 'EU', 'ITA', 0.00, NULL, NULL),
(111, 1876, 'JM', 'Jamaica', 'J$', 'Kingston', 'JMD', 'North America', 'NA', 'JAM', 0.00, NULL, NULL),
(112, 81, 'JP', 'Japan', '¥', 'Tokyo', 'JPY', 'Asia', 'AS', 'JPN', 0.00, NULL, NULL),
(113, 44, 'JE', 'Jersey', '£', 'Saint Helier', 'GBP', 'Europe', 'EU', 'JEY', 0.00, NULL, NULL),
(114, 962, 'JO', 'Jordan', 'ا.د', 'Amman', 'JOD', 'Asia', 'AS', 'JOR', 0.00, NULL, NULL),
(115, 7, 'KZ', 'Kazakhstan', 'лв', 'Astana', 'KZT', 'Asia', 'AS', 'KAZ', 0.00, NULL, NULL),
(116, 254, 'KE', 'Kenya', 'KSh', 'Nairobi', 'KES', 'Africa', 'AF', 'KEN', 0.00, NULL, NULL),
(117, 686, 'KI', 'Kiribati', '$', 'Tarawa', 'AUD', 'Oceania', 'OC', 'KIR', 0.00, NULL, NULL),
(118, 850, 'KP', 'Korea, Democratic People\'s Republic of', '₩', 'Pyongyang', 'KPW', 'Asia', 'AS', 'PRK', 0.00, NULL, NULL),
(119, 82, 'KR', 'Korea, Republic of', '₩', 'Seoul', 'KRW', 'Asia', 'AS', 'KOR', 0.00, NULL, NULL),
(120, 381, 'XK', 'Kosovo', '€', 'Pristina', 'EUR', 'Europe', 'EU', 'XKX', 0.00, NULL, NULL),
(121, 965, 'KW', 'Kuwait', 'ك.د', 'Kuwait City', 'KWD', 'Asia', 'AS', 'KWT', 0.00, NULL, NULL),
(122, 996, 'KG', 'Kyrgyzstan', 'лв', 'Bishkek', 'KGS', 'Asia', 'AS', 'KGZ', 0.00, NULL, NULL),
(123, 856, 'LA', 'Lao People\'s Democratic Republic', '₭', 'Vientiane', 'LAK', 'Asia', 'AS', 'LAO', 0.00, NULL, NULL),
(124, 371, 'LV', 'Latvia', '€', 'Riga', 'EUR', 'Europe', 'EU', 'LVA', 0.00, NULL, NULL),
(125, 961, 'LB', 'Lebanon', '£', 'Beirut', 'LBP', 'Asia', 'AS', 'LBN', 0.00, NULL, NULL),
(126, 266, 'LS', 'Lesotho', 'L', 'Maseru', 'LSL', 'Africa', 'AF', 'LSO', 0.00, NULL, NULL),
(127, 231, 'LR', 'Liberia', '$', 'Monrovia', 'LRD', 'Africa', 'AF', 'LBR', 0.00, NULL, NULL),
(128, 218, 'LY', 'Libyan Arab Jamahiriya', 'د.ل', 'Tripolis', 'LYD', 'Africa', 'AF', 'LBY', 0.00, NULL, NULL),
(129, 423, 'LI', 'Liechtenstein', 'CHf', 'Vaduz', 'CHF', 'Europe', 'EU', 'LIE', 0.00, NULL, NULL),
(130, 370, 'LT', 'Lithuania', '€', 'Vilnius', 'EUR', 'Europe', 'EU', 'LTU', 0.00, NULL, NULL),
(131, 352, 'LU', 'Luxembourg', '€', 'Luxembourg', 'EUR', 'Europe', 'EU', 'LUX', 0.00, NULL, NULL),
(132, 853, 'MO', 'Macao', '$', 'Macao', 'MOP', 'Asia', 'AS', 'MAC', 0.00, NULL, NULL),
(133, 389, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'ден', 'Skopje', 'MKD', 'Europe', 'EU', 'MKD', 0.00, NULL, NULL),
(134, 261, 'MG', 'Madagascar', 'Ar', 'Antananarivo', 'MGA', 'Africa', 'AF', 'MDG', 0.00, NULL, NULL),
(135, 265, 'MW', 'Malawi', 'MK', 'Lilongwe', 'MWK', 'Africa', 'AF', 'MWI', 0.00, NULL, NULL),
(136, 60, 'MY', 'Malaysia', 'RM', 'Kuala Lumpur', 'MYR', 'Asia', 'AS', 'MYS', 0.00, NULL, NULL),
(137, 960, 'MV', 'Maldives', 'Rf', 'Male', 'MVR', 'Asia', 'AS', 'MDV', 0.00, NULL, NULL),
(138, 223, 'ML', 'Mali', 'CFA', 'Bamako', 'XOF', 'Africa', 'AF', 'MLI', 0.00, NULL, NULL),
(139, 356, 'MT', 'Malta', '€', 'Valletta', 'EUR', 'Europe', 'EU', 'MLT', 0.00, NULL, NULL),
(140, 692, 'MH', 'Marshall Islands', '$', 'Majuro', 'USD', 'Oceania', 'OC', 'MHL', 0.00, NULL, NULL),
(141, 596, 'MQ', 'Martinique', '€', 'Fort-de-France', 'EUR', 'North America', 'NA', 'MTQ', 0.00, NULL, NULL),
(142, 222, 'MR', 'Mauritania', 'MRU', 'Nouakchott', 'MRO', 'Africa', 'AF', 'MRT', 0.00, NULL, NULL),
(143, 230, 'MU', 'Mauritius', '₨', 'Port Louis', 'MUR', 'Africa', 'AF', 'MUS', 0.00, NULL, NULL),
(144, 262, 'YT', 'Mayotte', '€', 'Mamoudzou', 'EUR', 'Africa', 'AF', 'MYT', 0.00, NULL, NULL),
(145, 52, 'MX', 'Mexico', '$', 'Mexico City', 'MXN', 'North America', 'NA', 'MEX', 0.00, NULL, NULL),
(146, 691, 'FM', 'Micronesia, Federated States of', '$', 'Palikir', 'USD', 'Oceania', 'OC', 'FSM', 0.00, NULL, NULL),
(147, 373, 'MD', 'Moldova, Republic of', 'L', 'Chisinau', 'MDL', 'Europe', 'EU', 'MDA', 0.00, NULL, NULL),
(148, 377, 'MC', 'Monaco', '€', 'Monaco', 'EUR', 'Europe', 'EU', 'MCO', 0.00, NULL, NULL),
(149, 976, 'MN', 'Mongolia', '₮', 'Ulan Bator', 'MNT', 'Asia', 'AS', 'MNG', 0.00, NULL, NULL),
(150, 382, 'ME', 'Montenegro', '€', 'Podgorica', 'EUR', 'Europe', 'EU', 'MNE', 0.00, NULL, NULL),
(151, 1664, 'MS', 'Montserrat', '$', 'Plymouth', 'XCD', 'North America', 'NA', 'MSR', 0.00, NULL, NULL),
(152, 212, 'MA', 'Morocco', 'DH', 'Rabat', 'MAD', 'Africa', 'AF', 'MAR', 0.00, NULL, NULL),
(153, 258, 'MZ', 'Mozambique', 'MT', 'Maputo', 'MZN', 'Africa', 'AF', 'MOZ', 0.00, NULL, NULL),
(154, 95, 'MM', 'Myanmar', 'K', 'Nay Pyi Taw', 'MMK', 'Asia', 'AS', 'MMR', 0.00, NULL, NULL),
(155, 264, 'NA', 'Namibia', '$', 'Windhoek', 'NAD', 'Africa', 'AF', 'NAM', 0.00, NULL, NULL),
(156, 674, 'NR', 'Nauru', '$', 'Yaren', 'AUD', 'Oceania', 'OC', 'NRU', 0.00, NULL, NULL),
(157, 977, 'NP', 'Nepal', '₨', 'Kathmandu', 'NPR', 'Asia', 'AS', 'NPL', 0.00, NULL, NULL),
(158, 31, 'NL', 'Netherlands', '€', 'Amsterdam', 'EUR', 'Europe', 'EU', 'NLD', 0.00, NULL, NULL),
(159, 599, 'AN', 'Netherlands Antilles', 'NAf', 'Willemstad', 'ANG', 'North America', 'NA', 'ANT', 0.00, NULL, NULL),
(160, 687, 'NC', 'New Caledonia', '₣', 'Noumea', 'XPF', 'Oceania', 'OC', 'NCL', 0.00, NULL, NULL),
(161, 64, 'NZ', 'New Zealand', '$', 'Wellington', 'NZD', 'Oceania', 'OC', 'NZL', 0.00, NULL, NULL),
(162, 505, 'NI', 'Nicaragua', 'C$', 'Managua', 'NIO', 'North America', 'NA', 'NIC', 0.00, NULL, NULL),
(163, 227, 'NE', 'Niger', 'CFA', 'Niamey', 'XOF', 'Africa', 'AF', 'NER', 0.00, NULL, NULL),
(164, 234, 'NG', 'Nigeria', '₦', 'Abuja', 'NGN', 'Africa', 'AF', 'NGA', 0.00, NULL, NULL),
(165, 683, 'NU', 'Niue', '$', 'Alofi', 'NZD', 'Oceania', 'OC', 'NIU', 0.00, NULL, NULL),
(166, 672, 'NF', 'Norfolk Island', '$', 'Kingston', 'AUD', 'Oceania', 'OC', 'NFK', 0.00, NULL, NULL),
(167, 1670, 'MP', 'Northern Mariana Islands', '$', 'Saipan', 'USD', 'Oceania', 'OC', 'MNP', 0.00, NULL, NULL),
(168, 47, 'NO', 'Norway', 'kr', 'Oslo', 'NOK', 'Europe', 'EU', 'NOR', 0.00, NULL, NULL),
(169, 968, 'OM', 'Oman', '.ع.ر', 'Muscat', 'OMR', 'Asia', 'AS', 'OMN', 0.00, NULL, NULL),
(170, 92, 'PK', 'Pakistan', '₨', 'Islamabad', 'PKR', 'Asia', 'AS', 'PAK', 0.00, NULL, NULL),
(171, 680, 'PW', 'Palau', '$', 'Melekeok', 'USD', 'Oceania', 'OC', 'PLW', 0.00, NULL, NULL),
(172, 970, 'PS', 'Palestinian Territory, Occupied', '₪', 'East Jerusalem', 'ILS', 'Asia', 'AS', 'PSE', 0.00, NULL, NULL),
(173, 507, 'PA', 'Panama', 'B/.', 'Panama City', 'PAB', 'North America', 'NA', 'PAN', 0.00, NULL, NULL),
(174, 675, 'PG', 'Papua New Guinea', 'K', 'Port Moresby', 'PGK', 'Oceania', 'OC', 'PNG', 0.00, NULL, NULL),
(175, 595, 'PY', 'Paraguay', '₲', 'Asuncion', 'PYG', 'South America', 'SA', 'PRY', 0.00, NULL, NULL),
(176, 51, 'PE', 'Peru', 'S/.', 'Lima', 'PEN', 'South America', 'SA', 'PER', 0.00, NULL, NULL),
(177, 63, 'PH', 'Philippines', '₱', 'Manila', 'PHP', 'Asia', 'AS', 'PHL', 0.00, NULL, NULL),
(178, 64, 'PN', 'Pitcairn', '$', 'Adamstown', 'NZD', 'Oceania', 'OC', 'PCN', 0.00, NULL, NULL),
(179, 48, 'PL', 'Poland', 'zł', 'Warsaw', 'PLN', 'Europe', 'EU', 'POL', 0.00, NULL, NULL),
(180, 351, 'PT', 'Portugal', '€', 'Lisbon', 'EUR', 'Europe', 'EU', 'PRT', 0.00, NULL, NULL),
(181, 1787, 'PR', 'Puerto Rico', '$', 'San Juan', 'USD', 'North America', 'NA', 'PRI', 0.00, NULL, NULL),
(182, 974, 'QA', 'Qatar', 'ق.ر', 'Doha', 'QAR', 'Asia', 'AS', 'QAT', 0.00, NULL, NULL),
(183, 262, 'RE', 'Reunion', '€', 'Saint-Denis', 'EUR', 'Africa', 'AF', 'REU', 0.00, NULL, NULL),
(184, 40, 'RO', 'Romania', 'lei', 'Bucharest', 'RON', 'Europe', 'EU', 'ROM', 0.00, NULL, NULL),
(185, 70, 'RU', 'Russian Federation', '₽', 'Moscow', 'RUB', 'Asia', 'AS', 'RUS', 0.00, NULL, NULL),
(186, 250, 'RW', 'Rwanda', 'FRw', 'Kigali', 'RWF', 'Africa', 'AF', 'RWA', 0.00, NULL, NULL),
(187, 590, 'BL', 'Saint Barthelemy', '€', 'Gustavia', 'EUR', 'North America', 'NA', 'BLM', 0.00, NULL, NULL),
(188, 290, 'SH', 'Saint Helena', '£', 'Jamestown', 'SHP', 'Africa', 'AF', 'SHN', 0.00, NULL, NULL),
(189, 1869, 'KN', 'Saint Kitts and Nevis', '$', 'Basseterre', 'XCD', 'North America', 'NA', 'KNA', 0.00, NULL, NULL),
(190, 1758, 'LC', 'Saint Lucia', '$', 'Castries', 'XCD', 'North America', 'NA', 'LCA', 0.00, NULL, NULL),
(191, 590, 'MF', 'Saint Martin', '€', 'Marigot', 'EUR', 'North America', 'NA', 'MAF', 0.00, NULL, NULL),
(192, 508, 'PM', 'Saint Pierre and Miquelon', '€', 'Saint-Pierre', 'EUR', 'North America', 'NA', 'SPM', 0.00, NULL, NULL),
(193, 1784, 'VC', 'Saint Vincent and the Grenadines', '$', 'Kingstown', 'XCD', 'North America', 'NA', 'VCT', 0.00, NULL, NULL),
(194, 684, 'WS', 'Samoa', 'SAT', 'Apia', 'WST', 'Oceania', 'OC', 'WSM', 0.00, NULL, NULL),
(195, 378, 'SM', 'San Marino', '€', 'San Marino', 'EUR', 'Europe', 'EU', 'SMR', 0.00, NULL, NULL),
(196, 239, 'ST', 'Sao Tome and Principe', 'Db', 'Sao Tome', 'STD', 'Africa', 'AF', 'STP', 0.00, NULL, NULL),
(197, 966, 'SA', 'Saudi Arabia', '﷼', 'Riyadh', 'SAR', 'Asia', 'AS', 'SAU', 0.00, NULL, NULL),
(198, 221, 'SN', 'Senegal', 'CFA', 'Dakar', 'XOF', 'Africa', 'AF', 'SEN', 0.00, NULL, NULL),
(199, 381, 'RS', 'Serbia', 'din', 'Belgrade', 'RSD', 'Europe', 'EU', 'SRB', 0.00, NULL, NULL),
(200, 381, 'CS', 'Serbia and Montenegro', 'din', 'Belgrade', 'RSD', 'Europe', 'EU', 'SCG', 0.00, NULL, NULL),
(201, 248, 'SC', 'Seychelles', 'SRe', 'Victoria', 'SCR', 'Africa', 'AF', 'SYC', 0.00, NULL, NULL),
(202, 232, 'SL', 'Sierra Leone', 'Le', 'Freetown', 'SLL', 'Africa', 'AF', 'SLE', 0.00, NULL, NULL),
(203, 65, 'SG', 'Singapore', '$', 'Singapur', 'SGD', 'Asia', 'AS', 'SGP', 0.00, NULL, NULL),
(204, 1, 'SX', 'St Martin', 'ƒ', 'Philipsburg', 'ANG', 'North America', 'NA', 'SXM', 0.00, NULL, NULL),
(205, 421, 'SK', 'Slovakia', '€', 'Bratislava', 'EUR', 'Europe', 'EU', 'SVK', 0.00, NULL, NULL),
(206, 386, 'SI', 'Slovenia', '€', 'Ljubljana', 'EUR', 'Europe', 'EU', 'SVN', 0.00, NULL, NULL),
(207, 677, 'SB', 'Solomon Islands', 'Si$', 'Honiara', 'SBD', 'Oceania', 'OC', 'SLB', 0.00, NULL, NULL),
(208, 252, 'SO', 'Somalia', 'Sh.so.', 'Mogadishu', 'SOS', 'Africa', 'AF', 'SOM', 0.00, NULL, NULL),
(209, 27, 'ZA', 'South Africa', 'R', 'Pretoria', 'ZAR', 'Africa', 'AF', 'ZAF', 0.00, NULL, NULL),
(210, 500, 'GS', 'South Georgia and the South Sandwich Islands', '£', 'Grytviken', 'GBP', 'Antarctica', 'AN', 'SGS', 0.00, NULL, NULL),
(211, 211, 'SS', 'South Sudan', '£', 'Juba', 'SSP', 'Africa', 'AF', 'SSD', 0.00, NULL, NULL),
(212, 34, 'ES', 'Spain', '€', 'Madrid', 'EUR', 'Europe', 'EU', 'ESP', 0.00, NULL, NULL),
(213, 94, 'LK', 'Sri Lanka', 'Rs', 'Colombo', 'LKR', 'Asia', 'AS', 'LKA', 0.00, NULL, NULL),
(214, 249, 'SD', 'Sudan', '.س.ج', 'Khartoum', 'SDG', 'Africa', 'AF', 'SDN', 0.00, NULL, NULL),
(215, 597, 'SR', 'Suriname', '$', 'Paramaribo', 'SRD', 'South America', 'SA', 'SUR', 0.00, NULL, NULL),
(216, 47, 'SJ', 'Svalbard and Jan Mayen', 'kr', 'Longyearbyen', 'NOK', 'Europe', 'EU', 'SJM', 0.00, NULL, NULL),
(217, 268, 'SZ', 'Swaziland', 'E', 'Mbabane', 'SZL', 'Africa', 'AF', 'SWZ', 0.00, NULL, NULL),
(218, 46, 'SE', 'Sweden', 'kr', 'Stockholm', 'SEK', 'Europe', 'EU', 'SWE', 0.00, NULL, NULL),
(219, 41, 'CH', 'Switzerland', 'CHf', 'Berne', 'CHF', 'Europe', 'EU', 'CHE', 0.00, NULL, NULL),
(220, 963, 'SY', 'Syrian Arab Republic', 'LS', 'Damascus', 'SYP', 'Asia', 'AS', 'SYR', 0.00, NULL, NULL),
(221, 886, 'TW', 'Taiwan, Province of China', '$', 'Taipei', 'TWD', 'Asia', 'AS', 'TWN', 0.00, NULL, NULL),
(222, 992, 'TJ', 'Tajikistan', 'SM', 'Dushanbe', 'TJS', 'Asia', 'AS', 'TJK', 0.00, NULL, NULL),
(223, 255, 'TZ', 'Tanzania, United Republic of', 'TSh', 'Dodoma', 'TZS', 'Africa', 'AF', 'TZA', 0.00, NULL, NULL),
(224, 66, 'TH', 'Thailand', '฿', 'Bangkok', 'THB', 'Asia', 'AS', 'THA', 0.00, NULL, NULL),
(225, 670, 'TL', 'Timor-Leste', '$', 'Dili', 'USD', 'Asia', 'AS', 'TLS', 0.00, NULL, NULL),
(226, 228, 'TG', 'Togo', 'CFA', 'Lome', 'XOF', 'Africa', 'AF', 'TGO', 0.00, NULL, NULL),
(227, 690, 'TK', 'Tokelau', '$', '', 'NZD', 'Oceania', 'OC', 'TKL', 0.00, NULL, NULL),
(228, 676, 'TO', 'Tonga', '$', 'Nuku\'alofa', 'TOP', 'Oceania', 'OC', 'TON', 0.00, NULL, NULL),
(229, 1868, 'TT', 'Trinidad and Tobago', '$', 'Port of Spain', 'TTD', 'North America', 'NA', 'TTO', 0.00, NULL, NULL),
(230, 216, 'TN', 'Tunisia', 'ت.د', 'Tunis', 'TND', 'Africa', 'AF', 'TUN', 0.00, NULL, NULL),
(231, 90, 'TR', 'Turkey', '₺', 'Ankara', 'TRY', 'Asia', 'AS', 'TUR', 0.00, NULL, NULL),
(232, 7370, 'TM', 'Turkmenistan', 'T', 'Ashgabat', 'TMT', 'Asia', 'AS', 'TKM', 0.00, NULL, NULL),
(233, 1649, 'TC', 'Turks and Caicos Islands', '$', 'Cockburn Town', 'USD', 'North America', 'NA', 'TCA', 0.00, NULL, NULL),
(234, 688, 'TV', 'Tuvalu', '$', 'Funafuti', 'AUD', 'Oceania', 'OC', 'TUV', 0.00, NULL, NULL),
(235, 256, 'UG', 'Uganda', 'USh', 'Kampala', 'UGX', 'Africa', 'AF', 'UGA', 0.00, NULL, NULL),
(236, 380, 'UA', 'Ukraine', '₴', 'Kiev', 'UAH', 'Europe', 'EU', 'UKR', 0.00, NULL, NULL),
(237, 971, 'AE', 'United Arab Emirates', 'إ.د', 'Abu Dhabi', 'AED', 'Asia', 'AS', 'ARE', 0.00, NULL, NULL),
(238, 44, 'GB', 'United Kingdom', '£', 'London', 'GBP', 'Europe', 'EU', 'GBR', 0.00, NULL, NULL),
(239, 1, 'US', 'United States', '$', 'Washington', 'USD', 'North America', 'NA', 'USA', 1.00, '2022-12-29 13:27:31', '2022-12-29 07:27:31'),
(240, 1, 'UM', 'United States Minor Outlying Islands', '$', '', 'USD', 'North America', 'NA', 'UMI', 0.00, NULL, NULL),
(241, 598, 'UY', 'Uruguay', '$', 'Montevideo', 'UYU', 'South America', 'SA', 'URY', 0.00, NULL, NULL),
(242, 998, 'UZ', 'Uzbekistan', 'лв', 'Tashkent', 'UZS', 'Asia', 'AS', 'UZB', 0.00, NULL, NULL),
(243, 678, 'VU', 'Vanuatu', 'VT', 'Port Vila', 'VUV', 'Oceania', 'OC', 'VUT', 0.00, NULL, NULL),
(244, 58, 'VE', 'Venezuela', 'Bs', 'Caracas', 'VEF', 'South America', 'SA', 'VEN', 0.00, NULL, NULL),
(245, 84, 'VN', 'Viet Nam', '₫', 'Hanoi', 'VND', 'Asia', 'AS', 'VNM', 0.00, NULL, NULL),
(246, 1284, 'VG', 'Virgin Islands, British', '$', 'Road Town', 'USD', 'North America', 'NA', 'VGB', 0.00, NULL, NULL),
(247, 1340, 'VI', 'Virgin Islands, U.s.', '$', 'Charlotte Amalie', 'USD', 'North America', 'NA', 'VIR', 0.00, NULL, NULL),
(248, 681, 'WF', 'Wallis and Futuna', '₣', 'Mata Utu', 'XPF', 'Oceania', 'OC', 'WLF', 0.00, NULL, NULL),
(249, 212, 'EH', 'Western Sahara', 'MAD', 'El-Aaiun', 'MAD', 'Africa', 'AF', 'ESH', 0.00, NULL, NULL),
(250, 967, 'YE', 'Yemen', '﷼', 'Sanaa', 'YER', 'Asia', 'AS', 'YEM', 0.00, NULL, NULL),
(251, 260, 'ZM', 'Zambia', 'ZK', 'Lusaka', 'ZMW', 'Africa', 'AF', 'ZMB', 0.00, NULL, NULL),
(252, 263, 'ZW', 'Zimbabwe', '$', 'Harare', 'ZWL', 'Africa', 'AF', 'ZWE', 0.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL,
  `minor_unit` smallint(6) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`country`, `currency`, `code`, `minor_unit`, `symbol`) VALUES
('Afghanistan', 'Afghani', 'AFN', 2, '؋'),
('Åland Islands', 'Euro', 'EUR', 2, '€'),
('Albania', 'Lek', 'ALL', 2, 'Lek'),
('Algeria', 'Algerian Dinar', 'DZD', 2, NULL),
('American Samoa', 'US Dollar', 'USD', 2, '$'),
('Andorra', 'Euro', 'EUR', 2, '€'),
('Angola', 'Kwanza', 'AOA', 2, NULL),
('Anguilla', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Antigua And Barbuda', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Argentina', 'Argentine Peso', 'ARS', 2, '$'),
('Armenia', 'Armenian Dram', 'AMD', 2, NULL),
('Aruba', 'Aruban Florin', 'AWG', 2, NULL),
('Australia', 'Australian Dollar', 'AUD', 2, '$'),
('Austria', 'Euro', 'EUR', 2, '€'),
('Azerbaijan', 'Azerbaijan Manat', 'AZN', 2, NULL),
('Bahamas', 'Bahamian Dollar', 'BSD', 2, '$'),
('Bahrain', 'Bahraini Dinar', 'BHD', 3, NULL),
('Bangladesh', 'Taka', 'BDT', 2, '৳'),
('Barbados', 'Barbados Dollar', 'BBD', 2, '$'),
('Belarus', 'Belarusian Ruble', 'BYN', 2, NULL),
('Belgium', 'Euro', 'EUR', 2, '€'),
('Belize', 'Belize Dollar', 'BZD', 2, 'BZ$'),
('Benin', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Bermuda', 'Bermudian Dollar', 'BMD', 2, NULL),
('Bhutan', 'Indian Rupee', 'INR', 2, '₹'),
('Bhutan', 'Ngultrum', 'BTN', 2, NULL),
('Bolivia', 'Boliviano', 'BOB', 2, NULL),
('Bolivia', 'Mvdol', 'BOV', 2, NULL),
('Bonaire, Sint Eustatius And Saba', 'US Dollar', 'USD', 2, '$'),
('Bosnia And Herzegovina', 'Convertible Mark', 'BAM', 2, NULL),
('Botswana', 'Pula', 'BWP', 2, NULL),
('Bouvet Island', 'Norwegian Krone', 'NOK', 2, NULL),
('Brazil', 'Brazilian Real', 'BRL', 2, 'R$'),
('British Indian Ocean Territory', 'US Dollar', 'USD', 2, '$'),
('Brunei Darussalam', 'Brunei Dollar', 'BND', 2, NULL),
('Bulgaria', 'Bulgarian Lev', 'BGN', 2, 'лв'),
('Burkina Faso', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Burundi', 'Burundi Franc', 'BIF', 0, NULL),
('Cabo Verde', 'Cabo Verde Escudo', 'CVE', 2, NULL),
('Cambodia', 'Riel', 'KHR', 2, '៛'),
('Cameroon', 'CFA Franc BEAC', 'XAF', 0, NULL),
('Canada', 'Canadian Dollar', 'CAD', 2, '$'),
('Cayman Islands', 'Cayman Islands Dollar', 'KYD', 2, NULL),
('Central African Republic', 'CFA Franc BEAC', 'XAF', 0, NULL),
('Chad', 'CFA Franc BEAC', 'XAF', 0, NULL),
('Chile', 'Chilean Peso', 'CLP', 0, '$'),
('Chile', 'Unidad de Fomento', 'CLF', 4, NULL),
('China', 'Yuan Renminbi', 'CNY', 2, '¥'),
('Christmas Island', 'Australian Dollar', 'AUD', 2, NULL),
('Cocos (keeling) Islands', 'Australian Dollar', 'AUD', 2, NULL),
('Colombia', 'Colombian Peso', 'COP', 2, '$'),
('Colombia', 'Unidad de Valor Real', 'COU', 2, NULL),
('Comoros', 'Comorian Franc ', 'KMF', 0, NULL),
('Congo (the Democratic Republic Of The)', 'Congolese Franc', 'CDF', 2, NULL),
('Congo', 'CFA Franc BEAC', 'XAF', 0, NULL),
('Cook Islands', 'New Zealand Dollar', 'NZD', 2, '$'),
('Costa Rica', 'Costa Rican Colon', 'CRC', 2, NULL),
('Côte D\'ivoire', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Croatia', 'Kuna', 'HRK', 2, 'kn'),
('Cuba', 'Cuban Peso', 'CUP', 2, NULL),
('Cuba', 'Peso Convertible', 'CUC', 2, NULL),
('Curaçao', 'Netherlands Antillean Guilder', 'ANG', 2, NULL),
('Cyprus', 'Euro', 'EUR', 2, '€'),
('Czechia', 'Czech Koruna', 'CZK', 2, 'Kč'),
('Denmark', 'Danish Krone', 'DKK', 2, 'kr'),
('Djibouti', 'Djibouti Franc', 'DJF', 0, NULL),
('Dominica', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Dominican Republic', 'Dominican Peso', 'DOP', 2, NULL),
('Ecuador', 'US Dollar', 'USD', 2, '$'),
('Egypt', 'Egyptian Pound', 'EGP', 2, NULL),
('El Salvador', 'El Salvador Colon', 'SVC', 2, NULL),
('El Salvador', 'US Dollar', 'USD', 2, '$'),
('Equatorial Guinea', 'CFA Franc BEAC', 'XAF', 0, NULL),
('Eritrea', 'Nakfa', 'ERN', 2, NULL),
('Estonia', 'Euro', 'EUR', 2, '€'),
('Eswatini', 'Lilangeni', 'SZL', 2, NULL),
('Ethiopia', 'Ethiopian Birr', 'ETB', 2, NULL),
('European Union', 'Euro', 'EUR', 2, '€'),
('Falkland Islands [Malvinas]', 'Falkland Islands Pound', 'FKP', 2, NULL),
('Faroe Islands', 'Danish Krone', 'DKK', 2, NULL),
('Fiji', 'Fiji Dollar', 'FJD', 2, NULL),
('Finland', 'Euro', 'EUR', 2, '€'),
('France', 'Euro', 'EUR', 2, '€'),
('French Guiana', 'Euro', 'EUR', 2, '€'),
('French Polynesia', 'CFP Franc', 'XPF', 0, NULL),
('French Southern Territories', 'Euro', 'EUR', 2, '€'),
('Gabon', 'CFA Franc BEAC', 'XAF', 0, NULL),
('Gambia', 'Dalasi', 'GMD', 2, NULL),
('Georgia', 'Lari', 'GEL', 2, '₾'),
('Germany', 'Euro', 'EUR', 2, '€'),
('Ghana', 'Ghana Cedi', 'GHS', 2, NULL),
('Gibraltar', 'Gibraltar Pound', 'GIP', 2, NULL),
('Greece', 'Euro', 'EUR', 2, '€'),
('Greenland', 'Danish Krone', 'DKK', 2, NULL),
('Grenada', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Guadeloupe', 'Euro', 'EUR', 2, '€'),
('Guam', 'US Dollar', 'USD', 2, '$'),
('Guatemala', 'Quetzal', 'GTQ', 2, NULL),
('Guernsey', 'Pound Sterling', 'GBP', 2, '£'),
('Guinea', 'Guinean Franc', 'GNF', 0, NULL),
('Guinea-bissau', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Guyana', 'Guyana Dollar', 'GYD', 2, NULL),
('Haiti', 'Gourde', 'HTG', 2, NULL),
('Haiti', 'US Dollar', 'USD', 2, '$'),
('Heard Island And Mcdonald Islands', 'Australian Dollar', 'AUD', 2, NULL),
('Holy See (Vatican)', 'Euro', 'EUR', 2, '€'),
('Honduras', 'Lempira', 'HNL', 2, NULL),
('Hong Kong', 'Hong Kong Dollar', 'HKD', 2, '$'),
('Hungary', 'Forint', 'HUF', 2, 'ft'),
('Iceland', 'Iceland Krona', 'ISK', 0, NULL),
('India', 'Indian Rupee', 'INR', 2, '₹'),
('Indonesia', 'Rupiah', 'IDR', 2, 'Rp'),
('International Monetary Fund (IMF)', 'SDR (Special Drawing Right)', 'XDR', 0, NULL),
('Iran', 'Iranian Rial', 'IRR', 2, NULL),
('Iraq', 'Iraqi Dinar', 'IQD', 3, NULL),
('Ireland', 'Euro', 'EUR', 2, '€'),
('Isle Of Man', 'Pound Sterling', 'GBP', 2, '£'),
('Israel', 'New Israeli Sheqel', 'ILS', 2, '₪'),
('Italy', 'Euro', 'EUR', 2, '€'),
('Jamaica', 'Jamaican Dollar', 'JMD', 2, NULL),
('Japan', 'Yen', 'JPY', 0, '¥'),
('Jersey', 'Pound Sterling', 'GBP', 2, '£'),
('Jordan', 'Jordanian Dinar', 'JOD', 3, NULL),
('Kazakhstan', 'Tenge', 'KZT', 2, NULL),
('Kenya', 'Kenyan Shilling', 'KES', 2, 'Ksh'),
('Kiribati', 'Australian Dollar', 'AUD', 2, NULL),
('Korea (the Democratic People’s Republic Of)', 'North Korean Won', 'KPW', 2, NULL),
('Korea (the Republic Of)', 'Won', 'KRW', 0, '₩'),
('Kuwait', 'Kuwaiti Dinar', 'KWD', 3, NULL),
('Kyrgyzstan', 'Som', 'KGS', 2, NULL),
('Lao People’s Democratic Republic', 'Lao Kip', 'LAK', 2, NULL),
('Latvia', 'Euro', 'EUR', 2, '€'),
('Lebanon', 'Lebanese Pound', 'LBP', 2, NULL),
('Lesotho', 'Loti', 'LSL', 2, NULL),
('Lesotho', 'Rand', 'ZAR', 2, NULL),
('Liberia', 'Liberian Dollar', 'LRD', 2, NULL),
('Libya', 'Libyan Dinar', 'LYD', 3, NULL),
('Liechtenstein', 'Swiss Franc', 'CHF', 2, NULL),
('Lithuania', 'Euro', 'EUR', 2, '€'),
('Luxembourg', 'Euro', 'EUR', 2, '€'),
('Macao', 'Pataca', 'MOP', 2, NULL),
('North Macedonia', 'Denar', 'MKD', 2, NULL),
('Madagascar', 'Malagasy Ariary', 'MGA', 2, NULL),
('Malawi', 'Malawi Kwacha', 'MWK', 2, NULL),
('Malaysia', 'Malaysian Ringgit', 'MYR', 2, 'RM'),
('Maldives', 'Rufiyaa', 'MVR', 2, NULL),
('Mali', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Malta', 'Euro', 'EUR', 2, '€'),
('Marshall Islands', 'US Dollar', 'USD', 2, '$'),
('Martinique', 'Euro', 'EUR', 2, '€'),
('Mauritania', 'Ouguiya', 'MRU', 2, NULL),
('Mauritius', 'Mauritius Rupee', 'MUR', 2, NULL),
('Mayotte', 'Euro', 'EUR', 2, '€'),
('Member Countries Of The African Development Bank Group', 'ADB Unit of Account', 'XUA', 0, NULL),
('Mexico', 'Mexican Peso', 'MXN', 2, '$'),
('Mexico', 'Mexican Unidad de Inversion (UDI)', 'MXV', 2, NULL),
('Micronesia', 'US Dollar', 'USD', 2, '$'),
('Moldova', 'Moldovan Leu', 'MDL', 2, NULL),
('Monaco', 'Euro', 'EUR', 2, '€'),
('Mongolia', 'Tugrik', 'MNT', 2, NULL),
('Montenegro', 'Euro', 'EUR', 2, '€'),
('Montserrat', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Morocco', 'Moroccan Dirham', 'MAD', 2, ' .د.م '),
('Mozambique', 'Mozambique Metical', 'MZN', 2, NULL),
('Myanmar', 'Kyat', 'MMK', 2, NULL),
('Namibia', 'Namibia Dollar', 'NAD', 2, NULL),
('Namibia', 'Rand', 'ZAR', 2, NULL),
('Nauru', 'Australian Dollar', 'AUD', 2, NULL),
('Nepal', 'Nepalese Rupee', 'NPR', 2, NULL),
('Netherlands', 'Euro', 'EUR', 2, '€'),
('New Caledonia', 'CFP Franc', 'XPF', 0, NULL),
('New Zealand', 'New Zealand Dollar', 'NZD', 2, '$'),
('Nicaragua', 'Cordoba Oro', 'NIO', 2, NULL),
('Niger', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Nigeria', 'Naira', 'NGN', 2, '₦'),
('Niue', 'New Zealand Dollar', 'NZD', 2, '$'),
('Norfolk Island', 'Australian Dollar', 'AUD', 2, NULL),
('Northern Mariana Islands', 'US Dollar', 'USD', 2, '$'),
('Norway', 'Norwegian Krone', 'NOK', 2, 'kr'),
('Oman', 'Rial Omani', 'OMR', 3, NULL),
('Pakistan', 'Pakistan Rupee', 'PKR', 2, 'Rs'),
('Palau', 'US Dollar', 'USD', 2, '$'),
('Panama', 'Balboa', 'PAB', 2, NULL),
('Panama', 'US Dollar', 'USD', 2, '$'),
('Papua New Guinea', 'Kina', 'PGK', 2, NULL),
('Paraguay', 'Guarani', 'PYG', 0, NULL),
('Peru', 'Sol', 'PEN', 2, 'S'),
('Philippines', 'Philippine Peso', 'PHP', 2, '₱'),
('Pitcairn', 'New Zealand Dollar', 'NZD', 2, '$'),
('Poland', 'Zloty', 'PLN', 2, 'zł'),
('Portugal', 'Euro', 'EUR', 2, '€'),
('Puerto Rico', 'US Dollar', 'USD', 2, '$'),
('Qatar', 'Qatari Rial', 'QAR', 2, NULL),
('Réunion', 'Euro', 'EUR', 2, '€'),
('Romania', 'Romanian Leu', 'RON', 2, 'lei'),
('Russian Federation', 'Russian Ruble', 'RUB', 2, '₽'),
('Rwanda', 'Rwanda Franc', 'RWF', 0, NULL),
('Saint Barthélemy', 'Euro', 'EUR', 2, '€'),
('Saint Helena, Ascension And Tristan Da Cunha', 'Saint Helena Pound', 'SHP', 2, NULL),
('Saint Kitts And Nevis', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Saint Lucia', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Saint Martin (French Part)', 'Euro', 'EUR', 2, '€'),
('Saint Pierre And Miquelon', 'Euro', 'EUR', 2, '€'),
('Saint Vincent And The Grenadines', 'East Caribbean Dollar', 'XCD', 2, NULL),
('Samoa', 'Tala', 'WST', 2, NULL),
('San Marino', 'Euro', 'EUR', 2, '€'),
('Sao Tome And Principe', 'Dobra', 'STN', 2, NULL),
('Saudi Arabia', 'Saudi Riyal', 'SAR', 2, NULL),
('Senegal', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Serbia', 'Serbian Dinar', 'RSD', 2, NULL),
('Seychelles', 'Seychelles Rupee', 'SCR', 2, NULL),
('Sierra Leone', 'Leone', 'SLL', 2, NULL),
('Singapore', 'Singapore Dollar', 'SGD', 2, '$'),
('Sint Maarten (Dutch Part)', 'Netherlands Antillean Guilder', 'ANG', 2, NULL),
('Sistema Unitario De Compensacion Regional De Pagos \"sucre\"\"\"', 'Sucre', 'XSU', 0, NULL),
('Slovakia', 'Euro', 'EUR', 2, '€'),
('Slovenia', 'Euro', 'EUR', 2, '€'),
('Solomon Islands', 'Solomon Islands Dollar', 'SBD', 2, NULL),
('Somalia', 'Somali Shilling', 'SOS', 2, NULL),
('South Africa', 'Rand', 'ZAR', 2, 'R'),
('South Sudan', 'South Sudanese Pound', 'SSP', 2, NULL),
('Spain', 'Euro', 'EUR', 2, '€'),
('Sri Lanka', 'Sri Lanka Rupee', 'LKR', 2, 'Rs'),
('Sudan (the)', 'Sudanese Pound', 'SDG', 2, NULL),
('Suriname', 'Surinam Dollar', 'SRD', 2, NULL),
('Svalbard And Jan Mayen', 'Norwegian Krone', 'NOK', 2, NULL),
('Sweden', 'Swedish Krona', 'SEK', 2, 'kr'),
('Switzerland', 'Swiss Franc', 'CHF', 2, NULL),
('Switzerland', 'WIR Euro', 'CHE', 2, NULL),
('Switzerland', 'WIR Franc', 'CHW', 2, NULL),
('Syrian Arab Republic', 'Syrian Pound', 'SYP', 2, NULL),
('Taiwan', 'New Taiwan Dollar', 'TWD', 2, NULL),
('Tajikistan', 'Somoni', 'TJS', 2, NULL),
('Tanzania, United Republic Of', 'Tanzanian Shilling', 'TZS', 2, NULL),
('Thailand', 'Baht', 'THB', 2, '฿'),
('Timor-leste', 'US Dollar', 'USD', 2, '$'),
('Togo', 'CFA Franc BCEAO', 'XOF', 0, NULL),
('Tokelau', 'New Zealand Dollar', 'NZD', 2, '$'),
('Tonga', 'Pa’anga', 'TOP', 2, NULL),
('Trinidad And Tobago', 'Trinidad and Tobago Dollar', 'TTD', 2, NULL),
('Tunisia', 'Tunisian Dinar', 'TND', 3, NULL),
('Turkey', 'Turkish Lira', 'TRY', 2, '₺'),
('Turkmenistan', 'Turkmenistan New Manat', 'TMT', 2, NULL),
('Turks And Caicos Islands', 'US Dollar', 'USD', 2, '$'),
('Tuvalu', 'Australian Dollar', 'AUD', 2, NULL),
('Uganda', 'Uganda Shilling', 'UGX', 0, NULL),
('Ukraine', 'Hryvnia', 'UAH', 2, '₴'),
('United Arab Emirates', 'UAE Dirham', 'AED', 2, 'د.إ'),
('United Kingdom Of Great Britain And Northern Ireland', 'Pound Sterling', 'GBP', 2, '£'),
('United States Minor Outlying Islands', 'US Dollar', 'USD', 2, '$'),
('United States Of America', 'US Dollar', 'USD', 2, '$'),
('United States Of America', 'US Dollar (Next day)', 'USN', 2, NULL),
('Uruguay', 'Peso Uruguayo', 'UYU', 2, NULL),
('Uruguay', 'Uruguay Peso en Unidades Indexadas (UI)', 'UYI', 0, NULL),
('Uruguay', 'Unidad Previsional', 'UYW', 4, NULL),
('Uzbekistan', 'Uzbekistan Sum', 'UZS', 2, NULL),
('Vanuatu', 'Vatu', 'VUV', 0, NULL),
('Venezuela', 'Bolívar Soberano', 'VES', 2, NULL),
('Vietnam', 'Dong', 'VND', 0, '₫'),
('Virgin Islands (British)', 'US Dollar', 'USD', 2, '$'),
('Virgin Islands (U.S.)', 'US Dollar', 'USD', 2, '$'),
('Wallis And Futuna', 'CFP Franc', 'XPF', 0, NULL),
('Western Sahara', 'Moroccan Dirham', 'MAD', 2, NULL),
('Yemen', 'Yemeni Rial', 'YER', 2, NULL),
('Zambia', 'Zambian Kwacha', 'ZMW', 2, NULL),
('Zimbabwe', 'Zimbabwe Dollar', 'ZWL', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dues`
--

CREATE TABLE `dues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `due_amount` int(11) DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dues`
--

INSERT INTO `dues` (`id`, `image`, `name`, `date`, `due_amount`, `paid_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/6303c5e9cdf76.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'uploads/6303c94f126db.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'uploads/6303cb8e82ea7.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'uploads/6303cbe499e44.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'uploads/6303cc0d938dd.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_10_14_102843_create_dues_table', 1),
(5, '2021_11_28_173618_create_payments_table', 1),
(6, '2022_06_14_095434_create_tarrifs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tarrifs`
--

CREATE TABLE `tarrifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `demand_charge` decimal(6,2) DEFAULT NULL,
  `meter_charge` decimal(6,2) DEFAULT NULL,
  `service_charge` decimal(6,2) DEFAULT NULL,
  `vat` decimal(6,2) DEFAULT NULL,
  `price_one_start` int(11) NOT NULL DEFAULT 0,
  `price_one_end` int(11) NOT NULL DEFAULT 0,
  `price_one` decimal(6,2) DEFAULT NULL,
  `price_two_start` int(11) NOT NULL DEFAULT 0,
  `price_two_end` int(11) NOT NULL DEFAULT 0,
  `price_two` decimal(6,2) DEFAULT NULL,
  `price_three_start` int(11) NOT NULL DEFAULT 0,
  `price_three_end` int(11) NOT NULL DEFAULT 0,
  `price_three` decimal(6,2) DEFAULT NULL,
  `price_four_start` int(11) NOT NULL DEFAULT 0,
  `price_four_end` int(11) NOT NULL DEFAULT 0,
  `price_four` decimal(6,2) DEFAULT NULL,
  `price_five` decimal(6,2) DEFAULT NULL,
  `price_five_start` int(11) NOT NULL DEFAULT 0,
  `price_five_end` int(11) NOT NULL DEFAULT 0,
  `price_six` decimal(6,2) DEFAULT NULL,
  `price_six_start` int(11) NOT NULL DEFAULT 0,
  `price_six_end` int(11) NOT NULL DEFAULT 0,
  `price_seven` decimal(6,2) DEFAULT NULL,
  `price_seven_start` int(11) NOT NULL DEFAULT 0,
  `price_seven_end` int(11) NOT NULL DEFAULT 0,
  `others` decimal(6,2) DEFAULT NULL,
  `flat_rate` decimal(6,2) NOT NULL DEFAULT 0.00,
  `pick_rate` decimal(6,2) NOT NULL DEFAULT 0.00,
  `offpick_rate` decimal(6,2) NOT NULL DEFAULT 0.00,
  `c_demand_charge` decimal(6,2) NOT NULL DEFAULT 0.00,
  `c_meter_charge` decimal(6,2) NOT NULL DEFAULT 0.00,
  `c_service_charge` decimal(6,2) NOT NULL DEFAULT 0.00,
  `c_vat` decimal(6,2) NOT NULL DEFAULT 0.00,
  `c_others` decimal(6,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tarrifs`
--

INSERT INTO `tarrifs` (`id`, `demand_charge`, `meter_charge`, `service_charge`, `vat`, `price_one_start`, `price_one_end`, `price_one`, `price_two_start`, `price_two_end`, `price_two`, `price_three_start`, `price_three_end`, `price_three`, `price_four_start`, `price_four_end`, `price_four`, `price_five`, `price_five_start`, `price_five_end`, `price_six`, `price_six_start`, `price_six_end`, `price_seven`, `price_seven_start`, `price_seven_end`, `others`, `flat_rate`, `pick_rate`, `offpick_rate`, `c_demand_charge`, `c_meter_charge`, `c_service_charge`, `c_vat`, `c_others`, `created_at`, `updated_at`) VALUES
(1, 120.00, 0.00, 0.00, 5.00, 1, 50, 3.75, 51, 75, 4.19, 76, 200, 5.72, 201, 300, 6.00, 6.34, 301, 400, 9.94, 401, 600, 11.46, 600, 999999999, 0.00, 10.30, 12.36, 9.27, 60.00, 0.00, 30.00, 15.50, 0.00, NULL, '2022-09-13 12:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nazrul Islam', 'admin@gmail.com', NULL, '$2y$10$Bb8Jdlxro9HdBMoHzJcbFumy8XNwpHyYaDTs0OXGfmEJCGFQlR8nm', 'YIJa5WKRlpcsWswukQf7p9PStl8dGMDom5ElndaLvXJ1JWtLk1BBlcku01Hh', '2022-04-06 02:14:56', '2022-04-06 02:14:56'),
(4, 'Demo', 'demo@gmail.com', NULL, '$2y$10$kShRYVrWKEqGOmhekce/i.P78ZSsTg8fVDj0lK.0yqsxe8En/YOi2', NULL, '2022-09-06 12:31:10', '2022-09-06 12:31:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dues`
--
ALTER TABLE `dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarrifs`
--
ALTER TABLE `tarrifs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `dues`
--
ALTER TABLE `dues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tarrifs`
--
ALTER TABLE `tarrifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
