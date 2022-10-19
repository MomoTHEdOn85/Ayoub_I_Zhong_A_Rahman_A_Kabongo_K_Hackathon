-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:8889
-- 生成日期： 2022-10-19 13:46:01
-- 服务器版本： 5.7.34
-- PHP 版本： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `db_thermosecuity`
--

-- --------------------------------------------------------

--
-- 表的结构 `tbl_controls`
--

CREATE TABLE `tbl_controls` (
  `control_id` mediumint(8) UNSIGNED NOT NULL,
  `control_humidity` text NOT NULL,
  `control_light` text NOT NULL,
  `control_temperature` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_controls`
--

INSERT INTO `tbl_controls` (`control_id`, `control_humidity`, `control_light`, `control_temperature`) VALUES
(1, 'Humidity temperature gauge features face icons to indicate DRY/COMFORT/WET air condition quickly to notify you to adjust your humidifier or dehumidifier accordingly and ensure you will always live in the most comfortable environment!', 'Auto switch on/off in the dark. You can control lights through the remote control and smart APP, you can change the color, and adjust the brightness as you like', 'Temperature sensor has built-in high-precision manufacturing sensors that can monitor temp and humidity changes accurately and stay updated.');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `product_name` varchar(400) NOT NULL,
  `product_color` varchar(200) NOT NULL,
  `product_dimensions` varchar(500) NOT NULL,
  `product_price` varchar(140) NOT NULL,
  `product_manufacturer` varchar(140) NOT NULL,
  `product_warranty` varchar(100) NOT NULL,
  `product_country_origin` varchar(100) NOT NULL,
  `product_display_type` varchar(100) NOT NULL,
  `product_weight` varchar(100) NOT NULL,
  `product_connectivity` text NOT NULL,
  `product_ratings` varchar(100) NOT NULL,
  `product_website` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_color`, `product_dimensions`, `product_price`, `product_manufacturer`, `product_warranty`, `product_country_origin`, `product_display_type`, `product_weight`, `product_connectivity`, `product_ratings`, `product_website`) VALUES
(1, 'HouseCom™ ThermoSecurity™ System', 'white', '1.9in x 0.8in', '$110', 'HouseCom™', '3 years', 'Canada', 'Touchscreen', '45g', 'COMPATIBLE WITH ELECTRIC HEATING. Works with baseboard heaters, convectors, fan-forced convectors, and radiant ceiling heating. Universal installation. Compatible with 2 or 4 wire connections\", \"display\":\"Touchscreen.', '4.5', '');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_security`
--

CREATE TABLE `tbl_security` (
  `security_id` mediumint(8) UNSIGNED NOT NULL,
  `security_cameras` text NOT NULL,
  `security_mic` text NOT NULL,
  `security_history` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_security`
--

INSERT INTO `tbl_security` (`security_id`, `security_cameras`, `security_mic`, `security_history`) VALUES
(1, 'Security cameras wireless with advanced AI technology. When the WIFI wireless security camera PIR sensor monitors motion, it can distinguish people/pets/vehicles through the AI algorithm of our APP, and send notifications to your smartphone iOS or Android, and it can also be turned on automatically. The outdoor security camera alarm, and flash can effectively deter thieves and help you screen visitors at your door.', 'With the real-time monitoring function you can test if it is working properly during recording.', 'The best searching, the sharpest interface, and the most useful filters - for your history. Check History replaces your camera\'s history viewer and adds more controls to manage your history.');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `setting_id` mediumint(8) UNSIGNED NOT NULL,
  `setting_language` text NOT NULL,
  `setting_region` text NOT NULL,
  `setting_schedule` text NOT NULL,
  `setting_appearance` text NOT NULL,
  `setting_account` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_settings`
--

INSERT INTO `tbl_settings` (`setting_id`, `setting_language`, `setting_region`, `setting_schedule`, `setting_appearance`, `setting_account`) VALUES
(1, 'Sign in to your HouseCom™ ThermoSecurity™ System account then select Settings to change the display language for your APP. You can choose English (UK), English (US), and French. ', 'HouseCom™ ThermoSecurity™ System use your country or region to adjust date and give you better experience.', 'Use Schedule to create or change your appliances\' schedule. When you create and stick to a schedule, you’re establishing a routine.', 'Appearance settings allow you to edit the colors, fonts, and layouts of components and other general settings.', 'HouseCom™ ThermoSecurity™ System  allows you to control your account your way with customizable privacy settings.');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_temperature`
--

CREATE TABLE `tbl_temperature` (
  `temperature_id` mediumint(8) UNSIGNED NOT NULL,
  `temperature_mode` text NOT NULL,
  `temperature_hvac` text NOT NULL,
  `temperature_schedule` text NOT NULL,
  `temperature_weather` text NOT NULL,
  `temperature_humidity` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_temperature`
--

INSERT INTO `tbl_temperature` (`temperature_id`, `temperature_mode`, `temperature_hvac`, `temperature_schedule`, `temperature_weather`, `temperature_humidity`) VALUES
(1, 'Have fan, heat, cooler mode to allow user rest in ease.', 'Smart thermostat with HVAC monitoring, which looks out for your heating and cooling systems; sends an alert if something doesn\'t seem right, along with helpful reminders to make maintenance easier.', 'Programmable thermostat that lets you create an energy efficient schedule in the app on your Android or iPhone.', 'Allow users know about indoor and outdoor weather and adjust itself accordingly.', 'Humidity temperature gauge features face icons to indicate DRY/COMFORT/WET air condition quickly to notify you to adjust your humidifier or dehumidifier accordingly and ensure you will always live in the most comfortable environment!');

--
-- 转储表的索引
--

--
-- 表的索引 `tbl_controls`
--
ALTER TABLE `tbl_controls`
  ADD PRIMARY KEY (`control_id`);

--
-- 表的索引 `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- 表的索引 `tbl_security`
--
ALTER TABLE `tbl_security`
  ADD PRIMARY KEY (`security_id`);

--
-- 表的索引 `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- 表的索引 `tbl_temperature`
--
ALTER TABLE `tbl_temperature`
  ADD PRIMARY KEY (`temperature_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tbl_controls`
--
ALTER TABLE `tbl_controls`
  MODIFY `control_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tbl_security`
--
ALTER TABLE `tbl_security`
  MODIFY `security_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `setting_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tbl_temperature`
--
ALTER TABLE `tbl_temperature`
  MODIFY `temperature_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
