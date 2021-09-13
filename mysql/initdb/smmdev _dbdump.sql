-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: smm_mysql
-- Generation Time: Sep 13, 2021 at 04:51 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smmdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_providers`
--

INSERT INTO `api_providers` (`id`, `ids`, `uid`, `name`, `url`, `key`, `type`, `balance`, `currency_code`, `description`, `status`, `created`, `changed`) VALUES
(1, '6c08835fc25dd0add2f1f6be7c828578', 1, 'HQ Smartpanel', 'https://hqsmartpanel.com/api/v1', 'JIyPCexcfKPOjsSGlcjHYV4n5yRsVgCE', 'standard', NULL, NULL, 'HQ SmartPanel - Services - The Best SMM Panel - Social Media Services for Resellers\r\n', 1, '2019-04-09 11:36:34', '2019-04-10 10:41:29'),
(2, '628831215f23d213df1f6be7c828578', 1, 'vinasmm.com', 'https://vinasmm.com/api/v2', '9d4b547e634dba2330ae3b6c148918fa', 'standard', NULL, NULL, 'VinaSMM - Best rate for SMM reseller\r\n\r\n', 1, '2019-04-09 11:36:34', '2019-04-10 10:41:29'),
(3, '628831215f23345213df1f6be7c828578', 1, 'momopanel.com', 'https://momopanel.com/api/v2', '8de900149a5c680a892fdef8f1cc3ce2', 'standard', NULL, NULL, 'Momopanel - Cheapest Services for All Reseller\r\n\r\n', 1, '2019-04-09 11:36:34', '2019-04-10 10:41:29'),
(4, '48139346464324640b1227679c6fcd65', 38, 'APISeller', 'https://apiseller.com/api/v2', '2eb922c94e7936b262769be0c97f4c6c', 'standard', '157.13000', NULL, '', 1, '2021-08-19 13:44:46', '2021-08-19 13:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `image` text,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `data` text,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `ids`, `uid`, `name`, `desc`, `image`, `sort`, `status`, `data`, `created`, `changed`) VALUES
(29, 'a0490df3945dcacbd6fe588b51f7ce29', 38, '💥💥Child Panel', NULL, NULL, 0, 1, NULL, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(30, 'c4cbc13668c422e52e1abd14005020aa', 38, '⚡️⚡️⚡️ PROMOTION [Cheap Services] 🔥', NULL, NULL, 1, 1, NULL, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(31, '58290ea0536e4669c60860242138b95e', 38, ' 💰 YouTube Monetized Channels for Sale 💰💰', NULL, NULL, 0, 1, NULL, '2021-08-19 14:36:04', '2021-08-19 14:36:04'),
(32, '659273a80f84b3a62d0c99217b2eddea', 38, ' Youtube Views Packages  ', NULL, NULL, 1, 1, NULL, '2021-08-19 14:36:04', '2021-08-19 14:36:04'),
(33, 'e6e93879d96ad8d70292e0ebd69ca589', 38, ' TikTok Views ', '', NULL, 4, 1, '{\"action_btn\":\"post\",\"text_btn\":\"Load Post\",\"noButton\":\"1\",\"description_text\":\"description\"}', '2021-08-19 14:45:24', '2021-09-07 23:25:44'),
(34, 'e30d96038529117539a3cc47a2d59907', 38, ' TikTok Likes ', NULL, NULL, 18, 1, NULL, '2021-08-19 14:45:24', '2021-08-19 14:45:24'),
(35, 'd978bea3b5c81a702ed7ef5b5272247d', 38, ' TikTok Followers ', NULL, NULL, 27, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(36, '7aafa52949e983aae9965ee4d76d8a73', 38, ' TikTok Livestream Views ', NULL, NULL, 37, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(37, '34797cc2b284f59a76c972c0df9e65c8', 38, ' TikTok Shares ', NULL, NULL, 43, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(38, '6963d90640bc1e0576daa92692c50dc3', 38, ' TikTok Comments ', NULL, NULL, 45, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(39, 'b049bf52f29316768057d73765e2999b', 38, ' TikTok Auto Likes / Views ', NULL, NULL, 48, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(40, 'd916c0eee7a039439386e25a13ea8d09', 38, ' Instagram Real Comments ✅ from HQ Accounts', NULL, NULL, 50, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(41, '019a97e2f42c72e2ccee47949918cee5', 38, ' Instagram Likes', '', NULL, 56, 1, '{\"action_btn\":\"link\",\"text_btn\":\"Instagram Link\",\"noButton\":\"1\",\"description_text\":\"description\"}', '2021-08-19 14:51:12', '2021-09-07 22:03:12'),
(42, '7c65654a0e72ef3be9ec2792c96a1095', 38, ' Instagram POWER Likes 🔥', NULL, NULL, 90, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(43, '1419fb048e965804ee965ca1025931c9', 38, ' Instagram [ Targeted ] Likes', NULL, NULL, 97, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(44, 'cd3404b954f98b92c8c764c6cfb23b13', 38, ' Instagram Followers [ Guaranteed ]', '', NULL, 103, 1, '{\"action_btn\":\"user\",\"text_btn\":\"Instagram User\",\"noButton\":\"1\",\"description_text\":\"keyword\"}', '2021-08-19 14:51:12', '2021-09-07 21:53:29'),
(45, 'd6ada32fde2e565cd6a71a5a9548106f', 38, ' Instagram POWER Followers [ Lifetime Guaranteed ] 🔥', NULL, NULL, 120, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(46, 'b463a4879a925b077132460796a039db', 38, ' Instagram Followers [ Not Guaranteed ]', NULL, NULL, 124, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(47, '34836e71024fe98f29bfd44246ff8a94', 38, ' Instagram Followers [ from ADS ]', NULL, NULL, 151, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(48, '99832de321460fd9339fbd946f4a8237', 38, ' Instagram 𝐔𝐒𝐀 Services 🇺🇸', NULL, NULL, 158, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(49, '5e304ce4b89305f58629d17bb89a6a27', 38, ' Instagram 𝐈𝐍𝐃𝐈𝐀𝐍 Services 🇮🇳', NULL, NULL, 162, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(50, 'd9ca75a7668d384340c22911ce026100', 38, ' Instagram 𝐉𝐀𝐏𝐀𝐍 Services 🇯🇵', NULL, NULL, 167, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(51, '041dba50080a58928717d5d07b1a78f0', 38, ' Instagram 𝐈𝐍𝐃𝐎𝐍𝐄𝐒𝐈𝐀 Services 🇮🇩', NULL, NULL, 183, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(52, '681139e4eb95828889b09033b81ec9c1', 38, ' Instagram Story  / Saves / Impressions', NULL, NULL, 197, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(53, '3dd62caa4f992d4bf96bdf6dd29d9c63', 38, ' Instagram Shares ', NULL, NULL, 214, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(54, 'f40f95956f2990059cb4660aa6db1260', 38, ' Instagram Mentions ', NULL, NULL, 216, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(55, '28d088e166c9e9a3e7bc4695886fb0df', 38, ' Instagram TV Views', NULL, NULL, 227, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(56, '5b10fe0365ec3342aef1675cc62616a1', 38, ' Instagram Views', NULL, NULL, 229, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(57, 'f9c011987a94cd162b16a87132d5f162', 38, ' Instagram Comments ', NULL, NULL, 242, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(58, '1d8981993b19d2c051e1b9dfa6b41c91', 38, ' Instagram Auto Likes', NULL, NULL, 250, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(59, '419f3b5cf49226f580fd4573575b7948', 38, ' Instagram Auto Views', NULL, NULL, 258, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(60, '080fa65e441a2e246ec7b9838ae673ee', 38, ' Facebook Real Comments ✅ from HQ Accounts ', NULL, NULL, 261, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(61, 'c92e6cd30c8ad79dd77b2af72e97935a', 38, ' Facebook Page Likes ', '', NULL, 267, 1, '{\"action_btn\":\"Facebook Page\",\"text_btn\":\"Load Page\",\"noButton\":\"0\"}', '2021-08-19 14:51:12', '2021-09-04 16:00:40'),
(62, 'a0146fe766fa55468f912f3d482cec97', 38, ' Facebook Page Followers ', NULL, NULL, 276, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(63, '462af5560562348562d0265ba4ca9b4c', 38, ' Facebook Group Members ', NULL, NULL, 279, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(64, 'e25b4dc0675be8b25fb62c46b2aa901f', 38, ' Facebook Profile Followers [ Targeted ] ', NULL, NULL, 281, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(65, '458cd6be33952b4f0aef1451844587e3', 38, '  Facebook Post Likes ', NULL, NULL, 287, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(66, '826ad66ce1fb868069ee7d26be8c7022', 38, ' Facebook Country Targeted Post Likes', NULL, NULL, 293, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(67, '16425195767d058ec7276b197c2c6321', 38, ' Facebook Emoticons | Reaction  ❤️😂😲😢😡', NULL, NULL, 298, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(68, '5d02306b78d1b73db98557a7f2f7271b', 38, '🇮🇳 Facebook [ INDIA ] Services ', NULL, NULL, 303, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(69, '5f68f09f8d45652dd6bd7b3f55f721ce', 38, '🇪🇬 Facebook [ EGYPTIAN ] Services ', NULL, NULL, 309, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(70, 'bb8895ff2f7269ea765105153191815a', 38, ' Facebook Story Views ', NULL, NULL, 317, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(71, 'b5f1f961bdff5a8235c85db6b79cf910', 38, ' Facebook Video Views ', NULL, NULL, 318, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(72, 'bbaa165f866f8514a1946ad501e0fca1', 38, ' Facebook Auto Video Views (7-15-30 Days Subscription)', NULL, NULL, 321, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(73, '82707495c23998b72cfd41e6a402c5f6', 38, ' Facebook Video Monetization 💰 ', NULL, NULL, 330, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(74, 'd904bca53e1b61b228e6d64ece17bdad', 38, ' Facebook Comments ', '', NULL, 336, 1, '{\"action_btn\":\"post\",\"text_btn\":\"Load Post\",\"noButton\":\"1\",\"description_text\":\"keyword\"}', '2021-08-19 14:51:12', '2021-09-10 22:41:29'),
(75, '22f1069e19c318aab97a8cd3a6d352aa', 38, ' Facebook Live Stream ', NULL, NULL, 339, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(76, 'c797be491b680de6907ce0d098fb1314', 38, ' Monthly Auto Facebook Live Views Pack (30 Days / Daily x 3 Live ) ', NULL, NULL, 345, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(77, 'd8f92def7956b1b01609988782a6c7ff', 38, ' YouTube Real Comments ✅ from HQ Accounts', NULL, NULL, 358, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(78, '74b547ea4dcbadb9dee9dad854dea1e8', 38, ' Youtube 4000H Watch Times Views', NULL, NULL, 364, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(79, 'a17e646e90bf9e4ea5e359a89a26ea7c', 38, ' Youtube Views - [ Refill Guarantee ] ', NULL, NULL, 379, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(80, '12b6dc6c2f0c6faa214543447a32e163', 38, ' Youtube Views [ Google Adwords ] %100 No Drop ', NULL, NULL, 405, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(81, 'd0da934bb9210e8bdb598106ac0d6ffa', 38, ' YouTube Views - [ Suggested ][ Best For Ranking ]', NULL, NULL, 413, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(82, '0e95323ebf483630ce7f089a1659e43e', 38, ' YouTube Views - [ SEO ] [ HR - Monetization For Watchtime ] ', NULL, NULL, 421, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(83, '5b6eefd32dcb85b43c2e85a583fe3ccc', 38, ' YouTube Views - [ HIGH RETENTION ] [ Refill Guarantee ]', NULL, NULL, 429, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(84, 'fb16334b7c1967521d5915cd1d9eacaa', 38, ' Youtube Views [ Related Views ] [ Targeted - Refill Guaranteed ]', NULL, NULL, 442, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(85, 'f75bd46c4ad2d4ba2402af0e9a7744af', 38, ' YouTube Views - [ Targeted - NO REFILL ] ', NULL, NULL, 452, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(86, '855cd655e8a9bc8607f08e5161f9e7e8', 38, ' YouTube Views - [ Targeted - Refill guaranteed ] ', NULL, NULL, 636, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(87, 'fd865ef6358781cf29ae0a4aa1f129fe', 38, ' YouTube Real Active Views [ 𝐑𝐀𝐕 - GEO Targeted ] ', NULL, NULL, 664, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(88, '918d5789a72810b6708da20539d8e7c2', 38, ' YouTube Unique Views [ 𝐑𝐀𝐕™ - GEO Targeted ] ', NULL, NULL, 693, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(89, 'f51b77fdd2a0276e08a8ce044e260113', 38, ' YouTube Unique Views [ 𝐑𝐀𝐕-𝐆𝐒™ - GEO Targeted ]', NULL, NULL, 776, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(90, '9292dc1630c5d128adb0717864d1f2bd', 38, ' Youtube Live Stream Views ', NULL, NULL, 858, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(91, 'b94266fa6bbc8d1ecfc2eba03c9db875', 38, ' Youtube Subscribers ', NULL, NULL, 861, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(92, 'a2a5d975eb4867a26b2f70c9e324c6dd', 38, ' Youtube Likes / Dislikes / Comments', NULL, NULL, 872, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(93, 'b3a95bd4940ecf54ad445fe0b10b1ac0', 38, ' YouTube Shares [ GEO Targeted ]', NULL, NULL, 894, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(94, '46dce5797ea7394ba3e219bc6003996b', 38, ' Twitter Real Comments ✅ from HQ Accounts ', NULL, NULL, 977, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(95, '389e06d301e55ac3c53e5f5c01ff2e14', 38, ' Twitter Likes / ReTweets ', NULL, NULL, 983, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(96, '70cdf80639c3bdab076ab796585d5188', 38, ' Twitter Auto Likes / ReTweets ', NULL, NULL, 990, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(97, 'e7262a5b71393f83bcb591eedec67eda', 38, ' Twitter Followers ', NULL, NULL, 992, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(98, 'bbd24f3586dc083985f37eec31a5d47c', 38, ' Twitter Views / Impressions / Interaction ', NULL, NULL, 994, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(99, 'fb1a7a30035a3a4354d839b1716e0bc6', 38, ' Twitter Comments ', NULL, NULL, 999, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(100, '23b55c79adcefe2464a61544acd19c24', 38, ' Spotify Greenroom Followers ', NULL, NULL, 1002, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(101, '7edf254c8f305f7dca28a278033ad9a7', 38, ' Spotify Followers ', NULL, NULL, 1003, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(102, '1da77e01517ac8bb8f0673ad40f37e7e', 38, ' Spotify Free Plays', NULL, NULL, 1007, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(103, 'bed8727e4bc36cbb8a607f7efa231a57', 38, ' Spotify Premium Plays', NULL, NULL, 1014, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(104, '79b32823974eba0b355eebf5980352df', 38, ' Spotify Playlist Followers ', NULL, NULL, 1019, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(105, '73ba29be26c88ad4e123854c18bbbb49', 38, ' Spotify Playlist Plays ', NULL, NULL, 1022, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(106, '7e05c291dbcae803e7002b17f808bd1f', 38, ' Spotify Podcast Plays ', NULL, NULL, 1025, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(107, 'c8b2a2dd8c89c7babb27f7b568eca999', 38, ' Spotify Monthly Listeners ', NULL, NULL, 1026, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(108, 'b9143189b3e20fb99a223fa42dc10fb4', 38, ' Spotify Saves ', NULL, NULL, 1028, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(109, '9d77ee00756f843482431a666fac6e05', 38, ' Spotify Country Targeted ', NULL, NULL, 1032, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(110, 'c9f1caf2c8ada6796e881c6115424e77', 38, ' Clubhouse Invite ', NULL, NULL, 1060, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(111, 'bd39201c8c49fc2a6ea8fc715627fe77', 38, ' Clubhouse Followers ', NULL, NULL, 1062, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(112, 'a0985344b93a96dcc4aee055bbc35309', 38, ' Clubhouse Club Members ', NULL, NULL, 1081, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(113, 'ba5ead9a3fe123b409bcf3ae94c729d9', 38, ' Discord ', NULL, NULL, 1092, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(114, '9de04398ead1cef29535ed848d421a3f', 38, 'Twitch Followers ', NULL, NULL, 1100, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(115, '663256f918a4429732e3587e8e3f86f5', 38, ' Telegram ', NULL, NULL, 1106, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(116, 'a1146b0e37e3d60cac33ca737015507e', 38, ' Reddit ', NULL, NULL, 1119, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(117, 'a13bc7e56d4c78e9ce506e469f987b1e', 38, 'Snapchat ', NULL, NULL, 1121, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(118, 'dc61c268e78893a8b519a5cab08ae7f6', 38, ' Onlyfans ', NULL, NULL, 1124, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(119, 'bcee0c4ad48fc3c4dc74695232387734', 38, '🌎Website Traffic [ + Choose Referrer ]', NULL, NULL, 1126, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(120, '2ea4843391eb95014ad4112b17e8c02a', 38, '🌎 Website Cheap Traffic [WorldWide]', NULL, NULL, 1145, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(121, 'a9dec316c3482a331b3890832a52cbd4', 38, '🇺🇸 Website Traffic from USA [ + Choose Referrer ] [Speed ~15,000/Day]', NULL, NULL, 1177, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(122, 'fe46a2d3ab7f1142c6d5ecb3cd2fe5d5', 38, '🇬🇧 Website Traffic from UK [ + Choose Referrer ]', NULL, NULL, 1198, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(123, '46135a3ab30e141980c8f4ca33e3abdc', 38, '🇨🇦 Website Traffic from Canada [ + Choose Referrer ]', NULL, NULL, 1218, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(124, 'f8d1e2051838a29dc2a44815c526f4ae', 38, '🇮🇳 Website Traffic from India [ + Choose Referrer ]', NULL, NULL, 1238, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(125, 'afbf39829b105327ebcc54493435ab32', 38, '🇧🇷 Website Traffic from Brazil [ + Choose Referrer ]', NULL, NULL, 1260, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(126, 'cf80b144495df286c74e9a1642d18b46', 38, '🇫🇷 Website Traffic from France [ + Choose Referrer ]', NULL, NULL, 1276, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(127, '4cbac31aba152fde58008ca0d771ab02', 38, '🇷🇺 Website Traffic from Russia [ + Choose Referrer ]', NULL, NULL, 1306, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(128, 'a94190e428fa594384b8cacc4d582a87', 38, '🇳🇱 Website Traffic from Netherlands [ + Choose Referrer ]', NULL, NULL, 1333, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(129, 'c98bdbadfd4a90557dca9b3568751f65', 38, '🇮🇹 Website Traffic from Italy [ + Choose Referrer ]', NULL, NULL, 1356, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(130, '9b47c4db261337d54641a2e384f774df', 38, '🇪🇸 Website Traffic from Spain [ + Choose Referrer ]', NULL, NULL, 1383, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(131, '6d2941a10c129ab66da37043bdecfe21', 38, '🇺🇦 Website Traffic from Ukraine [ + Choose Referrer ]', NULL, NULL, 1411, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(132, 'c41ba71d7a9576c94ab93c6b4d9794cc', 38, '🇨🇿 Website Traffic from Czech Republic [ + Choose Referrer ]', NULL, NULL, 1439, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(133, '88cfdf2082eb769cf6e24aa7a7c9eb09', 38, '🇯🇵 Website Traffic from Japan [ + Choose Referrer ]', NULL, NULL, 1466, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(134, '5c48210c2116306700c56bef8138b92f', 38, '🇮🇩 Website Traffic from Indonesia [ + Choose Referrer ]', NULL, NULL, 1499, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(135, '79f50adb2b2932bed2f47cedfff840f6', 38, '🇩🇪 Website Traffic from Germany [ + Choose Referrer ]', NULL, NULL, 1525, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(136, '607a45c5fde22e413952b496b4d3dc58', 38, '🇵🇰 Website Traffic from Pakistan [ + Choose Referrer ]', NULL, NULL, 1550, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(137, '343b21d27cd931def339d66a1537abd6', 38, '🇹🇭 Website Traffic from Thailand [ + Choose Referrer ]', NULL, NULL, 1578, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(138, '03321803a0a5f989eb51f7a4cfc74193', 38, '🇹🇼 Website Traffic from Taiwan [ + Choose Referrer ]', NULL, NULL, 1605, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(139, 'bb2aec8113f0ddfc931f04a8d1116d23', 38, '🇻🇳 Website Traffic from Vietnam [ + Choose Referrer ]', NULL, NULL, 1636, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(140, '84bf7b868b431500b69a937de45ec424', 38, '🇸🇬 Website Traffic from Singapore [ + Choose Referrer ]', NULL, NULL, 1669, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(141, 'b6821ccd62c0493ce92337f13e70621f', 38, '🇷🇴 Website Traffic from Romania [ + Choose Referrer ]', NULL, NULL, 1693, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(142, '1bdc756fbf0c5e61b23268d06830bb59', 38, '🇲🇦 Website Traffic from Morocco [ + Choose Referrer ]', NULL, NULL, 1717, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(143, 'a667340f0268a8cb80f1d06e2aefd2db', 38, 'PRIVATE', NULL, NULL, 1719, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(144, '81ae465df80e4940cf664d7d03a2dc65', 38, '~ Facebook Services - Vietnam 🇻🇳', NULL, NULL, 1782, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12'),
(145, 'ad82a81ee88ec16395d09337b1991ce4', 38, '~ Facebook Reaction - Vietnam 🇻🇳', NULL, NULL, 1801, 1, NULL, '2021-08-19 14:51:12', '2021-08-19 14:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `creditcards`
--

CREATE TABLE `creditcards` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `omise_token_id` text,
  `name` text NOT NULL,
  `ids` text,
  `creditcardno` text NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditcards`
--

INSERT INTO `creditcards` (`id`, `uid`, `omise_token_id`, `name`, `ids`, `creditcardno`, `month`, `year`, `status`, `created`, `changed`) VALUES
(4, 39, 'tokn_test3333333', 'pornchai khamrat', '8fefcf1258149fb0bf373bc1362c29c9', '4242424242424242', 4, 24, 1, '2021-09-03 15:28:25', '2021-09-03 15:28:25'),
(10, 38, NULL, 'nawapol choosang', 'f54b7c1c815981005625f043c910e551', '4242424242424242', 10, 21, 0, '2021-09-11 05:13:51', '2021-09-11 05:13:51'),
(12, 38, '', 'nawapol choosang', 'da7db30c2b2110c92fda43c60e018209', '4242424242424242', 10, 21, 0, '2021-09-11 05:26:43', '2021-09-11 05:26:43'),
(13, 38, NULL, 'nawapol choosang', 'e241db496a2c882934c941d8dc6fcdc1', '4242424242424242', 10, 21, 0, '2021-09-11 05:42:01', '2021-09-11 05:42:01'),
(15, 38, 'card_test_5p4y5xg45zbbdllevxx', 'thong dee', '49d95bd122c6f332409e61e2b896c8c0', '4242424242424242', 10, 21, 0, '2021-09-11 05:58:30', '2021-09-11 05:58:30'),
(17, 38, 'card_test_5p4ybglohjo6jplgq9q', 'thong dee', '749d4a08b54992bed6ff4c440cee17b1', '4242424242424242', 10, 21, 0, '2021-09-11 06:14:13', '2021-09-11 06:14:13'),
(19, 38, 'card_test_5p4yc9li3e48mqy2c7y', 'thong dee', '3477a1a7c398ca3690c2e638ace1b08c', '4242424242424242', 10, 21, 0, '2021-09-11 06:16:30', '2021-09-11 06:16:30'),
(21, 38, 'card_test_5p4yd06spqyae02y273', 'thong dee', 'd34aeb2c9561d3b056c440e3dd737e92', '4242424242424242', 10, 21, 0, '2021-09-11 06:18:36', '2021-09-11 06:18:36'),
(25, 38, 'card_test_5p4yjwcsm0th9i2hv6r', 'thong dee', 'f4b293407f313b2c9ffaeed9519b94fd', '4242424242424242', 10, 21, 1, '2021-09-11 06:38:11', '2021-09-11 06:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `question` text,
  `answer` longtext,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text,
  `pid` int(1) DEFAULT '1',
  `position` int(1) DEFAULT '0',
  `name` text,
  `slug` text,
  `image` text,
  `description` longtext,
  `content` longtext,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4,
  `file_type` text CHARACTER SET utf8mb4,
  `file_ext` text CHARACTER SET utf8mb4,
  `file_size` text CHARACTER SET utf8mb4,
  `is_image` text CHARACTER SET utf8mb4,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(1, '51bb081b56439a2e491e485f1a83dee8', 'en', 'GB', 1, 1, '2021-08-10 12:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '0'),
(68, 'enable_disable_homepage', '0'),
(69, 'website_desc', 'SmartPanel - #1 SMM Reseller Panel - Best SMM Panel for Resellers. Also well known for TOP SMM Panel and Cheap SMM Panel for all kind of Social Media Marketing Services. SMM Panel for Facebook, Instagram, YouTube and more services!'),
(70, 'website_keywords', 'smm panel, SmartPanel, smm reseller panel, smm provider panel, reseller panel, instagram panel, resellerpanel, social media reseller panel, smmpanel, panelsmm, smm, panel, socialmedia, instagram reseller panel'),
(71, 'website_title', 'SmartPanel - SMM Panel Reseller Tool'),
(72, 'website_favicon', 'https://smm-dev.com/assets/images/favicon.png'),
(73, 'embed_head_javascript', ''),
(74, 'website_logo_white', 'https://smm-dev.com/assets/images/logo_white.png'),
(75, 'enable_service_list_no_login', '1'),
(76, 'enable_api_tab', '0'),
(77, 'disable_signup_page', '0'),
(78, 'website_name', ''),
(79, 'social_facebook_link', ''),
(80, 'social_twitter_link', ''),
(81, 'social_pinterest_link', ''),
(82, 'social_instagram_link', ''),
(83, 'social_youtube_link', ''),
(84, 'copy_right_content', 'Copyright &copy; 2020 - SmartPanel'),
(85, 'notification_popup_content', ''),
(86, 'embed_javascript', ''),
(87, 'enable_notification_popup', '1'),
(88, 'enable_goolge_recapcha', '0'),
(89, 'currency_decimal_separator', 'dot'),
(90, 'currency_thousand_separator', 'comma'),
(91, 'currency_symbol', '฿'),
(92, 'currency_decimal', '2'),
(93, 'default_header_skin', 'lawrencium'),
(94, 'enable_news_announcement', '1'),
(95, 'is_cookie_policy_page', ''),
(96, 'contact_tel', '+12345678'),
(97, 'contact_email', 'do-not-reply@smartpanel.com'),
(98, 'contact_work_hour', 'Mon - Sat 09 am - 10 pm'),
(99, 'social_tumblr_link', ''),
(100, 'enable_signup_skype_field', '0'),
(101, 'is_verification_new_account', '0'),
(102, 'is_welcome_email', ''),
(103, 'is_new_user_email', ''),
(104, 'default_limit_per_page', '10'),
(105, 'is_active_paypal', '1'),
(106, 'is_active_stripe', '1'),
(107, 'is_active_2checkout', '1'),
(108, 'is_active_manual', '0'),
(109, 'is_active_razor_pay', '1'),
(110, 'is_active_cashmaal', '1'),
(111, 'is_active_coinbase', '1'),
(112, 'is_active_paytm', '1'),
(113, 'is_active_paytm_manual', ''),
(114, 'is_active_payumoney', '1'),
(115, 'is_active_perfectmoney', '1'),
(116, 'is_active_paytm_qr', '1'),
(117, 'is_active_toyyibpay', '1'),
(118, 'is_maintenance_mode', '0'),
(119, 'payment_transaction_min', '10'),
(120, 'payment_environment', 'sandbox'),
(121, 'paypal_chagre_fee', '4'),
(122, 'paypal_client_id', ''),
(123, 'paypal_client_secret', ''),
(124, 'stripe_chagre_fee', '4'),
(125, 'stripe_publishable_key', ''),
(126, 'stripe_secret_key', ''),
(127, 'razor_pay_chagre_fee', '4'),
(128, 'razor_pay_publishable_key', ''),
(129, 'razor_pay_secret_key', ''),
(130, 'twocheckout_chagre_fee', '4'),
(131, '2checkout_publishable_key', ''),
(132, '2checkout_private_key', ''),
(133, '2checkout_seller_id', ''),
(134, 'manual_payment_content', '&lt;p&gt;You can make a manual payment to cover an outstanding balance. Once time, open a ticket and contact with Administrator.&lt;/p&gt;'),
(135, 'enable_explication_service_symbol', '0'),
(136, 'auto_rounding_x_decimal_places', '2'),
(137, 'default_price_percentage_increase', '30'),
(138, 'is_auto_currency_convert', '0'),
(139, 'new_currecry_rate', '1'),
(140, 'default_min_order', ''),
(141, 'default_max_order', ''),
(142, 'default_price_per_1k', '0.80'),
(204, 'enable_attentions_orderpage', ''),
(203, 'currencycode', ''),
(146, 'is_active_omise', '1'),
(147, 'cashmaal_chagre_fee', '4'),
(148, 'coinbase_api_key', ''),
(149, 'paytm_chagre_fee', '4'),
(150, 'payumoney_merchant_key', ''),
(151, 'currency_code', 'THB'),
(152, 'perfectmoney_payment_transaction_min', ''),
(153, 'perfectmoney_chagre_fee', '4'),
(154, 'cashmaal_currency_rate_to_usd', '76'),
(155, 'cashmaal_web_id', ''),
(156, 'coinbase_chagre_fee', '4'),
(157, 'coinbase_payment_transaction_min', '10'),
(158, 'payumoney_payment_environment', 'TEST'),
(159, 'payumoney_chagre_fee', '4'),
(160, 'payumoney_payment_transaction_min', '5000'),
(161, 'payumoney_currency_rate_to_usd', '7.5'),
(162, 'payumoney_merchant_salt', ''),
(163, 'perfect_money_currency_code', 'USD'),
(164, 'perfect_money_account_usd_client_id', ''),
(165, 'perfect_money_account_eur_client_id', ''),
(166, 'perfect_money_account_btc_client_id', ''),
(167, 'perfectmoney_alternate_passphrase', ''),
(168, 'paytm_payment_environment', 'TEST'),
(169, 'paytm_currency_rate_to_usd', '70'),
(170, 'paytm_merchant_id', ''),
(171, 'paytm_merchant_key', ''),
(172, 'omise_payment_environment', 'TEST'),
(173, 'omise_chagre_fee', '4'),
(174, 'omise_currency_rate_to_usd', '30'),
(175, 'omise_merchant_secret', 'skey_test_5o6p573womddycsnryw'),
(176, 'omise_merchant_key', 'pkey_test_5o6p551m1lv1c0oq65y'),
(177, 'omise_payment_transaction_min', ''),
(178, 'website_logo', 'https://smm-dev.com/assets/images/logo.png'),
(179, 'is_payment_notice_email', ''),
(180, 'is_ticket_notice_email', ''),
(181, 'is_ticket_notice_email_admin', ''),
(182, 'is_order_notice_email', ''),
(183, 'email_from', ''),
(184, 'email_name', ''),
(185, 'email_protocol_type', 'php_mail'),
(186, 'smtp_server', ''),
(187, 'smtp_port', ''),
(188, 'smtp_encryption', ''),
(189, 'smtp_username', ''),
(190, 'smtp_password', ''),
(191, 'omise_web_id', '4258'),
(192, 'default_home_page', 'pergo'),
(193, 'refill_expiry_days', '30'),
(194, 'is_clear_ticket', '0'),
(195, 'default_clear_ticket_days', '30'),
(196, 'enable_drip_feed', '0'),
(197, 'default_drip_feed_runs', '10'),
(198, 'default_drip_feed_interval', '30'),
(199, 'google_capcha_site_key', ''),
(200, 'google_capcha_secret_key', ''),
(201, 'omise_currency_rate_to_usd', '30'),
(205, 'omise_amount_group', '10,20,30,40'),
(206, 'omise_bank_account', '1234567890'),
(207, 'omise_amount_account', '1234567890123456'),
(208, 'get_features_option', '0'),
(209, 'cashmaal_payment_transaction_min', '');

-- --------------------------------------------------------

--
-- Table structure for table `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text,
  `pid` text,
  `purchase_code` text,
  `version` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '8068ec7f79145fe55dea67dd63b012c3', '23595718', '610a0187-5e6f-4c23-a08a-0071de963acd', '3.5');

-- --------------------------------------------------------

--
-- Table structure for table `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a22631d98f50bb7c26ead1a4586ec374b942dd32', '172.20.0.3', 1631541610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313534313631303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223531626230383162353634333961326534393165343835663161383364656538223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30382d31302031323a33373a3034223b7d7569647c733a323a223338223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31373a2261646d696e40736d6d2d6465762e636f6d223b733a31303a2266697273745f6e616d65223b733a383a22706f726e63686169223b733a393a226c6173745f6e616d65223b733a373a226b68616d726174223b733a383a2274696d657a6f6e65223b733a31323a22417369612f42616e676b6f6b223b7d),
('24eea2f80a30d359f70dda51100c26ea27d0ac80', '172.20.0.3', 1631541630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633313534313631303b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223531626230383162353634333961326534393165343835663161383364656538223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30382d31302031323a33373a3034223b7d7569647c733a323a223338223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31373a2261646d696e40736d6d2d6465762e636f6d223b733a31303a2266697273745f6e616d65223b733a383a22706f726e63686169223b733a393a226c6173745f6e616d65223b733a373a226b68616d726174223b733a383a2274696d657a6f6e65223b733a31323a22417369612f42616e676b6f6b223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `ip` text,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `type` text,
  `transaction_id` text,
  `txn_fee` double DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `data` text,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `slip` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_transaction_logs`
--

INSERT INTO `general_transaction_logs` (`id`, `ids`, `uid`, `payer_email`, `type`, `transaction_id`, `txn_fee`, `note`, `data`, `amount`, `status`, `created`, `slip`) VALUES
(5, 'fa9db5245a083bd62a8bc92a12d6f491', 38, NULL, 'truemoney', 'src_test_5p4uau5bkggtnrtlx5z', 1.6, NULL, NULL, 41.6, 1, '2021-09-10 16:23:22', NULL),
(6, '6d8ec66dd18f53e7154624ac15c3b09d', 38, NULL, 'omise', 'chrg_test_5p4ubfew3rvkd1144pt', 1.6, NULL, NULL, 41.6, 1, '2021-09-10 23:25:00', NULL),
(2, '8dc574f2a01bdc6183fffee73803d3cf', 38, NULL, 'omise', 'chrg_test_5p4u2ldgufcmsulbxrb', 1.2, NULL, NULL, 31.2, 1, '2021-09-10 22:59:54', NULL),
(7, 'b306d5f4b386649470052209b14e0d45', 38, NULL, 'omise', 'chrg_test_5p4uk484r20zbn9mpjt', 1.6, NULL, NULL, 41.6, 1, '2021-09-10 23:49:41', NULL),
(8, 'ebb25ad221ee0042a7581493aca19cc0', 38, NULL, 'omise', 'chrg_test_5p4xq7y2h0n725q5qmw', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 05:13:51', NULL),
(9, '162b403eec8368c148d62e5e49047885', 38, NULL, 'omise', 'chrg_test_5p4xr4g1mjvboijc8o8', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 05:16:26', NULL),
(10, '3a6cde14295fc585e267439507e9eec6', 38, NULL, 'omise', 'chrg_test_5p4xuqz42q4dpt13fv6', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 05:26:43', NULL),
(11, 'bbc72673428d12716b33c77a452e7af5', 38, NULL, 'omise', 'chrg_test_5p4y04oqmut21du5ie0', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 05:42:01', NULL),
(12, '0165d0cff9d75a7e643226b4cb15dd35', 38, NULL, 'omise', 'chrg_test_5p4y4behy739zp5zyny', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 05:53:55', NULL),
(13, 'b75d14f5eeac430ec6f4433ac83efb83', 38, NULL, 'omise', 'chrg_test_5p4y5xoz33z5jgb91ek', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 05:58:30', NULL),
(14, '7d0932c99ebbdafb64ecd4dcdd12e5fd', 38, NULL, 'omise', 'chrg_test_5p4ybgu1lq1b92icr8u', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 06:14:13', NULL),
(15, 'b4bec98709ab687c59c7ed7fb6b3ac4c', 38, NULL, 'omise', 'chrg_test_5p4yc9twudqnxonvu0s', 1.6, NULL, NULL, 41.6, 1, '2021-09-11 06:16:30', NULL),
(16, '343506f3b5df8e18f76d9d6a6fa31da6', 38, NULL, 'omise', 'chrg_test_5p4yd0fghgwwukaz1o0', 1.2, NULL, NULL, 31.2, 1, '2021-09-11 06:18:36', NULL),
(17, '3d79a0fad375905f5ae4162ea002176e', 38, NULL, 'omise', 'chrg_test_5p4yjwkjs4bvhuyifjv', 0.8, NULL, NULL, 20.8, 1, '2021-09-11 06:38:11', NULL),
(18, 'ab51740b713687e961622e75931f6765', 38, NULL, 'omise', 'src_test_5p4ym1papdk3wzo7fwo', 1.2, 0, NULL, 31.2, 1, '2021-09-11 06:44:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text,
  `first_name` text,
  `last_name` text,
  `email` text,
  `password` text,
  `timezone` text,
  `more_information` text,
  `settings` longtext,
  `desc` longtext,
  `balance` decimal(15,4) DEFAULT '0.0000',
  `custom_rate` int(11) NOT NULL DEFAULT '0',
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text,
  `reset_key` text,
  `history_ip` text,
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `omise_customer_id` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`, `omise_customer_id`) VALUES
(38, 'e7ace76210625c6880498190c0af2d58', 'admin', NULL, 'pornchai', 'khamrat', 'admin@smm-dev.com', '$2a$08$2QeBA4zxI2D3dt73LWm.M.pZ2EAdIoLgDZZUO642DY5lqaPhyoWAm', 'Asia/Bangkok', '{\"website\":\"\",\"phone\":\"\",\"what_asap\":\"\",\"skype_id\":\"\",\"address\":\"1234\",\"account_number\":\"123456789\"}', 'null', '', '550.0000', 0, NULL, NULL, 'c4a78c5172c30e669bb05d9dse48d6f5', '73a810960c6769e95b23b0d3f2d4b4bc', '172.20.0.1', 1, '2021-08-29 16:04:05', NULL, 'cust_test_5oyz84eranbpp9u9ejw'),
(39, 'aacf23e23e69d213ef1b601894a229ed', 'user', 'Sign_up_page', 'pornchai', 'khamrat', 'pentagonxb360@gmail.com', '$2a$08$IcXiuV4MwhQF.3ctDZHvDuimTsWPzPIbSBZJakqODE11wJQQzB4p2', 'Pacific/Midway', '{\"website\":\"\",\"phone\":\"\",\"what_asap\":\"\",\"skype_id\":\"\",\"address\":\"111\\/3\",\"account_number\":\"1234567890123\"}', '{\"limit_payments\":[]}', NULL, '0.0000', 0, 'oYMRfPq6KOBP0NNtwwqjDlZhAMwZc5oJ', NULL, 'Sfd5HHeN8RFhPcwdTzrv5OLJ48asaVjv', '26c21b60085ee49592f0529a67a757d7', '172.26.0.1', 1, '2021-09-03 16:33:54', '2021-08-18 14:26:08', 'cust_test_5p1yd62nv1vel05yvwh');

-- --------------------------------------------------------

--
-- Table structure for table `general_users_price`
--

CREATE TABLE `general_users_price` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT '0',
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci,
  `username` text COLLATE utf8mb4_unicode_ci,
  `hashtags` text COLLATE utf8mb4_unicode_ci,
  `hashtag` text COLLATE utf8mb4_unicode_ci,
  `media` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `formal_charge` decimal(15,4) DEFAULT NULL,
  `profit` decimal(15,4) DEFAULT NULL,
  `status` enum('active','completed','processing','inprogress','pending','partial','canceled','refunded','awaiting','error','fail') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT '0',
  `is_refill` text COLLATE utf8mb4_unicode_ci,
  `refill_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `runs` int(11) DEFAULT '0',
  `interval` int(2) DEFAULT '0',
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(225) NOT NULL,
  `min` double NOT NULL,
  `max` double NOT NULL,
  `new_users` int(1) NOT NULL DEFAULT '0' COMMENT '1:Allowed, 0: Not Allowed',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 -> ON, 0 -> OFF',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `type`, `name`, `min`, `max`, `new_users`, `status`, `params`) VALUES
(13, 'paypal', 'Paypal Checkout', 10, 100, 1, 0, '{\"type\":\"paypal\",\"name\":\"Paypal Checkout\",\"min\":\"10\",\"max\":\"100\",\"new_users\":\"1\",\"status\":\"1\",\"take_fee_from_user\":\"0\",\"option\":{\"environment\":\"sandbox\",\"client_id\":\"\",\"secret_key\":\"\"}}'),
(14, 'stripe', 'Stripe Checkout', 5, 100, 0, 0, '{\"type\":\"stripe\",\"name\":\"Stripe Checkout\",\"min\":\"5\",\"max\":\"100\",\"new_users\":\"0\",\"status\":\"1\",\"option\":{\"tnx_fee\":\"10\",\"environment\":\"sandbox\",\"public_key\":\"\",\"secret_key\":\"\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `payment_id` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `percentage` double NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text,
  `desc` text,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(1, '08ec451eef10ca8e668dcfa5b6d10008', 38, 29, '⚡️⚡️ Child Panel - 1 Month - 20$/Month ⚡️⚡️', '⭐⭐PURCHASE ON THE CHILD PANEL PAGE⭐⭐\r\n----------------------------------------------------\r\n\r\n1⃣ Purchase a Domain name.\r\nRecommended: Godady or NameCheap etc\r\n\r\n2⃣ Purchase this service.\r\nOpen a new ticket, write down:\r\n - If you want a NEW panel, write down: NEW\r\n - If you want to monthly RENEW your panel, write down: RENEW\r\n\r\n3⃣ We will contact to you as soon as possible, and show you the next steps\r\n-----------------------------------------------------', '26.0000', '20.0000', 1, 1, 'api', 'package', '1694', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(2, '01148209f8461fc64db305b6e0b39a62', 38, 30, 'TikTok Video Views | Instant! | Speed 5M/D 🔥🔥]', '0-20 mins start\r\ndaily speed 5M\r\n\r\n⚠ Example link: Enter Tik Tok Video Link', '0.0100', '0.0020', 100, 5000000, 'api', 'default', '1544', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(3, '2e3ac0467e486de56b990c5eba5737a4', 38, 30, 'Instagram Views [Video+TV+Reel]', 'Start 0-5 min\r\nWorks on all video types video+tv+reel\r\nAccount must be public\r\nSpeed 100-200K / Hour', '0.0100', '0.0080', 100, 5000000, 'api', 'default', '1043', 1, 1, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(4, '2cab10de910013d092f41d2495f4fc9a', 38, 30, 'Instagram TV Views [100 - 999K] [INSTANT - 100K/Day] [BULK ORDER]', '⭐Start Time: Instant\r\n⭐Speed: 20K - 100K/ day\r\n⭐Refill: No refill\r\n⭐Min Order: 50\r\n⭐Max Order: 1000000\r\n\r\n✅Enter Instagram TV Video Link\r\n\r\n', '0.0100', '0.0110', 100, 1000000, 'api', 'default', '1645', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(5, '4ad05576e800c60e0098a509a50d3216', 38, 30, 'Instagram Views [500 - 3M] [INSTANT - 3M/D] [BULK ORDER]', '⭐Start Time: Instant\r\n⭐Speed: 100k to 300k/ day\r\n⭐Refill: No refill\r\n⭐Min: 500\r\n⭐Max: 3000000\r\n\r\n⚠Enter Video Link\r\n\r\n\r\n\r\n', '0.0200', '0.0140', 500, 3000000, 'api', 'default', '1644', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(6, '7fd47f0b335cd362eb0f209e8763c910', 38, 30, 'Instagram Views [1000 - 50K] [1M/day] [ Cheapest Server]', '✅Instant Start\r\n✅Start 0-1 min\r\n⚠Account must be public\r\n✅Speed 100K / Hour\r\n✅Overflow possible\r\n⚠ Enter Video link (Not is Instagram TV link)\r\n', '0.0200', '0.0180', 1000, 1000000, 'api', 'default', '1056', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(7, '319bf420a28bda0d6a08d53cc5fb92fd', 38, 30, 'Instagram Views [100 - 5K] [INSTANT] ', '✅Start Time: Instant, Supper Fast\r\n✅Speed: 20k/ day\r\n✅New Service!!\r\n✅Max Up to 1M\r\n✅Suggest: Min-5K per time\r\n✅Refill: No refill\r\n✅Min Order: 200\r\n✅Max Order: 5000\r\n\r\n⚠Enter video post link (Not is TV link)\r\n\r\n\r\n\r\n\r\n', '0.0300', '0.0200', 1000, 1000000, 'api', 'default', '1643', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(8, 'a2a85233c52d73b7bac361aa51486f12', 38, 30, ' Instagram Views + Profile Visits + Impressions + Reach | Max 1M | INSTANT', '⭐Start Time: Instant\r\n⭐Speed: Up to 300K Per Hour Speed\r\n⭐Specs: IG Views + Impressions + Profile Visits\r\n⭐Impressions = Randomly Selected\r\n⭐New Service!!\r\n⭐Max Up to 5M\r\n⭐Suggest: Min-5M per time\r\n⭐Refill: No refill\r\n\r\n⚠Enter Video Link\r\n⚠Usually, Day Speed Is Not Correct After IG Updated The New Version\r\n\r\n', '0.0300', '0.0250', 100, 100000, 'api', 'default', '1642', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(9, '7de44b3d0e91d8f3e54e965d70bf6dfd', 38, 30, 'Instagram Views + Impressions [100 - 100K] [Trend Hit] [BULK ORDER]', '⭐Resellers Bulk Order Server!! Working Always!! Stable Server!!\r\n⭐IG Views + Impressions\r\n⭐Start: 0-1H - Usually Instant\r\n⭐Max Up to 100M\r\n⭐Trend Hit\r\n⭐Suggest: Min-500K per time\r\n⭐No Refill\r\n\r\n⭐Enter Video Link\r\n\r\n⭐Usually, Day Speed Is Not Correct After IG Updated The New Version\r\n\r\n', '0.0500', '0.0350', 100, 50000, 'api', 'default', '1641', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(10, '4c253fdd8a694992b2d02bb5326f365e', 38, 30, 'Instagram Likes | 10K | 10K/Hour | High Drop | No Refill', '⭐Start 0-3 min\r\n⭐Acc Type Bot with pp\r\n⭐Speed Hour 3-5K\r\n⭐Can Drop All\r\n⭐No Refill No Refund in any case\r\n\r\n⭐Enter Photo or Video Link\r\n\r\n\r\n', '0.0500', '0.0370', 50, 10000, 'api', 'default', '1301', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(11, '7afba72b170e25adad314af507e36694', 38, 30, 'Instagram Likes [ 1k/hour] [ No refill] [ 0.04$/K]', '⭐Enter Post / Video Link\r\n\r\n', '0.0700', '0.0518', 50, 15000, 'api', 'default', '1592', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(12, '677aca2f1c3ec0f2a521084c064a01fd', 38, 30, 'Instagram Impressions [100 - 1M]  [BULK ORDER]', '\r\n⭐Instant Delivery!\r\n⭐Min: 100\r\n⭐Max: 1000000\r\n\r\n⚠Enter Video Link\r\n\r\n', '0.0900', '0.0700', 50, 100000, 'api', 'default', '1647', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(13, '9ef1db904666edd465a41c10b19c9e09', 38, 30, 'Instagram Likes [50 - 50K] [5K/hour] [No refill - No Refund]', 'No Refill - No refund\r\nDrop 30-40%[ No refill]\r\n1k/hour\r\nInstant Start\r\n\r\n⚠ Example link: Instagram Post link\r\n', '0.1000', '0.0800', 50, 1000, 'api', 'default', '1235', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(14, '3c06bdd59ff42c66756cf0f45bbc0e7b', 38, 30, 'Instagram Views + Impressions [500 - 1M]  [Randome]', '⭐Start Time: Instant\r\n⭐Speed: 100K - 300K/ day\r\n⭐Refill: No refill\r\n⭐Min Order: 500\r\n⭐Max Order: 899000\r\n\r\n⚠Enter Video Link\r\n\r\n\r\n\r\n', '0.1200', '0.0950', 100, 1000000, 'api', 'default', '1646', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(15, 'adc74a966f42f6167fa154ccc63975a5', 38, 30, 'Instagram Likes Max [100 - 30K ] [Instant - Start ] [Cheapest Likes  in Market]', '✅ Speed: Instant\r\n✅ Quality: Mixed Likes\r\n\r\n⚠ Example link: Instagram Post Link', '0.1900', '0.1450', 50, 15000, 'api', 'default', '1234', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(16, 'd6789565a562516d4c9d29ea2d1ceeac', 38, 30, ' 𝐓𝐞𝐥𝐞𝐠𝐫𝐚𝐦 𝐌𝐢𝐱 𝐌𝐞𝐦𝐛𝐞𝐫 » [Cheap] [Public]', 'Each Channel 1k - Medium Speed\r\n\r\n🔴 The number you order will be delivered in the same amount. Regardless of the channel drop\r\n\r\n🔴 If you change the link while you work, your order will be changed to a completed state, in which case we will not refund the cost.\r\n\r\n✅ Example link : https://t.me/chanel_id', '0.3600', '0.2800', 100, 1000, 'api', 'default', '1499', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(17, '0e4b432243fe5e91210c63058712c92f', 38, 30, 'Instagram Likes [Max 5k] [Instant Start] [Stable likes - HQ ] ', '✅ Speed: 500 - 2k / Day - Stable\r\n✅ Quality: Good Likes - HQ\r\n\r\n⚠ Example link: Instagram Post link\r\n\r\n', '0.5100', '0.3900', 50, 10000, 'api', 'default', '1238', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(18, '42f882ce8e4a00b45a2e47694ac15a1e', 38, 30, 'Instagram Likes [10 - 5K] [300~500/hour ] [Non Drop] [ Instant - Exclusive ]', '✅ Instant Service,\r\n✅ Extra 5~10% Likes\r\n✅ HQ Data\r\n✅ NoDrop\r\n✅ Will be resulted in 24H\r\n✅ No refund before 24H\r\n\r\n⚠Example link: Instagram post Link\r\n', '0.5100', '0.3900', 50, 20000, 'api', 'default', '1684', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(19, '43ddc2f607ef5cc44efe0bfe963d6ac4', 38, 30, 'Instagram Likes [Instant Start Finish] [HQ likes] [ Recommended]', '✅Instant start\r\n✅Real Likes\r\n✅Less Drop\r\n⚠NO Refill Guarantee\r\n\r\n⚠ Example link: Instagram post link\r\n', '0.6500', '0.5000', 50, 20000, 'api', 'default', '1236', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(20, 'de67d31655886fdee723ee061469f773', 38, 30, 'Instagram Likes [100 - 40K ] [Instant - Start - HQ likes ] [1k/day]', '✅ Speed: Instant\r\n✅ Qualiy: HQ Likes - Less drop\r\n\r\n⚠ Example link: Instagram Post Link', '0.8100', '0.6200', 50, 15000, 'api', 'default', '1233', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(21, 'da07fb8f8fe0272697210576eff5f1c2', 38, 30, 'Instagram Likes [100 - 5K] [HQ likes] [Less drop]', '✅ Speed: Instant\r\n✅ Quality: Good Likes\r\n\r\n⚠ Example link: Instagram Post Link', '0.8500', '0.6500', 20, 20000, 'api', 'default', '1241', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(22, '432df0ef7244f33766198624519ac081', 38, 30, 'Instagram Followers [Mix Quality] [AR30] [Cheapest]', '✅ Start instant\r\n✅ Mix followers\r\n✅ 30 Days Refill\r\n\r\n⚠Example link: Instagram profile link', '0.8600', '0.6600', 50, 10000, 'api', 'default', '1956', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(23, '64a5c11528571ae02e78f18bd784e58e', 38, 30, 'Instagram Likes [100 - 5K] [HQ Likes] [Non Drop - No refill] [Mostly Euro area]', '⭐Working good (Some time is over load)\r\n⭐Start time Instant\r\n⭐HQ likes\r\n⭐Start Time 0-5 Min\r\n⭐Acc Type Real\r\n⭐Your profile visits will increase\r\n⭐Speed Hourly 2-3K\r\n⭐Drop Rate 0%\r\n \r\n⚠No refill, No refund by any reason\r\n⚠Example link: Instagram post link\r\n\r\n\r\n', '0.9800', '0.7500', 20, 15000, 'api', 'default', '1050', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(24, '078d946fad25457fdc3ab59d1313d6f0', 38, 30, '🔥Youtube Views - 1k/day - [Refill 100days]', '100 DAYS REFILL GUARANTEE IF DROP\r\nSpeed 1K per day\r\nRetention: Random\r\nvideo link should be embed enabled\r\n\r\n', '1.3000', '1.0000', 300, 1000000, 'api', 'default', '1663', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(25, 'a62b0b0a78426ef6a87a1ef37f2e3f0e', 38, 30, 'Facebook Page Likes [50 - 1M] [HQ] [R30] [INSTANT Start] [1k+/day Speed]', '✅ Speed: 500 - 1k / Day\r\n✅ Quality: Good Likes - HQ\r\n\r\n✅Start Time 1-3 Hours\r\n✅Acc Type Real\r\n✅Speed 2K/Day\r\n✅Drop Ratio: No drop or 1-2%\r\n✅30 Days Refill Guarantee\r\n✅You can place order for same link multiple times after completing previous order.\r\n\r\n⚠ Example link: Facebook Page link (Not it Profile Link)\r\n', '1.8900', '1.4500', 100, 10000, 'api', 'default', '1246', 1, 0, 1, '2021-08-19 13:48:27', '2021-08-19 13:48:27'),
(26, '672f01a2ba5fc8fce3ae43350a76afcc', 38, 29, 'Line Official Account Followers | Speed 2K-5K/D', '', '44.2000', '34.0000', 1000, 5000, 'api', 'default', '2750', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 13:52:14'),
(27, '95438bee758ffcd35bd85223c901dd13', 38, 29, 'YouTube Monetized Channels for sale | 1-2 Days Delivery | 225$ Per Channel', '', '292.5000', '225.0000', 1, 1, 'api', 'package', '2661', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 13:53:01'),
(28, '00d9c7f641787ad0f7d9a93a6adcaa60', 38, 31, 'YouTube Monetized Channels ( 2015 ) for sale  | 1-2 Days Delivery | 399$ Per Channel', NULL, '388.7000', '299.0000', 1, 1, 'api', 'package', '2748', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:36:04'),
(29, '97f1c44abf54397881dd764d5c15ac9b', 38, 32, 'Youtube [ 100K ] Video Views Package 🔥 Super Fast!  | %100 No Drop | Life Time Guarentee', NULL, '193.7000', '149.0000', 1, 1, 'api', 'package', '1088', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:36:04'),
(30, 'ca2962c25cf9ee2bb977cd7b9461a4a0', 38, 32, 'Youtube [ 250K ] Video Views  Package 🔥 Super Fast!  | %100 No Drop | Life Time Guarantee', NULL, '370.5000', '285.0000', 1, 1, 'api', 'package', '1089', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(31, 'befb70ed60c1e2f8dbc99cef19d4aa3e', 38, 32, 'Youtube [ 500K ] Video Views  Package 🔥 Super Fast! | %100 No Drop | Life Time Guarantee', NULL, '552.5000', '425.0000', 1, 1, 'api', 'package', '1091', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(32, '6c54ca85cb972318c9991dd52a65770a', 38, 32, 'Youtube [ 750K ] Video Views Package 🔥 Super Fast!  | %100 No Drop | Life Time Guarantee', NULL, '721.5000', '555.0000', 1, 1, 'api', 'package', '1090', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(33, '556e65d87900741113840321cc7024dd', 38, 32, 'Youtube [ 1 Million ] Video Views  Package 🔥 Super Fast! | %100 No Drop | Life Time Guarantee', NULL, '890.5000', '685.0000', 1, 1, 'api', 'package', '1093', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(34, '0276baa4bbb5f6622b51166ebf59465e', 38, 33, 'TikTok Video Views | Instant! | Speed 5M/D 🔥🔥', NULL, '0.0100', '0.0010', 100, 5000000, 'api', 'default', '2665', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(35, '0829d3184a65070a16c20830227a3154', 38, 33, 'TikTok Video Views | Instant! | Speed 10M/D 🔥🔥', NULL, '0.0100', '0.0020', 100, 10000000, 'api', 'default', '1169', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(36, '1bae495db253a2fb8951582359509909', 38, 33, 'TikTok Video Views | Instant! | Speed 1M/D 🔥🔥', NULL, '0.0100', '0.0030', 100, 3000000, 'api', 'default', '1151', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(37, 'cc2bc16ddbb7cf01dc36dcbc01f6184f', 38, 33, 'TikTok Video Views | Instant! | Speed 2M/D 🔥🔥', NULL, '0.0100', '0.0040', 500, 7000000, 'api', 'default', '1150', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(38, 'ca5d5d2c9ab4e5f81309b58113b557af', 38, 33, 'TikTok Video Views | Instant! | Speed 5M/D 🔥🔥', NULL, '0.0100', '0.0070', 500, 5000000, 'api', 'default', '1128', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(39, 'e0f33785d4894f751dddca6419419c44', 38, 33, 'TikTok Video Views | 0-30 mins | Speed 1M/D 🔥🔥', NULL, '0.0100', '0.0090', 100, 1000000, 'api', 'default', '1094', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(40, '485091e56439a61e0f88f718a03af453', 38, 33, 'TikTok Video Views | 0-20 mins | Speed 3M/D 🔥🔥', NULL, '0.0300', '0.0200', 100, 1000000, 'api', 'default', '1031', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(41, '51a087728cfedc077d4ca672c1c1e98c', 38, 33, 'TikTok Video Views | Instant Fast! | Speed 1M/D 🔥🔥', NULL, '0.0500', '0.0400', 100, 1000000, 'api', 'default', '1030', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(42, '7a7d67ec91a34c824b5fbdadcfc1da4a', 38, 33, 'TikTok Video Views | Instant Fast! | Speed 3M/D  🔥🔥', NULL, '0.0500', '0.0400', 100, 9000000, 'api', 'default', '1023', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(43, '76ac796defa75bece45f197741240f4d', 38, 33, 'TikTok Video Views | Instant Fast! | Speed 5M/D  🔥🔥', NULL, '0.0700', '0.0550', 100, 9000000, 'api', 'default', '303', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(44, '69e249bd59c980ac5b849fd10925a8fa', 38, 33, 'TikTok Video Views | 0-30 mins | Speed 1M/D 🔥🔥', NULL, '0.0900', '0.0700', 100, 1000000, 'api', 'default', '1020', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(45, '5fe7c1dc23d7b9f0f9a0b42f7b7a1d9c', 38, 33, 'TikTok Video Views | 0-30 mins | Speed 10M/D  🔥🔥', NULL, '0.0900', '0.0700', 100, 10000000, 'api', 'default', '200', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(46, '0d9e76fd469ef73d58f63e7fe4cd6c79', 38, 33, 'TikTok Video Views | 0-10 mins | Speed 5M/D  🔥🔥', NULL, '0.1300', '0.1000', 100, 10000000, 'api', 'default', '1024', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(47, '9fad5b70a02b1ffbe3884f0f8b3520a1', 38, 33, 'TikTok Video Views | Instant Fast! | Speed 10M/D  🔥🔥', NULL, '0.1600', '0.1200', 100, 2000000, 'api', 'default', '96', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(48, '2cb86b75f2494ed725fa946d5a385298', 38, 34, 'TikTok %100 Real Likes | Super Fast 5K/H | Always Instant! 🔥[ R30 ] Super Fast!', NULL, '2.0200', '1.5500', 100, 50000, 'api', 'default', '299', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(49, 'cdfa86eda0c87f9679baadf826d4b411', 38, 34, 'TikTok %100 Real Likes | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! 🔥Instant! Speed 1K/D', NULL, '0.6000', '0.4600', 100, 40000, 'api', 'default', '2673', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(50, '3a285c5ca21584f4050a395eacdbd9fd', 38, 34, 'TikTok Video Likes Instant! | Super Fast! 🔥🔥Working After Update', NULL, '0.7000', '0.5400', 100, 15000, 'api', 'default', '1027', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(51, '6c554db3bc39d4d0c553cb6835356195', 38, 34, 'TikTok Video Likes Instant! | Super Fast! 🔥🔥Working After Update', NULL, '0.7700', '0.5900', 100, 60000, 'api', 'default', '189', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(52, '1be9c142330faf3db6e5b9f9e03bf51b', 38, 34, 'TikTok %100 Real Likes | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! 🔥Working After Update', NULL, '0.7800', '0.6000', 100, 25000, 'api', 'default', '297', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(53, '8bcd035b904ee1f555ba9e838ce76815', 38, 34, 'TikTok %100 Real Likes | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!!  [R30] 🔥Instant! Fast!', NULL, '0.7800', '0.6000', 25, 15000, 'api', 'default', '1085', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(54, '8068a5b51a9becd34e260f94f1b87306', 38, 34, 'TikTok %100 Real Likes | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!!  [R30] 🔥 Working After Update', NULL, '1.5000', '1.1500', 100, 8000, 'api', 'default', '310', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(55, '3d447accfb6845feda0f910df2564bc1', 38, 34, 'TikTok %100 Real Likes | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | Instant! Speed 2K/D 🔥🔥[R30]', NULL, '1.7600', '1.3500', 100, 1000, 'api', 'default', '289', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(56, '18c3c5ef022ceaaada119550ab1a4ce5', 38, 34, 'TikTok %100 Real Likes | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | Instant! Super Fast!  Speed 3K/D 🔥🔥[R30]', NULL, '0.7800', '0.6000', 100, 30000, 'api', 'default', '203', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(57, '75ce1de05b41b592f448b7cca34d1093', 38, 35, 'TikTok Followers | Instant! | Speed 2K/D  🔥🔥', NULL, '0.7200', '0.5500', 500, 100000, 'api', 'default', '2827', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(58, '186c99b56430e21b33b33ee668964a61', 38, 35, 'TikTok Followers | Instant! | Speed 20K/D  🔥🔥[ R30 ]', NULL, '1.8900', '1.4500', 100, 100000, 'api', 'default', '2826', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(59, '57889e32ef5c7a58b7fa237810cd96c4', 38, 35, 'TikTok Followers | Instant! | Speed 5K/D  🔥🔥', NULL, '1.6300', '1.2500', 100, 50000, 'api', 'default', '2799', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(60, '9ee0ba647c83c0e31a4c125d77263222', 38, 35, 'TikTok Followers | Instant Super Fast | Speed 1K/D  🔥🔥', NULL, '0.6200', '0.4800', 20, 35000, 'api', 'default', '1124', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(61, '23ecfe5e1476dc28dbee775c409f9bc4', 38, 35, 'TikTok Real Followers Instant! Speed 1K/D  🔥🔥', NULL, '0.5900', '0.4500', 50, 10000, 'api', 'default', '341', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(62, 'e5933e14a7eb0a79dd7a556be030196f', 38, 35, 'TikTok Real Followers Instant! Speed 500/D  🔥🔥', NULL, '1.2900', '0.9900', 50, 20000, 'api', 'default', '342', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(63, '4c62f4e21928a8fe5368c5a22ee9980d', 38, 35, 'TikTok Real Followers Instant! NonDrop Speed 10K/D  🔥🔥 [ R30 ] Super Fast!', NULL, '4.9400', '3.8000', 10, 25000, 'api', 'default', '194', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(64, '7232409a81328c5c71bad4e16c769fec', 38, 35, '𝐒𝐓𝐀𝐁𝐋𝐄 - TikTok Followers Instant! Speed 5K/D  Always Stable! 🔥🔥Recommended!', NULL, '5.1400', '3.9500', 10, 30000, 'api', 'default', '306', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(65, 'f83ec8d3573a73e7bebbbd145763abd5', 38, 35, 'Tiktok [ Male ] Real Followers | %100 HQ | Speed 10-20/D 👦🏻', NULL, '71.5000', '55.0000', 5, 1000, 'api', 'default', '524', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(66, 'dab7f888004ca214cea6dac56772a726', 38, 35, 'Tiktok [ Female ] Real Followers | %100 HQ | Speed 10-20/D 👩🏻', NULL, '71.5000', '55.0000', 5, 1000, 'api', 'default', '527', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(67, '37d8726ba08fccb9dd374e78e6b2f792', 38, 36, 'TikTok Livestream Views 🔥 30 min', NULL, '1.3700', '1.0500', 100, 30000, 'api', 'default', '290', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(68, '04fc9a66c94531defaefeb1da89ef3ef', 38, 36, 'TikTok Livestream Views 🔥 60 min', NULL, '2.4100', '1.8500', 100, 30000, 'api', 'default', '291', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(69, '265427fa257509fb56452ce1851bbc4e', 38, 36, 'TikTok Livestream Views 🔥 90 min', NULL, '3.6300', '2.7900', 100, 30000, 'api', 'default', '292', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(70, '55140dcca5df770350e8033efeee288e', 38, 36, 'TikTok Livestream Views 🔥 120 min', NULL, '4.6200', '3.5500', 100, 30000, 'api', 'default', '293', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(71, 'fd8ac06a302f6d81833f92ff384e2de7', 38, 36, 'TikTok Livestream Views 🔥 180 min', NULL, '5.4600', '4.2000', 100, 30000, 'api', 'default', '294', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(72, 'd24ea9e92e8890823a42274a94332a9b', 38, 36, 'TikTok Livestream Views 🔥 240 min', NULL, '6.6300', '5.1000', 100, 30000, 'api', 'default', '295', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(73, '4b3559668412d55ea33a98b75aa21098', 38, 37, 'TikTok Shares | Non Drop - Instant Start! | 100K/D', NULL, '0.7200', '0.5500', 100, 250000, 'api', 'default', '2793', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(74, '674690790a3a24288057166d86fbbe8c', 38, 37, 'TikTok Shares | Non Drop - Instant Start! | 10K/D [R30]', NULL, '1.7600', '1.3500', 50, 150000, 'api', 'default', '2674', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(75, '7ee577ab755efc4738c64e14714719c8', 38, 38, 'TikTok %100 Real HQ Custom Comments 🔥', NULL, '39.0000', '30.0000', 5, 1000, 'api', 'custom_comments', '531', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(76, '4e61651b65d08d71b5ee8ae07abf5d83', 38, 38, 'TikTok %100 Real [ MALE ] HQ Custom Comments 🔥', NULL, '44.2000', '34.0000', 5, 1000, 'api', 'custom_comments', '532', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(77, 'e75d707548b46ff595f4171acbea7032', 38, 38, 'TikTok %100 Real [ FEMALE ] HQ Custom Comments 🔥', NULL, '44.2000', '34.0000', 5, 1000, 'api', 'custom_comments', '533', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(78, '3d3fd3d30fe952d0a2d732d312b414e4', 38, 39, 'TikTok Auto Views | Fast', NULL, '0.0100', '0.0020', 100, 5000000, 'api', 'subscriptions', '1246', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(79, 'e88b75aef6886a2e12dfaef72f3cda0f', 38, 39, 'TikTok Auto Likes | Fast', NULL, '0.7200', '0.5500', 100, 1000, 'api', 'subscriptions', '1247', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(80, 'd16ff9c9875e5f96c9532228cdc24762', 38, 40, '%100 Real 5 Comments ✅ [ from HQ and Active Accounts ]', NULL, '1.1700', '0.9000', 1, 1, 'api', 'package', '489', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(81, '87c2a2ee463633b92c864b0fd15adf94', 38, 40, '%100 Real 10 Comments ✅ [ from HQ and Active Accounts ]', NULL, '2.1500', '1.6500', 1, 1, 'api', 'package', '490', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(82, '64496107b79d53e8b2a3781e8b11060a', 38, 40, '%100 Real 15 Comments ✅ [ from HQ and Active Accounts ]', NULL, '2.6000', '2.0000', 1, 1, 'api', 'package', '491', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(83, '8afc62529be49adaf94fa0563d0c3de7', 38, 40, '%100 Real 20 Comments ✅ [ from HQ and Active Accounts ]', NULL, '3.8400', '2.9500', 1, 1, 'api', 'package', '492', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(84, '2123e3ec8f49144f1b32f238d9df2967', 38, 40, '%100 Real 50 Comments ✅ [ from HQ and Active Accounts ]', NULL, '6.4900', '4.9900', 1, 1, 'api', 'package', '493', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(85, '936ccce7fabbe9a18bdc289e40770418', 38, 40, '%100 Real 100 Comments ✅ [ from HQ and Active Accounts ]', NULL, '11.7000', '9.0000', 1, 1, 'api', 'package', '494', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(86, '1a1120dda8e187e8dbfafd8989bddf6f', 38, 41, 'Instagram LQ Likes | Non Drop | Speed 30K/Hour 🔥 Super Fast! [ R30 ]', NULL, '0.2600', '0.2000', 50, 55000, 'api', 'default', '2918', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(87, 'e669966221e37d5a5a67ea7a2ff085cb', 38, 41, 'Instagram HQ Real Likes | Non Drop | Speed 3K/Hour 🔥', NULL, '0.2300', '0.1800', 10, 25000, 'api', 'default', '2819', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(88, '04ec471f1da126dcfdcd4a15e78f37e8', 38, 41, 'Instagram HQ Real Likes | Non Drop | Speed 5K/Hour 🔥[ R30 ]', NULL, '0.2600', '0.2000', 10, 60000, 'api', 'default', '2659', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(89, '3537f905ab6d5bd16ca69bdee2d33d7b', 38, 41, 'Instagram Likes + Impression + Reach | Instant | Speed 1K/H', NULL, '0.2300', '0.1800', 20, 10000, 'api', 'default', '2746', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(90, '87c14dafde2d68c4a3fd6c189b1b5781', 38, 41, 'Instagram %100 HQ Real Likes | 100K Base | Speed 500-1K/H 🔥R30', NULL, '0.3600', '0.2800', 50, 100000, 'api', 'default', '1279', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(91, 'b11e77275f7f8e9549620611313c410e', 38, 41, 'Instagram LQ Likes | Speed 5K/H | Super Fast! [ 0.03$/K]', NULL, '0.0400', '0.0300', 10, 30000, 'api', 'default', '2660', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(92, 'ac0505d2ef87284ee5e10e5de2a53b2e', 38, 41, 'Instagram LQ Likes | Speed 10K/H | Super Fast! [ 0.05$/K]', NULL, '0.0700', '0.0500', 20, 15000, 'api', 'default', '1276', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(93, '1f6be42ff41db816c3ffa655e64f9141', 38, 41, 'Instagram Real Likes | Speed 1K/H | Super Fast! [ 0.062$/K]', NULL, '0.0800', '0.0620', 30, 2000, 'api', 'default', '1259', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(94, 'b04cfccae2b6adb78e9947a61a0fc0b4', 38, 41, 'Instagram Real Likes | Speed 5K/H | Super Fast! [ 0.064$/K]', NULL, '0.0800', '0.0640', 25, 5000, 'api', 'default', '1226', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(95, '617b4aac3fef18071ce67a1dd9a91007', 38, 41, 'Instagram Real Likes | Speed 10K/H | Super Fast! [ 0.14$/K]', NULL, '0.1400', '0.1100', 50, 10000, 'api', 'default', '1258', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(96, 'b3191ab5bb940f3271da967a71a14365', 38, 41, 'Instagram %100 HQ Real Likes | NonDrop! | Speed 500-1K/H 🔥', NULL, '0.3500', '0.2700', 50, 8000, 'api', 'default', '1185', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(97, '26f1a34ae4264b4e55ea12cf1b1d853d', 38, 41, 'Instagram %100 Real Likes | NonDrop! | Speed 5K/H 🔥 ALWAYS INSTANT', NULL, '0.4200', '0.3200', 25, 13000, 'api', 'default', '1142', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(98, '0045723902e0d077fef3bf06635c8897', 38, 41, '🔥Instagram %100 Real Likes | NonDrop! | Speed 3K/H', NULL, '0.4600', '0.3500', 20, 10000, 'api', 'default', '405', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(99, '0e02ad819fd0012e11afab9b09d1573c', 38, 41, 'Instagram %100 Real Likes | NonDrop! | Speed 2K/H 🔥 Super Fast', NULL, '0.4900', '0.3800', 20, 25000, 'api', 'default', '1033', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(100, 'cedfcec1d0bc6d8c40d487a43a038a17', 38, 41, 'Instagram %100 Real Likes | Speed 1K/H - No Drop', NULL, '0.3800', '0.2900', 30, 10000, 'api', 'default', '606', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(101, 'a6725507fc59b01120b43755653ce379', 38, 41, '🔥 Instagram %100 Real Likes | Always Instant | Speed 2K/H - No Drop', NULL, '0.5900', '0.4500', 20, 3000, 'api', 'default', '596', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(102, '55f35c0930fa405119b64ac9ea2d51f7', 38, 41, '🔥Instagram %100 Real Likes | NonDrop! | Speed 5K/H - 365 Days Refill Guarantee', NULL, '0.7800', '0.6000', 50, 70000, 'api', 'default', '204', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(103, '8c335672caaeae0f0791ac047bf80e2a', 38, 41, 'Instagram %100 Real Likes | Always Instant | Speed 300/H - No Drop', NULL, '0.2200', '0.1700', 20, 2000, 'api', 'default', '428', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(104, 'c98654b12e997cb01193320c03a9248e', 38, 41, 'Instagram Real Likes | Speed 2K/H | Super Fast!', NULL, '0.1000', '0.0800', 100, 4000, 'api', 'default', '1220', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(105, 'b8392ad38d5b94920e07715e652bbb11', 38, 41, 'Instagram Real Likes | Speed 1K/H | Super Fast!', NULL, '0.1300', '0.1000', 30, 7000, 'api', 'default', '584', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(106, 'bf3c693ac061fab5788eca5e9426e770', 38, 41, 'Instagram Real Likes | Speed 1K/H | Instant Start', NULL, '0.1700', '0.1300', 30, 8000, 'api', 'default', '435', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(107, 'd48ecf38851a0bbaa526d11896bc9ef6', 38, 41, 'Instagram Real Likes | Speed 3K/H | Instant Start', NULL, '0.2000', '0.1500', 50, 10000, 'api', 'default', '190', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(108, 'a219e756324d4092a5790fcc15452b9a', 38, 41, 'Instagram %100 HQ Real Likes | 150K Base | Speed 5K/D', NULL, '0.2600', '0.2000', 20, 150000, 'api', 'default', '2635', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(109, '2248faf1d01dd6721d2f93f8f7e7ff9e', 38, 41, 'Instagram Real Likes | Max 2K | Speed 1K/H - Fast!', NULL, '0.2600', '0.2000', 20, 2000, 'api', 'default', '198', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(110, '5a98ccd28db9bd399f7b87d2c2da9211', 38, 41, '🔥Instagram %100 Real Likes | NonDrop! | Speed 2K/H', NULL, '0.3300', '0.2500', 20, 2000, 'api', 'default', '307', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(111, '6214b96d5cd6f16cea53e2c1dbf6c848', 38, 41, '🔥Instagram %100 Real Likes | NonDrop! | Speed 2K/H', NULL, '0.3900', '0.3000', 20, 10000, 'api', 'default', '258', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(112, 'a16f2c3480737f54e5e3da9a5eb82dab', 38, 41, 'Instagram Real Likes | Speed 2K/H NonDrop!', NULL, '0.5100', '0.3900', 50, 25000, 'api', 'default', '176', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(113, '653541b04865b04c46cbaa89689e9ea0', 38, 41, '𝐍𝐄𝐖 - Instagram Real Likes |  Instant! Speed 3K/Hour NonDrop!', NULL, '0.5600', '0.4300', 20, 35000, 'api', 'default', '324', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(114, '9a9d72b40bf04453bf17f1786d3db934', 38, 41, 'Instagram Real Likes | Max 3K |  Instant! Speed 3K/Hour NonDrop!', NULL, '0.6500', '0.5000', 20, 40000, 'api', 'default', '165', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(115, '978ef2e007ea038ecfa83fae7da13cd2', 38, 41, '𝐍𝐄𝐖 - Instagram Real Likes | Max 70K |  Instant! Speed 5K/Hour NonDrop!', NULL, '0.7500', '0.5800', 50, 70000, 'api', 'default', '181', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(116, 'cec85838891276103ea907f5557028bb', 38, 41, 'Instagram HQ Real Likes - Instant! Speed 5K/Hour -  NonDrop!', NULL, '0.8500', '0.6500', 20, 100000, 'api', 'default', '86', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(117, '617d29deb02e52a3318392a2f9fe5e8f', 38, 41, 'Instagram HQ Real and Active Likes | Max 8K |  Super Instant 1K/10mins!!', NULL, '1.1100', '0.8500', 20, 40000, 'api', 'default', '98', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(118, '774b47ccb3577701d1eaaef26499a4e4', 38, 41, 'Instagram HQ Real and Active Likes | Max 10K |  Super Instant 1K/10mins!!', NULL, '1.2900', '0.9900', 50, 50000, 'api', 'default', '142', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(119, '4b9344aa0a2bb71dd6a2cb7fcb32e149', 38, 41, 'Instagram HQ Real and Active Likes | Max 90K | Super Instant 1K/10mins!!', NULL, '1.3000', '1.0000', 50, 90000, 'api', 'default', '84', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(120, '99db0bbd44e1173a98b248e9183cb210', 38, 42, '🔥Instagram %100 HQ Real Likes [ 𝐌𝐚𝐱 𝟏𝟓𝟎𝐊 ] NonDrop! | Speed 5K/D', NULL, '0.3000', '0.2300', 20, 150000, 'api', 'default', '2636', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(121, 'e1729942e4a957f5550ee80706abd8da', 38, 42, '🔥Instagram %100 HQ Real Likes [ 𝐌𝐚𝐱 𝟏𝟎𝟎𝐊 ] NonDrop! | Speed 10K/D - [ R30 ]', NULL, '0.4600', '0.3500', 50, 100000, 'api', 'default', '1278', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(122, '13238752da35a0429c83ba20436b0e31', 38, 42, '🔥Instagram %100 HQ Real Likes [ 𝐌𝐚𝐱 𝟏𝟎𝟎𝐊 ] NonDrop! | Speed 40K/D - [ R30 ]', NULL, '0.5900', '0.4500', 50, 100000, 'api', 'default', '384', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(123, '7da2ea092f1f1de216acec8fd53c9086', 38, 42, '🔥Instagram %100 HQ Real Likes [ 𝐌𝐚𝐱 𝟏𝟎𝟎𝐊 ] NonDrop! | Speed 30K/D - [ R90 ]', NULL, '0.7700', '0.5900', 50, 100000, 'api', 'default', '354', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(124, 'ad921c398ebfc02972643c12e5a37e3a', 38, 42, '🔥Instagram %100 HQ Real Likes [ 𝐌𝐚𝐱 𝟐𝟎𝟎𝐊 ] NonDrop! | Speed 50K-60K/D - [ R90 ]', NULL, '1.0400', '0.8000', 50, 200000, 'api', 'default', '351', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(125, 'd2e53992c20d3678f71db90f45a0eaaa', 38, 42, '🔥Instagram %100 HQ Real Likes [ 𝐌𝐚𝐱 𝟓𝟎𝟎𝐊 ] NonDrop! | Speed 70K-80K/D - [ R90 ]', NULL, '2.0200', '1.5500', 30, 500000, 'api', 'default', '352', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(126, 'cd89e7abee7800200d02c66b681c16f2', 38, 42, '🔥Instagram %100 HQ Real Likes [ 𝐌𝐚𝐱 𝟏𝐌 ] NonDrop! | Speed 100K/D - [ R90 ]', NULL, '2.5900', '1.9900', 20, 1000000, 'api', 'default', '353', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(127, 'a276269ccc191da73bf120f1e695cdc6', 38, 43, 'Instagram Likes 🇺🇸 100% USA + Impressions + Reach Explore | NoDrop!', NULL, '1.8200', '1.4000', 10, 25000, 'api', 'default', '314', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(128, '136103ce94125ad40698d3f316665bf0', 38, 43, 'Instagram Likes 🇰🇷 𝐑𝐞𝐚𝐥 𝐊𝐨𝐫𝐞𝐚𝐧  | Instant - 1K/D | Lifetime Refill Guarantee', NULL, '2.0200', '1.5500', 10, 5000, 'api', 'default', '365', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(129, '41f2fba3dce9fb9ed492712e87736947', 38, 43, 'Instagram 𝙄𝙏𝘼𝙇𝙔 Likes + Impressions + Reach', NULL, '24.0500', '18.5000', 10, 2500, 'api', 'default', '2787', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(130, '2814700658b428545777cbb7fb5a2786', 38, 43, 'Instagram Likes 🇮🇳 𝐑𝐞𝐚𝐥 𝐈𝐧𝐝𝐢𝐚𝐧 | Instant - 5K/D | NoDrop [ R30 ]', NULL, '0.7700', '0.5900', 10, 5000, 'api', 'default', '413', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(131, '6c59203998c98eb0a36cb2fe6167ed83', 38, 43, 'Instagram Real Likes [ 🇯🇵 JAPAN ] [ HIGH QUALITY ]', NULL, '24.7000', '19.0000', 10, 800, 'api', 'default', '2786', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(132, 'f682657db78a5d1f3aa85113988cacaf', 38, 43, 'Instagram Likes Indonesia Real Active (100/2K) [48H]', NULL, '2.0300', '1.5600', 100, 2000, 'api', 'default', '2788', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(133, '5feb2a659bc505d9592ae8fe641da149', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | 15K/D [R30]', NULL, '1.2400', '0.9500', 50, 5000000, 'api', 'default', '2785', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(134, '7ad7f80f859b5706a581b9d267b75e7f', 38, 44, 'Instagram REAL HQ Followers | Max 𝟏𝐌 |  𝟐𝟎𝐊/𝐃 - Super Fast! 🔥🔥 365 Days Refill', NULL, '1.8900', '1.4500', 50, 1000000, 'api', 'default', '1250', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(135, '4517bffbdfc5abd709509ab5b8e12b4e', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | 50K/D [R60]', NULL, '1.7600', '1.3500', 50, 150000, 'api', 'default', '1201', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(136, 'cbf783559f535c9d793a938caa6b908a', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | 30K/D [R45]', NULL, '1.6300', '1.2500', 100, 300000, 'api', 'default', '1202', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(137, 'f186d12faf7bb6ab80b4d4deb014aedc', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | 5K/D [R30]', NULL, '0.9800', '0.7500', 50, 50000, 'api', 'default', '1116', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(138, 'a8215b34bdb42002715e83ec1e3a160a', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥 99 Days Guarantee!!', NULL, '1.2400', '0.9500', 100, 1000000, 'api', 'default', '471', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(139, '9313ab1d8b7b4ccb41ddb950107b2faf', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥365 Days Guarantee!!', NULL, '1.4300', '1.1000', 100, 750000, 'api', 'default', '318', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(140, 'b30fe8bf6cdd476fa5d155a1e53373e1', 38, 44, 'Instagram HQ Real Followers | Non Drop! | Speed 5K/D [ Old Accounts ] 🔥🔥 [R30]', NULL, '2.2800', '1.7500', 20, 50000, 'api', 'default', '586', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(141, '6a108074813c56658b2b6cdec440c274', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥365 Days Guarantee!!', NULL, '2.5400', '1.9500', 50, 400000, 'api', 'default', '305', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(142, 'e625326b02750d94749e7a05b1d8b105', 38, 44, 'Best Instagram Followers [HQ Worldwide] [MAX-15K] [Auto Refill 30 days] [ 5k-10k/Day ] [RECOMMENDED] SUPER INSTANT', NULL, '2.5400', '1.9500', 30, 80000, 'api', 'default', '195', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(143, 'f313cea4e9e4cb5662f80984b7a7d17d', 38, 44, 'Instagram Real Followers | Speed 20K/D  | Less Drop!  [R30]', NULL, '1.2400', '0.9500', 1000, 30000, 'api', 'default', '587', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(144, '2241647e20bb85ef98846bcf61a26195', 38, 44, 'Instagram REAL HQ  Followers | 𝐍𝐎𝐍𝐃𝐑𝐎𝐏!! |  Instant! 🔥🔥[R30]', NULL, '2.3400', '1.8000', 100, 150000, 'api', 'default', '193', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(145, '2317e25afa8c305a6ae22f0f3b7903e6', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥[R90]', NULL, '2.0200', '1.5500', 100, 75000, 'api', 'default', '327', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(146, 'd73055397ba99c55eb3be8179633f0f8', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥[R30]', NULL, '1.8900', '1.4500', 10, 50000, 'api', 'default', '178', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(147, '506042fcdc1916b4035e412c032d1a24', 38, 44, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥365 Days Auto Guarantee!!', NULL, '4.2300', '3.2500', 100, 80000, 'api', 'default', '179', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(148, '33e27532873cf5fb6305b94db57ae173', 38, 44, 'Instagram REAL HQ Followers | 𝐋𝐄𝐒𝐒 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥[R30]', NULL, '2.1500', '1.6500', 50, 75000, 'api', 'default', '177', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(149, 'a96bdf3e8bec1a4c7396433d9f3a3bb2', 38, 44, 'Instagram REAL HQ Followers | 𝐋𝐄𝐒𝐒 𝐃𝐑𝐎𝐏!! |  Super Fast! 🔥🔥[R30]', NULL, '2.0800', '1.6000', 100, 5000, 'api', 'default', '187', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(150, '438b0964cf287083e8be569d4af49f7f', 38, 45, '⭐Instagram [SUPER] REAL HQ  Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! |  🔥🔥[ Life Time Guarantee ]', NULL, '3.8900', '2.9900', 100, 200000, 'api', 'default', '313', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(151, '918eef18c87891c5d147340f953ca302', 38, 45, '⭐Instagram REAL Active HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | 30-50K/D  🔥🔥[ Life Time Guarantee ]', NULL, '6.4900', '4.9900', 500, 200000, 'api', 'default', '315', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(152, 'af091e96a9b36cbf82d422961615a66b', 38, 45, '⭐Instagram REAL Active HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | 200-300K/D  🔥🔥[ Life Time Guarantee ]', NULL, '9.0900', '6.9900', 5000, 8000000, 'api', 'default', '317', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(153, '0a8f068bbbb4209c2b5c5fe7896a7be5', 38, 45, '⭐Instagram REAL Active HQ Followers | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | 400-500K/D  🔥🔥[ Life Time Guarantee ]', NULL, '10.3900', '7.9900', 500, 5000000, 'api', 'default', '316', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(154, '29661cb1d7c1e444ef31ddd653a507f3', 38, 46, 'Instagram REAL Followers | Instant Start!! |  𝟐𝟎𝟎𝐊/𝐃 - Super Fast! 🔥🔥 [LessDrop]', NULL, '0.4600', '0.3500', 50, 60000, 'api', 'default', '2797', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(155, '4157067ed3ce3246e125e06f1d0cd92b', 38, 46, 'Instagram Real Followers | Instant Start | Speed 2K/D', NULL, '0.2700', '0.2100', 100, 1000, 'api', 'default', '2784', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(156, 'e7acd30e9186264a579627a56519de2e', 38, 46, 'Instagram Real Mixed Followers | Instant Start | Speed 3K/D', NULL, '0.3100', '0.2400', 10, 8000, 'api', 'default', '2783', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(157, 'c3d1696fadcdc29ab7045d66fd1eb3ad', 38, 46, 'Instagram Real Mixed Followers | Instant Start | Speed 5K/D', NULL, '0.3500', '0.2700', 20, 5000, 'api', 'default', '2782', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(158, 'c56c4246fb7580ad7ba069ffa39880e5', 38, 46, 'Instagram Real Followers | No Refill | Speed 30K/D', NULL, '0.4700', '0.3600', 50, 50000, 'api', 'default', '2751', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(159, 'bc6ca63a9a9ba957705cc1596ba3ca3c', 38, 46, 'Instagram HQ Real and Active [ FEMALE ] Followers | Speed 1K/H | Instant! 🔥🔥', NULL, '3.8900', '2.9900', 100, 3000, 'api', 'default', '2679', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(160, '172b73a5d8abb57fc2e143cbcbb4ddc0', 38, 46, 'Instagram HQ Real Followers | No Refill | Speed 5K/D', NULL, '0.2900', '0.2200', 100, 1000, 'api', 'default', '1257', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(161, '031056041636dccb6789ce3837b06e3e', 38, 46, 'Instagram REAL HQ Followers | Max 𝟏𝐌 |  𝟐𝟎𝐊/𝐃 - Super Fast! 🔥🔥 Less Drop', NULL, '1.0400', '0.8000', 50, 1000000, 'api', 'default', '1240', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(162, 'f9f5bafeda91dff741f01677a376b4c1', 38, 46, 'Instagram Real Followers | No Refill | Speed 2K/D', NULL, '0.4400', '0.3400', 10, 8000, 'api', 'default', '1161', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(163, 'a09f81d99375cbbcffb9c5840351bce5', 38, 46, 'Instagram Real Followers | No Refill | Speed 10K/D', NULL, '0.7700', '0.5900', 20, 100000, 'api', 'default', '1256', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(164, 'ee922b56e8cff7da50608cab3fd241ec', 38, 46, 'Instagram Real Followers | No Refill | Speed 5K/D', NULL, '0.5200', '0.4000', 10, 5000, 'api', 'default', '1162', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(165, 'ec9aca39cb2fb7badf544b4db9312a8e', 38, 46, 'Instagram Real Followers | No Refill | Speed 5K/D', NULL, '0.5900', '0.4500', 10, 40000, 'api', 'default', '1163', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(166, '143ee9c2e999da121a94600249b2cb99', 38, 46, 'Instagram Real Followers | No Refill | Speed 30K/D - Max 100K', NULL, '0.6100', '0.4700', 20, 100000, 'api', 'default', '1164', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(167, '5b0b58aff49f8a36e98466fc33da9090', 38, 46, 'Instagram Real Followers | No Refill | Speed 10K/D', NULL, '0.6400', '0.4900', 10, 50000, 'api', 'default', '1165', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(168, 'dd573fc390c16d9fa73dd4ba0b8dcf69', 38, 46, 'Instagram Real Followers | No Refill | Speed 50K/D - Max 1M', NULL, '1.3400', '1.0300', 50, 1000000, 'api', 'default', '1166', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(169, '759d587154baebbda48a7cbf07ba8489', 38, 46, 'Instagram Followers | Max 150K | Instant Super Fast - 𝟏𝟎𝟎𝐊/𝐃 🔥', NULL, '0.9800', '0.7500', 100, 150000, 'api', 'default', '1145', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(170, 'eea4ceaaadbdf61347b00648395a2bbc', 38, 46, 'Instagram REAL HQ Followers | Instant Start!! |  3𝟎𝐊/𝐃 - Super Fast! 🔥🔥 Less Drop', NULL, '1.5600', '1.2000', 20, 30000, 'api', 'default', '183', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(171, 'bed1292bf0c1073625dc00855353eb0e', 38, 46, 'Instagram REAL HQ Followers | Instant Start!! |  𝟓𝟎𝐊/𝐃 - Super Fast! 🔥🔥 Less Drop', NULL, '1.9500', '1.5000', 20, 85000, 'api', 'default', '182', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(172, 'ee2b4601a398f43d4782c5c788c10f90', 38, 46, 'Instagram REAL Followers [ HIGH QUALITY ] Super Fast! 🔥🔥', NULL, '3.9000', '3.0000', 100, 2000, 'api', 'default', '2824', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(173, '06312b37699398b581ead3d2b34267ec', 38, 46, 'Instagram REAL HQ Followers | Instant Start!! |  𝟏𝟎𝟎𝐊/𝐃 - Super Fast! 🔥🔥 Less Drop', NULL, '4.1000', '3.1500', 500, 500000, 'api', 'default', '186', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(174, '8e14bea2930b14a5df09f66720b01b2d', 38, 46, 'Instagram REAL Followers | Max 3K Super Fast! 🔥🔥', NULL, '3.9000', '3.0000', 100, 2000, 'api', 'default', '60', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(175, '324182f6b1a9e9dcc5773df8ae976634', 38, 46, 'Instagram REAL Followers | Max 2K | Super Instant! 🔥', NULL, '1.1100', '0.8500', 50, 2000, 'api', 'default', '106', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(176, '359c9974ace9acf9c21db7f4f750a00d', 38, 46, 'Instagram HQ Real Followers | Instant Start!! |  3𝟎𝐊/𝐃 - Super Fast! 🔥🔥', NULL, '0.9800', '0.7500', 20, 100000, 'api', 'default', '356', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(177, 'dbb6539c2a69af5dfa00a49bb188b331', 38, 46, 'Instagram Followers | Max 5K | Instant! - 3K/D', NULL, '0.9100', '0.7000', 50, 20000, 'api', 'default', '131', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(178, 'bbb4afdd54e3c3cf1dfcc395745fcfe6', 38, 46, 'Instagram Real-Mix Followers | Instant Start! SUPER FAST! | Speed 10K in 5mins!', NULL, '0.7700', '0.5900', 20, 150000, 'api', 'default', '536', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(179, 'dedbccb34fb90098e6d300def6465ec3', 38, 46, 'Instagram Real-Mix Followers | Instant Start! SUPER FAST! | Speed 10K in 5mins!', NULL, '1.0700', '0.8200', 50, 30000, 'api', 'default', '537', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(180, '3498dbf6e5a6f5efd3269e55a2bcd028', 38, 46, 'Instagram Followers | Instant Super Fast! |  5K/D', NULL, '0.6500', '0.5000', 100, 30000, 'api', 'default', '484', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(181, '618266cdfadb7b8b04a1dfc64031bd42', 38, 47, 'Instagram REAL Followers | From ADS', NULL, '1.2900', '0.9900', 500, 1500, 'api', 'default', '602', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(182, 'd2ccbbf43c2f08bc47b6dbd548d445c2', 38, 47, 'Instagram REAL Followers | From ADS', NULL, '2.0200', '1.5500', 1000, 2000, 'api', 'default', '157', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(183, 'db53f8e2503a4d2b2eeca7ac3db01ee4', 38, 47, 'Instagram REAL Followers | From ADS', NULL, '2.0800', '1.6000', 1000, 1500, 'api', 'default', '156', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(184, '9364420e706a4fe8d9a11d91cb24625a', 38, 47, 'Instagram REAL Followers | From ADS', NULL, '2.6000', '2.0000', 1000, 3000, 'api', 'default', '114', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(185, '16b96ad060c111e2831a6a543a9d79e0', 38, 47, 'Instagram REAL Followers | From ADS', NULL, '3.3200', '2.5500', 5000, 5000, 'api', 'default', '104', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(186, '23f2e84c7d7950f04d4eb28467434b30', 38, 47, 'Instagram REAL Followers | From ADS', NULL, '3.9000', '3.0000', 10000, 10000, 'api', 'default', '105', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(187, 'b1b4d35a5e9a8f74ead8aa15b44a0fea', 38, 47, 'Instagram REAL Followers | From ADS', NULL, '5.8500', '4.5000', 1000, 20000, 'api', 'default', '101', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(188, 'b5f7084669cc4f9e6fbdd6cde78d8bab', 38, 48, 'Instagram Likes 🇺🇸 100% USA + Impressions + Reach Explore | NoDrop!', NULL, '1.8200', '1.4000', 10, 25000, 'api', 'default', '423', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(189, '8eb2d8bd718c58e800ceba9396e38d1b', 38, 48, 'Instagram USA 🇺🇸 Random Comments | R∞ - +100/D | 100% HQ Real', NULL, '45.5000', '35.0000', 1, 500, 'api', 'default', '1264', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(190, '4e17111912102ac00b174bc5554eeccf', 38, 48, 'Instagram USA 🇺🇸 Custom Comments | R∞ - +100/D | 100% HQ Real', NULL, '49.4000', '38.0000', 1, 500, 'api', 'custom_comments', '1265', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(191, '467d6227fcbe637aa79b5bd6b3d8f80b', 38, 48, 'Instagram USA 🇺🇸 [ Female ] Custom Comments | R∞ - +100/D | 100% HQ Real', NULL, '54.6000', '42.0000', 1, 500, 'api', 'custom_comments', '1266', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(192, '9a6bb5bda18c69d56951dab3986bed87', 38, 49, 'Instagram Likes [🇮🇳 REAL 𝑰𝑵𝑫𝑰𝑨𝑵 - No Refill ] [ 10K/D ]', NULL, '0.4200', '0.3200', 10, 15000, 'api', 'default', '2640', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(193, '93585d49b2b8c9f70e5ce397e01fde65', 38, 49, 'Instagram Likes [🇮🇳 REAL 𝑰𝑵𝑫𝑰𝑨𝑵  ] [ 5K/D ]', NULL, '0.7500', '0.5800', 10, 15000, 'api', 'default', '382', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(194, '88b8ad04056ce71c149a4166e2a1203f', 38, 49, 'Instagram Followers [🇮🇳 REAL Mixed 𝑰𝑵𝑫𝑰𝑨𝑵 - R45 ] [10K-15K/D]', NULL, '1.6300', '1.2500', 100, 250000, 'api', 'default', '1272', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(195, '5b542053d04878b861b9f512e9ae041e', 38, 49, 'Instagram Followers [🇮🇳 REAL 𝑰𝑵𝑫𝑰𝑨𝑵 - R30] [2K-4K/D]', NULL, '5.1900', '3.9900', 10, 50000, 'api', 'default', '380', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(196, '5ecafef8c41a5bef2f77a001477e5479', 38, 49, 'Instagram Followers [🇮🇳 REAL 𝑰𝑵𝑫𝑰𝑨𝑵 - No Refill] [1K-3K/D]', NULL, '2.5400', '1.9500', 100, 150000, 'api', 'default', '381', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(197, '9460d1ef15d4372f075b950afe15eb35', 38, 50, 'Instagram Views + Impressions [ 🇯🇵 JAPAN MIX ] [ REAL ]', NULL, '0.0700', '0.0500', 100, 30000000, 'api', 'default', '2753', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(198, '697f70f2a9056f2ddf6c755ba7d33f4f', 38, 50, 'Instagram Likes [ 🇯🇵 JAPAN MIX ] Instant', NULL, '3.8900', '2.9900', 25, 4000, 'api', 'default', '2754', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(199, 'ac58cd687c16c0ad01628e5b777c6a75', 38, 50, 'Instagram Real Likes [ 🇯🇵 JAPAN ] [ HIGH QUALITY ]', NULL, '24.7000', '19.0000', 10, 800, 'api', 'default', '2755', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(200, '51f1b542673dbfc7b90ba74c3e246d93', 38, 50, 'Instagram Real Likes [ 🇯🇵 JAPAN ] [ R30 ]', NULL, '39.0000', '30.0000', 10, 1000, 'api', 'default', '2756', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(201, '6dee65b271871bdf77b6f8c7509be4ad', 38, 50, 'Instagram Ads Likes [ 🇯🇵 JAPAN ] INSTANT', NULL, '227.5000', '175.0000', 10, 6000, 'api', 'default', '2757', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(202, '721fbca7f3a1782c7afff0f98de94ab4', 38, 50, 'Instagram Followers [ 🇯🇵 JAPAN ] [ R30 ]', NULL, '71.5000', '55.0000', 10, 1000, 'api', 'default', '2758', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(203, '64861bd88b66b1b40861c58f046c10a3', 38, 50, 'Instagram Real Followers [ 🇯🇵 JAPAN ] [ HIGH QUALITY ] [ R30 ]', NULL, '76.7000', '59.0000', 10, 30000, 'api', 'default', '2759', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(204, '26b739ccac479b6c6c840b11f20f51be', 38, 50, 'Instagram Real Followers [ 🇯🇵 Japan ] [ ULTRA HIGH QUALITY ] [ AR30 ]', NULL, '128.7000', '99.0000', 10, 25000, 'api', 'default', '2760', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(205, '5bc3e249ce90f0fe862a99c1f100956c', 38, 50, 'Instagram Custom Comments [ 🇯🇵 JAPAN / 🇨🇳 CHINA ] Speed 100/D', NULL, '97.5000', '75.0000', 10, 100, 'api', 'custom_comments', '2761', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(206, '817ea09bd583b6ade7a7b7e0f5b1695c', 38, 50, 'Instagram Custom Comments [ 🇯🇵 JAPAN ] Speed 50-100/D', NULL, '156.0000', '120.0000', 1, 1000, 'api', 'custom_comments', '2762', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(207, '0c10822a60352ffb79d4d072ae41e5d0', 38, 50, 'Instagram 𝙄𝙏𝘼𝙇𝙔 Likes + Impressions + Reach', NULL, '16.2500', '12.5000', 10, 2500, 'api', 'default', '373', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(208, 'd09cf677f29bdfdc70ef0a45ac8e2b90', 38, 50, 'Instagram 𝙄𝙏𝘼𝙇𝙔 Followers', NULL, '34.4500', '26.5000', 10, 1000, 'api', 'default', '374', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(209, '0e995360c07e440a46fb6b4a46c4e201', 38, 50, 'Instagram 𝙄𝙏𝘼𝙇𝙔 Comments [Random]', NULL, '70.2000', '54.0000', 1, 2500, 'api', 'default', '376', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(210, 'a44d8127aa259c8c4f324afa2da0e7b3', 38, 50, 'Instagram 𝙄𝙏𝘼𝙇𝙔 Comments [Custom]', NULL, '72.8000', '56.0000', 1, 2500, 'api', 'custom_comments', '377', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(211, 'ff77d07a6b97b03cec5898eae065d673', 38, 50, 'AUTO Instagram 𝙄𝙏𝘼𝙇𝙔 Likes + Impressions + Reach', NULL, '24.7000', '19.0000', 10, 2500, 'api', 'subscriptions', '378', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(212, 'bd518d2fd143d412ad9d30e555e688e7', 38, 50, 'AUTO Instagram 𝙄𝙏𝘼𝙇𝙔 Comments [Random]', NULL, '70.2000', '54.0000', 1, 2500, 'api', 'subscriptions', '379', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(213, 'bc15a02fc8dc70e32c4e39ea9799f320', 38, 51, 'Instagram Likes Indonesia Cheap (100/500)', NULL, '0.9900', '0.7600', 100, 500, 'api', 'default', '2717', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(214, '59a3d4fcd7553db6677b5fa61c2750d7', 38, 51, 'Instagram Likes Indonesia Real Active (100/3K) [1H]', NULL, '1.6300', '1.2500', 100, 3000, 'api', 'default', '2718', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(215, '880912f7e4709ce87f4984d58deb31a1', 38, 51, 'Instagram Likes Indonesia Real Active (100/2K) [48H]', NULL, '2.0300', '1.5600', 100, 2000, 'api', 'default', '2720', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(216, '51acb0637073c9d0a45a73ad847d6071', 38, 51, 'Instagram Likes Indonesia S1 (100/10K) [1H]', NULL, '2.1500', '1.6500', 100, 10000, 'api', 'default', '2719', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(217, 'a0444b5bab5d5273828382a5eb277c3d', 38, 51, 'Instagram Likes Indonesia S2 (100/10K) [1H] ⭐️', NULL, '2.4200', '1.8600', 100, 10000, 'api', 'default', '2721', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(218, '2f6d02711206e9263fb67ae67b0df01e', 38, 51, 'Instagram Followers Real Active Indonesia (100/500) ⚠️', NULL, '1.0700', '0.8200', 100, 500, 'api', 'default', '2708', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(219, '1ad1778c55033112097494d9faadb647', 38, 51, 'Instagram Followers Real Active Indonesia (100/100) [48H]', NULL, '1.6300', '1.2500', 100, 100, 'api', 'default', '2709', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(220, '90b2dcda2486ce5b39e1fd5d90f901be', 38, 51, 'Instagram Followers Indonesia (100/10K) [1H] ⭐️', NULL, '2.9300', '2.2500', 100, 10000, 'api', 'default', '2710', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(221, 'e42637823b523b5eac6dd9513cce928a', 38, 51, 'Instagram Followers Real Active Indonesia (100/2K) [48H]', NULL, '2.5000', '1.9200', 100, 2000, 'api', 'default', '2711', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(222, 'b17e6403d9e288294e20f49646300027', 38, 51, 'Instagram Followers Real Active Indonesia (100/3K) [24H]', NULL, '3.3800', '2.6000', 100, 3000, 'api', 'default', '2712', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(223, 'dd60564d00ce6b42e5295582a5cd728f', 38, 51, 'Instagram Followers Real Active Indonesia (100/3K) [Instant] ⚡', NULL, '5.1900', '3.9900', 100, 3000, 'api', 'default', '2713', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(224, 'e2df44b9975e9d14375c9157e5566f27', 38, 51, 'Instagram Followers Indonesia 7D Guarantee (100/5K) [1H - AG7]', NULL, '6.6300', '5.1000', 100, 5000, 'api', 'default', '2714', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(225, '9a8809eeebacdc0931d5d95558cb006a', 38, 51, 'Instagram Followers Indonesia 15D Guarantee (100/5K) [1H - AG15]', NULL, '7.9300', '6.1000', 100, 5000, 'api', 'default', '2715', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(226, '52e2a61e7fe1551dc09d3c8ea5201ed8', 38, 51, 'Instagram Followers Indonesia 30D Guarantee (100/5K) [1H - AG30]', NULL, '9.2300', '7.1000', 100, 5000, 'api', 'default', '2716', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(227, 'e29de9028908df1ad6c6f3a2efb96084', 38, 52, 'Instagram Real Saves | Speed 10K/H | Instant Super Fast!', NULL, '0.0100', '0.0050', 10, 15000, 'api', 'default', '2643', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(228, '0d8eaef600a7eba1d676bb7e48663a26', 38, 52, 'Instagram Real Saves | Instant Super Fast!', NULL, '0.0100', '0.0060', 50, 15000, 'api', 'default', '2639', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(229, '288e6cc4260085e4fbe322be238a32c7', 38, 52, 'Instagram Real Saves | Instant Super Fast!', NULL, '0.0100', '0.0080', 50, 20000, 'api', 'default', '1237', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(230, '871d905facc05ee79daca2942db6cf87', 38, 52, 'Instagram Real Saves | Instant Super Fast!', NULL, '0.0300', '0.0200', 25, 15000, 'api', 'default', '1131', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(231, '8e71d7093c315c5b321405829c9ba6cf', 38, 52, 'Instagram Real Saves | Instant Super Fast! [ Speed 400K/Hour ]', NULL, '0.0300', '0.0200', 10, 400000, 'api', 'default', '2966', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(232, 'be86fad1410b3ee8d8b7c73b7933ebc5', 38, 52, 'Instagram Real Saves + Impressions  | Instant Super Fast!', NULL, '0.0800', '0.0600', 100, 10000, 'api', 'default', '1267', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(233, '0941210f07a66a08bf84c152a316f743', 38, 52, '___________________________________________________________________________', NULL, '1298.7000', '999.0000', 1, 1, 'api', 'package', '452', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(234, 'ecb3783cff508a8992b433d7e09163a7', 38, 52, 'Instagram Real Story Views | Instant Super Fast! | All Story', NULL, '0.0100', '0.0050', 100, 15000, 'api', 'default', '2744', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(235, 'a5af0138971f412c93e4f6c09c0dd270', 38, 52, 'Instagram Real Story Views | Instant Super Fast! | All Story', NULL, '0.0100', '0.0080', 100, 15000, 'api', 'default', '360', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(236, 'c25721cde4c7bf439c6a98e01bf8a1dc', 38, 52, 'Instagram Real Story Views | Instant Super Fast! | All Story', NULL, '0.0200', '0.0120', 100, 20000, 'api', 'default', '1238', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(237, '2395aa36b2966df4ba4e03750d877780', 38, 52, 'Instagram Real Story Views | Instant Super Fast! | All Story', NULL, '0.0300', '0.0200', 100, 20000, 'api', 'default', '1130', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(238, '96cd607cc780b88fe54371ee49727f68', 38, 52, 'Instagram Real Story Views | Instant Super Fast! | All Story [ Speed 400K/Hour ]', NULL, '0.0700', '0.0500', 100, 400000, 'api', 'default', '2965', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(239, '1e19bde198c7bf06596615b6b3deb555', 38, 52, 'Instagram Story Views + Profile Visits | All Stories [ HQ ]', NULL, '0.1200', '0.0900', 100, 30000, 'api', 'default', '2821', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(240, '680c357481f6b150de2fb206f23e2186', 38, 52, 'Instagram Story Impressions | All Stories [ HQ ]', NULL, '0.6400', '0.4900', 100, 10000000, 'api', 'default', '2967', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(241, 'beceb55ca192c927e99e3f28667fcb2c', 38, 52, 'Instagram Story Swipe Up [ HQ ] Speed 100K/D', NULL, '0.4600', '0.3500', 100, 1000000, 'api', 'default', '2823', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(242, 'd9faa1e1f56c5d894aa61be83635f8fc', 38, 52, 'Instagram Real Story Poll Votes | for VOTE 1 | Instant Super Fast!', NULL, '1.2900', '0.9900', 50, 10000, 'api', 'default', '2794', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(243, '64783d048478adca980f420305b49c87', 38, 52, 'Instagram Real Story Poll Votes | for VOTE 2 | Instant Super Fast!', NULL, '1.2900', '0.9900', 50, 10000, 'api', 'default', '2795', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(244, '80cb3da90b9864e1b02e48b01f60b28b', 38, 53, 'Instagram Shares | Super Instant Start | Speed 1M/D', NULL, '0.2100', '0.1600', 100, 3000000, 'api', 'default', '2820', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(245, '94f35e1e96adf399fc0bd5e5c98fde2b', 38, 53, 'Instagram Shares | Super Instant Start | Speed 2M/D', NULL, '1.7600', '1.3500', 100, 4000000, 'api', 'default', '2672', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(246, 'aad74138d392ef2dc53bf599685f5706', 38, 54, 'Instagram Mentions [ User Followers ]', NULL, '4.2900', '3.3000', 10000, 100000, 'api', 'mentions_user_followers', '2974', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(247, 'd2560f92618d7d589d768ddb49841945', 38, 54, 'Instagram Mentions [ USER FOLLOWERS ]', NULL, '4.8000', '3.6900', 1000, 5000, 'api', 'mentions_user_followers', '2971', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(248, 'de988b44fcaa80ee2a08cc0638a332ae', 38, 54, 'Instagram Mentions [ CUSTOM LIST ]', NULL, '4.6700', '3.5900', 1000, 5000, 'api', 'mentions_custom_list', '2972', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(249, '10b53fbd50c86208d66f96c73692a7db', 38, 54, 'Instagram Mentions [ CUSTOM LIST ] Fast', NULL, '4.1600', '3.2000', 10000, 100000, 'api', 'mentions_custom_list', '2973', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(250, '714c73980a52c14425163145c2ce8f67', 38, 54, 'Instagram Mentions [ CUSTOM LIST ]', NULL, '4.1000', '3.1500', 20000, 500000, 'api', 'mentions_custom_list', '2975', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(251, '3da61896fb5c012a04d24832ecc1ecbf', 38, 54, 'Instagram Hashtag Mentions | Fast', NULL, '6.0500', '4.6500', 1000, 10000, 'api', 'mentions_hashtag', '2976', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(252, 'bf7c134f11c748ccf2ee43a3cb01ed20', 38, 54, 'İnstagram Multi Hashtag Mentions', NULL, '6.9600', '5.3500', 5000, 100000, 'api', 'mentions_with_hashtags', '2981', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(253, '4c10e2ca37ca11c369a2a776ebcfe02b', 38, 54, 'Instagram Mentions Media Liker', NULL, '8.4500', '6.5000', 200, 1000, 'api', 'mentions_media_likers', '2977', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(254, 'cab42051bcd6097275c95174a19a4302', 38, 54, 'Instagram Mentions ALL -Media Liker', NULL, '9.0900', '6.9900', 1000, 30000, 'api', 'mentions_media_likers', '2978', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(255, '33d2f1a88f7e46f66611f1b599e60ca1', 38, 54, 'Instagram Comments Mentions', NULL, '32.5000', '25.0000', 500, 5000, 'api', 'mentions_user_followers', '2979', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(256, 'cb128751a573f94d6859bf4e54902afd', 38, 54, 'Instagram Mentions - [ Location List ]', NULL, '9.0900', '6.9900', 1000, 10000, 'api', 'mentions_user_followers', '2980', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(257, '01948d244ae5a2f08607498eda9f9703', 38, 55, 'Instagram TV Views | Max 5M', NULL, '0.0300', '0.0200', 500, 5000000, 'api', 'default', '479', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(258, '5d0c219016182e382c271b4246aba9aa', 38, 55, 'Instagram TV Views | Max 10M', NULL, '0.0500', '0.0400', 100, 1000000, 'api', 'default', '434', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(259, '86095ee2680d0b32a89ae27d06b0a0c6', 38, 56, 'Instagram Views + Impressions + Profile Visits [ FAST ]', NULL, '0.0100', '0.0040', 100, 500000000, 'api', 'default', '2970', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(260, '82491151507fb923959c746e0c13e91a', 38, 56, 'Instagram Views | Max 5M', NULL, '0.0100', '0.0020', 100, 5000000, 'api', 'default', '1249', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(261, 'ff995b8c8c925603db7cb3970b810772', 38, 56, 'Instagram Views | Max 8M', NULL, '0.0100', '0.0030', 100, 8000000, 'api', 'default', '2800', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(262, '44ce91a4e763bdf63a8b8b3cd7bca36b', 38, 56, 'Instagram Views | Max 20M', NULL, '0.0100', '0.0050', 100, 20000000, 'api', 'default', '2637', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(263, '6e816034e7e34cd9b140862967649b5b', 38, 56, 'Instagram Views | Max 50M', NULL, '0.0100', '0.0060', 100, 50000000, 'api', 'default', '594', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(264, '57168d63df6e68e286b846712247659d', 38, 56, 'Instagram Views | Max 6M -', NULL, '0.0100', '0.0060', 100, 6000000, 'api', 'default', '1115', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(265, 'e1f3162b88348489f655c403670a12b0', 38, 56, 'Instagram Views | Max 5M', NULL, '0.0100', '0.0070', 100, 5000000, 'api', 'default', '553', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(266, 'f8109f6daf2abe6432fa62bbbbb1159a', 38, 56, 'Instagram Views | Max 7M', NULL, '0.0100', '0.0080', 100, 7000000, 'api', 'default', '11', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(267, '4c8753bff5f12b8371dedcd593920829', 38, 56, 'Instagram Views | Max 3M', NULL, '0.0100', '0.0090', 100, 9000000, 'api', 'default', '1081', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(268, '66cc47f1bb6c37e5f52e2fd894105eca', 38, 56, 'Instagram Views | Max 1M', NULL, '0.0100', '0.0100', 100, 100000000, 'api', 'default', '1082', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(269, 'a559465ed00fa422e361a5cadbf5a48c', 38, 56, 'Instagram Views | Max 1M', NULL, '0.0200', '0.0130', 100, 100000000, 'api', 'default', '12', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(270, 'fac41a94a34f4d843dc2c55d07deb17d', 38, 56, 'Instagram Views | Max 5M', NULL, '0.0300', '0.0200', 100, 50000000, 'api', 'default', '110', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(271, '74ff3018fd0156fc004997af32a1a657', 38, 56, 'Instagram Views + Impressions + Profile Visits [ INSTANT ] [ HQ ]', NULL, '0.0400', '0.0300', 500, 5000000, 'api', 'default', '13', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(272, '27416115741f27a630dbe2b72c1a492a', 38, 57, 'Instagram Real HQ Comments Likes | Super Fast! 🔥', NULL, '0.5100', '0.3900', 10, 4000, 'api', 'comment_likes', '1182', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(273, 'cb9225e0c40fd8b3196c81c9973e12d3', 38, 57, 'Instagram Real HQ Comments Likes | Super Fast! 🔥', NULL, '0.5500', '0.4200', 10, 7000, 'api', 'comment_likes', '2738', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(274, '9f3ce1204106d509ffa88670da51f5fd', 38, 57, 'Instagram Real HQ Comments Likes | Super Fast! 🔥', NULL, '2.2800', '1.7500', 20, 10000, 'api', 'comment_likes', '2739', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(275, '32eabe29012ded337a06031e59245ab6', 38, 57, 'Instagram Real Mixed Custom Comments | Super Fast 1K/D 🔥', NULL, '2.2000', '1.6900', 10, 1000, 'api', 'custom_comments', '2745', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(276, '99a3b005dd9e0d43a0e9151cd8f2f44b', 38, 57, 'Instagram Real Mixed Custom Comments | Super Fast 1K/D 🔥', NULL, '3.8900', '2.9900', 5, 1000, 'api', 'custom_comments', '2685', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(277, '4279b58c746320644ce41c5754defa55', 38, 57, 'Instagram %100 Real HQ Custom Comments 🔥', NULL, '35.1000', '27.0000', 5, 1000, 'api', 'custom_comments', '534', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(278, '57cf8c799433bdc6cd688922b2c5164b', 38, 57, 'Instagram %100 Real [ MALE ] HQ Custom Comments 🔥', NULL, '39.0000', '30.0000', 5, 1000, 'api', 'custom_comments', '556', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(279, 'd83f3c71f2a8acd037836613fb465bf6', 38, 57, 'Instagram %100 Real [ FEMALE ] HQ Custom Comments 🔥', NULL, '39.0000', '30.0000', 5, 1000, 'api', 'custom_comments', '535', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(280, '4601f5d1fc70e69acaeef3ecbc821ee4', 38, 58, 'Instagram Real Auto Likes Instant! Speed 2K/H No drop!', NULL, '0.3900', '0.3000', 50, 12000, 'api', 'subscriptions', '302', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(281, 'dbc244bca60d99f49d3a4dd26f4432ba', 38, 58, 'Instagram Real Auto Likes Instant! Speed 2K/H No drop!', NULL, '0.5200', '0.4000', 50, 10000, 'api', 'subscriptions', '412', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(282, 'ef99414016daa67a3983e9caea5046cb', 38, 58, 'Instagram Real Auto Likes Instant! Speed 5K/H No drop!', NULL, '0.5900', '0.4500', 50, 30000, 'api', 'subscriptions', '330', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(283, '248379541ce514bb8d34e961b649aa8f', 38, 58, 'Instagram Auto Likes Instant [ Real ] NoDrop!', NULL, '1.1100', '0.8500', 20, 10000, 'api', 'subscriptions', '30', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(284, 'd1ca7f7bd4b64ac1f1f2549b7b2b41fc', 38, 58, 'Instagram Auto Likes Instant [ Real ] NoDrop!', NULL, '0.7200', '0.5500', 20, 5000, 'api', 'subscriptions', '191', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(285, '67804241e460b6744e8d003022481e27', 38, 58, 'Instagram Auto Likes Instant [ Real ] Drop: %5-10', NULL, '0.4600', '0.3500', 25, 3000, 'api', 'subscriptions', '192', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(286, 'd9990c871b50df53fc9b3f07404b3e6f', 38, 58, 'Instagram Auto Saves', NULL, '0.0800', '0.0600', 100, 500000, 'api', 'subscriptions', '319', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(287, 'db6e1dbd02837f7489d064e3eed762dd', 38, 58, 'Instagram Real Auto Likes Instant! Speed 1K/H No drop!', NULL, '0.5200', '0.4000', 50, 30000, 'api', 'subscriptions', '308', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(288, '614f7948bf9679650eba6585e3cf40ca', 38, 59, 'Instagram Auto Views | Instant!', NULL, '0.0100', '0.0100', 100, 1000000, 'api', 'subscriptions', '321', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(289, 'edb755c3b8e5e34ffd5faa8dba683a85', 38, 59, 'Instagram Auto Views | Instant!', NULL, '0.0300', '0.0200', 100, 1000000, 'api', 'subscriptions', '322', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(290, '14ce04a7746ddd8303193467062b10c2', 38, 59, 'Instagram Auto Views + Impression + Profile Visit | Instant!', NULL, '0.0500', '0.0400', 100, 1000000, 'api', 'subscriptions', '323', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(291, '3020fbe3d494f45ee0b402e08cfae46b', 38, 60, '%100 Real 5 Comments ✅ [ from HQ and Active Accounts ]', NULL, '2.2800', '1.7500', 1, 1, 'api', 'package', '510', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(292, '7c1674b636eeb38b5b7d0728e241f997', 38, 60, '%100 Real 10 Comments ✅ [ from HQ and Active Accounts ]', NULL, '4.2300', '3.2500', 1, 1, 'api', 'package', '511', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(293, '43c824895a6ed8ae4694c05283707670', 38, 60, '%100 Real 15 Comments ✅ [ from HQ and Active Accounts ]', NULL, '5.2000', '4.0000', 1, 1, 'api', 'package', '512', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(294, '16f6c385191b94a9cd6b093384a65a20', 38, 60, '%100 Real 20 Comments ✅ [ from HQ and Active Accounts ]', NULL, '7.2200', '5.5500', 1, 1, 'api', 'package', '513', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(295, 'f98e026c687153a69b54839a06378598', 38, 60, '%100 Real 50  Comments ✅ [ from HQ and Active Accounts ]', NULL, '13.0000', '10.0000', 1, 1, 'api', 'package', '514', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(296, '4aa74cff11d90aa6684a0bab84b7e5a5', 38, 60, '%100 Real 100 Comments ✅ [ from HQ and Active Accounts ]', NULL, '20.8000', '16.0000', 1, 1, 'api', 'package', '515', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(297, 'ce1bf6f266c22587217f615dfbc35534', 38, 61, 'Facebook Real Page Likes | Less Drop | 1K/D No Refill', NULL, '1.4300', '1.1000', 100, 100000, 'api', 'default', '2681', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(298, 'fe998e067d058dc9a9ee877dd9c9595e', 38, 61, 'Facebook 𝐇𝐐 𝐑𝐞𝐚𝐥 𝐀𝐜𝐭𝐢𝐯𝐞 Page Likes | 20K/D Non Drop! [ R45 ]', NULL, '5.1400', '3.9500', 100, 300000, 'api', 'default', '1255', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(299, '377c47a8e60cc99879449b12ee2e4d3e', 38, 61, 'Facebook Real Page Likes [ Max 80K ] Non Drop! [ Lifetime Refill ] 3K/D', NULL, '3.5800', '2.7500', 100, 80000, 'api', 'default', '1026', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(300, 'c41f8fc891c7d611247f67d8243d77d6', 38, 61, 'Facebook Real Page Likes [ Max 15K ] Non Drop! [ R30 ] 100-200/D', NULL, '1.6800', '1.2900', 100, 10000, 'api', 'default', '1021', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(301, '65d7de006add1d4b12751bc403bd4463', 38, 61, 'Facebook Real Page Likes [ Max 25K ] Non Drop! [ R30 ] 1-3K/D', NULL, '2.0800', '1.6000', 100, 25000, 'api', 'default', '552', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(302, 'f7e93661bfe40de3a0f2b51cd5710b92', 38, 61, 'Facebook Real Page Likes [ Max 20K ] Non Drop! [ R30 ] 3-5K/D', NULL, '2.4700', '1.9000', 100, 30000, 'api', 'default', '336', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(303, 'b9e366789643422d75eb1646cbdcc1fe', 38, 61, 'Facebook Real Page Likes [ Max 40K ] Non Drop! [ R30 ] 5K/D', NULL, '2.8000', '2.1500', 100, 40000, 'api', 'default', '335', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(304, '7737c5a4346c82f47a01e38a3bf99d25', 38, 61, 'Facebook 𝐇𝐐 𝐑𝐞𝐚𝐥 𝐀𝐜𝐭𝐢𝐯𝐞 Page Likes Instant! Non Drop! [ R30 ] 10-15K/D  + BONUS', NULL, '3.7700', '2.9000', 100, 70000, 'api', 'default', '72', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(305, '98e2f1a1b33654a168911081afabcddb', 38, 61, 'Facebook 𝐇𝐐 𝐑𝐞𝐚𝐥 𝐀𝐜𝐭𝐢𝐯𝐞 Page Likes Non Drop! [ 30 Days Guarantee ] 10-15K/D  + BONUS', NULL, '5.0700', '3.9000', 100, 100000, 'api', 'default', '172', 4, 0, 0, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(306, '519ddbf69c8b01373cdc9a85d56926b9', 38, 62, 'Facebook Real Page Followers Instant! Non Drop! [ R30 ] 3-5K/D', NULL, '3.6400', '2.8000', 500, 20000, 'api', 'default', '340', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(307, '11c466a4b68a5ccb38352daa597de521', 38, 62, 'Facebook Real Page Followers Instant! Non Drop! [ R30 ] 5-10K', NULL, '5.0700', '3.9000', 500, 100000, 'api', 'default', '339', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(308, 'd2623a0e253a93789e51319a9e0613ee', 38, 62, 'Facebook Real Page Followers Instant! Non Drop! [ R30 ] 10-15K/D  + BONUS', NULL, '6.5000', '5.0000', 100, 70000, 'api', 'default', '139', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(309, '70057a4d146e5254079bbe6563e417f1', 38, 63, 'Facebook Real 𝐆𝐫𝐨𝐮𝐩 Members |  Non Drop! [ 30 Days Guarantee ] 5K/D', NULL, '4.1000', '3.1500', 100, 30000, 'api', 'default', '337', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(310, '7320a32e776eefd674218e770130be75', 38, 63, 'Facebook Real 𝐆𝐫𝐨𝐮𝐩 Members |  Non Drop! [ 30 Days Guarantee ] 5-10K/D', NULL, '4.5500', '3.5000', 100, 50000, 'api', 'default', '329', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(311, '08f9e6d27f9ec530abf2de6b7593c93e', 38, 64, 'FB Profile Followers (Worldwide)', NULL, '4.2300', '3.2500', 50, 10000, 'api', 'default', '2696', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(312, '37702506c97fa9aa973131e3cdd4b16a', 38, 64, 'FB Profile Followers (Indian)', NULL, '4.2300', '3.2500', 50, 1500, 'api', 'default', '2697', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(313, '560d6403f8a18a7a14dc39a48d6cb08e', 38, 64, 'FB Profile Followers (Bangladesh)', NULL, '4.2300', '3.2500', 50, 100, 'api', 'default', '2698', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(314, '3b880e77a70c7eab1c1460fc84df72e1', 38, 64, 'FB Profile Followers (Indonesian)', NULL, '4.2300', '3.2500', 50, 100, 'api', 'default', '2699', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(315, '661d8230aa98b5d2e4e11afbee1c613d', 38, 64, 'FB Profile Followers (Philippines)', NULL, '4.2300', '3.2500', 50, 100, 'api', 'default', '2700', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(316, 'd2a322a96e7e77142312c291a8665501', 38, 64, 'FB Profile Followers (Vietnam)', NULL, '4.2300', '3.2500', 50, 100, 'api', 'default', '2701', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(317, 'ff5040411e07f471dbeadb7bd5f38327', 38, 65, '🔥Facebook HQ Real Post Likes | 3K/D Less Drop | No Refill', NULL, '0.7200', '0.5500', 100, 70000, 'api', 'default', '2680', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(318, 'd6362e0e94c41a77860af77e77f6c52e', 38, 65, '🔥Facebook HQ Real Post Likes | 2K/D Non Drop [R30]', NULL, '1.0300', '0.7900', 50, 500, 'api', 'default', '1251', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(319, '0d61b869f3cefac1ce2db58690be75f0', 38, 65, '🔥Facebook HQ Real Post Likes | Instant! 2K/D Non Drop [R30]', NULL, '1.1400', '0.8800', 100, 2000, 'api', 'default', '477', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(320, 'dec309cc1338f979dfe3ad593470c341', 38, 65, 'Facebook HQ Real Post Likes | Instant! 5K/H Non Drop [R45]', NULL, '1.1700', '0.9000', 50, 40000, 'api', 'default', '108', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(321, 'a84143700e66c0a215d4c54a9d45ae00', 38, 65, 'Facebook Real Post Likes [ Max 100K ] %100 Non Drop! [ R30 ] 2K/D', NULL, '1.2900', '0.9900', 100, 2000, 'api', 'default', '467', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(322, '4963767116372741035df72fba5880d0', 38, 65, 'Facebook Post/Photo Likes | Max 15K - Instant! 10mins Complete', NULL, '2.6000', '2.0000', 10, 20000, 'api', 'default', '20', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(323, 'b89e8c56b81ab32639efc8c02bd69820', 38, 66, 'Facebook Philippines Post Likes', NULL, '2.6700', '2.0500', 50, 100, 'api', 'default', '2702', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(324, '17dfc33a0fe396b25d7ad17ae28a3272', 38, 66, 'Facebook Bangladesh Post Likes', NULL, '2.6700', '2.0500', 50, 100, 'api', 'default', '2703', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(325, 'b294fc3df7eb6747d2d56987977d1729', 38, 66, 'Facebook Indonesia Post Likes', NULL, '2.6700', '2.0500', 50, 100, 'api', 'default', '2704', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(326, 'e390bc029231ef4cb979ecf66c9806b0', 38, 66, 'Facebook Egypt Post Likes', NULL, '2.6700', '2.0500', 50, 100, 'api', 'default', '2705', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(327, '48c756ab6a621837d2bd8509512d30c0', 38, 66, 'Facebook Vietnam Post Likes', NULL, '2.6700', '2.0500', 50, 100, 'api', 'default', '2706', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(328, 'b3e48621117402fc394bdd1685024397', 38, 67, 'Facebook Post Likes Emoji [ LOVE ] ❤️', NULL, '1.5600', '1.2000', 50, 5000, 'api', 'default', '579', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(329, 'ea9bb5ae88004ad6386998e20bc512e4', 38, 67, 'Facebook Post Likes Emoji [ HAHA] 😂', NULL, '1.5600', '1.2000', 50, 5000, 'api', 'default', '580', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(330, '3abbf4552e1487d3a144c67bf542708a', 38, 67, 'Facebook Post Likes [ WOW ] 😲', NULL, '1.5600', '1.2000', 50, 5000, 'api', 'default', '581', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(331, 'a9e1c8e68929fee5f7fcdea0ee0edcf7', 38, 67, 'Facebook Post Likes Emoji [ SAD ] 😢', NULL, '1.5600', '1.2000', 50, 5000, 'api', 'default', '582', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(332, '179132d405d3467f7188f5cfd022d167', 38, 67, 'Facebook Post Likes Emoji [ ANGRY ] 😡', NULL, '1.5600', '1.2000', 50, 5000, 'api', 'default', '583', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(333, '482e8de0c3cce0a1a9336ded0c12ea06', 38, 68, '🇮🇳 Facebook India Super Instant Real Likes (Refill 30 Days)', NULL, '2.2800', '1.7500', 50, 1000, 'api', 'default', '2689', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(334, 'd004ce3f0ac09ca38d20e591c2f1dc91', 38, 68, '🇮🇳 Facebook India Super Instant Real [ LOVE ] ❤️', NULL, '2.2800', '1.7500', 50, 1000, 'api', 'default', '2690', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(335, '37a1823abe35bdafbc0bc27ba30c122a', 38, 68, '🇮🇳 Facebook India Super Instant Real Angry [ ANGRY ] 😡', NULL, '2.2800', '1.7500', 50, 1000, 'api', 'default', '2691', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(336, '8b9371cde80cfb5c066d0e1a5a3d326e', 38, 68, '🇮🇳 Facebook India Super Instant Real [ HAHA] 😂', NULL, '2.2800', '1.7500', 50, 1000, 'api', 'default', '2692', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(337, '25c6b2fd697bd5561126bb0e12c5a3bf', 38, 68, '🇮🇳 Facebook India Super Instant Real [ WOW ] 😲', NULL, '2.2800', '1.7500', 50, 1000, 'api', 'default', '2693', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(338, 'a1e49ce2ac989c496d47bb025022ae5d', 38, 68, '🇮🇳 Facebook India Super Instant Real [ SAD ] 😢', NULL, '2.2800', '1.7500', 50, 1000, 'api', 'default', '2694', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(339, 'c4d187bf19a68f3411eca88e05277324', 38, 69, '🇪🇬 Facebook Egyptian Profile HQ Followers (1k-3k Daily speed) (Non Drop) (60 Days Refil)', NULL, '3.0400', '2.3400', 100, 5000, 'api', 'default', '2919', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(340, '5268a2388eed157ecb9a1a766ed9796b', 38, 69, '🇪🇬 Facebook Egyptian Page HQ Likes (1k-3k Daily speed) (Non-Drop) (60 Days Refill)', NULL, '3.1900', '2.4500', 100, 5000, 'api', 'default', '2920', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(341, '46ad6bf4f024b95b00f7f5e5624a50c2', 38, 69, '🇪🇬 FACEBOOK EGYPTIAN Post Likes (Non drop) (60 days Refill)', NULL, '2.0300', '1.5600', 300, 5000, 'api', 'default', '2921', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(342, '5631723b3d1372ff25c761379f569780', 38, 69, '🇪🇬 FACEBOOK EGYPTIAN Post (Love Reaction 😍 ) (Non drop) (60 days Refill)', NULL, '2.0300', '1.5600', 300, 5000, 'api', 'default', '2922', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(343, 'db1a556d1fca2f374809204602366ead', 38, 69, '🇪🇬 FACEBOOK EGYPTIAN Post (Wow Reaction 😲 ) (Non drop) (60 days Refill)', NULL, '2.0300', '1.5600', 300, 5000, 'api', 'default', '2923', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(344, '8f1a979dc565528d8a0c9a084b992c43', 38, 69, '🇪🇬 FACEBOOK EGYPTIAN Post (HAHHAHA Reaction 😀 ) (Non drop) (60 days Refill)', NULL, '2.0300', '1.5600', 300, 5000, 'api', 'default', '2924', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(345, 'da5685ee4ae4e02734ac7b101c8798e6', 38, 69, '🇪🇬 FACEBOOK EGYPTIAN Post (SAD Reaction 😢 ) (Non drop) (60 days Refill)', NULL, '2.0300', '1.5600', 300, 5000, 'api', 'default', '2925', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(346, '2d58a196c96a31f6a8cef21d3916c9d9', 38, 69, '🇪🇬 FACEBOOK EGYPTIAN Post (ANGRY Reaction 😡 ) (Non drop) (60 days Refill)', NULL, '2.0300', '1.5600', 300, 5000, 'api', 'default', '2926', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(347, '09ceed77dd32a1ca70fbe09e6a43c1c4', 38, 70, 'Facebook Story Views | Speed 10K/D', NULL, '3.3200', '2.5500', 100, 150000, 'api', 'default', '2682', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(348, 'a7da130e544859da9fdfc20657b7466d', 38, 71, 'Facebook Video Views | Speed 20K/D | Instant!', NULL, '0.1400', '0.1100', 500, 100000000, 'api', 'default', '2677', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(349, '56c7264b43f8feb59e5a73279d9a03fe', 38, 71, 'Facebook Video Views | Speed 10K/D', NULL, '0.2600', '0.2000', 500, 100000000, 'api', 'default', '2662', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(350, '0e27bd66cc23eef8da41223d6a0919b0', 38, 71, 'Facebook Video Views | Speed 100K/D - Super Fast!', NULL, '0.3900', '0.3000', 500, 100000000, 'api', 'default', '1035', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(351, 'bbc37a715e9eb815d2d76a9304202934', 38, 72, 'Facebook Auto Video Views ( 7 Days | 6 Videos / Day )', NULL, '9.7500', '7.5000', 500, 1000000, 'api', 'default', '2763', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(352, 'af600fde0ab69402bda4bcd2aa19151e', 38, 72, 'Facebook Auto Video Views ( 7 Days | 10 Videos / Day )', NULL, '11.0500', '8.5000', 500, 1000000, 'api', 'default', '2764', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(353, '0996a33e6c552911c26b8a37df2aa0e1', 38, 72, 'Facebook Auto Video Views ( 7 Days | 20 Videos / Day )', NULL, '12.3500', '9.5000', 500, 1000000, 'api', 'default', '2765', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(354, '180f3c396cc142b893b02b7aa810f838', 38, 72, 'Facebook Auto Video Views ( 15 Days | 6 Videos / Day )', NULL, '18.2000', '14.0000', 500, 1000000, 'api', 'default', '2766', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(355, '4a0e8ff3a3939c73ba46f9515f613dea', 38, 72, 'Facebook Auto Video Views ( 15 Days | 10 Videos / Day )', NULL, '20.8000', '16.0000', 500, 1000000, 'api', 'default', '2767', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(356, '1f10b0120c6742a1dacd6bd34615570a', 38, 72, 'Facebook Auto Video Views ( 15 Days | 20 Videos / Day )', NULL, '26.0000', '20.0000', 500, 1000000, 'api', 'default', '2768', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(357, '875a0d075eef5ecf719c8a01f85f197a', 38, 72, 'Facebook Auto Video Views ( 30 Days | 6 Videos / Day )', NULL, '39.0000', '30.0000', 500, 1000000, 'api', 'default', '2769', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(358, 'd8f606f780dbefef8e4456da5ab8747d', 38, 72, 'Facebook Auto Video Views ( 30 Days | 10 Videos / Day )', NULL, '45.5000', '35.0000', 500, 1000000, 'api', 'default', '2770', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(359, '2dfafa7bed8bf710ba389cb499df081e', 38, 72, 'Facebook Auto Video Views ( 30 Days | 20 Videos / Day )', NULL, '52.0000', '40.0000', 500, 1000000, 'api', 'default', '2771', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(360, 'b10f85d83c327ff3917e62f72af25a9c', 38, 73, 'Facebook Monetization Views | 1-2 mins Watchtimes | Speed 10K-50K/D - R∞', NULL, '0.9800', '0.7500', 500, 500000, 'api', 'default', '2645', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(361, '51cc8c770dcacd7ab0ab2fb7d0d9c67a', 38, 73, 'Facebook Monetization Views | 1-2 mins Watchtimes | Speed 10K-30K/D - R∞', NULL, '1.2400', '0.9500', 500, 500000, 'api', 'default', '2646', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(362, 'dba2d7efc1a17a72ac168f537852083b', 38, 73, 'Facebook Monetization Views | 1-2 mins Watchtimes | Speed 50K-100K/D - R∞', NULL, '1.3300', '1.0200', 500, 500000, 'api', 'default', '2647', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(363, '7de0f5c677f090635ec7e01bd9b2d925', 38, 73, 'Facebook Monetizable Video Views | 2-30 mins Watchtimes | Speed 100K-300K/D | No Refill', NULL, '2.5900', '1.9900', 10000, 10000000, 'api', 'default', '2649', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(364, '86b045d06e8cce770b288f73c7a468c6', 38, 73, 'Facebook Monetizable Video Views | 30-60 mins Watchtimes | Speed 100K-150K/D | No Refill', NULL, '5.8500', '4.5000', 10000, 10000000, 'api', 'default', '2650', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(365, '8ce18eb2834b54a37ac9aa2682655c99', 38, 73, 'Facebook Monetizable Video Views | 60-180 mins Watchtimes | Speed 100K-250K/D | No Refill', NULL, '8.1300', '6.2500', 10000, 10000000, 'api', 'default', '2651', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(366, 'bfe809778699d67f1c147d2a5b648ff9', 38, 74, 'Facebook %100 Real HQ Custom Comments 🔥', NULL, '54.6000', '42.0000', 5, 1000, 'api', 'custom_comments', '528', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(367, 'b878a59fa76755addfcbd22e6059fcd5', 38, 74, 'Facebook %100 Real [ MALE ] HQ Custom Comments 🔥', NULL, '58.5000', '45.0000', 5, 1000, 'api', 'custom_comments', '529', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(368, 'a2728c520c7b757b9cfab6c04b67cb1d', 38, 74, 'Facebook %100 Real [ FEMALE ] HQ Custom Comments 🔥', NULL, '58.5000', '45.0000', 5, 1000, 'api', 'custom_comments', '530', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(369, '9735ca87bed5b4f8487f6b7458885662', 38, 75, 'Facebook Live Stream Views 🔥 30 mins', NULL, '5.1900', '3.9900', 50, 1000, 'api', 'default', '144', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(370, '0a696f96613d1e8c11cc0d5f65a9cce2', 38, 75, 'Facebook Live Stream Views 🔥 60 mins', NULL, '10.9900', '8.4500', 50, 1000, 'api', 'default', '145', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(371, '2a06abac3e87585f6f1c116f12aad7c4', 38, 75, 'Facebook Live Stream Views 🔥 90 mins', NULL, '14.8900', '11.4500', 50, 1000, 'api', 'default', '146', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(372, '37aa7564cfd9878f65647ca9144a1bbc', 38, 75, 'Facebook Live Stream Views 🔥 120 mins', NULL, '19.9600', '15.3500', 50, 1000, 'api', 'default', '147', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(373, '6d447438bf8e69643eb7a2a5d8ded1e6', 38, 75, 'Facebook Live Stream Views 🔥 150 mins', NULL, '24.7000', '19.0000', 50, 1000, 'api', 'default', '455', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(374, '689de29a1b2c01fee5de97a139268e3a', 38, 75, 'Facebook Live Stream Views 🔥 180 mins', NULL, '29.9000', '23.0000', 50, 1000, 'api', 'default', '456', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(375, '6fe7b8c7f77500df8bf8a4abc3221f4d', 38, 76, 'Facebook Live Views [Auto 10 viewers] (1 Month)', NULL, '143.0000', '110.0000', 1, 1, 'api', 'package', '1068', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(376, 'a409e086b85c9ef076bee334690d4136', 38, 76, 'Facebook Live Views [Auto 20 viewers] (1 Month)', NULL, '146.9000', '113.0000', 1, 1, 'api', 'package', '1069', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(377, 'f9c4375e93fbfd830c36001ca0e0a386', 38, 76, 'Facebook Live Views [Auto 30 viewers] (1 Month)', NULL, '150.8000', '116.0000', 1, 1, 'api', 'package', '1070', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(378, '4d912c52554eebe3842763b9e3c794bf', 38, 76, 'Facebook Live Views [Auto 50 viewers] (1 Month)', NULL, '154.7000', '119.0000', 1, 1, 'api', 'package', '1071', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(379, '0b090f658a022bed2a35c777d89ef16c', 38, 76, 'Facebook Live Views [Auto 70 viewers] (1 Month)', NULL, '195.0000', '150.0000', 1, 1, 'api', 'package', '1072', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(380, 'ba4a5a89d8c3289905f828a0918f3347', 38, 76, 'Facebook Live Views [Auto 100 viewers] (1 Month)', NULL, '273.0000', '210.0000', 1, 1, 'api', 'package', '1073', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(381, '73d8863a7ead714f59e0b50b2010600b', 38, 76, 'Facebook Live Views [Auto 150 viewers] (1 Month)', NULL, '383.5000', '295.0000', 1, 1, 'api', 'package', '1074', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(382, 'aaabde7b35be93c34123481361b5dcc7', 38, 76, 'Facebook Live Views [Auto 200 viewers] (1 Month)', NULL, '500.5000', '385.0000', 1, 1, 'api', 'package', '1075', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(383, 'fe6b796f786598357107bcc21a35c3ef', 38, 76, 'Facebook Live Views [Auto 250 viewers] (1 Month)', NULL, '611.0000', '470.0000', 1, 1, 'api', 'package', '1076', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(384, '3be8b10493cdad33271b400238099633', 38, 76, 'Facebook Live Views [Auto 300 viewers] (1 Month)', NULL, '728.0000', '560.0000', 1, 1, 'api', 'package', '1077', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(385, '3954fc2aa1e928ab469a76d8d7871cf8', 38, 76, 'Facebook Live Views [Auto 400 viewers] (1 Month)', NULL, '981.5000', '755.0000', 1, 1, 'api', 'package', '1078', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(386, 'caa97a7da60a89592a136eb74ff6a2bb', 38, 76, 'Facebook Live Views [Auto 500 viewers] (1 Month)', NULL, '1235.0000', '950.0000', 1, 1, 'api', 'package', '1079', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(387, 'bbf607a752ae12293845501f762e6511', 38, 76, 'Facebook Live Views [Auto 1000 viewers] (1 Month)', NULL, '2730.0000', '2100.0000', 1, 1, 'api', 'package', '1080', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(388, 'a52d44ac76315dfa4985ac899b464270', 38, 77, '%100 Real 5  Comments ✅ [ from HQ and Active Accounts ]', NULL, '1.4300', '1.1000', 1, 1, 'api', 'package', '504', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(389, '9f1a941670e3cccba1fc06cfd0050722', 38, 77, '%100 Real 10 Comments ✅ [ from HQ and Active Accounts ]', NULL, '2.6700', '2.0500', 1, 1, 'api', 'package', '505', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(390, '9f3af8512557ab1367aa12e4ec9803cc', 38, 77, '%100 Real 15 Comments ✅ [ from HQ and Active Accounts ]', NULL, '4.5500', '3.5000', 1, 1, 'api', 'package', '506', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(391, '860c06f705279189a3221f7e8d8c4322', 38, 77, '%100 Real 20 Comments ✅ [ from HQ and Active Accounts ]', NULL, '5.8500', '4.5000', 1, 1, 'api', 'package', '507', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(392, '0b9c224bb62614ae815ead8983ec49ad', 38, 77, '%100 Real 50 Comments ✅ [ from HQ and Active Accounts ]', NULL, '10.4000', '8.0000', 1, 1, 'api', 'package', '508', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(393, 'ec6f3c163851ae9c3a55843173082346', 38, 77, '%100 Real 100 Comments ✅ [ from HQ and Active Accounts ]', NULL, '16.2500', '12.5000', 1, 1, 'api', 'package', '509', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(394, '988c38eb13570308b1efb16a7faa3969', 38, 78, 'Youtube [4000 Hours] Watchtime [ +15 mins Videos ] [ R60 ] EXCLUSIVE ⭐🔥🔥', NULL, '20.8000', '16.0000', 100, 4000, 'api', 'default', '1175', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(395, '275bf339837c2f1928e2142386553be9', 38, 78, 'Youtube [4000 Hours] Watchtime [ +30mins Videos ] [ R30 ] EXCLUSIVE ⭐🔥🔥', NULL, '15.6000', '12.0000', 100, 4000, 'api', 'default', '1125', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(396, 'fa5ac1c8641815f2d02cb3eeb7e0fd2d', 38, 78, 'Youtube [4000 Hours] Watchtime [ Lifetime Refill ] Instant! EXCLUSIVE ⭐🔥🔥Super Fast | Complete in 3-4 Days', NULL, '16.9000', '13.0000', 200, 4500, 'api', 'default', '1028', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(397, '2271c83000e7bc7f64662293c0fbcc16', 38, 78, 'Youtube [4000 Hours] Watchtime | %100 No Drop [ R30 ] EXCLUSIVE ⭐🔥🔥Super Fast | Complete in 3-4 Days', NULL, '14.9500', '11.5000', 200, 4500, 'api', 'default', '1019', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(398, 'd446579168525dfc8ee41b4a7d332f05', 38, 78, 'Youtube [4000 Hours] Watchtime [ R30 ] Instant! EXCLUSIVE ⭐🔥🔥Super Fast | Complete in 3-4 Days', NULL, '14.3000', '11.0000', 500, 4000, 'api', 'default', '462', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(399, '33cbc540f7f752c8d30e97ad35229792', 38, 78, 'Youtube [4000 Hours] Watchtime [ R30 ] Instant! EXCLUSIVE ⭐🔥🔥Super Fast | Complete in 4-5 Days', NULL, '11.7000', '9.0000', 1000, 4000, 'api', 'default', '1029', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(400, 'eeadeb91aced5556c3a9f0f9f3f33341', 38, 78, 'Youtube [4000 Hours] Watchtime [ R30 ] Instant! EXCLUSIVE 🔥🔥', NULL, '7.6700', '5.9000', 100, 4000, 'api', 'default', '605', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(401, '2aa809ceff9219ee7126ecb9c68cb393', 38, 78, 'Youtube [ 4000 Hours ] Watchtime [ 90 Days Refill ] EXCLUSIVE 🔥🔥%100 NO DROP', NULL, '11.0500', '8.5000', 100, 4000, 'api', 'default', '542', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(402, '39999e80281c577915e299aa472e9f48', 38, 78, 'Youtube [4000 Hours] Watchtime [ R30 ] Instant! EXCLUSIVE 🔥🔥', NULL, '8.7800', '6.7500', 100, 4000, 'api', 'default', '152', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(403, 'e28de57af41131ac362f30105dca5c0a', 38, 78, 'Youtube [4000 Hours] Watchtime [ R30 ] NoDrop! EXCLUSIVE 🔥🔥', NULL, '9.9500', '7.6500', 100, 4000, 'api', 'default', '129', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(404, '71db6bc2d5bdfdf3516427a4f6361944', 38, 78, 'Youtube [4000 Hours] Watchtime RAV [ R30 ] Instant! NON DROP! 🔥🔥', NULL, '10.4000', '8.0000', 100, 4000, 'api', 'default', '296', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(405, '2ca4a5d5347f85ee5001c9ee55c18c9c', 38, 78, 'Youtube [4000 Hours] Watchtime [ 365 Days Refill ] No Drop! EXCLUSIVE 🔥🔥', NULL, '14.3000', '11.0000', 100, 4000, 'api', 'default', '464', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(406, '9b8fae455cead5e13ebbf0de3dd65810', 38, 78, 'Youtube [4000 Hours] Watchtime [ LIFE TIME REFILL ] NoDrop! EXCLUSIVE 🔥🔥', NULL, '16.2500', '12.5000', 100, 4000, 'api', 'default', '166', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(407, '3d469a962aa291c00c25d36186177b28', 38, 78, 'Youtube Watch Time | G30 - 4000H | Accept any length of video | EXCLUSIVE 🔥🔥', NULL, '15.6000', '12.0000', 500, 4000, 'api', 'default', '599', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(408, '843fe130f16c283543ce332b2236aaf1', 38, 78, 'Youtube Watch Time | G30 - 4000H | Accept any length of video | EXCLUSIVE 🔥🔥', NULL, '14.9500', '11.5000', 500, 4000, 'api', 'default', '253', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(409, '9f63ac5eded6ec5994cb19de61e5a4d9', 38, 79, 'Youtube Views [ Speed 2K/D ] [ Life Time Guaranteed ] INSTANT!  2-10 mins Retention', NULL, '0.9800', '0.7500', 300, 1000000, 'api', 'default', '2789', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(410, '21a241be34313f864097aada48a32016', 38, 79, 'Youtube Views [ Speed 5-10K/D ] INSTANT [ Life Time Guaranteed ]  1-2 mins Retention', NULL, '1.1600', '0.8900', 100, 30000000, 'api', 'default', '2670', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(411, 'cbac083a1e7128c48b9d62b31453b4e8', 38, 79, 'Youtube 𝐒𝐮𝐠𝐠𝐞𝐬𝐭𝐞𝐝 Views from the top 50 trending videos in the USA [ R30 ]', NULL, '4.1000', '3.1500', 300, 15000, 'api', 'default', '2669', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(412, 'a33aecc912c3b43d0d8ab5ff97b35b1b', 38, 79, 'Youtube Views [ Life Time Guarantee - %100 NonDrop ] [ Speed 500K+/D ] 1-5 mins Retention', NULL, '2.2800', '1.7500', 1000, 10000000, 'api', 'default', '1252', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(413, '89ce0e4cecb65605185636c17280c578', 38, 79, 'Youtube Views from Related Videos | Lifetime Refill | Speed 10K+/D | Real Active Users', NULL, '2.6700', '2.0500', 100, 120000, 'api', 'default', '2686', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(414, 'fe5fc47a3194555f5ccad93f81f25e62', 38, 79, 'Youtube Views from Related Videos | Lifetime Refill | Speed 5K+/D | Real Active Users - Trending Views', NULL, '3.5100', '2.7000', 100, 150000, 'api', 'default', '1219', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(415, '6257ee9c8c24e5357f21b8268ac6a94c', 38, 79, 'Youtube Views [ Speed 2K/D ] [ Life Time Guaranteed ]  0-5 mins Retention', NULL, '1.2000', '0.9200', 100, 1000000, 'api', 'default', '1243', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(416, '820aba07b42c5240411d54365586e0a8', 38, 79, 'Youtube Views [ Speed 2K/D ] [ Life Time Guaranteed ] No Drop - 1-5 mins Retention', NULL, '1.2900', '0.9900', 300, 1000000, 'api', 'default', '588', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(417, '852f8b3a9a2b4c13df35f10b03422089', 38, 79, '🔥 Youtube - Views [ 10-15K/D ] [ Life Time Guaranteed ] INSTANT No Drop', NULL, '1.4300', '1.1000', 250, 10000000, 'api', 'default', '1022', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(418, 'b63be75f15c8528390d4572db1a59883', 38, 79, 'Youtube Views | %100 No Drop! | Speed 500/D [ Life Time Guaranteed ]', NULL, '1.0100', '0.7800', 500, 1000000, 'api', 'default', '589', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(419, 'ca9e0fe3f2efb045d8096118540fac26', 38, 79, 'Youtube Views [ Speed 5-10K/D ] [ Life Time Guaranteed ]', NULL, '1.3700', '1.0500', 250, 1000000, 'api', 'default', '551', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(420, 'd6ef288a3bd4246563368cf2bb3a012d', 38, 79, '𝐍𝐄𝐖🔥 Youtube Views [ 5K/D ] [ Life Time Guaranteed ] 2 mins Retention!', NULL, '1.7900', '1.3800', 250, 10000000, 'api', 'default', '366', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(421, 'ea2f8a7be7cb87e3f9b422150f8638d1', 38, 79, '🔥 Youtube - Views [ 10-20K/D ] [ Life Time Guaranteed ] INSTANT', NULL, '1.6300', '1.2500', 250, 10000000, 'api', 'default', '154', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(422, '41dccb72d90537950d1e4a431c0db167', 38, 79, '🔥 Youtube Views [ %100 Non Drop ] [ 5-6K/D ] [ Life Time Guaranteed ]', NULL, '1.6900', '1.3000', 100, 30000000, 'api', 'default', '311', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(423, '0eec87091cadacdc62a71c0ea77b8c61', 38, 79, 'Youtube - Views [ 10K/D ] [ LifeTime Refill Guaranteed ] INSTANT', NULL, '1.8500', '1.4200', 100, 10000000, 'api', 'default', '304', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(424, '4f8e66de7479e3834a1de2b2cda0f850', 38, 79, '𝐍𝐄𝐖🔥 Youtube - Views [ Non Drop ] [ 30K/D ] [ Life Time Guaranteed ] INSTANT', NULL, '1.8900', '1.4500', 400, 10000000, 'api', 'default', '77', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(425, '547b89c054a450e55dad7c603b44878f', 38, 79, '🔥 Youtube - Views [ [ %100 Non Drop ] ] [ 10K-30K/D ] [ Life Time Guaranteed ]', NULL, '2.0200', '1.5500', 100, 10000000, 'api', 'default', '149', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(426, '4145b31791cc36acd5a058de4f17fb17', 38, 79, 'BEST🔥 Youtube - Views [ Non Drop ] [ 30K/D ] [ Life Time Guaranteed ] INSTANT!', NULL, '2.7300', '2.1000', 1000, 100000000, 'api', 'default', '175', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(427, 'c9e255cc85589d2d4a89478c4ecf1361', 38, 79, '🔥 Youtube - Views [ Non Drop ] [ 50K-100K/D ] [ Life Time Guaranteed ]', NULL, '2.2800', '1.7500', 1000, 100000000, 'api', 'default', '312', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(428, 'f5fa85987c70e8a1e82b917d3d404ad3', 38, 79, '🔥 Youtube - Views [ Non Drop ] [ 20K-30K/D ] [ Life Time Guaranteed ] - Instant!', NULL, '2.8600', '2.2000', 1000, 100000000, 'api', 'default', '388', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(429, '84d4d35f64a57de46f7d2604242443ce', 38, 79, '🔥 Youtube 𝐇𝐑 Views [ Liftime Guarantee - Max 20K ] [ Speed 100-200/D ]', NULL, '1.9500', '1.5000', 1000, 20000, 'api', 'default', '180', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(430, '5dc3bfdc2deb5d255ba66c68f43f2fd7', 38, 79, '🔥 Youtube 𝐇𝐑 Views [ Liftime Guarantee - Max 50K ] [ Speed 400-500/D ]', NULL, '2.8000', '2.1500', 1000, 50000, 'api', 'default', '126', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(431, '30d327ceccde5c7d6b01ebcedd6c035d', 38, 79, '🔥 Youtube FAST Views [ Life Time Guarantee - Max 8M ] [ Speed 200-300K+/D ]', NULL, '2.6000', '2.0000', 1000, 10000000, 'api', 'default', '123', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(432, 'b7deef2b54d5f0e8812f1e6ac386225d', 38, 79, '🔥 Youtube REAL Views [ Life Time Guarantee - Max 2M ] [ Speed 40K-60K+/D ]', NULL, '2.6000', '2.0000', 1000, 2000000, 'api', 'default', '81', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(433, 'ecd6a576aba978355b576379256b953b', 38, 79, '🔥 Youtube REAL Views [ Life Time Guarantee - Max 2M ] [ Speed 30K-50K/D ]', NULL, '2.6000', '2.0000', 400, 2000000, 'api', 'default', '150', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(434, 'e33f4196e1aa03f2fe01fd65368a0860', 38, 79, '🔥 Youtube FAST Views [ Life Time Guarantee - Max 8M ] [ Speed 200-300K+/D ]', NULL, '2.0800', '1.6000', 100000, 10000000, 'api', 'default', '478', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(435, '8d88a3cff9efb7482f28e0a0fbc8fca6', 38, 80, 'Youtube KOREAN Adwords Views | Speed up to 100K | for 0-6 mins videos', NULL, '3.8900', '2.9900', 50000, 10000000, 'api', 'default', '2671', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(436, '4d3afcc8ba18af43aa357aa342241b0a', 38, 80, 'Youtube Adwords Views | Min 100K | 24-48H complete', NULL, '1.2900', '0.9900', 100000, 10000000, 'api', 'default', '1147', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(437, 'eba43e034c62e2f66f51c4f3b831d0a8', 38, 80, 'Youtube Adwords Views | Min 200K | 24-48H complete', NULL, '1.1700', '0.9000', 200000, 10000000, 'api', 'default', '2653', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(438, '6dbb91ecf2882bb051156c193be0f808', 38, 80, 'Youtube Adwords Views | Min 500K | 24-48H complete', NULL, '1.0100', '0.7800', 500000, 10000000, 'api', 'default', '2654', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(439, 'ae439f432c5900dd926517506e268cbf', 38, 80, 'Youtube Adwords Views | Min 1M | 24-48H complete', NULL, '0.9400', '0.7200', 1000000, 10000000, 'api', 'default', '2655', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(440, 'a07b6f2a7197da96d08068261a36262e', 38, 80, 'Youtube Adwords Views | Min 100K | Speed 100K/D | 1 - 12h Approval 🔥', NULL, '1.8900', '1.4500', 100000, 10000000, 'api', 'default', '1148', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(441, '2497f198ed7ace1bf80aa3b91cf6d433', 38, 80, 'YouTube 𝐍𝐚𝐭𝐢𝐯𝐞 Views - [ For 0-60 mins videos ] [100% Non Drop] (50k+/Day) - Instant', NULL, '2.0700', '1.5900', 20000, 1000000000, 'api', 'default', '1126', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(442, '3151ba2c2df1b1241838643ddd128ee4', 38, 80, 'YouTube 𝐍𝐚𝐭𝐢𝐯𝐞 Views - [ For 1-60 mins videos ] [100% Non Drop] (500k+/Day) - Instant', NULL, '2.5900', '1.9900', 100000, 1000000000, 'api', 'default', '1127', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(443, '3ec300695450bc134e283cbbf9766c80', 38, 81, 'Youtube 𝐒𝐮𝐠𝐠𝐞𝐬𝐭𝐞𝐝 Views - | 30 Day Refill  | Speed 2K+/D', NULL, '2.4100', '1.8500', 250, 10000000, 'api', 'default', '264', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(444, 'f51ea5add56820d8c5848ed90fadcbaa', 38, 81, 'Youtube 𝐒𝐮𝐠𝐠𝐞𝐬𝐭𝐞𝐝 Views - | 60 Day Refill | Speed 500+/D', NULL, '3.1900', '2.4500', 300, 10000, 'api', 'default', '1261', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(445, '28e84ce96f7178d7ea6feb668f7757c7', 38, 81, 'Youtube 𝐒𝐮𝐠𝐠𝐞𝐬𝐭𝐞𝐝 Views - | R∞ - 5M | Speed 5K+ /D | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏 |⚡️⭐', NULL, '3.2400', '2.4900', 300, 10000, 'api', 'default', '601', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(446, '6eb93282f493720bd1298e254c9b6e22', 38, 81, 'Youtube Views from Related Videos | Lifetime Refill | Speed 10K+/D | Real Active Users', NULL, '3.1900', '2.4500', 100, 120000, 'api', 'default', '2687', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(447, '2370ec9745d97406c083cd43c7034887', 38, 81, 'Youtube Views from Related Videos | Lifetime Refill | Speed 5K+/D | Real Active Users - Trending Views', NULL, '3.8400', '2.9500', 100, 150000, 'api', 'default', '1218', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(448, 'da848a0b0a046a0b977ae90bbbe425b2', 38, 81, 'Youtube 𝐒𝐮𝐠𝐠𝐞𝐬𝐭𝐞𝐝 Views from the top 50 trending videos in the USA [ R30 ]', NULL, '4.1000', '3.1500', 300, 15000, 'api', 'default', '2666', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(449, '0ccb8d6ba346760cd6ce0ad57db8c8e2', 38, 81, 'Youtube 𝐒𝐮𝐠𝐠𝐞𝐬𝐭𝐞𝐝 Views - | R∞ - 10M | Speed 10K+ /D | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏 |⚡️⭐', NULL, '3.8900', '2.9900', 100, 10000000, 'api', 'default', '265', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(450, 'cc1d3b9895991e86e3fa131f33f4923f', 38, 81, 'Youtube 𝐒𝐮𝐠𝐠𝐞𝐬𝐭𝐞𝐝 Views - | R∞ - 20M | Speed 10K+ /D | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏 |⚡️⭐', NULL, '4.4200', '3.4000', 100, 20000000, 'api', 'default', '266', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(451, 'b60ff3cb8b2311ff062ed891c872032b', 38, 82, 'Youtube 𝐇𝐑 Views - | Lifetime Guarantee  | 1-3 mins watch times | Speed 500+/D', NULL, '1.9500', '1.5000', 500, 60000, 'api', 'default', '578', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(452, '8c9d481878228b0df01915c6c4d9dbb3', 38, 82, 'YouTube SEO | HR | 10 - 20 Mins Watch times | Traffic Source : Suggested Video | ⭐🔥', NULL, '6.4900', '4.9900', 300, 10000, 'api', 'default', '1262', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(453, '68a405beb0e9fd39f2280fb07ca6d432', 38, 82, 'Youtube SEO | HR | 5-10 Mins Watch times | Traffic Source :  The top 50 trending videos in the USA ⭐🔥', NULL, '6.9600', '5.3500', 300, 10000, 'api', 'default', '2667', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(454, 'ba2fd4428080cf7698b1c30a564076db', 38, 82, 'YouTube SEO | HR | 25 - 30 Mins Watch times | Traffic Source : Direct | ⭐🔥', NULL, '7.1500', '5.5000', 500, 5000, 'api', 'default', '267', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(455, 'ad92339a44b372b9f2be519dbc7b681e', 38, 82, 'YouTube SEO | HR | 50 - 60 Mins Watch times | Traffic Source : Direct |⭐🔥', NULL, '12.0300', '9.2500', 100, 2000, 'api', 'default', '268', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(456, 'a6d352744c346311a3c42cc1809b1f01', 38, 82, 'YouTube SEO | HR | 25 - 30 Mins Watch times | Traffic Source : Facebook | ⭐🔥', NULL, '8.4500', '6.5000', 500, 2000, 'api', 'default', '269', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(457, '1c16589a4fd29b4c5d9dda80050333ad', 38, 82, 'YouTube SEO | HR | 50 - 60 Mins Watch times | Traffic Source : Facebook |⭐🔥', NULL, '12.0300', '9.2500', 100, 2000, 'api', 'default', '270', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(458, 'e207be11f95b8fce3feb8cfb80b8c50b', 38, 82, 'YouTube Views | Your source List |', NULL, '7.9300', '6.1000', 500, 100000000, 'api', 'mentions_user_followers', '278', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(459, 'a54fbba8095218b2752f08e0eddc54b8', 38, 83, 'Youtube 𝐇𝐑 Views - | Lifetime Guarantee  | 1-3 mins watch times | Speed 500+/D', NULL, '1.3000', '1.0000', 500, 60000, 'api', 'default', '1181', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(460, 'f01e1034ffa142665b1f820014f7d870', 38, 83, 'Youtube 𝐇𝐑 Views - | Lifetime Guarantee  | 1-3 mins watch times | Speed 500+/D', NULL, '1.5600', '1.2000', 500, 60000, 'api', 'default', '343', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(461, '8009b7dcd01590aed9ea6d140fac3b93', 38, 83, 'Youtube 𝐇𝐑 Views - | Lifetime Guarantee  | 1-6 mins watch times | Speed 1K+/D', NULL, '1.6300', '1.2500', 500, 1000000, 'api', 'default', '1174', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(462, 'c96bf7772e5dde0f75190e29bf79889d', 38, 83, 'Youtube 𝐇𝐑 Views - | Lifetime Guarantee  | 2-10 mins watch times | Speed 2K+/D', NULL, '1.8200', '1.4000', 500, 1000000, 'api', 'default', '1173', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(463, 'f70c7a0991e6453e48b6ed8aca56ae42', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - 2M | 2k+/D | Real Page Views | Source : Youtube Feature', NULL, '3.0600', '2.3500', 100, 2000000, 'api', 'default', '279', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(464, '632f0bf32df173460ff6e51abd31513f', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - 100K | 5 - 20 Min Retention | Speed 3k/D | ⚡⭐', NULL, '3.1900', '2.4500', 500, 100000, 'api', 'default', '280', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(465, '63c2767187d10656a0b79ad368e9d196', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - 2M | Speed 3k+/D | 5 - 20 Min Retention | ⚡⭐', NULL, '3.1900', '2.4500', 500, 2000000, 'api', 'default', '287', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(466, 'bb17df0b848b8acf929b77dc3ab0f5b2', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - 1M | 1-5 mins watch times | Speed 20k+/D |⚡', NULL, '3.1900', '2.4500', 500, 1000000, 'api', 'default', '281', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(467, '2ee71589d84adee3efeb934653751135', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - 1M | 500+/D | 3 Minutes+ | Monetizable + Embed Accepted |⚡️', NULL, '3.8900', '2.9900', 300, 1000000, 'api', 'default', '282', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(468, '9554489d91ca47816583ad3e3b58e0b8', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - 10K | 500+/D | 5-10 mins watch times | The top 50 trending videos in the USA ⭐', NULL, '7.6100', '5.8500', 300, 10000, 'api', 'default', '2668', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(469, '95ffeb7ed9342be99ee2686596b49e8e', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - Max 10K | 10 - 15 mins watch times', NULL, '8.4500', '6.5000', 500, 10000, 'api', 'default', '283', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(470, '22d98061163583c2f4ba1f41cac91a07', 38, 83, 'Youtube 𝐇𝐑 Views - | R60 - Max 10K | 10 - 20 mins watch times | Source : Suggested', NULL, '9.0900', '6.9900', 300, 10000, 'api', 'default', '1263', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(471, '4c34a9702e65fb230e346bb1c9b92b36', 38, 83, 'Youtube 𝐇𝐑 Views - | R30 - Max 10K | 25 - 30 mins watch times |⭐', NULL, '10.4000', '8.0000', 500, 2000, 'api', 'default', '284', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(472, '07eb35a47639b92250a6fbca43220e9a', 38, 84, '🇺🇸 Related Videos - Youtube Views [ USA ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2772', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(473, '0f26d717d629552930217ff1773f62fe', 38, 84, '🇬🇧 Related Videos - Youtube Views [ United Kingdom ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2773', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(474, '5bafb9c7181895589d024328d0228ae1', 38, 84, '🇩🇪 Related Videos - Youtube Views [ Germany ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2774', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(475, 'a464939c0e233f64fbff558bda9478f2', 38, 84, '🇫🇷 Related Videos - Youtube Views [ France ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2775', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(476, '8c913cf17feb23e44c75c1bf9356f1a8', 38, 84, '🇪🇸 Related Videos - Youtube Views [ Spain ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2776', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(477, '423c3157d0ec9f4269f4fce05f6c619b', 38, 84, '🇮🇹 Related Videos - Youtube Views [ Italy ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2777', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(478, '80eaaf547af64855ac2ea4a24945bd1b', 38, 84, '🇷🇺 Related Videos - Youtube Views [ Russia ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2778', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(479, 'e807da6eb012090553e9b04e44fa8a60', 38, 84, '🇺🇦 Related Videos - Youtube Views [ Ukraine ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2779', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(480, '61c40769e7f879db26a84b9c851316e8', 38, 84, '🇰🇷 Related Videos - Youtube Views [ Korea ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2780', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(481, 'ffdcc28c05705227e337df8127edcb03', 38, 84, '🇦🇪 Related Videos - Youtube Views [ UAE ] [ 2k/Day ] INSTANT', NULL, '2.9900', '2.3000', 100, 60000, 'api', 'default', '2781', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(482, 'f7af39c1485ba79a7d554b3b76acd83e', 38, 85, '🇦🇫 Youtube Views | 1M | AFGHANISTAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '608', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(483, '39f797a36113e7e08db921d4986aec88', 38, 85, '🇦🇱 Youtube Views | 1M | ALBANIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '609', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(484, '513760684d3ff148363439f805c7ea67', 38, 85, '🇩🇿 Youtube Views | 1M | ALGERIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '610', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(485, 'a4a5bfe133d5c3e6ddb836cc34908549', 38, 85, '🇦🇩 Youtube Views | 1M | ANDORRA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '611', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(486, '68aeba6fa1c9f6539bc65b4dd33c2922', 38, 85, '🇦🇴 Youtube Views | 1M | ANGOLA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '612', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(487, '0705088a10599c697da8c7dbbbf9c49d', 38, 85, '🇦🇬 Youtube Views | 1M | ANTIGUA & BARBUDA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '613', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(488, '1b99226fd8939f4289086322e39a7ad8', 38, 85, '🇦🇷 Youtube Views | 1M | ARGENTINA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '614', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(489, '511fb22bddbc580837371d03491a404f', 38, 85, '🇦🇲 Youtube Views | 1M | ARMENIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '615', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(490, '8b1518aa5840b773e88fdf8b6dd8ad51', 38, 85, '🇦🇼 Youtube Views | 1M | ARUBA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '616', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(491, '2448bd61cbaf210fde4783bf97aab2ca', 38, 85, '🇦🇺 Youtube Views | 1M | AUSTRALIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '617', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(492, 'ef76f67177832ba56997ab6e2644cedb', 38, 85, '🇦🇹 Youtube Views | 1M | AUSTRIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '618', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(493, '979d23776ff12d45f0843ce1dfbbca23', 38, 85, '🇦🇿 Youtube Views | 1M | AZERBAIJAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '619', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(494, '59a86288e8bee2259f45ff1ecd7375d3', 38, 85, '🇧🇸 Youtube Views | 1M | BAHAMAS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '620', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(495, '749e67bdd65cafe6461a4270ff91a6e4', 38, 85, '🇧🇭 Youtube Views | 1M | BAHRAIN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '621', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(496, 'a28d5df3641cb0aef9744f10bc3fbe2e', 38, 85, '🇧🇩 Youtube Views | 1M | BANGLADESH | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '622', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(497, 'f736188088a571dace792a8c3aeb55db', 38, 85, '🇧🇧 Youtube Views | 1M | BARBADOS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '623', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(498, '98c117a9dcb6df9d4dc6d14286871d19', 38, 85, '🇧🇾 Youtube Views | 1M | BELARUS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '624', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(499, 'd09319e9ac1e8deeacbedef5d4d4e38e', 38, 85, '🇧🇾 Youtube Views | 1M | BELGIUM | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '625', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(500, '348e576d4da61be44c57756e73459167', 38, 85, '🇧🇿 Youtube Views | 1M | BELIZE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '626', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(501, 'e7aaee914766928c089d11790eb5846f', 38, 85, '🇧🇯 Youtube Views | 1M | BENIN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '627', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(502, 'a3ea2b508bb964976e24841a55a4f9ff', 38, 85, '🇧🇲 Youtube Views | 1M | BERMUDA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '628', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(503, '1573e4637eda189fa4ed89547f6bbb26', 38, 85, '🇧🇹 Youtube Views | 1M | BHUTAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '629', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(504, '78223a37b5b4042aa740c6e21ec32c7f', 38, 85, '🇧🇴 Youtube Views | 1M | BOLIVIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '630', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(505, 'd436c1b66c660b7d9770c853bd473721', 38, 85, '🇧🇦 Youtube Views | 1M | BOSNIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '631', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(506, 'a3e52894876bb457dc849c1369812a48', 38, 85, '🇧🇼 Youtube Views | 1M | BOTSWANA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '632', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(507, '940ec72b21acefbe1bc8b09a18807275', 38, 85, '🇧🇷 Youtube Views | 1M | BRAZIL | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '633', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(508, '77207b5ed4152bcd34d457c067e301b0', 38, 85, '🇧🇳 Youtube Views | 1M | BEUNEI | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '634', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(509, '8e650c8f7fe3b41f3c62b980fb77f951', 38, 85, '🇧🇬 Youtube Views | 1M | BULGARIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '635', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(510, '5353746fb5b61d7e627a30f45d77c534', 38, 85, '🇧🇫 Youtube Views | 1M | BURKINA FASO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '636', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(511, '0ddb31c7a492bb6c9ab05bdb979a2b4d', 38, 85, '🇰🇭 Youtube Views | 1M | CAMBODIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '637', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(512, '45f782dde650d01f7fa98b18757392a0', 38, 85, '🇨🇲 Youtube Views | 1M | CAMEROON | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '638', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(513, '3bf487dc298d8625e6a2bb62621e2068', 38, 85, '🇨🇦 Youtube Views | 1M | CANADA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '639', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(514, 'f0526fe7946c769eb6bfe05c6e7216cd', 38, 85, '🇨🇻 Youtube Views | 1M | CAPE VERDE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '640', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(515, 'd6d5c7ca03bf9043d4fe16b36d3e0271', 38, 85, '🇰🇾 Youtube Views | 1M | CAYMAN ISLANDS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '641', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(516, '20b502a6ab6e59b4357991a5b6648730', 38, 85, '🇨🇱 Youtube Views | 1M | CHILE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '642', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(517, '09284d7e6e6df2f4b3c6d961e36c13d4', 38, 85, '🇨🇳 Youtube Views | 1M | CHINA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '643', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(518, '165e5436dc60ffa7a0f9545f8af42b84', 38, 85, '🇨🇴 Youtube Views | 1M | COLOMBIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '644', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(519, '77f5602dc8ba2e3d910cc6378948023e', 38, 85, '🇨🇬 Youtube Views | 1M | CONGO BRAZZAVILLE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '645', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(520, '7aa14623a83a5586078f57411ee661f5', 38, 85, '🇨🇩 Youtube Views | 1M | CONGO KINSHASA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '646', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(521, '902b341f9f8fbdf6c9d3146320bea977', 38, 85, '🇨🇷 Youtube Views | 1M | COSTA RICA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '647', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(522, '3b79c7c7a0c9007fd22e66da1146f77f', 38, 85, '🇭🇷 Youtube Views | 1M | CROATIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '648', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(523, 'b9ad725d1c939236c1eb502275828ee7', 38, 85, '🇨🇺 Youtube Views | 1M | CUBA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '649', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(524, '429822c8b4763ca4b5dec1973b8e99d0', 38, 85, '🇨🇼 Youtube Views | 1M | CURACAO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '650', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(525, '1854abbe446b9e97cd355e7298731c16', 38, 85, '🇨🇾 Youtube Views | 1M | CYPROS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '651', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(526, 'cf80efee6b9b864852cfcc2031e6dff5', 38, 85, '🇨🇿 Youtube Views | 1M | CZECHIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '652', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(527, 'b957a804f7c908839c25eaa504d8a6d1', 38, 85, '🇨🇮 Youtube Views | 1M | COTE D\'IVOIRE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '653', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(528, '0495cc3fb84f0583993906c76b54b512', 38, 85, '🇩🇰 Youtube Views | 1M | DENMARK | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '654', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(529, '0e6c7e5a0adb50438bba12e846fd117e', 38, 85, '🇩🇯 Youtube Views | 1M | DJIBOUTI | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '655', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(530, 'd999d250d387b72866e8a3a77ff1b5d7', 38, 85, '🇩🇲 Youtube Views | 1M | DOMINICA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '656', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(531, '24927dcbf1f6369bb0b876736a4cec84', 38, 85, '🇩🇴 Youtube Views | 1M | DOMINICAN REPUBLIC | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '657', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(532, '8dcbcfa92e66183265cb42ca3193a81c', 38, 85, '🇪🇨 Youtube Views | 1M | ECUADOR | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '658', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(533, '3a278659eefb89d4c782ee07564b475c', 38, 85, '🇪🇬 Youtube Views | 1M | EGYPT | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '659', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(534, '2aa39ab3c9a6a7a3f6b2b06a6945a974', 38, 85, '🇸🇻 Youtube Views | 1M | EL SALVADOR | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '660', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(535, '7ab3e64f8094a34951b9ddabc38d5d02', 38, 85, '🇪🇪 Youtube Views | 1M | ESTONIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '661', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(536, 'd5753ea0c10694af99e76fbadf3aa18d', 38, 85, '🇪🇹 Youtube Views | 1M | ETHIOPIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '662', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(537, '6dea6922fbc3f1ee46c4239ae21bdc9b', 38, 85, '🇫🇴 Youtube Views | 1M | FAROE ISLANDS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '663', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(538, 'ac8c6700b3452ed920516983528c3c2d', 38, 85, '🇫🇯 Youtube Views | 1M | FIJI | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '664', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(539, '1666872fc3f67f251fed4d543b42176a', 38, 85, '🇫🇮 Youtube Views | 1M | FINLAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '665', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(540, 'db3f7cb52a5c492ea23a2c4ba8a56386', 38, 85, '🇫🇷 Youtube Views | 1M | FRANCE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '666', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(541, 'a27aecfaa6affa516889f53f1d8d7f98', 38, 85, '🇬🇫 Youtube Views | 1M | FRENCH GUIANA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '667', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(542, 'af57e50c72bbd1ca6029a0fa2dda5b38', 38, 85, '🇵🇫 Youtube Views | 1M | FRENCH POLYNESIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '668', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(543, 'da236b299bf25a086b55a94391390ce1', 38, 85, '🇬🇦 Youtube Views | 1M | GABON | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '669', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(544, '748a35444d835a189924a69fb1111d3d', 38, 85, '🇬🇪 Youtube Views | 1M | GEORGIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 10000000, 'api', 'default', '670', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(545, 'bf263fa0d6d7c33e896167529fdba947', 38, 85, '🇩🇪 Youtube Views | 1M | GERMANY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '671', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(546, 'f07a90cae8758ac1a0643ea1ecbdf250', 38, 85, '🇬🇭 Youtube Views | 1M | GHANA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '672', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(547, 'c921bbb9a7994ef1ea9aa584303aa392', 38, 85, '🇬🇮 Youtube Views | 1M | GIBRALTAR | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '673', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(548, 'b680da4474c43004552c219df20a26df', 38, 85, '🇬🇷 Youtube Views | 1M | GREECE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '674', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(549, 'aea5db88762131d011e7b13e27ccd975', 38, 85, '🇬🇱 Youtube Views | 1M | GREENLAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '675', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(550, 'a2f406751aa55e16dc1f6742ab24ddab', 38, 85, '🇬🇩 Youtube Views | 1M | GRENADA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '676', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(551, 'b8699442da2c52f28f982bca8630ec53', 38, 85, '🇬🇵 Youtube Views | 1M | GUADELOUPE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '677', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(552, '40ae6e9ce46daf564a11051607a2ebdb', 38, 85, '🇬🇺 Youtube Views | 1M | GUAM | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '678', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(553, 'df8be5f1965e7ea94f5b1d61fbae2117', 38, 85, '🇬🇹 Youtube Views | 1M | GUATEMALA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '679', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(554, '7f56be2078352d411435422e9c3b2d5c', 38, 85, '🇬🇬 Youtube Views | 1M | GUERNSEY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '680', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(555, 'd2b9117c6ad5a44377fc100b54a8abc2', 38, 85, '🇬🇳 Youtube Views | 1M | GUINEA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '681', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(556, '6bdffcb3b6f272f79735ed46e29d60a7', 38, 85, '🇬🇾 Youtube Views | 1M | GUYANA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '682', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(557, 'f44e27a4babec591b5312796581c545e', 38, 85, '🇭🇹 Youtube Views | 1M | HAITI | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '683', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(558, '237e79df704702dd92e416d7363fa6a1', 38, 85, '🇭🇳 Youtube Views | 1M | HONDURAS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '684', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(559, 'a419600a5f9e9fa31eefb66fa2212b65', 38, 85, '🇭🇰 Youtube Views | 1M | HONG KONG | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '685', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(560, 'dd4a8edf4702120043bd26e7ed90bda2', 38, 85, '🇭🇺 Youtube Views | 1M | HUNGARY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '686', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(561, '3b74c535732683a67155baa4aa604174', 38, 85, '🇮🇸 Youtube Views | 1M | ICELAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '687', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(562, '1f120950736964d22071310f6798317e', 38, 85, '🇮🇳 Youtube Views | 1M | INDIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '688', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(563, '7be0c46a02d68e35ac67001f2d2ec7c4', 38, 85, '🇮🇩 Youtube Views | 1M | INDONESIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '689', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(564, '0aad87a8aa8dbc0b054cf219c940f628', 38, 85, '🇮🇶 Youtube Views | 1M | IRAQ | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '690', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(565, 'e8a9f65d4518283f89d69fe1cf4a6805', 38, 85, '🇮🇪 Youtube Views | 1M | IRELAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '691', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(566, '7089b838e06c77d4bc36207855bf2082', 38, 85, '🇮🇲 Youtube Views | 1M | ISLE OF MAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '692', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(567, '917f98fa348b16054b314d9d70cfb361', 38, 85, '🇮🇹 Youtube Views | 1M | ITALY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '693', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(568, '63cb628cb5c29823a003a09f4a492b12', 38, 85, '🇯🇲 Youtube Views | 1M | JAMAICA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '694', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(569, 'c172ce77ace571aefb5b1d597a5a68c4', 38, 85, '🇯🇵 Youtube Views | 1M | JAPAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '695', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(570, '65a5d10fe10c60420e40ed1a2909b5f2', 38, 85, '🇯🇪 Youtube Views | 1M | JERSEY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '696', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(571, '1c7a42ef63fcd8908e6bc169bdf1c439', 38, 85, '🇯🇴 Youtube Views | 1M | JORDAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '697', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(572, '1caa384032a78503b868e1e3f19c7bf1', 38, 85, '🇰🇿 Youtube Views | 1M | KAZAKHSTAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '698', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(573, '393144b4a3d33cbaecc5072050d9e12c', 38, 85, '🇰🇪 Youtube Views | 1M | KENYA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '699', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(574, '0d0dd8b07249823cbd70a54f1a8053f8', 38, 85, '🇰🇼 Youtube Views | 1M | KUWAIT | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '700', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(575, 'b837cfb7386c7f212ce8e28bfe46dfb0', 38, 85, '🇰🇬 Youtube Views | 1M | KYRGYZSTAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '701', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(576, 'edbb628f0d457eb826d2dd04e4b0a8ee', 38, 85, '🇱🇦 Youtube Views | 1M | LAOS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '702', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(577, 'b7889bde40a40e743dda5753447247ad', 38, 85, '🇱🇻 Youtube Views | 1M | LATVIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '703', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(578, 'ccb1f035d04b5234b3005adaa702911a', 38, 85, '🇱🇧 Youtube Views | 1M | LEBANON | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '704', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(579, '611b0b8b2256a07f8c6ec5bd6a3ad30e', 38, 85, '🇱🇾 Youtube Views | 1M | LIBYA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '705', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(580, 'e1d2b6a9bdf24d08f70438dc4e94f00b', 38, 85, '🇱🇮 Youtube Views | 1M | LIECHTENSTEIN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '706', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(581, 'cb01633e4878266c75acdd238c456366', 38, 85, '🇱🇹 Youtube Views | 1M | LITHUANIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '707', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(582, 'f36634515ea0ac9b506434e8b3ac9af9', 38, 85, '🇱🇺 Youtube Views | 1M | LUXEMBOURG | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '708', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(583, '2d430282a05cc979496bef2f51389ff8', 38, 85, '🇲🇴 Youtube Views | 1M | MACAU | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '709', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(584, '7b73593e7c916ab6ecf4f9c06f0a0066', 38, 85, '🇲🇰 Youtube Views | 1M | MACEDONIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '710', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(585, '50d58b19d99bc3c5411965894bdbbc9f', 38, 85, '🇲🇬 Youtube Views | 1M | MADAGASCAR | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '711', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(586, '19d9563fed852e805e2a2d6c28b33647', 38, 85, '🇲🇾 Youtube Views | 1M | MALAYSIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '712', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(587, 'b309ef5087feb63c13d31c0c907316f4', 38, 85, '🇲🇻 Youtube Views | 1M | MALDIVES | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '713', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(588, '00054e38c7819c6fcfc01721dcea1897', 38, 85, '🇲🇱 Youtube Views | 1M | MALI | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '714', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(589, '8c8bc5438bd120c5081045c2d4cfe5ab', 38, 85, '🇲🇹 Youtube Views | 1M | MALTA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '715', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(590, 'b1fc8b9f635afc2bbda5b63c9ebb7df2', 38, 85, '🇲🇶 Youtube Views | 1M | MARTINIQUE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '716', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(591, 'e2903a74d4f3afdb5484af69cee2ec0d', 38, 85, '🇲🇷 Youtube Views | 1M | MAURITANIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '717', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(592, '8076396843cc5a23d0098c8f1d4977d1', 38, 85, '🇲🇺 Youtube Views | 1M | MAURITIUS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '718', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(593, '9c413acea5237d0eb53c2cae341ee820', 38, 85, '🇾🇹 Youtube Views | 1M | MAYOTTE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '719', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(594, 'f67bd2bf835caa8ca2c4601b422449c7', 38, 85, '🇲🇽 Youtube Views | 1M | MEXICO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '720', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(595, '97d2a69a6c6eee5719a01c976e337717', 38, 85, '🇲🇩 Youtube Views | 1M | MOLDOVA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '721', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(596, '5523e76381402b695e081e4c3b24c686', 38, 85, '🇲🇨 Youtube Views | 1M | MONACO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '722', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(597, '863907a8dd4f1a089628da8bcfa072ce', 38, 85, '🇲🇳 Youtube Views | 1M | MONGOLIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '723', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(598, '15b52ca16427459fddef02cd755bb2e0', 38, 85, '🇲🇪 Youtube Views | 1M | MONTENEGRO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '724', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(599, 'b77799522b7ba7a0efce2fcefb2adc41', 38, 85, '🇲🇦 Youtube Views | 1M | MOROCCO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '725', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(600, '547d05c797cff93361e9395327f5ee9f', 38, 85, '🇲🇿 Youtube Views | 1M | MOZAMBIQUE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '726', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(601, 'ea98721df62ef773887cceda74d7cc4f', 38, 85, '🇲🇲 Youtube Views | 1M | MYANMAR | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '727', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(602, 'b48f43721d250a11f7c91bd92428290d', 38, 85, '🇳🇦 Youtube Views | 1M | NAMIBIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '728', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(603, '30737182db35fd0edfb8ad4c755d198c', 38, 85, '🇳🇵 Youtube Views | 1M | NEPAL | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '729', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(604, 'c12a6f2009d699eafc525b6280bf1db1', 38, 85, '🇳🇱 Youtube Views | 1M | NETHERLANDS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '730', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(605, '710c8e7527516be99f28690ef7d14fe9', 38, 85, '🇳🇨 Youtube Views | 1M | NEW CALEDONIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '731', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(606, 'fdbf0dde1460ba390ce276c26a96f336', 38, 85, '🇳🇿 Youtube Views | 1M | NEW ZEALAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '732', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(607, '28db955359abe1ab77d0ccff720b3b76', 38, 85, '🇳🇮 Youtube Views [1M] [NICARAGUA] [1H - 10K+/Day]', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '733', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(608, '6b1bd6ebef9c8f50068eeabf571b6dd7', 38, 85, '🇳🇪 Youtube Views | 1M | NIGER | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '734', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(609, '7ce5e3466b75712afb79b4bcd81421ca', 38, 85, '🇳🇬 Youtube Views | 1M | NIGERIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '735', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(610, '0631853c7c65d925ff9e0f28be1b3252', 38, 85, '🇳🇴 Youtube Views | 1M | NORWAY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '736', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(611, '7b6ef7c96f2046c90aae07fd8f3ef98d', 38, 85, '🇵🇰 Youtube Views | 1M | PAKISTAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '737', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(612, 'da493e658b3925fcbb96b8fdfd33f17d', 38, 85, '🇵🇦 Youtube Views | 1M | PANAMA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '738', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(613, '64a921b9a831fce42c53b3872e70bb81', 38, 85, '🇵🇬 Youtube Views | 1M | PAPUA NEW GUINEA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '739', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(614, '1f72a05e75a91c8f70d3c50f489a27a1', 38, 85, '🇵🇾 Youtube Views | 1M | PARAGUAY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '740', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(615, '856daff07d5dc88c869364b30cdaa194', 38, 85, '🇵🇪 Youtube Views | 1M | PERU | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '741', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(616, '156bd5fdaaeb0936e2679d30732d00b6', 38, 85, '🇵🇭 Youtube Views | 1M | PHILIPPINES | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '742', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(617, '9424ab55e175930ac8688c82efee9dbc', 38, 85, '🇵🇱 Youtube Views | 1M | POLAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '743', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(618, '4a48e4512b1dedf175d7b95ac32764f7', 38, 85, '🇵🇹 Youtube Views | 1M | PORTUGAL | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '744', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(619, '585a34555f6e549efc659ec9a8c73139', 38, 85, '🇵🇷 Youtube Views | 1M | PUERTO RICO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '745', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(620, 'b7c5f9c52cf0b148c8edc4f96ac1f92d', 38, 85, '🇶🇦 Youtube Views | 1M | QATAR | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '746', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(621, 'eb7d62dc7d0d2b58ee3b32d2c0b79971', 38, 85, '🇷🇪 Youtube Views | 1M | REUNION | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '747', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(622, '863aec9aed00264e51aa8a91ac7476c0', 38, 85, '🇷🇴 Youtube Views | 1M | ROMANIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '748', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(623, 'a9e5014d4204fa9e648b6c00aab74ae9', 38, 85, '🇷🇺 Youtube Views | 1M | RUSSIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '749', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(624, '4b8e7440976b06da12523dc1819d3828', 38, 85, '🇷🇼 Youtube Views | 1M | RWANDA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '750', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(625, '21c93d21b2dd0a3184dbc509f7608140', 38, 85, '🇸🇦 Youtube Views | 1M | SAUDI ARABIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '751', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(626, '03e90d8db2bb7ac5f0ba6e2037b52159', 38, 85, '🇸🇳 Youtube Views | 1M | SENEGAL | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '752', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(627, '76acf54a6420006c54dd73f3490f2bef', 38, 85, '🇷🇸 Youtube Views | 1M | SERBIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '753', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(628, 'c42da0383cbcdce45586e76d04833baf', 38, 85, '🇸🇨 Youtube Views | 1M | SEYCHELLES | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '754', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(629, 'c13cb6d3b151d434d35b11f08960f49c', 38, 85, '🇸🇬 Youtube Views | 1M | SINGAPORE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '755', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(630, '5c4348e0d7e9b1369af889e3009d3025', 38, 85, '🇸🇰 Youtube Views | 1M | SLOVAKIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '756', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(631, '426f6b1c174aae13dd009ed2fa57cb87', 38, 85, '🇸🇮 Youtube Views | 1M | SLOVENIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '757', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(632, 'f5283172fabda099cbff2b13666dc646', 38, 85, '🇸🇴 Youtube Views | 1M | SOMALIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '758', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(633, '5629be76e5dbcf1bcc88f05eeb8500a6', 38, 85, '🇿🇦 Youtube Views | 1M | SOUTH AFRICA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '759', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(634, '479897c5d26a7fe62f349aaeb972c7a0', 38, 85, '🇰🇷 Youtube Views | 1M | SOUTH KOREA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '760', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(635, '1f5a8e5e0a4800f0058d0f8285ca63b9', 38, 85, '🇪🇸 Youtube Views | 1M | SPAIN] [1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '761', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(636, '1564093d00b469f3de2dae486dcceea0', 38, 85, '🇱🇰 Youtube Views | 1M | SRI LANKA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '762', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(637, '2aa065d45eaf9ceff021a07e532cf924', 38, 85, '🇱🇨 Youtube Views | 1M | ST. LUCIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '763', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(638, '5704c8ef806474327e560d59ff19ccd5', 38, 85, '🇻🇨 Youtube Views | 1M | ST. VINCENT & GRENADINES | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '764', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(639, '3121f4d5b217f00e01d6f2aeb4cbf56d', 38, 85, '🇸🇩 Youtube Views | 1M | SUDAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '765', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(640, '2ffcf9c453f2c181909259fc4e567be7', 38, 85, '🇸🇷 Youtube Views | 1M | SURINAME | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '766', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(641, '0452ed83f671867ebc0cac28b5e81e8e', 38, 85, '🇸🇪 Youtube Views | 1M | SWEDEN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '767', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(642, 'fc4077a637665cbc5586324770f046d9', 38, 85, '🇨🇭 Youtube Views | 1M | SWITZERLAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '768', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(643, '2a76ed571dc149f0985bd0f42f53b06f', 38, 85, '🇸🇾 Youtube Views | 1M | SYRIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '769', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(644, '00428d4e7db0ce9d95dd5c297e6033e7', 38, 85, '🇹🇼 Youtube Views | 1M | TAIWAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '770', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(645, 'b468b1dda7fc885d7d602310fdd01cfc', 38, 85, '🇹🇯 Youtube Views | 1M | TAJIKISTAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '771', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(646, '5c870be3ec0d23a068d291dad75fda15', 38, 85, '🇹🇿 Youtube Views | 1M | TANZANIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '772', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(647, '734416c3896250606e792f27fb9ee1dc', 38, 85, '🇹🇭 Youtube Views | 1M | THAILAND | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '773', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(648, 'c5e1f449aa367db6d5b1fa17412e3b12', 38, 85, '🇹🇱 Youtube Views | 1M | TIMOR-LESTE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '774', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(649, '8f2cea09dc9719b62e236c325798c4bf', 38, 85, '🇹🇬 Youtube Views | 1M | TOGO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '775', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(650, 'b0b0891c277fc2686181482802f33ac3', 38, 85, '🇹🇹 Youtube Views | 1M | TRINIDAD & TOBAGO | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '776', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(651, 'eaf126a505c0c3b49d17c79bc633e9db', 38, 85, '🇹🇳 Youtube Views | 1M | TUNISIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '777', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(652, '5c3e37a280ec8add5c9927c9291241e0', 38, 85, '🇹🇷 Youtube Views | 1M | TURKEY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '778', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(653, '1d4d50b18378204b43b426dd2184e1a3', 38, 85, '🇻🇮 Youtube Views | 1M | U.S. VIRGIN ISLANDS | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '779', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(654, '5d1f84a678dd75b5f1818002433501db', 38, 85, '🇺🇬 Youtube Views | 1M | UGANDA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '780', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(655, '2605a1db2bc804cc1c772c0625098540', 38, 85, '🇺🇦 Youtube Views | 1M | UKRAINE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '781', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(656, '1e34593fe1ffdd401ba7e8fd5e09e9e7', 38, 85, '🇦🇪 Youtube Views | 1M |UNITED ARAB EMIRATES | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '782', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(657, '4bb8edf55a15d493a1886149abab28d3', 38, 85, '🇬🇧 Youtube Views | 1M | UNITED KINGDOM | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '783', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(658, 'fc9db40e10bab638936340cd6f4ae00f', 38, 85, '🇺🇸 Youtube Views | 1M | UNITED STATES OF AMERICA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '784', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(659, 'e04a15e4e28a9a9a22cba2f0edc77732', 38, 85, '🇺🇾 Youtube Views | 1M | URUGUAY | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '785', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(660, 'e22cf5d813b59f82019ae07808080139', 38, 85, '🇺🇿 Youtube Views | 1M | UZBEKISTAN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '786', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(661, '3664503000cda650bccd61629e9b0e50', 38, 85, '🇻🇪 Youtube Views | 1M | VENEZUELA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '787', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(662, '233d8c6db6e7724cf4e680c696cfb670', 38, 85, '🇻🇳 Youtube Views | 1M | VIETNAM | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '788', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(663, 'c29437c56c242202c3b32e508d812815', 38, 85, '🇾🇪 Youtube Views | 1M | YEMEN | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '789', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(664, 'f17122c1926cf45064fda9b4fb577da3', 38, 85, '🇿🇲 Youtube Views | 1M | ZAMBIA | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '790', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(665, 'feef0a846c37ab3f9a770c45d994a6ca', 38, 85, '🇿🇼 Youtube Views | 1M | ZIMBABWE | 1H - 10K+/Day |', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '791', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(666, '9b2459521eb89949b25c437b3bf0d445', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇩🇪 𝑮𝒆𝒓𝒎𝒂𝒏𝒚', NULL, '2.5400', '1.9500', 500, 10000000, 'api', 'default', '792', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(667, '6b0fea4e7dffce7219bb951742d9472f', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇦🇺 𝑨𝒖𝒔𝒕𝒓𝒂𝒍𝒊𝒂', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '793', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(668, 'a2f8bf6b33f0b23c3677379876cae1cd', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇧🇷 𝐁𝐫𝐚𝐳𝐢𝐥', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '794', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(669, '2223a87f263873cea67eca39173f5c26', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇧🇪 𝑩𝒆𝒍𝒈𝒊𝒖𝒎', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '795', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(670, '3bff36d4721345e9a7959f68d11f462f', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇨🇦 𝑪𝒂𝒏𝒂𝒅𝒂', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '796', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(671, '139995c464dd042036bfae5f53a541c5', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇪🇬 𝑬𝒈𝒚𝒑𝒕', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '797', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(672, '90b7534533e86fee8b5fc6d1ecf7c201', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇫🇷 𝑭𝒓𝒂𝒏𝒄𝒆', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '798', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(673, '77c7996aee1804e6bbfe172cc73775f2', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇭🇰 𝑯𝒐𝒏𝒈 𝑲𝒐𝒏𝒈', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '799', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(674, '31f1a2ea7acce20506840be8b77d89d4', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇮🇹 𝑰𝒕𝒂𝒍𝒚', NULL, '2.5400', '1.9500', 500, 10000000, 'api', 'default', '800', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(675, '904e627094c16a5e3c9ef50a03d44cad', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇯🇵 𝑱𝒂𝒑𝒂𝒏', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '801', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(676, 'a126717a76ed6f106d182753195d9f9c', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇮🇳 𝑰𝒏𝒅𝒊𝒂𝒏', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '802', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(677, 'be2e58111a378ac156442b5fdbf692b4', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇮🇱 𝑰𝒔𝒓𝒂𝒆𝒍', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '803', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(678, 'c3b59cd8f7f3643d854306b1b0d6bac8', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇲🇦 𝑴𝒐𝒓𝒐𝒄𝒄𝒐', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '804', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(679, 'bf5c7f96fef42ce7201986b55da445be', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇳🇱 𝑵𝒆𝒕𝒉𝒆𝒓𝒍𝒂𝒏𝒅𝒔', NULL, '2.5400', '1.9500', 1000, 1000000, 'api', 'default', '805', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(680, 'f26f4177367a6206a501596e179e7ed1', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇷🇺 𝑹𝒖𝒔𝒔𝒊𝒂', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '806', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(681, '1a4af2787061a9ced6ff14e3fd5e8022', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇹🇷 𝑻𝒖𝒓𝒌𝒆𝒚', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '807', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(682, '66e9aa75bb30fad07102182a0d856373', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇪🇸 𝑺𝒑𝒂𝒊𝒏', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '808', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(683, '853e7161477160970e8da606310c6919', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇬🇧 𝑼𝑲', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '809', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(684, '958d84752e024ee4e2b902069be338ec', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇹🇼 𝑻𝒂𝒊𝒘𝒂𝒏', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '810', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(685, 'ac353d672f8f2fe75997db587308998b', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇬🇷 𝑮𝒓𝒆𝒆𝒄𝒆', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '811', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(686, '6307ac0912acb7e60b93b17a5c7a0230', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇧🇩 𝑩𝒂𝒏𝒈𝒍𝒂𝒅𝒆𝒔𝒉', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '812', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(687, 'eab17ed67e28cc64aabcbf7a253ef7f1', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇮🇩 𝑰𝒏𝒅𝒐𝒏𝒆𝒔𝒊𝒂', NULL, '2.5400', '1.9500', 1000, 1000000, 'api', 'default', '813', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(688, 'be1e98a8867014bf30860f8b01afa680', 38, 86, 'Youtube Views - [ Speed 50K+/D ] - 🇲🇾 𝑴𝒂𝒍𝒂𝒚𝒔𝒊𝒂', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '814', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(689, '990c16f0839cc8ee6e1400b3470f70ee', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇵🇰 𝑷𝒂𝒌𝒊𝒔𝒕𝒂𝒏', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '815', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(690, '5c86f7c5572c924169904e91e926f964', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇵🇱 𝑷𝒐𝒍𝒂𝒏𝒅', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '816', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(691, 'e52e23ecc6850f6f95f94ac23b07be74', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇸🇦 𝑺𝒂𝒖𝒅𝒊 𝑨𝒓𝒂𝒃𝒊𝒂', NULL, '2.5400', '1.9500', 100, 30000, 'api', 'default', '817', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(692, '36c1f9196d810f6331351de2391977a1', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇦🇪 𝑼𝑨𝑬', NULL, '2.5400', '1.9500', 1000, 30000, 'api', 'default', '818', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(693, '6efe389dfbc9f2d84615a11173d104ff', 38, 86, 'Youtube Views - | G∞ - Speed 10K+/D | Non Drop | - 🇻🇳 𝑽𝒊𝒆𝒕𝒏𝒂𝒎', NULL, '2.5400', '1.9500', 1000, 10000000, 'api', 'default', '819', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(694, '86f26fcddff65c3c4aa61ff1711d554e', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇰🇷South Korea |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '820', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(695, '1a44db4e510eef1f0f1f25cce485e036', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇰🇵North Korea |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '821', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(696, 'e4ea064389bbd275de05d610bdce7ac5', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇯🇵Japan |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '822', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(697, '54d4215dff78d2ddd734770ad0a4c4d0', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇹🇼Taiwan |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '823', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(698, '4189dd18d7c77e3ecf5da92e91214b58', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇨🇳China |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '824', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(699, '1dbfb30d808f9814bb91f90d2dbca130', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇦🇪ARAB / UAE |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '825', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(700, '0b87072c7421763fe59a5b81b4829d29', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇧🇷Brazil |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '826', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(701, '4508df5e2da2f8429fcf2aecb89fd56f', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇨🇴 Colombia |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '827', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(702, 'b983803d06b7eef91ff39072b53430d6', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇫🇷France |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '828', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(703, '73107bc6b06392bee8a95a56a3298288', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇩🇪Germany |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '829', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(704, '4e6389558e08a3195c2dc16d396c4b33', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇹🇷Turkey |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '830', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(705, 'be49420a55f67e7929c7eb445a7f0b37', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇬🇧England |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '831', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(706, '384ce3d58b407d1f71f25df8d4229fa6', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇮🇳Indian |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '832', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(707, 'b74ba5902bfc70223289636cf6125e87', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇹🇭Thailand |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '833', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(708, '90a12da52bdb5284e44cc488e88c8b5d', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇻🇳Vietnam |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '834', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(709, '2910ab9629ccd1640b28eb24e2397bc9', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇮🇩Indonesia |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '835', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(710, '9afe03e851f6ad4226c09fc9a10ddd79', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇲🇾Malaysia |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '836', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(711, 'c3b2c5465a1bc339af20149afd546fc4', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇮🇹Italy |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '837', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(712, '5791b1b9bedf2dfbc0a2d8940b61d33f', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇱🇰Sri Lanka |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '838', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(713, 'e1cd2efec8882917bca6a42f2918a949', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇺🇸USA |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '839', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(714, 'ef631ad128af51e2afe0e07af06631d7', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇸🇪 Sweden |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '840', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(715, '41dd742f17618eef4d7151036b363e06', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇨🇲 Cameroon |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '841', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(716, 'ba022bf00bc4eefcada973cf3b155a29', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇨🇱 Chile |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '842', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(717, '4a044d1f10ecb0d8685bb37d98ddf16b', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇲🇽 Mexico |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '843', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(718, '89373880b906a2e7dd3a11d7c0d690cb', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇦🇷 Argentina |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '844', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(719, '842601e2f932fb2d0c0f38f68baab26c', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇸🇦 Saudi Arabia |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '845', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(720, 'ec824db7d13864d07b3affd5c5ab5e56', 38, 87, 'Youtube GEO Views | Max 10M+ | 🇷🇴 Romania |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '846', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(721, '92ae3cbf33b5e7a000f46b1aca2d7978', 38, 87, 'Youtube GEO Views | Max 10M+ | Kuwait |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '847', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(722, '963497bc0b737935cf39f4213ea42103', 38, 87, 'Youtube GEO Views | Max 10M+ | Bangladesh |', NULL, '3.3200', '2.5500', 1000, 1000000000, 'api', 'default', '848', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(723, 'acf42c5c61ed2bdbf378584ec6c2dd60', 38, 88, '🇹🇷 YouTube Unique Views - Turkey [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '849', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(724, 'f1c7cd40629bff4439a4ab399c0dfff7', 38, 88, '🇮🇩 YouTube Unique Views - Indonesia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '850', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(725, 'f86b9284ae9fd5b2fa4f8a7dfd30b77a', 38, 88, '🇷🇸 YouTube Unique Views - Serbia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '851', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(726, '8aa0f0549fa3c51d59a5a6f836db6508', 38, 88, '🇦🇪 YouTube Unique Views - United Arab (UAE) [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '852', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(727, 'd0ed59d27f4bbc7ea8295b0d72c4fb5b', 38, 88, '🇦🇷 YouTube Unique Views - Argentina [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '853', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(728, 'c4ae2e378a9abddf2d6f33ef5d3d91e2', 38, 88, '🇧🇩 YouTube Unique Views - Bangladesh [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '854', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(729, '35be7b5f7d05b1757df8713a289ced5d', 38, 88, '🇧🇷 YouTube Unique Views - Brazil [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '855', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(730, '53d0834a600d86ec7591b835ddb5537a', 38, 88, '🇪🇬 YouTube Unique Views - Egypt [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '856', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(731, '25148568fa63da9ed765a18517dda243', 38, 88, '🇮🇳 YouTube Unique Views - India [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '857', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(732, '5e17d7fd9f8477550b88a5f57ea6425d', 38, 88, '🇻🇳 YouTube Unique Views - Viet Nam [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '858', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(733, 'f2244c6868f6f8d75637ae1821f7da5d', 38, 88, '🇷🇴 YouTube Unique Views - Romania [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '859', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(734, '14f806eaac2749e4d732eedb041dbc4f', 38, 88, '🇿🇦 YouTube Unique Views - South Africa [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '860', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(735, '5cd9f83962a8b0cd1a3d4926eb1293d7', 38, 88, '🇲🇦 YouTube Unique Views - Morocco [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '861', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(736, '7e8c7c116318de3bb60218fdd56bc1dc', 38, 88, '🇨🇴 YouTube Unique Views - Colombia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '862', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(737, '5c9c34895a3d4e9ab97d144c880b9530', 38, 88, '🇵🇭 YouTube Unique Views - Philippines [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '863', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(738, '77617a373c253ba83f1f7b2a85e19300', 38, 88, '🇪🇨 YouTube Unique Views - Ecuador [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '864', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(739, 'fb3b3fc09f9111431a5022e9ba2f8531', 38, 88, '🇹🇳 YouTube Unique Views - Tunisia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '865', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(740, '1a7e8f93a296fbd23c9b92a764882700', 38, 88, '🇸🇦 YouTube Unique Views - Saudi Arabia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '866', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(741, 'd724b79c2e336f29c42af99c3a5b7523', 38, 88, '🇭🇷 YouTube Unique Views - Croatia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '867', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(742, '59ddc5eacf71625012bceb86d0cbd44c', 38, 88, '🇻🇪 YouTube Unique Views - Venezuela [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '868', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(743, 'f82d89180e63ce9bc52bf6852b2875c9', 38, 88, '🇮🇹 YouTube Unique Views - Italy [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '869', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(744, 'be8f798670f307fd9411289788fee9c7', 38, 88, '🇱🇧 YouTube Unique Views - Lebanon [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '870', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(745, '20b4525252029c6ef52c58583d9af261', 38, 88, '🇵🇰 YouTube Unique Views - Pakistan [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '871', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(746, '07323a54a57d3e79b4a721d6039b89a4', 38, 88, '🇫🇷 YouTube Unique Views - France [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '872', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(747, '407c0ae6cbb0fe76d3ab14e7ad554cc1', 38, 88, '🇳🇵 YouTube Unique Views - Nepal [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '873', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(748, '152b0ac498cca36b5270c461f830556c', 38, 88, '🇲🇽 YouTube Unique Views - Mexico [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '874', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(749, '797ce797227142c8924b5ca06d49a2e7', 38, 88, '🇩🇿 YouTube Unique Views - Algeria [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '875', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(750, '6b82f772ed2c389db4b147a9628d7bc1', 38, 88, '🇧🇬 YouTube Unique Views - Bulgaria [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '876', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(751, 'f7e7e418400d3a807b4dadfff0f96dec', 38, 88, '🇳🇱 YouTube Unique Views - Netherlands [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '877', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(752, 'b17c53b18d46f8a268d07b5eb0937a21', 38, 88, '🇬🇷 YouTube Unique Views - Greece [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 1000, 100000, 'api', 'default', '878', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(753, 'cfe53a0ff87c194fdfe4a8eb4350b246', 38, 88, '🇷🇺 YouTube Unique Views - Russia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '879', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(754, '558f38784bc57cb46a03ff2f7e54607c', 38, 88, '🇪🇸 YouTube Unique Views - Spain [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '880', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(755, '27ec8329fa944e7b9c32b5c383d31104', 38, 88, '🇵🇱 YouTube Unique Views - Poland [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '881', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(756, '73c8bc095c1d5b43b72f149ea00ff284', 38, 88, '🇹🇭 YouTube Unique Views - Thailand [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '882', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(757, 'dbda9564150dfb7b35eb4c4cee51bcbe', 38, 88, '🇲🇰 YouTube Unique Views - North Macedonia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '883', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(758, '43b0580d27e35bcee61f6f0ee01791aa', 38, 88, '🇸🇪 YouTube Unique Views - Sweden [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '884', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(759, '77caefae5555c1ee7d8a678cbb260c91', 38, 88, '🇦🇫 YouTube Unique Views - Afghanistan [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '885', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(760, 'be9fb846d933457b69e555574ad290c7', 38, 88, '🇦🇱 YouTube Unique Views - Albania [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '886', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(761, '1690c0cd521d4bc9553b662eb9a7c5c0', 38, 88, '🇦🇴 YouTube Unique Views - Angola [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '887', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(762, '72e902d03a0260dbd1589e2a44ec306e', 38, 88, '🇦🇿 YouTube Unique Views - Azerbaijan [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '888', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(763, '8345263c9a1d804be7ac49d23a64bfec', 38, 88, '🇧🇴 YouTube Unique Views - Bolivia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '889', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(764, '11c3073887c3e2fa6a117f33f45218f3', 38, 88, '🇧🇦 YouTube Unique Views - Bosnia and Herzegovina [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '890', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(765, '451e8a69c12e85ea50e88d5b6a2f1660', 38, 88, '🇰🇭 YouTube Unique Views - Cambodia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '891', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(766, 'd7330a0746051d714eb19f1522172f0a', 38, 88, '🇨🇱 YouTube Unique Views - Chile [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '892', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(767, 'aa535d5018e830f41e8350a8ba0e92d5', 38, 88, '🇨🇷 YouTube Unique Views - Costa Rica [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '893', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(768, '1be936d3f2e8dff2cbc7162ce62dbbfb', 38, 88, '🇩🇴 YouTube Unique Views - Dominican Republic [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '894', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(769, '82a00e15328d7a7c945e5618f827f86d', 38, 88, '🇸🇻 YouTube Unique Views - El Salvador [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '895', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(770, 'fed216666fa898e2c3f9aa8da6172e73', 38, 88, '🇬🇪 YouTube Unique Views - Georgia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '896', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(771, '7e498ef215969de5b039f053eee5e2f1', 38, 88, '🇬🇭 YouTube Unique Views - Ghana [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '897', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(772, '29515cbb289de320b16d1a382f8161c1', 38, 88, '🇬🇹 YouTube Unique Views - Guatemala [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '898', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(773, '657c53d6bb0615586b6c69e05c951a6f', 38, 88, '🇭🇳 YouTube Unique Views - Honduras [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '899', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(774, '270da986ceeb8d4069f6bc7ccb057543', 38, 88, '🇭🇰 YouTube Unique Views - Hong Kong [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '900', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(775, 'bb7c3452809da3ac7acfac3641ea3166', 38, 88, '🇭🇺 YouTube Unique Views - Hungary [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '901', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(776, '0c84e9825d79e5c8ede4982cf9669699', 38, 88, '🇮🇶 YouTube Unique Views - Iraq [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '902', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(777, 'cb31f4200ea54e92f5221eeb4e318312', 38, 88, '🇮🇱 YouTube Unique Views - Israel [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '903', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(778, '580c5cc44177c6dceaf5a608b35214c0', 38, 88, '🇯🇲 YouTube Unique Views - Jamaica [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 1000, 100000, 'api', 'default', '904', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(779, 'df93a3177f1ec45a9d8096eaf0c25ef8', 38, 88, '🇯🇴 YouTube Unique Views - Jordan [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '905', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(780, '50c9fbfab055a7c0a09e4745a1a8d5b6', 38, 88, '🇰🇪 YouTube Unique Views - Kenya [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '906', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(781, '3c91554a580ef8a9184f1eea735a9cb0', 38, 88, '🇰🇼 YouTube Unique Views - Kuwait [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '907', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(782, '2beda20fc6ddcf9c07c4b9d22c35d4c9', 38, 88, '🇱🇦 YouTube Unique Views - Laos [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '908', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(783, 'acbad7cb0188337e15251387fe04d1f9', 38, 88, '🇱🇾 YouTube Unique Views - Libya [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '909', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(784, 'cbfcfa0c475d0c5058485cc7b3d230df', 38, 88, '🇲🇾 YouTube Unique Views - Malaysia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '910', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(785, '88e2df658585945289dd31f69dee526c', 38, 88, '🇲🇳 YouTube Unique Views - Mongolia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '911', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(786, 'b4f4716920bfc0fd34016c7612dcf676', 38, 88, '🇲🇪 YouTube Unique Views - Montenegro [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '912', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(787, 'ba6895842645c32ccf0c91fd3985fdf9', 38, 88, '🇲🇲 YouTube Unique Views - Myanmar [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '913', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(788, '36227f9bcbe8f21da94206654d2a4614', 38, 88, '🇳🇮 YouTube Unique Views - Nicaragua [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '914', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(789, '9ca527cf0c626df78a73dac93f8ee9b6', 38, 88, '🇴🇲 YouTube Unique Views - Oman [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '915', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(790, 'bd4ac5701ff3013baa4da773aac2debf', 38, 88, '🇵🇦 YouTube Unique Views - Panama [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '916', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(791, 'ae4058c35b5ff1b6acc29fcbec50be17', 38, 88, '🇵🇾 YouTube Unique Views - Paraguay [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '917', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(792, 'a90e77c57bf0329d57c816ffb4d39c62', 38, 88, '🇵🇪 YouTube Unique Views - Peru [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '918', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(793, 'ce18d52418a3edb17ef2fe7a31a67276', 38, 88, '🇵🇹 YouTube Unique Views - Portugal [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '919', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(794, 'e210c45bd70ea1e3438fdbdf442b4885', 38, 88, '🇵🇷 YouTube Unique Views - Puerto Rico [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '920', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(795, '108ba9a0e2dd414c2dd00262edc3d4ae', 38, 88, '🇶🇦 YouTube Unique Views - Qatar [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '921', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(796, '2607afaa97590fa4dce276a9264b0cd8', 38, 88, '🇸🇬 YouTube Unique Views - Singapore [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '922', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(797, 'e93fb6e3adc04a64f3b83add86791862', 38, 88, '🇸🇳 YouTube Unique Views - Senegal [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '923', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(798, 'd34771a3a21462396c6914d49f3fee9b', 38, 88, '🇸🇮 YouTube Unique Views - Slovenia [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '924', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(799, '85b1458994bff8c97d3deac20c9ec41d', 38, 88, '🇱🇰 YouTube Unique Views - Sri Lanka [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '925', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(800, '8192adaf6d865a4ccb656619e04289c8', 38, 88, '🇸🇩 YouTube Unique Views - Sudan [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '926', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(801, '0fcbab49eb469fca9fc26aa50b221402', 38, 88, '🇸🇾 YouTube Unique Views - Syria [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '927', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(802, '4401d9d8ed8593050afd84addf92e849', 38, 88, '🇹🇼 YouTube Unique Views - Taiwan [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '928', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(803, '17a44dc56cac9a2683b694ee98c5ad55', 38, 88, '🇹🇿 YouTube Unique Views - Tanzania [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '929', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(804, 'e46cc2bea2adb4380087cb8ef66acef3', 38, 88, '🇹🇹 YouTube Unique Views - Trinidad and Tobago [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '930', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(805, '5f7d3cb06842cd9a3579e43b5051ff30', 38, 88, '🇺🇾 YouTube Unique Views - Uruguay [RAV™ - Real & Active Views]', NULL, '4.4200', '3.4000', 500, 100000, 'api', 'default', '931', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(806, 'c927cf37121111502e7bcd5aa7976549', 38, 89, '🇹🇷 YouTube Unique Views - Turkey [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '932', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(807, '11e847e6d0641e98f5d4b71a7981c7cd', 38, 89, '🇮🇩 YouTube Unique Views - Indonesia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '933', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(808, 'f283ad195f14e739a145af71f2ece1d3', 38, 89, '🇷🇸 YouTube Unique Views - Serbia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '934', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(809, '322ce3548b96477364467fdead643030', 38, 89, '🇦🇪 YouTube Unique Views - United Arab (UAE) [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '935', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(810, '77d13c92ccc046bea59e859ecde0e0f4', 38, 89, '🇦🇷 YouTube Unique Views - Argentina [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '936', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(811, 'ef1860b641ec0b817558a251b80faf75', 38, 89, '🇧🇩 YouTube Unique Views - Bangladesh [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '937', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(812, '1dff82ffb6103eaead652c447cc7fa5a', 38, 89, '🇧🇷 YouTube Unique Views - Brazil [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '938', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(813, '493d71e66afb05fef4209ea7f180a305', 38, 89, '🇪🇬 YouTube Unique Views - Egypt [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '939', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(814, 'f783167a83ec1cc1e2f8c7b190119534', 38, 89, '🇮🇳 YouTube Unique Views - India [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '940', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(815, '22e304ff379e980eaadc56038be9b58d', 38, 89, '🇻🇳 YouTube Unique Views - Viet Nam [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '941', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(816, '83b9f27bb6197e13b05c7adef16a554e', 38, 89, '🇷🇴 YouTube Unique Views - Romania [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '942', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(817, '77a5262837e998ca7486655c8039b474', 38, 89, '🇲🇦 YouTube Unique Views - Morocco [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '943', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(818, '58eae38daf43e70b570e0757e5f18aa5', 38, 89, '🇨🇴 YouTube Unique Views - Colombia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '944', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(819, '592985868e3e72caed662d4c2dafe58e', 38, 89, '🇵🇭 YouTube Unique Views - Philippines [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '945', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(820, '0b80f271a26f1c9e63ea147216490d4e', 38, 89, '🇪🇨 YouTube Unique Views - Ecuador [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '946', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(821, '28c3c9b4d7bc8990d0eb2a3d42580b6a', 38, 89, '🇹🇳 YouTube Unique Views - Tunisia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '947', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(822, 'de96d83ddee04b34c30e346edcf3dda1', 38, 89, '🇸🇦 YouTube Unique Views - Saudi Arabia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '948', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(823, 'a4db808d4858d17b642b14a79a947eea', 38, 89, '🇭🇷 YouTube Unique Views - Croatia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '949', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(824, 'dc2daeca0673066e5ae7a0afe09276c9', 38, 89, '🇻🇪 YouTube Unique Views - Venezuela [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '950', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(825, '4650bcfaac6164c5c302c58486c2cb2e', 38, 89, '🇮🇹 YouTube Unique Views - Italy [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '951', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(826, 'c9768dc4d0769db750365761979204c0', 38, 89, '🇱🇧 YouTube Unique Views - Lebanon [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '952', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(827, '842f63ac1abb84035302123b5a6176e6', 38, 89, '🇵🇰 YouTube Unique Views - Pakistan [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '953', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(828, '165b5ef99e77eae60fc3932f2f99f426', 38, 89, '🇫🇷 YouTube Unique Views - France [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '954', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(829, '10e6b9cf3a689759089b0d320dfdbd17', 38, 89, '🇳🇵 YouTube Unique Views - Nepal [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 100, 100000, 'api', 'default', '955', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(830, '54de91da9d2f744cd1fd628c99ccb1ba', 38, 89, '🇲🇽 YouTube Unique Views - Mexico [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '956', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(831, 'a1b4560dcc7f6fce097ab6fb3734ccc8', 38, 89, '🇩🇿 YouTube Unique Views - Algeria [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '957', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(832, 'd5a5b2cb205e52991f38fb0b291b91e3', 38, 89, '🇧🇬 YouTube Unique Views - Bulgaria [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '958', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(833, '870ba1063386b18ff70aed9bcd84d8e8', 38, 89, '🇳🇱 YouTube Unique Views - Netherlands [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '959', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(834, '616640a3313180ac86b6a8142f76efdb', 38, 89, '🇬🇷 YouTube Unique Views - Greece [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '960', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(835, '7d6790dc57d01ba9808105401e20e3e4', 38, 89, '🇷🇺 YouTube Unique Views - Russia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '961', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(836, '1accfdaa60a58f98350bd7ca461d0f3b', 38, 89, '🇪🇸 YouTube Unique Views - Spain [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '962', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(837, 'c8a5edba917362efb6927a029ab82981', 38, 89, '🇵🇱 YouTube Unique Views - Poland [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '963', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(838, '048d78ac9b8a6302e6bd0812d01a5144', 38, 89, '🇹🇭 YouTube Unique Views - Thailand [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '964', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(839, 'ee9e281da5df351e7506a138cdc59cab', 38, 89, '🇲🇰 YouTube Unique Views - North Macedonia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '965', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(840, '303781ea0bcd71417280a136bfd46573', 38, 89, '🇸🇪 YouTube Unique Views - Sweden [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '966', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(841, '1726d1ad1d407fd7e5ead6363e353fa6', 38, 89, '🇦🇫 YouTube Unique Views - Afghanistan [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '967', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(842, '76046651f5dffb49985c265c5cf835f3', 38, 89, '🇦🇱 YouTube Unique Views - Albania [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '968', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(843, '8938a70b81d9c40b49877f6462f7a5d9', 38, 89, '🇦🇴 YouTube Unique Views - Angola [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '969', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(844, 'cf93ac221fb79e18a72c996f5637f010', 38, 89, '🇦🇿 YouTube Unique Views - Azerbaijan [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '970', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(845, '043d2810b7150ccd69fdd926da080b1d', 38, 89, '🇧🇴 YouTube Unique Views - Bolivia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '971', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(846, '1c9e84447c4a63f11e7e53656d01d5c9', 38, 89, '🇧🇦 YouTube Unique Views - Bosnia and Herzegovina [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '972', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(847, 'c946e15c8e807abeb1db0b7a30d3c0a7', 38, 89, '🇰🇭 YouTube Unique Views - Cambodia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '973', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(848, '1d8e22af153b634e23e0b168fdc15a08', 38, 89, '🇨🇱 YouTube Unique Views - Chile [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '974', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(849, 'f4fe6b9fda198163ab2e4b358403b967', 38, 89, '🇨🇷 YouTube Unique Views - Costa Rica [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '975', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(850, '06b222531ec92c1dc2c58f1141201de6', 38, 89, '🇩🇴 YouTube Unique Views - Dominican Republic [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '976', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(851, '11b602f7fcf7f4ffea5a21d6d4a9a26a', 38, 89, '🇸🇻 YouTube Unique Views - El Salvador [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '977', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(852, '512d9f377a1c08e4d6cafa63115f4502', 38, 89, '🇬🇪 YouTube Unique Views - Georgia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '978', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(853, '5b3e458e49233e710dcffa7ffce82760', 38, 89, '🇬🇭 YouTube Unique Views - Ghana [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '979', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(854, '01bb8d3196fd8d6975e5d1d533d65882', 38, 89, '🇬🇹 YouTube Unique Views - Guatemala [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '980', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(855, '1a6dd252e4ebb86ad5ca2ed9f02f0f52', 38, 89, '🇭🇳 YouTube Unique Views - Honduras [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '981', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(856, 'cb1f6bd68eaf02caa6d74a5c48019111', 38, 89, '🇭🇰 YouTube Unique Views - Hong Kong [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '982', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(857, 'dda9bf3b094393917eebc81557aafa09', 38, 89, '🇭🇺 YouTube Unique Views - Hungary [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '983', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(858, 'b408bea0576e5dfd9c4593ea3d6a5ed1', 38, 89, '🇮🇶 YouTube Unique Views - Iraq [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '984', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(859, '3b3ab984ab4052a2abb0e82933d96fae', 38, 89, '🇮🇱 YouTube Unique Views - Israel [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '985', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(860, 'a16148947584c1a43bd1d263f059507b', 38, 89, '🇯🇲 YouTube Unique Views - Jamaica [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '986', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(861, '71eed803b120d2b4536ac9759e2213ca', 38, 89, '🇯🇴 YouTube Unique Views - Jordan [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '987', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(862, 'a14595f15b27999a55b4fae00462bac5', 38, 89, '🇰🇪 YouTube Unique Views - Kenya [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '988', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(863, '89f76096348b5bb2d7562990ae32635f', 38, 89, '🇰🇼 YouTube Unique Views - Kuwait [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '989', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(864, '8624693dc3ccb77f7001b817397c26a0', 38, 89, '🇱🇦 YouTube Unique Views - Laos [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '990', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(865, 'd4e48eeaeba02f3bae031f48044a842a', 38, 89, '🇱🇾 YouTube Unique Views - Libya [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '991', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(866, '9aaf6614b3b856f650d1539a8f4cd8d0', 38, 89, '🇲🇾 YouTube Unique Views - Malaysia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '992', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(867, '373dc0e10eabf4a4b421cd355b3ce371', 38, 89, '🇲🇳 YouTube Unique Views - Mongolia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '993', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(868, '930d36ec6f93860b305fb2333d344b3b', 38, 89, '🇲🇪 YouTube Unique Views - Montenegro [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '994', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(869, 'c6df4fc6ac82e356be455c3fffad1005', 38, 89, '🇲🇲 YouTube Unique Views - Myanmar [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '995', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(870, '88d345227f393ff59efc0be25e2546b8', 38, 89, '🇳🇮 YouTube Unique Views - Nicaragua [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '996', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(871, 'c7b86bd83ffceb223241eb996b63e6ff', 38, 89, '🇴🇲 YouTube Unique Views - Oman [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '997', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(872, 'a2e8d0109c096a8e8336afa843372a5f', 38, 89, '🇵🇦 YouTube Unique Views - Panama [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '998', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(873, '45ad2b8699dc48ebf3cac4c9f02d824a', 38, 89, '🇵🇾 YouTube Unique Views - Paraguay [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '999', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(874, '30c36beec04b176394f7702a733b5c39', 38, 89, '🇵🇪 YouTube Unique Views - Peru [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1000', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(875, '4e2617ae050002664909f52fd42f2e34', 38, 89, '🇵🇹 YouTube Unique Views - Portugal [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1001', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(876, '245a80003702011d8f7e25cc262e96ad', 38, 89, '🇵🇷 YouTube Unique Views - Puerto Rico [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1002', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(877, '6b861598b430c5be82aadf8877debc7f', 38, 89, '🇶🇦 YouTube Unique Views - Qatar [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1003', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(878, 'd6d57eec6df0f2f35e0002db0311d7b9', 38, 89, '🇸🇬 YouTube Unique Views - Singapore [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1004', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(879, '73c1b7353471549eda3eca88ba06edd9', 38, 89, '🇸🇳 YouTube Unique Views - Senegal [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1005', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(880, 'c470c47f8bbb3f7bb94c1660fe396ef7', 38, 89, '🇸🇮 YouTube Unique Views - Slovenia [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1006', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(881, '74aa8495dd3997bc36fd5e16bd3c7946', 38, 89, '🇱🇰 YouTube Unique Views - Sri Lanka [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1007', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(882, '0bd4eb9c5b8fb462b05366926c87bae3', 38, 89, '🇸🇩 YouTube Unique Views - Sudan [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1008', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(883, 'e9265a1302028d74abc06cb4ac9a1846', 38, 89, '🇸🇾 YouTube Unique Views - Syria [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1009', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(884, 'c433a5e69b41a3f94ca5bc7862e19e4e', 38, 89, '🇹🇼 YouTube Unique Views - Taiwan [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1010', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(885, '657092d83b75c7e7baf654bc0183beff', 38, 89, '🇹🇿 YouTube Unique Views - Tanzania [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1011', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(886, '65b7b48fe6990264c755bc211dfaebea', 38, 89, '🇹🇹 YouTube Unique Views - Trinidad and Tobago [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1012', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(887, '9078ee19947a50f6ecbbeaac7dd0ed67', 38, 89, '🇺🇾 YouTube Unique Views - Uruguay [RAV-GS™ - Real & Active Views]', NULL, '4.2900', '3.3000', 500, 100000, 'api', 'default', '1013', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(888, 'f9bbaa88e5c68e81efc33135aec17f47', 38, 90, 'Youtube Live Stream Views 100% Stable [ Real Viewers ]', NULL, '7.7900', '5.9900', 1000, 3000, 'api', 'default', '2688', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(889, '9e3f90bba81a0f0e456aa1995dfa9b19', 38, 90, 'Youtube Live Stream Views 100% Stable [ Real Viewers ] 🔥🔥', NULL, '6.4900', '4.9900', 1000, 500000, 'api', 'default', '2752', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(890, '306985f5f020216a0549bf50a0151798', 38, 90, 'Youtube Live Stream Views [ Real ] No Refill', NULL, '4.6200', '3.5500', 1000, 150000, 'api', 'default', '559', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(891, '6e100c86a9a0c391c280dd28e2ea165c', 38, 91, '🔥Exlusive! YouTube Subscribers | 100% NON DROP | Speed 5K/D [R30] - NEVER STUCK', NULL, '51.3500', '39.5000', 5000, 25000, 'api', 'default', '2917', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(892, '1eb4c1fb9cd1bab7d11447fba65e0ce8', 38, 91, '🔥Exlusive! YouTube Subscribers | 100% NON DROP | Speed 4K/D [R30] - NEVER STUCK', NULL, '49.4000', '38.0000', 100, 20000, 'api', 'default', '1196', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(893, 'd2e593cb61c2d67d234f5cc8062c4d0b', 38, 91, '🔥Exlusive! YouTube Subscribers | 100% NON DROP | Speed 500/D [R30]', NULL, '41.6000', '32.0000', 300, 3000, 'api', 'default', '1197', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(894, '195ce89ab99437fbc5fd18dce7dcc489', 38, 91, '🔥Exlusive! YouTube Subscribers | 100% NON DROP | Speed 2K/D [R30] - Super Fast', NULL, '41.6000', '32.0000', 300, 2000, 'api', 'default', '2641', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(895, '0c4daeaea373e89fa8b2ec083e668aac', 38, 91, '🔥Exlusive! YouTube Subscribers | 100% NON DROP | Speed 10-20/D [R30]', NULL, '32.5000', '25.0000', 5, 3000, 'api', 'default', '2683', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(896, 'e3269bf4741025aa49e5f3b889d92bf9', 38, 91, 'YouTube Real Subscribers [ 15 Days Refill ] Super Fast! 5K/D 🔥 HIGH DROP', NULL, '11.3800', '8.7500', 50, 3000, 'api', 'default', '1232', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(897, '0c82299846bdf6642faa6283ba38fdde', 38, 91, 'Youtube Subscribers | Instant | Speed 5K/D - No Refill', NULL, '1.5600', '1.2000', 200, 6000, 'api', 'default', '1231', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(898, '01750eb9b4c1dfc00bd7f77567bda812', 38, 91, 'Youtube Subscribers | Instant | Speed 5K/D - No Refill', NULL, '2.6000', '2.0000', 200, 3000, 'api', 'default', '1153', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(899, 'bc67b5b86c93a0c0aa994ad481f793e8', 38, 91, 'Youtube Subscribers | Instant | Speed 2K/D - No Refill', NULL, '4.2300', '3.2500', 100, 2000, 'api', 'default', '1159', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(900, '3b2bfc4c6a5e9170c6540efe6f84af28', 38, 91, 'Youtube Subscribers | Instant | Speed 5K/D - No Refill', NULL, '4.5500', '3.5000', 50, 25000, 'api', 'default', '1167', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(901, '823d8b5851d20a34e27d63f5094d3d28', 38, 91, 'Youtube Subscribers | Instant | Speed 20K/D - No Refill', NULL, '9.7500', '7.5000', 50, 20000, 'api', 'default', '1152', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(902, '469aff51fb4eb7f924ded5fbeda42945', 38, 92, '🔥 Youtube Community Post Likes [ High Quality ] Speed 2K/D', NULL, '6.8300', '5.2500', 10, 150000, 'api', 'default', '2828', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(903, 'aa60fa6f59b8a79bc08e3f56f9907122', 38, 92, '🔥 Youtube Video Likes | Instant! |  Speed 10K/D', NULL, '1.1700', '0.9000', 100, 20000, 'api', 'default', '2804', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(904, '61b1f873409208a31fd3162f321bb5f4', 38, 92, '🔥 Youtube Video Likes | Super Instant! |  Speed 5-10K/D [ R30 ] - No Drop!', NULL, '2.1500', '1.6500', 10, 150000, 'api', 'default', '417', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(905, '93c59274d489af6ef667b5c1ced4dfe2', 38, 92, '🔥 Youtube Video Likes | Super Instant! |  Speed 5K/D [ R30 ] - No Drop!', NULL, '1.6900', '1.3000', 50, 200000, 'api', 'default', '476', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(906, 'fbea2d1896eace51f11b4f512733c8f8', 38, 92, '🔥 Youtube Video Likes Instant! |  Speed 3-4K/D [ R30 ] - No Drop!', NULL, '1.9500', '1.5000', 50, 50000, 'api', 'default', '196', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(907, '691c3ebd16fdf6ad5e9b4c539d826a3b', 38, 92, '🔥 Youtube Video Likes | Super Instant! |  Speed 2K/D [ R30 ] - No Drop!', NULL, '1.8900', '1.4500', 100, 5000, 'api', 'default', '466', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(908, '4da16ab14d9876bda9cf503bb2a1f855', 38, 92, '🔥 Youtube Video Likes Non Drop | Speed 10K/D | No Refill', NULL, '1.4300', '1.1000', 100, 10000, 'api', 'default', '1229', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(909, '6811dc02c7d869ff3234f18c318ae9c7', 38, 92, '🔥 Youtube Video Likes Instant LifeTime Refill | Speed 5K/D', NULL, '5.8500', '4.5000', 50, 25000, 'api', 'default', '76', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(910, '562c87b675a6b628ebe5f0affd3a8b3b', 38, 92, '🔥 Youtube Video Likes Non Drop R90 | Speed 500+/D', NULL, '8.0600', '6.2000', 200, 2000, 'api', 'default', '78', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(911, 'e715a81b273c8f4c55f896e5d7bdda82', 38, 92, '🔥 Youtube Video Likes Non Drop R30 | Speed 100+/D', NULL, '15.6000', '12.0000', 100, 10000, 'api', 'default', '113', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(912, '32536cd87c25a1a4a0d024d013766f28', 38, 92, '🇺🇸Youtube USA Likes [Refill: 30 Days] [Speed: 200/Day]', NULL, '8.1300', '6.2500', 5, 5000, 'api', 'default', '2829', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(913, '60dce7e99693018c24a950b56fdcc811', 38, 92, '🇪🇬Youtube Likes [EGYPT - MOROCCO] [No Refill] [Speed: 100/Day]', NULL, '19.6800', '15.1400', 50, 10000, 'api', 'default', '2831', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(914, '59ed9f967501452290f9cc9b4ad304d4', 38, 92, '🇹🇷 Youtube TURKEY Likes [Refill: 30 Days] [Speed: 5K/Day]', NULL, '5.8500', '4.5000', 5, 5000, 'api', 'default', '2833', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(915, '179188a0ec88e2a32a6cf5c66b6cf28c', 38, 92, '🇷🇺 Youtube Likes [RUSSIAN] [Refill: 30 Days] [Speed: 30/Day]', NULL, '7.8500', '6.0400', 20, 45000, 'api', 'default', '2830', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(916, '000930734138eed40d0b043ad503b289', 38, 92, '🇷🇺 Youtube DisLikes [RUSSIAN] [Refill: 30 Days] [Speed: 200/Day]', NULL, '17.8100', '13.7000', 100, 20000, 'api', 'default', '2832', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(917, '9396e0790d75f7edfa270d805eba0f6b', 38, 92, '🔥 Youtube Comment Likes Non Drop R30 | Speed 3K+/D | Up Vote', NULL, '5.1900', '3.9900', 20, 50000, 'api', 'default', '1205', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(918, '98abf3d8c19a56f07961ddac7cfc6501', 38, 92, '🔥 Youtube Comment Likes Non Drop R30 | Speed 5K+/D | Up Vote', NULL, '7.1500', '5.5000', 10, 150000, 'api', 'default', '419', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(919, '5c7111f61239ff5e444ffc358d6083d7', 38, 92, '🔥 YouTube Custom Comments Non Drop R30 | Speed 5K/D - Instant', NULL, '9.7500', '7.5000', 10, 100000, 'api', 'custom_comments', '418', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(920, '7010c08fd2ef4b2c39f9e05735d79bb8', 38, 92, 'YouTube Custom Comments Non Drop R30 | Speed 20K/D', NULL, '11.7000', '9.0000', 5, 15000, 'api', 'custom_comments', '80', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(921, '9d467c8d179ae0b5313e957268cf032d', 38, 92, 'YouTube Custom Comments Non Drop R30 | Speed 20K/D', NULL, '13.0000', '10.0000', 5, 50000, 'api', 'custom_comments', '1206', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(922, '3ae5dc1901ecc21bc200579326024925', 38, 92, 'YouTube [ Male ] Custom Comments Non Drop | Speed 100/D 👦🏻', NULL, '71.5000', '55.0000', 5, 1000, 'api', 'custom_comments', '525', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(923, '93f2f7daebb0367b8e91d0101e13beb4', 38, 92, 'YouTube [ Female ] Custom Comments Non Drop | Speed 100/D 👩🏻', NULL, '71.5000', '55.0000', 5, 1000, 'api', 'custom_comments', '526', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(924, '5560e6dc6e566c9fb398031ad78d0f9b', 38, 93, '🇺🇸 YouTube Social Shares [ USA ]', NULL, '2.3400', '1.8000', 50, 10000, 'api', 'default', '2834', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(925, '89b4d88b1abf4bf3743e96175c8dd19d', 38, 93, '🇰🇷 YouTube Social Shares [ South Korea ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2835', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(926, '1d9c3cd607a15eb94610ad193e6e4af7', 38, 93, '🇯🇵 YouTube Social Shares [ Japan ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2856', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(927, 'c8bef519b3ad36be70a08a4005ad46fc', 38, 93, '🇬🇧 YouTube Social Shares [ UK ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2837', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(928, '6be2749c46222adf801abae22add98bf', 38, 93, '🇮🇳 YouTube Social Shares [ India ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2839', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(929, '251a9f032f6092c67b55cafc8410796f', 38, 93, '🇮🇩 YouTube Social Shares [ Indonesia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2836', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(930, 'eced8651fae091f2d180744cdf82f7c7', 38, 93, '🇵🇭 YouTube Social Shares [ Philippines ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2838', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(931, '1d43308c12d631ca50cebe531e088e6a', 38, 93, '🇵🇱 YouTube Social Shares [ Poland ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2840', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(932, '875ad94e02759b5582f03f7f8bee4f3f', 38, 93, '🇷🇴 YouTube Social Shares [ Romania ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2841', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(933, '7d3883fd77d072a1ce900a3595b54337', 38, 93, '🇩🇪 YouTube Social Shares [ Germany ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2842', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(934, '15e6001c792e7e66f64dfdc3012a3fb7', 38, 93, '🇧🇷 YouTube Social Shares [ Brazil ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2843', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(935, 'd32aa1f8292cb16bcc2cebf762cfd981', 38, 93, '🇺🇦 YouTube Social Shares [ Ukraine ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2844', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(936, '81782ae61945a8b5dc848f1d6be059e5', 38, 93, '🇷🇺 YouTube Social Shares [ Russia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2845', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(937, 'addce9979c9d372cd811e17f90734c93', 38, 93, '🇻🇳 YouTube Social Shares [ Vietnam ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2846', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(938, '33e060ae0c7f3690ffffa121f75dc19f', 38, 93, '🇭🇺 YouTube Social Shares [ Hungary ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2847', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(939, '8692e6848344557bd86ed8ee22705ba1', 38, 93, '🇦🇷 YouTube Social Shares [ Argentina ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2848', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(940, 'baf6ced35f967cd1368e253d10509b68', 38, 93, '🇲🇽 YouTube Social Shares [ Mexico ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2849', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(941, '48a4438d0b664e5497b1ecdd4b42f032', 38, 93, '🇧🇩 YouTube Social Shares [ Bangladesh ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2850', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(942, '33c6aa9bbcbb4c90268a1c1627d7e5fc', 38, 93, '🇲🇾 YouTube Social Shares [ Malaysia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2851', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(943, 'b938d6f02e3c694bdf896bb813c1f485', 38, 93, '🇹🇭 YouTube Social Shares [ Thailand ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2852', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(944, '11d12a758711b56e6ba15e60bc3f7cca', 38, 93, '🇹🇷 YouTube Social Shares [ Turkey ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2853', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(945, '1e65d8a1d8308fd10de4a7f76dbcbb68', 38, 93, '🇻🇪 YouTube Social Shares [ Venezuela ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2854', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(946, '42bb0e8315d8432968acc34b472475f9', 38, 93, '🇹🇼 YouTube Social Shares [ Taiwan ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2855', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(947, 'f73c56348d1e2d8cffbaa7755f2944af', 38, 93, '🇨🇴 YouTube Social Shares [ Colombia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2857', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(948, '648dc78791837aee4959cc35bde510fd', 38, 93, '🇲🇦 YouTube Social Shares [ Morocco ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2858', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(949, 'a9b102d2026f3ad1c9f3454cd57a3df7', 38, 93, '🇪🇨 YouTube Social Shares [ Ecuador ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2859', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(950, '7dbef459a338cbf57758d84449f1c5fb', 38, 93, '🇵🇹 YouTube Social Shares [ Portugal ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2860', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(951, '2c61f723e94b76727fd6d18e97204a3c', 38, 93, '🇦🇪 YouTube Social Shares [ UAE ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2861', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(952, '0ed686dbc2cd86bf1a8ff83d3f6f4fc7', 38, 93, '🇷🇸 YouTube Social Shares [ Serbia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2862', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(953, '92a8cf9bdb7f48963fffd78e18607721', 38, 93, '🇪🇸 YouTube Social Shares [ Spain ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2863', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(954, '4f073d4b41b15a38363e566e10be450d', 38, 93, '🇪🇬 YouTube Social Shares [ Egypt ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2864', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(955, '7fc23b808bb2a9a44bd716cfa143b81a', 38, 93, '🇩🇿 YouTube Social Shares [ Algeria ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2865', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(956, '63f4d4b37a692b91cfe47137d719f1d1', 38, 93, '🇵🇰 YouTube Social Shares [ Pakistan ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2866', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(957, '7b30f31262c6634a08e8840bdb212c2b', 38, 93, '🇫🇷 YouTube Social Shares [ France ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2867', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(958, 'bab541750d545c5fa5ef59d65622e2e3', 38, 93, '🇸🇦 YouTube Social Shares [ Saudi Arabia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2868', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(959, 'f9742bfaec91603a0e4365fc6acaf810', 38, 93, '🇹🇳 YouTube Social Shares [ Tunisia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2869', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(960, 'f87dc7d2de60b44b98b930836117f9c8', 38, 93, '🇿🇦 YouTube Social Shares [ South Africa ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2870', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(961, '8c1b4547a11b001a85698299914a828f', 38, 93, '🇨🇦 YouTube Social Shares [ Canada ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2871', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(962, '0d5c2e64a9d07b3a881ebae6858aa452', 38, 93, '🇬🇷 YouTube Social Shares [ Greece ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2872', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(963, '268c4d3ff272fe4503ed25624e95c941', 38, 93, '🇧🇬 YouTube Social Shares [ Bulgaria ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2873', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(964, '85be4f0f555cd36561afb32b2ad61749', 38, 93, '🇦🇱 YouTube Social Shares [ Albania ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2874', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(965, 'd1f3ce4f093d7f859779be0d367f57e1', 38, 93, '🇨🇿 YouTube Social Shares [ Czech Republic ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2875', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(966, '51f90413f7fe52e042292714fdb13388', 38, 93, '🇳🇱 YouTube Social Shares [ Netherlands ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2876', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(967, '3b3bcab53b16bebbcdea27d8d56f1bd5', 38, 93, '🇲🇰 YouTube Social Shares [ North Macedonia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2877', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(968, '1a2d03e52562c4803b65d093356b3264', 38, 93, '🇮🇷 YouTube Social Shares [ Iran ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2878', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(969, '7086386680c5cdaac61386837035af25', 38, 93, '🇮🇱 YouTube Social Shares [ Israel ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2879', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(970, 'a9c61ed02232c06f26b3ed1f6d79935d', 38, 93, '🇵🇪 YouTube Social Shares [ Peru ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2880', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(971, 'a885cc502eceafb9997991def021918a', 38, 93, '🇨🇱 YouTube Social Shares [ Chile ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2881', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(972, '9f36daef59be2f1a4f8454437b792d67', 38, 93, '🇳🇵 YouTube Social Shares [ Nepal ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2882', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(973, '63de3c80ffc5150882ddd166762e62fc', 38, 93, '🇮🇶 YouTube Social Shares [ Iraq ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2883', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(974, '9d63aeeebb48884a1d7f55a1c7ed0763', 38, 93, '🇰🇪 YouTube Social Shares [ Kenya ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2884', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(975, '7da724e8da03a1c8965e65965b66d011', 38, 93, '🇧🇴 YouTube Social Shares [ Bolivia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2885', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(976, '442f62e2a0efe1ce24fa138b3a96e736', 38, 93, '🇸🇳 YouTube Social Shares [ Senegal ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2886', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(977, '657a1f8f1c8bf2128ee7e7a08c7b6c63', 38, 93, '🇧🇪 YouTube Social Shares [ Belgium ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2887', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(978, '23b25797b76c8a8fc5007f8ae0aafa9a', 38, 93, '🇯🇴 YouTube Social Shares [ Jordan ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2888', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(979, '64a728d927762f86fd37d2a59b4e7dc5', 38, 93, '🇳🇬 YouTube Social Shares [ Nigeria ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2889', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(980, 'e60383bea2657674ae3b7750ea894ad9', 38, 93, '🇸🇾 YouTube Social Shares [ Syria ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2890', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(981, '795557bf0c9b873030e540c2bb7fd336', 38, 93, '🇦🇺 YouTube Social Shares [ Australia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2891', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(982, '62ba456f3acab2122b57baba7d9e20c6', 38, 93, '🇬🇹 YouTube Social Shares [ Guatemala ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2892', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(983, '057ba2850ce0b6b9cc2a16394f3aa41e', 38, 93, '🇩🇴 YouTube Social Shares [ Dominican Republic ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2893', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(984, 'fae2fe79fe165c275d85647d7e9e7c70', 38, 93, '🇱🇰 YouTube Social Shares [ Sri Lanka ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2894', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(985, 'b9efe173ee6e8684267c9706e2787939', 38, 93, '🇭🇷 YouTube Social Shares [ Croatia ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2895', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(986, '651d26e3d578518a8d1e450f4fdf63a9', 38, 93, '🇧🇦 YouTube Social Shares [ Bosnia and Herzegovina ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2896', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(987, '9a5a227ec2609e8593135d703a5708fb', 38, 93, '🇱🇾 YouTube Social Shares [ Libya ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2897', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(988, 'f8da6000400ca78e3e465a6ce0eecfd7', 38, 93, '🇨🇭 YouTube Social Shares [ Switzerland ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2898', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(989, '2f8d574cd7b233946cfd542d0ccc9cfb', 38, 93, '🇬🇭 YouTube Social Shares [ Ghana ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2899', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(990, '2ea68b27996e715a3ed0e0fceb694c95', 38, 93, '🇲🇲 YouTube Social Shares [ Myanmar ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2900', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(991, '795adf9366ebf1ce6c05feee90ffea61', 38, 93, '🇵🇾 YouTube Social Shares [ Paraguay ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2901', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(992, '28f05197e6c5259597e8771c876cd33f', 38, 93, '🇴🇲 YouTube Social Shares [ Oman ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2902', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(993, 'ddcfcfb2eee8482579f4eb4f0904993a', 38, 93, '🇲🇺 YouTube Social Shares [ Mauritius ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2903', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(994, '7559a398ecbfa765aca7f6b5f5b34455', 38, 93, '🇸🇻 YouTube Social Shares [ El Salvador ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2904', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(995, '4e985e2333c2440a4eee9bac0b5110cb', 38, 93, '🇹🇬 YouTube Social Shares [ Togo ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2905', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(996, 'c252530e93404c2078480567fdfe323f', 38, 93, '🇶🇦 YouTube Social Shares [ Qatar ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2906', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(997, '10f86288326a0e8654a44860e1db2f65', 38, 93, '🇺🇾 YouTube Social Shares [ Uruguay ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2907', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(998, '5d03a2a9954e45376a88b30ab8074115', 38, 93, '🇨🇷 YouTube Social Shares [ Costa Rica ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2908', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(999, 'b3123fa0e3ac9abb9e45810a33cf03af', 38, 93, '🇲🇱 YouTube Social Shares [ Mali ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2909', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1000, 'd0373dd211e224b70acebd4bcb02fe8c', 38, 93, '🇦🇴 YouTube Social Shares [ Angola ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2910', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1001, 'df316d249cd11c3f3eb1792dc089632c', 38, 93, '🇸🇬 YouTube Social Shares [ Singapore ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2911', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1002, '8ec272a9ece2d0df531abe8577e299f6', 38, 93, '🇱🇧 YouTube Social Shares [ Lebanon ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2912', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1003, 'b4e3d8b1e440e4793f1eca3a40e3368b', 38, 93, '🇮🇪 YouTube Social Shares [ Ireland ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2913', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1004, '3db9c2f2645d7dcbf235cab98b39781b', 38, 93, '🇭🇳 YouTube Social Shares [ Honduras ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2914', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1005, '295359a74e35ba31b558f3118e700a28', 38, 93, '🇮🇶 YouTube Social Shares [ Iraq ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2915', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1006, '4e0c45766278697d727ef2a96aa690fd', 38, 93, '🇮🇹 YouTube Social Shares [ Italy ]', NULL, '2.7300', '2.1000', 50, 10000, 'api', 'default', '2916', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1007, 'b980a5bb0314e90db8c89fee742408f0', 38, 94, '%100 Real 5 Comments ✅ [ from HQ and Active Accounts ]', NULL, '1.4300', '1.1000', 1, 1, 'api', 'package', '516', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1008, 'c2521333e979b17020b67b3233885e79', 38, 94, '%100 Real 10 Comments ✅ [ from HQ and Active Accounts ]', NULL, '2.6700', '2.0500', 1, 1, 'api', 'package', '517', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1009, '3d96e8943e91a9bf5c68fac4c1f9e78a', 38, 94, '%100 Real 15 Comments ✅ [ from HQ and Active Accounts ]', NULL, '4.5500', '3.5000', 1, 1, 'api', 'package', '518', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1010, '6081e2b32a0fd935991fceeedcb135ce', 38, 94, '%100 Real 20 Comments ✅ [ from HQ and Active Accounts ]', NULL, '5.8500', '4.5000', 1, 1, 'api', 'package', '519', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1011, '4fed66ff9b80ee00e77b1b0ae0c11bed', 38, 94, '%100 Real 50 Comments ✅ [ from HQ and Active Accounts ]', NULL, '10.4000', '8.0000', 1, 1, 'api', 'package', '520', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1012, '3bba58ebc4805245e038051652119eca', 38, 94, '%100 Real 100 Comments ✅ [ from HQ and Active Accounts ]', NULL, '16.2500', '12.5000', 1, 1, 'api', 'package', '521', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1013, '414583452610980cbc6fc03de90fd325', 38, 95, 'Twitter REAL and Active Likes (Favorite) | 1K/H - Super Instant! [ HQ ]', NULL, '2.4100', '1.8500', 50, 1000, 'api', 'default', '2663', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1014, '57a87ec2e728c29f52555d418b6cde95', 38, 95, 'Twitter REAL and Active Likes (Favorite) | 2K/H - Super Instant! [ UHQ ]', NULL, '3.2500', '2.5000', 25, 2000, 'api', 'default', '1168', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1015, '3e81a62d485e0011bd8009a2d233ecf6', 38, 95, 'Twitter 100% Real and Active {FEMALE} Likes - Super Instant! [ HQ ]', NULL, '3.8900', '2.9900', 50, 3000, 'api', 'default', '2664', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1016, '6038a4c53298ad2e853bbaac012030b4', 38, 95, 'Twitter REAL and Active Likes (Favorite) | 3K/H - Super Instant! [ UHQ ]', NULL, '3.9000', '3.0000', 20, 3000, 'api', 'default', '67', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1017, '7873e1f015e18c95269fe60dd472ae55', 38, 95, 'Twitter REAL and Active Likes (Favorite) | 1K/H - Super Instant! - No Drop! 🔥🔥', NULL, '5.2000', '4.0000', 20, 1000, 'api', 'default', '595', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1018, 'c5b79250eda82b6c8dfa643773eb9bf4', 38, 95, '_____________________________________________________', NULL, '1299998.7000', '999999.0000', 9999, 99999, 'api', 'default', '1179', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1019, '7c6117bdb26e17bb1f9b9c1c1269632d', 38, 95, 'Twitter REAL ReTweets | Max 1K - Super Instant! 🔥🔥', NULL, '9.1000', '7.0000', 25, 1000, 'api', 'default', '118', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1020, '46bfd7f9a9e0dfc7c4c8acc6662ff8ea', 38, 96, 'Twitter AUTO REAL and Active Likes (Favorite) | 2K/H - Super Instant!  🔥', NULL, '4.1000', '3.1500', 20, 2000, 'api', 'subscriptions', '1244', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1021, 'bfb2ac40f4b887776aa3868773c56cfd', 38, 96, 'Twitter AUTO REAL ReTweets | Max 2K - Super Instant! 🔥🔥', NULL, '9.1000', '7.0000', 20, 2000, 'api', 'subscriptions', '1245', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1022, 'bbe4c2bd0c12531e2653e5ffb60e353e', 38, 97, 'Twitter REAL Followers | Super Fast! | Less Drop!', NULL, '6.4900', '4.9900', 20, 2000, 'api', 'default', '1230', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1023, 'c968c560a5197b09710cb64dc03a8ce4', 38, 97, 'Twitter Real {🇺🇸 𝐔𝐒𝐀} Followers [High Quality] No Drop! [ R30 ]', NULL, '13.5900', '10.4500', 20, 8000, 'api', 'default', '1129', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1024, '101bae677d1812e317a66dc13368b5a1', 38, 98, 'Twitter Real Video Views [ Max 200K ]  Instant Super Fast 🔥', NULL, '0.0700', '0.0500', 10, 200000, 'api', 'default', '371', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1025, '23ec917bf967dbb7832afe5b2f081f27', 38, 98, 'Twitter REAL Video Views  | Max 1M - Super Instant!', NULL, '0.1400', '0.1100', 500, 1000000, 'api', 'default', '185', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1026, '71b5d83eb2a25862f1927dc7ecc33741', 38, 98, 'Twitter Media Views / Interaction | Instant Super Fast | Speed 10M/D', NULL, '0.2300', '0.1800', 100, 200000000, 'api', 'default', '2825', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1027, '1c75eefcb8a0e15b1710b4bb98510929', 38, 98, 'Twitter Real Impressions | Super Fast! 🔥', NULL, '0.3300', '0.2500', 100, 10000000, 'api', 'default', '372', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1028, '0c9ab5a8479c70f600d2c4a6b273ed78', 38, 98, 'Twitter Real Impressions | 0-12H Start', NULL, '0.3000', '0.2300', 100, 10000000, 'api', 'default', '2801', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1029, '511d2919fd5efd042feb31bfde175984', 38, 99, 'Twitter %100 Real HQ Custom Comments 🔥', NULL, '67.6000', '52.0000', 5, 1000, 'api', 'custom_comments', '495', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1030, '6e5598af40e72846f4fbca9579d9f425', 38, 99, 'Twitter %100 Real [ MALE ] HQ Custom Comments 🔥', NULL, '74.1000', '57.0000', 5, 1000, 'api', 'custom_comments', '496', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1031, 'e49f871b30a713a923097358352ad516', 38, 99, 'Twitter %100 Real [ FEMALE ] HQ Custom Comments 🔥', NULL, '74.1000', '57.0000', 5, 1000, 'api', 'custom_comments', '497', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1032, '2875bda050d376a877f60c84c7dfbc75', 38, 100, 'Spotify Greenroom Followers | Instant! | Speed 10K/D', NULL, '20.8000', '16.0000', 50, 10000, 'api', 'default', '2798', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1033, 'e40c3fe463f156323de800d08c6393c4', 38, 101, 'Spotify Artist Followers [1-12H - 10k / Day]', NULL, '0.2600', '0.2000', 500, 50000, 'api', 'default', '2741', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1034, 'd4aa1fce148df712a85bcbccae5191c7', 38, 101, 'Spotify User Followers [1-12H - 10k / Day]', NULL, '0.2600', '0.2000', 500, 50000, 'api', 'default', '2742', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1035, 'fbc81ffd0a8f3f64b8754b4aa3845848', 38, 101, 'Spotify Profile Followers | Super Fast! | Speed 100K/D', NULL, '0.5100', '0.3900', 500, 150000, 'api', 'default', '1223', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1036, 'e545411091442ff68b3e519e34bc1169', 38, 101, 'Spotify PlayList Followers | Super Fast! | Speed 100K/D', NULL, '0.5100', '0.3900', 500, 100000, 'api', 'default', '1224', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1037, '6191d8bb664a7cf35b2a310b75506f5e', 38, 102, 'Spotify Free Plays | Super Fast! | 10K-20K/D', NULL, '1.0100', '0.7800', 1000, 100000000, 'api', 'default', '1225', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1038, '1ac4f2dba14d6fc043e297704233de13', 38, 102, 'Spotify Plays 1k-2k/day [ Non Drop]', NULL, '0.5500', '0.4200', 1000, 100000000, 'api', 'default', '2575', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1039, '5b6e944efdf98e472a8c417b882490f8', 38, 102, 'Spotify Free Plays [1-12H - 3.5k / Day]', NULL, '0.5900', '0.4500', 1000, 10000000, 'api', 'default', '2576', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1040, 'b3ece5bb1bf2ec2de6a3b9633473a14c', 38, 102, 'Spotify Free Plays [USA]  [1-12H - 3.5k / Day]', NULL, '0.7200', '0.5500', 1000, 10000000, 'api', 'default', '2577', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1041, 'f0a07e77a032f9551109755b6cbecfd1', 38, 102, '[EXCLUSIVE] Spotify Search Free Plays', NULL, '1.6300', '1.2500', 1000, 10000000, 'api', 'default', '2578', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1042, '79fa8c83ea97ff36905ec99c209f7165', 38, 102, '[EXCLUSIVE] Spotify Free Plays (Small Amounts)', NULL, '2.9300', '2.2500', 100, 100000, 'api', 'default', '2579', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1043, '84d803e9b86cefcf90dd16d78bfa21ad', 38, 102, 'Spotify Embedded Plays [EXCLUSIVE] [Instant Start]', NULL, '2.0200', '1.5500', 1000, 1000000, 'api', 'default', '2580', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1044, '359f4ac564cae89ed7af6fe7d728ae48', 38, 103, 'Spotify Premium Plays  [1-12H - 3.5k / Day]', NULL, '0.6400', '0.4900', 1000, 1000000, 'api', 'default', '2581', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1045, '7c07628f3cd126ebd674f123f8515b89', 38, 103, 'Spotify Premium Playlist/Album Plays  [1-12H - 3.5k / Day]', NULL, '0.7800', '0.6000', 1000, 1000000, 'api', 'default', '2582', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1046, '93b0ed90e360955a8efe13bcf301133f', 38, 103, 'Spotify Premium Plays [USA]  [1-12H - 3.5k / Day]', NULL, '0.7800', '0.6000', 1000, 1000000, 'api', 'default', '2583', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1047, '45c6676fc61c557401efb84bf0865656', 38, 103, '[EXCLUSIVE] Spotify Search Premium Plays', NULL, '1.5000', '1.1500', 1000, 10000000, 'api', 'default', '2584', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1048, '8bea847be8700280ade479d8fe76bd98', 38, 103, '[EXCLUSIVE] Spotify Premium Plays (Small Amounts)', NULL, '1.5600', '1.2000', 50, 100000000, 'api', 'default', '2585', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1049, '07c4d5ac98171ca231686f1b6934fb1c', 38, 104, 'Spotify Playlist Followers [1-12H - 10k / Day]', NULL, '0.2600', '0.2000', 500, 50000, 'api', 'default', '2743', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1050, 'bf78f3a766900137d68184fd6cc50769', 38, 104, 'Spotify Playlist Followers [1-12H - 150k / Day]', NULL, '0.6400', '0.4900', 500, 100000, 'api', 'default', '2658', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1051, 'f638acda2525b74e4de7ec8437eaecfe', 38, 104, 'Spotify Playlist Followers [USA] [1-12H - 50k / Day]', NULL, '0.8100', '0.6200', 20, 100000, 'api', 'default', '2594', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1052, '7d27e97e9ee08c275f1899bcc4da42df', 38, 105, 'Spotify Playlist Plays  [1-12H - 1.5k / Day]', NULL, '0.7200', '0.5500', 1000, 1000000, 'api', 'default', '2589', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1053, '337be3876d434f4c74e51bd4e8d52e0d', 38, 105, 'Spotify Playlist Plays [USA]  [1-12H - 1.5k / Day]', NULL, '0.7500', '0.5800', 1000, 1000000, 'api', 'default', '2590', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1054, '00ad67ff7003f3dc610661b69d45dcae', 38, 105, '[EXCLUSIVE] Spotify Playlist Plays (Small Amounts)', NULL, '1.5000', '1.1500', 100, 100000, 'api', 'default', '2591', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1055, '4645724c908d5453b8dfe22c7f27dd2a', 38, 106, '[NEW] Spotify Podcast Plays  [1-12H - 2.5k / Day]', NULL, '3.6400', '2.8000', 500, 10000000, 'api', 'default', '2606', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1056, 'debe8d71834387f98ed192a65adbaa0b', 38, 107, 'Spotify Monthly Listeners  [1-12H - 2.5k / Day]', NULL, '0.7800', '0.6000', 1000, 100000, 'api', 'default', '2592', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1057, '95cb1270aeb074d4e0a71faa1511144d', 38, 107, 'Spotify Monthly Listeners [USA]  [1-12H - 2.5k / Day]', NULL, '0.8200', '0.6300', 1000, 100000, 'api', 'default', '2593', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1058, 'a184a68f8ce7eaf50e632b9cc9e5ccdc', 38, 108, 'Spotify Saves [For Track/Album] [1-12H - 50k / Day]', NULL, '2.0200', '1.5500', 100, 100000, 'api', 'default', '2601', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1059, '6d4a913ed192475c1fd4eb64abfb7269', 38, 108, 'Spotify Premium Saves [For Track/Album] [1-12H - 50k / Day]', NULL, '2.2100', '1.7000', 100, 100000, 'api', 'default', '2602', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1060, '6ecd678887be6d8d3aae2f2ecfb32be7', 38, 108, 'Spotify Premium Saves [For Track/Album] [USA] [1-12H - 50k / Day]', NULL, '2.2800', '1.7500', 100, 100000, 'api', 'default', '2603', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1061, 'a41ea0f1d648106d2813aebe5b4449de', 38, 108, 'Spotify Saves [For Track/Album] [USA] [1-12H - 50k / Day]', NULL, '2.0800', '1.6000', 100, 100000, 'api', 'default', '2604', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1062, 'a2569e800fee03e8bc37af26e8973c92', 38, 109, '🇧🇷Spotify BRAZIL Followers [1-12H - 15k / Day]', NULL, '2.6700', '2.0500', 100, 15000, 'api', 'default', '2609', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1063, '2927fa932abbb41ab179190e6b2dfa2e', 38, 109, '🇧🇷Spotify BRAZIL Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2607', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1064, '46a1659e5a6e341809e558f4313e3d0e', 38, 109, '🇧🇷Spotify BRAZIL Playlist Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2608', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1065, 'cd5f11e4e1e416c7a4d99b31589e0faf', 38, 109, '🇧🇷Spotify BRAZIL Saves [For Track] [1-12H - 15k / Day][EXCLUSIVE]', NULL, '3.9700', '3.0500', 100, 15000, 'api', 'default', '2610', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1066, '295932136f715a06fa771fb178dd250f', 38, 109, '🇫🇷Spotify FRANCE (FR) Followers [1-12H - 1.5k-3k / Day]', NULL, '2.6700', '2.0500', 500, 100000, 'api', 'default', '2613', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1067, '8053c979c6583cb5f5ddc6455a255215', 38, 109, '🇫🇷Spotify FRANCE (FR) Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2611', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1068, '7e26560cb65e3b57265bda5c427f0fff', 38, 109, '🇫🇷Spotify FRANCE (FR) Playlist Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 10000000, 'api', 'default', '2612', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1069, '52a8ef700f5686fc5e555f3f7f1f645f', 38, 109, '🇫🇷Spotify FRANCE (FR) Saves [For Track] [1-12H - 15k / Day][EXCLUSIVE]', NULL, '3.9700', '3.0500', 100, 100000, 'api', 'default', '2614', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1070, 'eff84d95d4bb58922259056ee99dc50e', 38, 109, '🇬🇧Spotify United Kingdom (UK) Followers [1-12H - 15k / Day]', NULL, '2.6700', '2.0500', 500, 100000, 'api', 'default', '2617', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1071, '67ad3167005f670ebcd4fb00df4eacc6', 38, 109, '🇬🇧Spotify United Kingdom (UK) Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2615', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(1072, '1b4c991bb9e903c5ad6e60e3a134a483', 38, 109, '🇬🇧Spotify United Kingdom (UK) Playlist Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2616', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1073, '2853e11050cc95dda50eac501c6fff7a', 38, 109, '🇬🇧Spotify United Kingdom (UK) Saves [For Track] [1-12H - 15k / Day]', NULL, '3.9700', '3.0500', 500, 100000, 'api', 'default', '2618', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1074, '18811084d9fd9da1e4820e2f5b83082a', 38, 109, '🇩🇪Spotify German (DE) Followers [1-12H - 15k / Day]', NULL, '2.6700', '2.0500', 100, 100000, 'api', 'default', '2621', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1075, '74d9caad6bfbc10c84fd1791fba0562a', 38, 109, '🇩🇪Spotify German (DE) Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2619', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1076, '42305ca1ff2a1b8c9e5b590aa6d9c9ea', 38, 109, '🇩🇪Spotify German (DE) Playlist Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2620', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1077, 'a52cd09c86ea1e0fe7db84f529e44692', 38, 109, '🇩🇪Spotify German (DE) Saves [1-12H - 15k / Day]', NULL, '3.9700', '3.0500', 100, 100000, 'api', 'default', '2622', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1078, 'ef134c9a748e213b013d13e34724bf80', 38, 109, '🇮🇹Spotify Italy (IT) Followers [1-12H - 15k / Day]', NULL, '2.6700', '2.0500', 500, 100000, 'api', 'default', '2625', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1079, '30c83d4ea07a0169474b5ceea789ba31', 38, 109, '🇮🇹Spotify Italy (IT) Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2623', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1080, '9fd6d41a9f8d9230bf368c49d87658f0', 38, 109, '🇮🇹Spotify Italy (IT) Playlist Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 100000, 'api', 'default', '2624', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1081, '53c465e1ab5df9a4f1e317e9614d9db1', 38, 109, '🇮🇹Spotify Italy (IT) Saves [1-12H - 15k / Day]', NULL, '3.9700', '3.0500', 100, 100000, 'api', 'default', '2626', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1082, 'c0c93275d5d22ae5eee9628e4890d761', 38, 109, '🇨🇦Spotify Canada (CA) Followers [1-12H - 15k / Day]', NULL, '2.6700', '2.0500', 500, 100000, 'api', 'default', '2627', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1083, '6daa7d5f3106a78302643eae4de60e11', 38, 109, '🇨🇦Spotify Canada (CA) Saves [For Track] [1-12H - 15k / Day]', NULL, '3.9700', '3.0500', 100, 100000, 'api', 'default', '2628', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1084, '8a23fbade9bad07a717175ba79585c12', 38, 109, '🇳🇱Spotify Netherlands (NL) Followers [1-12H - 15k / Day]', NULL, '2.6700', '2.0500', 500, 1000000, 'api', 'default', '2629', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1085, 'cfe2f749cf7da1a016c6a17166862971', 38, 109, '🇳🇱Spotify Netherlands (NL) Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 1000000, 'api', 'default', '2631', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1086, '8176be67adee9ea63e6c15c3ab8c3935', 38, 109, '🇳🇱Spotify Netherlands (NL) Playlist Plays [1-12H - 1.5k-3k / Day]', NULL, '3.0600', '2.3500', 500, 1000000, 'api', 'default', '2632', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1087, 'eab0a3d2d79f9e65f0db51a2e29276b1', 38, 109, '🇳🇱Spotify Netherlands (NL) Saves [1-12H - 15k / Day]', NULL, '3.9700', '3.0500', 100, 1000000, 'api', 'default', '2630', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1088, 'dfb371c5007d50d7d33914671450e635', 38, 109, '🇨🇭 Spotify Switzerland (CH) Followers [1-12H - 15k / Day]', NULL, '2.6700', '2.0500', 500, 1000000, 'api', 'default', '2633', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1089, '863b4cbb1e6310162126d8af1a19c849', 38, 109, '🇨🇭 Spotify Switzerland (CH) Saves [For Track] [1-12H - 15k / Day]', NULL, '3.9700', '3.0500', 500, 1000000, 'api', 'default', '2634', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1090, '288f2ce39199c70b37277b7c7b030471', 38, 110, 'Clubhouse Invite [ Put Phone Number With Country Code ]', NULL, '1.2900', '0.9900', 1000, 1000, 'api', 'default', '1203', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1091, 'f3504c6d327d333b180b322822816b1e', 38, 110, 'Clubhouse Invite [ Put Phone Number With Country Code ]', NULL, '2.5900', '1.9900', 1, 1, 'api', 'package', '1195', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1092, 'e4ebcdd4a613ec3f9a27cd1c2e0af592', 38, 111, 'Clubhouse Followers | Speed 1K/D 🔥', NULL, '0.6800', '0.5200', 100, 600, 'api', 'default', '1228', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1093, 'b2c32c7dad879479284da892a0953bcb', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 25K/D 🔥', NULL, '1.6300', '1.2500', 100, 2000, 'api', 'default', '1275', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1094, 'c5ccd112fa5522fbbe581c551fd5e361', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 3K/D 🔥', NULL, '2.2800', '1.7500', 100, 5000, 'api', 'default', '1146', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1095, 'eb35a24adf6741c5713a24b9eb17b319', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 2-3K/D 🔥', NULL, '2.9300', '2.2500', 100, 1000, 'api', 'default', '585', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1096, 'c697a87a6ec00b607dde30870a2d4893', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 10K/D 🔥', NULL, '3.5100', '2.7000', 100, 10000, 'api', 'default', '546', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1097, 'c1868ff359a40775bff7aa1dadc6d84a', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 20K/D 🔥', NULL, '3.8900', '2.9900', 100, 15000, 'api', 'default', '1034', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1098, 'f8f525e8cac725f4fe4d4f20182080f5', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 30K/D 🔥', NULL, '4.5500', '3.5000', 100, 25000, 'api', 'default', '1083', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1099, 'dfa016b2848b93af9ef3ef73b9c43231', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 20K/D 🔥', NULL, '6.2400', '4.8000', 100, 100000, 'api', 'default', '465', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1100, '6ea5553632ff87ad642278c59b7003d7', 38, 111, 'Clubhouse Followers | Super Instant! | Speed 5K/1H 🔥', NULL, '7.1500', '5.5000', 100, 40000, 'api', 'default', '472', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1101, '44e1ba5bb2bac8b268243e5a54458acd', 38, 111, 'Clubhouse Followers | 50 Followers Package', NULL, '0.5900', '0.4500', 1, 1, 'api', 'package', '1139', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1102, '0fd6f9d2e3235524c4707aa2ea657cb1', 38, 111, 'Clubhouse Followers | 100 Followers Package', NULL, '0.7800', '0.6000', 1, 1, 'api', 'package', '437', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1103, '4b62cee3a4fadb84dd5561f4244f33ad', 38, 111, 'Clubhouse Followers | 250 Followers Package', NULL, '1.6300', '1.2500', 1, 1, 'api', 'package', '438', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1104, 'f1496299416d22453dada845108b9b31', 38, 111, 'Clubhouse Followers | 500 Followers Package', NULL, '3.1900', '2.4500', 1, 1, 'api', 'package', '439', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1105, '5cc5e22412b67a87db6fd0f423e0f99a', 38, 111, 'Clubhouse Followers | 750 Followers Package', NULL, '4.7500', '3.6500', 1, 1, 'api', 'package', '440', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1106, 'bae16b6305cf0b4305bb3bc50c710cdc', 38, 111, 'Clubhouse Followers | 1.000 Followers Package', NULL, '6.1100', '4.7000', 1, 1, 'api', 'package', '441', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1107, 'c1e0903ea688273ccbc827dc1ef5aa45', 38, 111, 'Clubhouse Followers | 2.500 Followers Package', NULL, '13.6500', '10.5000', 1, 1, 'api', 'package', '442', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1108, 'd785ccfec0b788f977a03193aa37663e', 38, 111, 'Clubhouse Followers | 5.000 Followers Package', NULL, '24.7000', '19.0000', 1, 1, 'api', 'package', '443', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1109, 'fb2e16b6e12dd1568a6b670b16501d47', 38, 111, 'Clubhouse Followers | 7.500 Followers Package', NULL, '33.8000', '26.0000', 1, 1, 'api', 'package', '444', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1110, '1ff07d2c3246cdc8eb3b16ebd5855f13', 38, 111, 'Clubhouse Followers | 10.000 Followers Package', NULL, '44.2000', '34.0000', 1, 1, 'api', 'package', '445', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1111, '1da6f47b76e58074e83df2db268fec8f', 38, 112, 'Clubhouse Club Members | Super Instant! | Speed 10K/D 🔥', NULL, '12.9900', '9.9900', 100, 10000, 'api', 'default', '1199', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1112, '6af7b516fa9470362b76029d1e650578', 38, 112, 'Clubhouse Club Members | Super Instant! | Speed 3K/D 🔥', NULL, '15.6000', '12.0000', 100, 10000, 'api', 'default', '1200', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1113, '9f358a394909e03b86fb81117a16cf0f', 38, 112, 'Clubhouse Club Members | 100 Member Package', NULL, '2.0200', '1.5500', 1, 1, 'api', 'package', '1186', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1114, '3408577d3531eb1f5a99308c52464358', 38, 112, 'Clubhouse Club Members | 250 Member Package', NULL, '4.5500', '3.5000', 1, 1, 'api', 'package', '1187', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1115, '19ccb4cc63f5b636781ae9a0cf25fc07', 38, 112, 'Clubhouse Club Members | 500 Member Package', NULL, '8.1300', '6.2500', 1, 1, 'api', 'package', '1188', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1116, '9c84adb08a7b4c2bcecd00ed3c0804cd', 38, 112, 'Clubhouse Club Members | 750 Member Package', NULL, '11.3800', '8.7500', 1, 1, 'api', 'package', '1189', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1117, '285eeb8fe38f9e848b363ad1f4e594dc', 38, 112, 'Clubhouse Club Members | 1.000 Member Package', NULL, '14.9500', '11.5000', 1, 1, 'api', 'package', '1190', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1118, 'be91bb9d4adb9eaa871a80629febe71a', 38, 112, 'Clubhouse Club Members | 1.500 Member Package', NULL, '21.2600', '16.3500', 1, 1, 'api', 'package', '1191', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1119, 'fb1dffa01bd7931e84b646d5320a34ff', 38, 112, 'Clubhouse Club Members | 2.000 Member Package', NULL, '27.9500', '21.5000', 1, 1, 'api', 'package', '1192', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1120, '1009c2570fff59a2f3953af70da199e9', 38, 112, 'Clubhouse Club Members | 2.500 Member Package', NULL, '34.4500', '26.5000', 1, 1, 'api', 'package', '1193', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1121, '8b42e74e48aa52a6d686287326806679', 38, 112, 'Clubhouse Club Members | 3.000 Member Package', NULL, '42.9000', '33.0000', 1, 1, 'api', 'package', '1194', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1122, '0bce1f97674003596e5809a1229a75cf', 38, 113, 'Discord Spam Bomb Friend Request | INSTANT | Super Fast', NULL, '2.5900', '1.9900', 1000, 2000, 'api', 'default', '2790', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1123, '96c075d7139c16b42d5e7162b6c0b1f0', 38, 113, 'Discord  Server Real Mixed Members | Speed 1K/D', NULL, '3.7100', '2.8500', 1000, 1000, 'api', 'default', '2642', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1124, 'b1e585a7be32bbc44ea724e84f215b3d', 38, 113, 'Discord  Server Member 𝐑𝐄𝗔𝐋 Looking | Speed 1K/D', NULL, '4.7500', '3.6500', 100, 400000, 'api', 'default', '570', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1125, 'bd106b4cb1cd834e9dc60da837416547', 38, 113, 'Discord Server Member 𝐑𝐄𝗔𝐋 | Speed 1-2K/D', NULL, '4.8800', '3.7500', 100, 10000, 'api', 'default', '571', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1126, '1252b2a3884d2dd809e8fa40bc6cb9e4', 38, 113, 'Discord Server Member 𝐑𝐄𝗔𝐋 | Speed 3K/D', NULL, '5.0100', '3.8500', 100, 5000, 'api', 'default', '572', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1127, '82fa6b20e8b42882f328354036d57529', 38, 113, '🔥 Private! Discord [ Female ] Server Member 𝐑𝐄𝗔𝐋', NULL, '5.5300', '4.2500', 100, 2000, 'api', 'default', '573', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1128, '3990a6ccdfac5b9503d414989e58c3a6', 38, 113, '🔥 Private! Discord [ Male ] Server Member 𝐑𝐄𝗔𝐋', NULL, '5.5300', '4.2500', 100, 2000, 'api', 'default', '574', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1129, 'ef396c6cb2f530dcf15b49a2596aeb72', 38, 113, '🔥 Private! Discord Friend Request 𝐑𝐄𝗔𝐋', NULL, '3.7700', '2.9000', 100, 2000, 'api', 'default', '575', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1130, '70a042eaa973dc2fe502535a6837859c', 38, 114, 'Twitch Followers | Instant Super Fast! | Speed 5-10K/D', NULL, '0.3000', '0.2300', 100, 10000, 'api', 'default', '590', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1131, '218fb5b20eb5a33fcfd30d3197337fcd', 38, 114, 'Twitch Followers | Instant Super Fast! | Speed 15K/D', NULL, '0.2500', '0.1900', 100, 15000, 'api', 'default', '1222', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1132, 'c936e48521b9b395337d68b048bbf501', 38, 114, 'Twitch Followers | Instant Super Fast! | Speed 20K/D', NULL, '0.3300', '0.2500', 100, 20000, 'api', 'default', '1117', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1133, 'ddd7dd86aa9428d33ab53618e0cd7b2c', 38, 114, 'Twitch Followers | Instant Super Fast! | Speed 100K/D - 𝐍𝐨 𝐃𝐫𝐨𝐩  [ R30 ]', NULL, '0.4600', '0.3500', 100, 300000, 'api', 'default', '344', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1134, '0b13a4caa6a13ca55c9dfe14f9bb8e7e', 38, 114, 'Twitch Followers | Instant Super Fast! | Speed 300K/D - 𝐍𝐨 𝐃𝐫𝐨𝐩  [ R60 ]', NULL, '0.5900', '0.4500', 100, 500000, 'api', 'default', '345', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1135, 'e201b33b60aa2b23281a5672885a3b3a', 38, 114, 'Twitch Followers | Instant Super Fast! | Speed 500K/D - 𝐍𝐨 𝐃𝐫𝐨𝐩  [ R90 ]', NULL, '0.7200', '0.5500', 100, 1000000, 'api', 'default', '346', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1136, '2f6a126285e924e75eb81c7de0f79d1c', 38, 115, 'Telegram Post Views [ Last 1 Posts ]', NULL, '0.0200', '0.0140', 100, 15000, 'api', 'default', '2813', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1137, '91bba1e9e36da37bb6e472134d9dbbaa', 38, 115, 'Telegram Post Views [ Last 1 Posts ]', NULL, '0.0300', '0.0200', 50, 250000, 'api', 'default', '2814', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1138, '4d0036c32cfb01518ec9a010118192b6', 38, 115, 'Telegram Post Views [ Last 5 Posts ]', NULL, '0.1300', '0.1000', 100, 250000, 'api', 'default', '2815', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1139, '0e7d1d1de3c7111ed67180cd9eaac1f2', 38, 115, 'Telegram Post Views [ Last 10 Posts ]', NULL, '0.2100', '0.1600', 100, 250000, 'api', 'default', '2816', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1140, '727c7e45d79b157c96c51befafe7a478', 38, 115, 'Telegram Post Views [ Last 20 Posts ]', NULL, '0.3900', '0.3000', 100, 250000, 'api', 'default', '2817', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1141, 'e572170f58222d2fdeabdd7a59d42da8', 38, 115, 'Telegram Channel/Group Members | Speed 30K/D', NULL, '1.1800', '0.9100', 10, 40000, 'api', 'default', '2805', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1142, 'd812d9a62ca64161f7564162e2f0e178', 38, 115, 'Telegram Channel/Group Members | Speed 100K/D', NULL, '1.4400', '1.1100', 10, 250000, 'api', 'default', '2806', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1143, '67655aa2affaee1812d7e55d9fcd98dd', 38, 115, 'Telegram Channel/Group Members | Speed 200K/D', NULL, '1.5100', '1.1600', 10, 500000, 'api', 'default', '2807', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1144, '074de2f854dcfc8c42ba553f86087d09', 38, 115, 'Telegram Channel/Group Members | Speed 50K/D | R30', NULL, '1.7900', '1.3800', 10, 100000, 'api', 'default', '2811', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1145, 'cb04aec59365521a4e77991ad277ceb5', 38, 115, '🇺🇸 Telegram [ USA ] Channel/Group Members | Speed 10K/D', NULL, '1.8200', '1.4000', 10, 25000, 'api', 'default', '2809', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1146, '47b7af578ff1f9c878d3b7ed1b29099c', 38, 115, '🇷🇺 Telegram [ RUSSIA ] Channel/Group Members | Speed 10K/D', NULL, '1.8200', '1.4000', 10, 25000, 'api', 'default', '2808', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1147, 'cf9eb3b30ac1dbc463bc745942f4b572', 38, 115, '🇸🇦 Telegram [ ARAB ] Channel/Group Members | Speed 10K/D', NULL, '2.0700', '1.5900', 10, 25000, 'api', 'default', '2818', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1148, 'f7cb99f631a535188ff270df632d735d', 38, 115, '🇮🇩 Telegram [ INDONESIA ] Channel/Group Members | Speed 10K/D', NULL, '1.8200', '1.4000', 10, 25000, 'api', 'default', '2810', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1149, 'c41e82e1572712244c5b50823525df9d', 38, 116, 'Reddit Real Upvotes | Lifetime Guaranteed | Speed 50-100 per day', NULL, '6.8300', '5.2500', 20, 4000, 'api', 'default', '2791', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1150, '5f0358996f4888774afbc3118e359ec1', 38, 116, 'Reddit Real Subscribers | Lifetime Guaranteed | Speed 50-100 per day', NULL, '9.7400', '7.4900', 20, 4000, 'api', 'default', '2792', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1151, 'f5593e2adcd88cc31482655b413d32ac', 38, 117, 'Snapchat Followers/Friends - Add Username', NULL, '39.0000', '30.0000', 25, 1000, 'api', 'default', '1280', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1152, 'b0e425773f18212cad156537a55c513c', 38, 117, 'Snapchat Followers/Friends - Add Username - USA', NULL, '52.0000', '40.0000', 25, 250, 'api', 'default', '1281', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1153, '0e4419d8caa0e6f6e11140136ce888db', 38, 117, 'Snapchat USA Real Likes | Speed 450/D - Add Post Link', NULL, '45.5000', '35.0000', 25, 450, 'api', 'default', '2574', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1154, '84bd5247552bab97ea2a286f85c63387', 38, 118, 'Onlyfans Likes | No Drop | Speed 10K/D - 365 Days Refill Guarantee', NULL, '15.6000', '12.0000', 300, 50000, 'api', 'default', '431', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1155, 'e5c1a59ad2aee9ce56cd57a8be88deca', 38, 118, 'Onlyfans Comments | No Drop | Speed 10K/D - 365 Days Refill Guarantee', NULL, '23.4000', '18.0000', 100, 50000, 'api', 'default', '432', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1156, 'cfe49ff30328db19eb0ef05ee61feb32', 38, 119, '🔍Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.5900', '0.4500', 1000, 1000000, 'api', 'default', '206', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1157, '4e289711a673e45fe3070b4433221b7c', 38, 119, 'Traffic from YouTube', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '208', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1158, 'c55b6ab214cbeb2abc51bead3bf2c0a3', 38, 119, 'Traffic from Facebook', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '209', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1159, 'b6480895fa7daed81c83389b276348c6', 38, 119, 'Traffic from Instagram', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '210', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1160, '693ecf9e3c1f304dfe8f662f5d38f563', 38, 119, 'Traffic from Twitter', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '211', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1161, 'e7a4fe05215001b00ea7e79bc2ff30c4', 38, 119, 'Traffic from Twitch.tv', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '213', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1162, '9f17c64da5631dc5020efa1e9b24f06e', 38, 119, 'Traffic from VK.com', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '237', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1163, 'b5d300a6f54c26e65a804d812605ca3a', 38, 119, 'Traffic from Yandex.com', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '248', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1164, '9e6e3fd1617c193d4a3edd4951b10d69', 38, 119, 'Traffic from Fiverr', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '238', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1165, 'e818a5527d548c8c70cbb0dad473b75e', 38, 119, 'Traffic from Wikipedia', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '239', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1166, '0da95d2d7108c5b3d8cd72e8764979b8', 38, 119, 'Traffic from Amazon.com', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '212', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1167, 'c8b98b208166328329714ff22a1a7976', 38, 119, 'Traffic from Yahoo', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '240', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1168, 'a5300ffba87196a6fda0fba4f5a56d2a', 38, 119, 'Traffic from Bing.com', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '241', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1169, '9dd9c3fbb65cc05bc61c5b4a1eb9020b', 38, 119, 'Traffic from LinkedIn', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '242', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1170, 'aec626f9bb7707c1a093ae32e2bde673', 38, 119, 'Traffic from Pinterest', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '244', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1171, '8aceda07367830f4cc88ae2101b04f0e', 38, 119, 'Traffic from Tumblr', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '245', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1172, 'dd79ddba5753166124010d1abb989b30', 38, 119, 'Traffic from Blogspot.com', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '243', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1173, '032cf5d0e1499639c898a3aef4e30521', 38, 119, 'Traffic from Quora', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '246', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1174, 'b1afc916f8b24c781118ef4411aacd3a', 38, 119, 'Traffic from Reddit', NULL, '0.2700', '0.2100', 1000, 1000000, 'api', 'default', '247', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1175, 'c163de2bc81f0ced6f37dfb186ac8a7e', 38, 120, '🔍 WorldWide Traffic from Google.com [Organic] [Custom Keywords]', NULL, '0.4700', '0.3600', 1000, 1000000, 'api', 'default', '1282', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1176, '880e8fe3b5759a31b3ca0fc11cb8e744', 38, 120, '⚡ WorldWide Traffic - Direct Visits', NULL, '0.2700', '0.2100', 500, 1000000, 'api', 'default', '1283', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1177, '359e95c6a771ec6f6274c2c606602522', 38, 120, '⚡ WorldWide Traffic from Google.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1284', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1178, 'fd8f413a563e7a37b3d49f0bc681161f', 38, 120, '⚡ WorldWide Traffic from Facebook', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1285', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1179, '82ca06af3e5ab8d51c72c49fd8d40035', 38, 120, '⚡ WorldWide Traffic from Instagram', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1286', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1180, '90a62bbdc27920f1c34155fb5886eced', 38, 120, 'WorldWide Traffic from Quora', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1287', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1181, 'c21d6c81bcc11492d85d7a5d8e447d4d', 38, 120, 'WorldWide Traffic from Blogspot/Blogger.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1288', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1182, '152d55190400ed50a3804ba4dac97c96', 38, 120, 'WorldWide Traffic from Yandex.ru', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1289', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1183, '5e4de020ef3ed271bff7ccb00d09c548', 38, 120, 'WorldWide Traffic from Wikipedia', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1290', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1184, 'eb504afcf893d52d1329930c1990fd6f', 38, 120, 'WorldWide Traffic from Reddit', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1291', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1185, '14c93af187f55e3082f15b5be98658dc', 38, 120, 'WorldWide Traffic from YouTube', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1292', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1186, 'e2e4a90cc4b598524976311974bdf4a2', 38, 120, 'WorldWide Traffic from Twitter', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1293', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1187, '1f4244a30041983b99442b8a96eda7b3', 38, 120, 'WorldWide Traffic from Pinterest', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1294', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1188, 'eea3d88afda9118161be638fa7b5ef27', 38, 120, 'WorldWide Traffic from Tumblr', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1295', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1189, 'fc513dd790a855f3c94e034cbbe5e250', 38, 120, 'WorldWide Traffic from Sina Weibo', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1296', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1190, '18dd7d9a3644d8f8a7fd30756b57309a', 38, 120, 'WorldWide Traffic from LinkedIn', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1297', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1191, 'ec2ef21b3f2c9f2e37005739fe70f0fd', 38, 120, 'WorldWide Traffic from StumbleUpon', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1298', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1192, 'd4302dcbb8351d16a10b53235ed9fcc5', 38, 120, 'WorldWide Traffic from Amazon.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1299', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1193, '896f7c6f0c3215e120043245ca97ac2b', 38, 120, 'WorldWide Traffic from Twitch.TV', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1300', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1194, '61c915460c6c57272370f095c2e69118', 38, 120, 'WorldWide Traffic from Bing.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1301', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1195, '2f3803b9e81e74346b1ef8375b56a94d', 38, 120, 'WorldWide Traffic from eBay.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1302', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1196, '901aa6c7e9d8821fdf48f132599b088f', 38, 120, 'WorldWide Traffic from OK.ru', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1303', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1197, '523150f49da93506947b8f0af2e81fe6', 38, 120, 'WorldWide Traffic from IMGur', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1304', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1198, '97aeed87b7b84b3275beb6028631348f', 38, 120, 'WorldWide Traffic from BuySellAds.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1305', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1199, 'd585d7c5b3e79792f4acba22b9386367', 38, 120, 'WorldWide Traffic from Craigslist', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1306', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1200, 'c9e43a50c9490b1fb4122ab4efc766ff', 38, 120, 'WorldWide Traffic from Fiverr.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1307', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1201, 'b687523723b7d0f3ae18e4b5ccdfb4b5', 38, 120, 'WorldWide Traffic from Yelp', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1308', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1202, '71f2a73ba2a054a02dbf1ff4d7fcbd7f', 38, 120, 'WorldWide Traffic from VK.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1309', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1203, '55aa9c342ab2aeef5c5ae25c9248277d', 38, 120, 'WorldWide Traffic from Yahoo', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1310', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1204, '443a15cadd59d8001b5e8e4404a57774', 38, 120, 'WorldWide Traffic from Live.com', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1311', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1205, '909e167c76d55d9570acc2eb9a5447f0', 38, 120, 'WorldWide Traffic from Netflix', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1312', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1206, '4b444111e0cb9e12db20c8d8611869e5', 38, 120, 'WorldWide Traffic from MSN', NULL, '0.3600', '0.2800', 500, 1000000, 'api', 'default', '1313', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1207, 'b261d7aad6ee939e02e234c2c6cacc5d', 38, 121, '🔍 USA Traffic from Google.com [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1314', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1208, '3ba4c9066ab3405ad915a8f90d5c2427', 38, 121, '⚡ USA Traffic from Google.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1315', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1209, 'a5b314992673a8993962a28ff66998da', 38, 121, '⚡ USA Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1316', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1210, '9cf9150a0650617a233286310e7bf6d2', 38, 121, '⚡ USA Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1317', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1211, 'be75f6cb0854e9c35a1a078997fef7d7', 38, 121, 'USA Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1318', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1212, '7adafb54b236dc0f5334b4d903a406b7', 38, 121, 'USA Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1319', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1213, '085d343d787ba1b8f21ee3ad5db64a2c', 38, 121, 'USA Traffic from Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1320', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1214, '646e645a756ee76926aadd1d0e52ef76', 38, 121, 'USA Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1321', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1215, '732ffabf36caac8a9d9d1641c741a105', 38, 121, 'USA Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1322', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1216, 'dbb89665cdc597a13f382eb2dc6e56a1', 38, 121, 'USA Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1323', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1217, '2ed8f2fcf638cb51f6760ce4349ce220', 38, 121, 'USA Traffic from Blogspot/Blogger.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1324', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1218, '019ca1da4117bcd9ff8845a4d379709f', 38, 121, 'USA Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1325', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1219, '8994e1170c0bd2b210526a84ac5dbe27', 38, 121, 'USA Traffic from Baidu', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1326', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1220, '47186ec6139a8250057927072a89f7b8', 38, 121, 'USA Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1327', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1221, 'b82876535e8255fa53af2623c08d6739', 38, 121, 'USA Traffic from Yahoo.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1328', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1222, '8026ffc4200c1d82ea166cbf29d9efdb', 38, 121, 'USA Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1329', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1223, '4e48c863f680b3dd4ee5be480a876776', 38, 121, 'USA Traffic from fandom.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1330', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1224, '0332ee7627a21c65f01fd43748a24602', 38, 121, 'USA Traffic from NYTimes.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1331', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1225, '7d27bfd6b89f8efa1741f98138a7c8b5', 38, 121, 'USA Traffic from CNN.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1332', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1226, 'fba608368a5c608537242ea0343737df', 38, 121, 'USA Traffic from Fiverr.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1333', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1227, 'e4202a1feb9335812f1a27065baa1933', 38, 121, 'USA Traffic from Linkedin', NULL, '0.6000', '0.4600', 500, 100000, 'api', 'default', '1334', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1228, '74063fe2e5932f21a9cc35f5bbbba748', 38, 122, '🔍 UK Traffic from Google.com [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1356', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1229, 'a236070b51b9d46ca76fe6aa064ab6f5', 38, 122, '⚡ UK Traffic from Google.co.uk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1357', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1230, '19f2c74c7d1ab5380168369e87a930da', 38, 122, 'UK Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1358', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1231, 'd111a034c540f0374ce5c1d74a782451', 38, 122, 'UK Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1359', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1232, '1a52b89f6de4b51a2f43caab874a70e4', 38, 122, 'UK Traffic from Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1360', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1233, '37453205933304e1d0858a1f48e949ec', 38, 122, 'UK Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1361', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1234, '98dad4cbcc1edf7d2f003c2e066724f2', 38, 122, 'UK Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1362', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1235, '1e38e0a33d3325ee49150e9461413e1f', 38, 122, 'UK Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1363', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1236, '331e918bb4e6a874ab2a426bb7e2c54f', 38, 122, 'UK Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1364', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1237, 'b93da5bd35c76d3bba1dce10e6d13907', 38, 122, 'UK Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1365', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1238, '26faf41c32eb2b8a6d5cf8e5db001ed7', 38, 122, 'UK Traffic from Blogspot/Blogger.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1366', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1239, 'f1628130136a5202108efa2e1099af1e', 38, 122, 'UK Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1367', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1240, 'e3d8b99c19c6aa51820a8dd3b5873100', 38, 122, 'UK Traffic from Amazon.co.uk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1368', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1241, 'f5d22dcdfb9bd6f9886941ca31d6bf83', 38, 122, 'UK Traffic from Ebay.co.uk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1369', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1242, 'fbc38944255b693d04f3482526f75748', 38, 122, 'UK Traffic from BBC.co.uk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1370', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1243, '1adb237ad37e81eaae7c2afcf51391a6', 38, 122, 'UK Traffic from Theguardian.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1371', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1244, '74dfb822eade29e163116702bef2d976', 38, 122, 'UK Traffic from Dailymail.co.uk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1372', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1245, '2a347f85886a75e3885e1e116e71e46e', 38, 122, 'UK Traffic from Gumtree.co.uk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1373', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1246, '1121f37c978b8ea0f47b766014df4d8b', 38, 122, 'UK Traffic from Fiverr.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1374', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1247, '20deb10a9cf38c707fedc87f3990d17c', 38, 122, 'UK Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1375', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1248, '799909ca07ab0823006f186f00be15bf', 38, 123, '🔍 Canada Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.6500', '0.5000', 1000, 1000000, 'api', 'default', '1396', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1249, 'e5d3cbadda4e9c72654c4a6cdef23cfa', 38, 123, 'Canada Traffic from Google.ca', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1397', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1250, '73b8b29a8d0af4600f4ebd7edc647321', 38, 123, 'Canada Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1398', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1251, 'a1d5d052d58201d4b7248deb48bfdd0b', 38, 123, 'Canada Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1399', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1252, '385cb87ada4c67b9b052b49c9ae1a322', 38, 123, 'Canada Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1400', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1253, 'a0de0da3852cc6aea3cf6b3a0dd052cc', 38, 123, 'Canada Traffic from Pinterest.ca', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1401', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1254, 'e9e309eafca8cf17660eff11d2a4d5a7', 38, 123, 'Canada Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1402', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1255, '00ee3e498c6168ee0f28997856431c01', 38, 123, 'Canada Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1403', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1256, 'a7f259b00e1f63442b51d7113dea5c74', 38, 123, 'Canada Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1404', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1257, 'ea92b5b982ee634ebbd35300f9b072a1', 38, 123, 'Canada Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1405', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1258, 'b366c1753a36dc2c9a58c911d05ef786', 38, 123, 'Canada Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1406', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1259, '67d7e57c5df1b8189b84dc06ab053a68', 38, 123, 'Canada Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1407', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1260, '6fc8f27f0e9eee81b3c223eac6d99c6e', 38, 123, 'Canada Traffic from Amazon.ca', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1408', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1261, 'e04550a301659c2344bad746b78f9d72', 38, 123, 'Canada Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1409', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1262, 'e2351f703ab17ed08fb3c0e0bf15aff6', 38, 123, 'Canada Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1410', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1263, 'a2d7ddc3a0b4f85f743062790089b013', 38, 123, 'Canada Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1411', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1264, '9b2cdfe43e56fa0704dcfe5c7649a09b', 38, 123, 'Canada Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1412', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1265, '425c8cf81150a2477a4043600f3a4263', 38, 123, 'Canada Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1413', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1266, '26dc078d1c0e41cb1ef34bdaf13121f7', 38, 123, 'Canada Traffic from Kijiji.ca', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1414', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1267, '4822e296207de015a07d3f3b05dbd0f5', 38, 123, 'Canada Traffic from Narcity.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1415', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1268, '9fa99b0ad334cd6050e10a0ead876339', 38, 124, '🔍 India Traffic from Google.com [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1492', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1269, 'a18b6cc53297873d110a2a4250f24d2b', 38, 124, 'India Traffic from Google.co.in', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1493', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1270, '71c97b2ae892c6f68e70b45c67870772', 38, 124, 'India Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1494', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1271, 'ac1ae02617280931d1af173582c78258', 38, 124, 'India Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1495', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1272, '78d9ae7c8c7b76d0fb4a667d5a6c309d', 38, 124, 'India Traffic from Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1496', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1273, '8a0749b1f8f50ed00922e3623b4d19eb', 38, 124, 'India Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1497', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1274, 'bcef9e68a8fdda3250d4b9882563f65b', 38, 124, 'India Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1498', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1275, 'cbfd09e542a5d9c96a1217808b97625f', 38, 124, 'India Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1499', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1276, '62e019ed68a4c2e6a7ff676f8087239c', 38, 124, 'India Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1500', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1277, '6a14ba3f22d0b92cf833972d1d1ae103', 38, 124, 'India Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1501', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1278, '706dcddea4e4db282e63eb26bae0eaea', 38, 124, 'India Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1502', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1279, '97ceb8a4ef365b5841a462497746aa87', 38, 124, 'India Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1503', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1280, '48886d8112fe611bd88da2dc370870b2', 38, 124, 'India Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1504', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1281, 'ecaa1cd28f6a42edfe9a167657744677', 38, 124, 'India Traffic from Amazon.in', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1505', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1282, '87b9ca966a4906fc01df4011cccadec7', 38, 124, 'India Traffic from Flipkart.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1506', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1283, 'a9fb4017a793be8271cb4358ac9b8f8d', 38, 124, 'India Traffic from Hotstar.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1507', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1284, 'fa2c113bfa575163d248ed707eba1fbd', 38, 124, 'India Traffic from Indiatimes.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1508', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1285, '924e5219a7c09137eb8ddd3b5c0051ab', 38, 124, 'India Traffic from NDTV.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1509', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1286, 'a7550967bc11acb271d4042894f5c849', 38, 124, 'India Traffic from sarkariresult.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1510', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1287, '50be603e18b324c44187200b087544d6', 38, 124, 'India Traffic from dream11.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1511', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1288, 'f47a4f94f41cba68f93fa56f6e3202c6', 38, 124, 'India Traffic from news18.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1512', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1289, 'e70c8c5af4886772d71d6f3a2b47d4f0', 38, 124, 'India Traffic from snapdeal.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1513', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1290, '86bb96244d0a60aa045a1da6dccb6cf8', 38, 125, '🔍Brazil Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1536', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1291, '651a461f9afaa2a5f0b0d3e7f17be356', 38, 125, 'Brazil Traffic from Google.com.br', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1537', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1292, 'bdecd6922e682acac01f44989ada8827', 38, 125, 'Brazil Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1538', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1293, 'ad2c427ef3a88239acf358a09989f040', 38, 125, 'Brazil Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1539', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1294, 'ad118b5b897355500221439d68f744cb', 38, 125, 'Brazil Traffic from Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1540', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1295, '8e6c8a0cb9093af7239f6af8b5cddc4d', 38, 125, 'Brazil Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1541', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1296, '33f11a52ab652bf48f9f94e84d4b5f71', 38, 125, 'Brazil Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1542', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1297, '83c278fd3b9ab15a07e962f02515877d', 38, 125, 'Brazil Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1543', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1298, '7499be6016cdbbdd7fe68510342e8d4a', 38, 125, 'Brazil Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1544', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1299, 'c176e8228455f0d81bc7741a17b6fea8', 38, 125, 'Brazil Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1545', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1300, '3faee306c25f52410a6905524fe6a574', 38, 125, 'Brazil Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1546', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1301, 'd8e5fe33142e3f0b4efcd57c18f55b32', 38, 125, 'Brazil Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1547', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1302, '8836ca7451b60a6c677bc3d325d20cf2', 38, 125, 'Brazil Traffic from Globo.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1548', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1303, '73da109820f5d88b737cb7b5ba8adc66', 38, 125, 'Brazil Traffic from Mercadolivre.com.br', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1549', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1304, 'e95c6d3fcad6a44bf23c7a258aec205f', 38, 125, 'Brazil Traffic from Olx.com.br', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1550', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1305, '9cd837468fc519e8c3ecc776137e771d', 38, 125, 'Brazil Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1551', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1306, 'd06f23d15ddfc5944b48b0feed3750c5', 38, 126, '🔍France Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 500, 1000000, 'api', 'default', '1656', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(1307, 'bba3310836dc10977b3d066d964210b0', 38, 126, 'France Traffic from Google.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1657', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1308, '42e8e6b968838884828ff222f8e4657a', 38, 126, 'France Traffic from Qwant.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1658', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1309, '8e15007aecedced8a3607d04bb6cbeec', 38, 126, 'France Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1659', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1310, '72a5084f1e3706e35272785afb328918', 38, 126, 'France Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1660', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1311, 'dcda3b0f1ad9f2595d37a4bb8b9f01a7', 38, 126, 'France Traffic from Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1661', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1312, '9a20345c29432da74d6bf1aa22ce6d9d', 38, 126, 'France Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1662', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1313, '2475b9ba366b2ee58fa8207656e8024f', 38, 126, 'France Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1663', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1314, '1c9044b4af0e08af27a84ed78a7c7f71', 38, 126, 'France Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1664', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1315, '9aafece13543ee3fe7cfe7a88d9e8561', 38, 126, 'France Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1665', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1316, 'd7a61c4b95ccfef4174c702415f193d2', 38, 126, 'France Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1666', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1317, '32d644287aab424890921db6e9996803', 38, 126, 'France Traffic from Blogger.com', NULL, '0.6000', '0.4600', 500, 20000, 'api', 'default', '1667', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1318, 'e7cd27b45418a1f820fe20019955e7e7', 38, 126, 'France Traffic from Amazon.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1668', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1319, '082a12c07979f8c673a7b10ee323db31', 38, 126, 'France Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1669', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1320, 'afb2041c034c39137ded2f61d9c17461', 38, 126, 'France Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1670', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1321, 'b44092c533f82875960725eae00c8415', 38, 126, 'France Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1671', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1322, '2e9cdf4c02b4973473757cf52083de84', 38, 126, 'France Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1672', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1323, '1e7ac5f75ac0fcb63bd0eca907453f50', 38, 126, 'France Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1673', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1324, '46253bfd602719a3c2f13438f2adf48b', 38, 126, 'France Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1674', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1325, '2597da180887625d2b41785ab3d3a9d8', 38, 126, 'France Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1675', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1326, '5b2c9a26f52ecede7400070efb88a6dd', 38, 126, 'France Traffic from eBay.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1676', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1327, 'eae0ded994e2a3506088b6eb9c0c1d62', 38, 126, 'France Traffic from Leboncoin.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1677', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1328, '805cb294a5340472f12ac48322f9d510', 38, 126, 'France Traffic from Cdiscount.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1678', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1329, 'dea88cd90919e998099b943ce7fd5319', 38, 126, 'France Traffic from LeFigaro.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1679', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1330, '940d993a6f928c4b5f15997ba75f54ca', 38, 126, 'France Traffic from LeMonde.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1680', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1331, '9c71c239133336f5bf84f600a2e3c15c', 38, 126, 'France Traffic from Francetvinfo.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1681', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1332, '26a6d9541e89069be3a35bf052783da2', 38, 126, 'France Traffic from 20minutes.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1682', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1333, 'f5367714f01c98a48421fc3e7778f200', 38, 126, 'France Traffic from Ouest-france.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1683', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1334, '2d72b5ad81fb73e6e96063e1075ce13f', 38, 126, 'France Traffic from Jeuxvideo.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1684', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1335, '9fd4800cdcd5719a654d2b6b915f97c6', 38, 126, 'France Traffic from LeParisien.fr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1685', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1336, 'eb1b85600dd4b5da5e1f624e7ec1c101', 38, 127, '🔍Russia Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1748', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1337, '4fd6ae4644c4a8e894d4b21c64638898', 38, 127, 'Russia Traffic from Google.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1749', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1338, '20bc9240b24abc08f514a0c70ba755d7', 38, 127, 'Russia Traffic from Yandex.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1750', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1339, '639e2891afa2691847b45f35126454a2', 38, 127, 'Russia Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1751', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1340, 'f5d397e0fccd4fb92ddb5ad43dceaf07', 38, 127, 'Russia Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1752', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1341, 'e158fc2fb4358a0099c05b761cacb308', 38, 127, 'Russia Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1753', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1342, 'e56c7a4738c7734648c6e9cd2a63ebc5', 38, 127, 'Russia Traffic from Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1754', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1343, 'd03cb4c56dd474d6987c5a205bebbdd3', 38, 127, 'Russia Traffic from Twitter', NULL, '0.6400', '0.4900', 500, 1000000, 'api', 'default', '1755', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1344, '712711b53f25347596cdd2fcc8cd3f4f', 38, 127, 'Russia Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1756', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1345, 'dcbdf8b0ea5fdb177b361035cdef1f02', 38, 127, 'Russia Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1757', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1346, '32022075d1a4cd96fdedc0694f6aad40', 38, 127, 'Russia Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1758', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1347, '252f8d533870548d0bab1d1606c71b0a', 38, 127, 'Russia Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1759', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1348, '05525b78a375ea4e301990541e2312c0', 38, 127, 'Russia Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 50000, 'api', 'default', '1760', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1349, '052c79a588a2e1ab0d8abdea8bfe6190', 38, 127, 'Russia Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1761', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1350, '98ab668c2285e81636b624465bbca709', 38, 127, 'Russia Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1762', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1351, 'c048c3f768611cba9cc54e09605e331f', 38, 127, 'Russia Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1763', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1352, 'b0dd4d7d2f9ce141eef40ce50eb1e7b4', 38, 127, 'Russia Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1764', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1353, '389f5e398653cd2529b9bb815cf7d0d4', 38, 127, 'Russia Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1765', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1354, '211158ffffb3783dccaecc187c2bc114', 38, 127, 'Russia Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1766', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1355, '076321835192477218861cc3bf9bf000', 38, 127, 'Russia Traffic from eBay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1767', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1356, 'e9873870041ab58028635e37c8a5c8f9', 38, 127, 'Russia Traffic from Mail.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1768', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1357, '0cc1f78762e2305f476bc2c6b10155f4', 38, 127, 'Russia Traffic from Avito.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1769', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1358, '44d54019155678697823034ecd50c0b5', 38, 127, 'Russia Traffic from OK.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1770', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1359, '4bdf18163b4385bae095c5193c4aa268', 38, 127, 'Russia Traffic from Drom.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1771', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1360, '753434c4394ee2c1f51c2796b5adbd7d', 38, 127, 'Russia Traffic from Ria.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1772', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1361, 'd28b2deefc217f588240bdc6325351d3', 38, 127, 'Russia Traffic from Pikabu.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1773', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1362, 'f2dbeaf3d33042c8a9adb45958dfb9bb', 38, 127, 'Russia Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1778', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1363, '1a872f9878f1c8c68e6f4c5965ac82b1', 38, 128, '🔍 Netherlands Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1800', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1364, '0d28320554e0c1d6df57843b976bac57', 38, 128, 'Netherlands Traffic from Google.nl', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1801', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1365, '7d1c074a955c2eb5868bb1124e65e7eb', 38, 128, 'Netherlands Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1802', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1366, '69968aa1d42dca30700da1438f7e6893', 38, 128, 'Netherlands Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1803', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1367, '0ba8fc976980b3befc99c1e54ef63ca9', 38, 128, 'Netherlands Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1804', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1368, '3f1758bc804c73d452f98fe52c123e03', 38, 128, 'Netherlands Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1805', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1369, '92b7e3c4ad84f256646fd119ef35cd99', 38, 128, 'Netherlands Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1806', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1370, 'db756ad11bb256be31caa10118cc78f7', 38, 128, 'Netherlands Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1807', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1371, 'e8bfae9a040f15eca5f1fee85eff04b2', 38, 128, 'Netherlands Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1808', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1372, '9ed41ff73893551c1776123697b0dcef', 38, 128, 'Netherlands Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1809', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1373, '5864a65117c1d8608e5e94a9a48901e5', 38, 128, 'Netherlands Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1810', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1374, '71e4cb175bc33c5e33194d3b0b78295d', 38, 128, 'Netherlands Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1811', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1375, '3fe40770ce052d5cf6039b8bfca5ff80', 38, 128, 'Netherlands Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1812', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1376, 'f92ff3ec615819fa43438bd5e8a88373', 38, 128, 'Netherlands Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1813', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1377, 'ce402511fb9d222534f3223932ef4483', 38, 128, 'Netherlands Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1814', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1378, 'd21af3c5b3e8bd30c1abdefe333ebfe2', 38, 128, 'Netherlands Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1815', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1379, '646e91e2e940ef4cd0e83cda2a297629', 38, 128, 'Netherlands Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1816', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1380, '9d54a30e6b81e84daf5d67a925e3433b', 38, 128, 'Netherlands Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1817', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1381, 'e95bf4c2ab9d7e3e7a9071f79f88abc3', 38, 128, 'Netherlands Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1818', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1382, '8b88a65d5a7e5a0486d737b787d85661', 38, 128, 'Netherlands Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1819', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1383, '9b6b33b0bca2301793d6a572d433b050', 38, 128, 'Netherlands Traffic from Marktplaats.nl', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1820', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1384, 'ffda676588c8f447f710b2420474f058', 38, 128, 'Netherlands Traffic from Nu.nl', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1821', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1385, '7082287f02a186057c9389ec964476f6', 38, 128, 'Netherlands Traffic from Bol.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1822', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1386, '856059840ef83f0919a45ec2c943abf8', 38, 129, '🔍 Italy Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1846', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1387, 'a0cb1cc5ac2d2f471cb3261d0db2e195', 38, 129, 'Italy Traffic from Google.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1847', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1388, 'e267f9025b5b6f60617d832eee51976c', 38, 129, 'Italy Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1848', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1389, 'f04dbc51ddd738c6916f9edf7a53101a', 38, 129, 'Italy Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1849', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1390, '305ed3067090aeb2d8a9a3275123b8a7', 38, 129, 'Italy Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1850', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1391, '9fdd76e27b030a1edd029fa5e56b48d8', 38, 129, 'Italy Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1851', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1392, '8f39b64f1438f478a53645b52e90a950', 38, 129, 'Italy Traffic from Amazon.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1852', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1393, 'bb044109d383ceeecc5c8d3a41c366b1', 38, 129, 'Italy Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1853', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1394, 'f66095f27a56e3b0041821f28f8cfe2e', 38, 129, 'Italy Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1854', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1395, 'dc198ed0386cb325a8145b9bc78c79a9', 38, 129, 'Italy Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1855', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1396, 'b3ed5dd2684a9b9e7db43cd5f3a6565e', 38, 129, 'Italy Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1856', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1397, 'cd55838241a79f615eaab0da70b87fad', 38, 129, 'Italy Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1857', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1398, 'f3dbdb366046270ef89b69f4725b4687', 38, 129, 'Italy Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1858', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1399, 'c7c81b441a4e086da6deff624f73f884', 38, 129, 'Italy Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1859', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1400, '28d5def1c76eb514a56be46e13f0b115', 38, 129, 'Italy Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1860', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1401, '5e3c95ca7bb3bb73501f6e1266b6fad5', 38, 129, 'Italy Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1861', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1402, '0df7eb879b6097f8c31a705dec060763', 38, 129, 'Italy Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1862', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1403, '6586b7a122558388207d72337ecea172', 38, 129, 'Italy Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1863', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1404, 'be055d83fa0d5e388553d24f10c2e6ee', 38, 129, 'Italy Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1864', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1405, 'bfb3a9b4178eaa8e2bc66663637bcc48', 38, 129, 'Italy Traffic from eBay.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1865', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1406, '32139b6914f252cb11f8a2a3b26f5872', 38, 129, 'Italy Traffic from libero.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1866', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1407, '481c0c70426c1b94f227e4676d6af329', 38, 129, 'Italy Traffic from repubblica.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1867', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1408, '1fec3d76cb0ccf68e8824a344cfd7860', 38, 129, 'Italy Traffic from corriere.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1868', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1409, '86576970cfb6689993fecfd2ae0aea53', 38, 129, 'Italy Traffic from subito.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1869', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1410, '21b25491e4b75ec5bd22e25a543f656c', 38, 129, 'Italy Traffic from dagospia.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1870', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1411, '430585a4546680f92120b2fe3c861a9b', 38, 129, 'Italy Traffic from gazzetta.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1871', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1412, 'c7d47b88500df7c541f5a26ed0f3d04c', 38, 129, 'Italy Traffic from virgilio.it', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1872', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1413, '6c8237783b3325beb9d934096e96bb46', 38, 130, '🔍 Spain Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1900', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1414, '2d7c635900463bbb052ecdac16b4a057', 38, 130, 'Spain Traffic from Google.es', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1901', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1415, 'bf449edaa55ab2589af08f2f2c7c7321', 38, 130, 'Spain Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1902', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1416, '1ed7d0ebb40a236055458eb57f6bbf0f', 38, 130, 'Spain Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1903', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1417, '72a77673e932529e29e38f627ff95639', 38, 130, 'Spain Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1904', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1418, '68d379cd3c60ea730f9c200539b4b2ff', 38, 130, 'Spain Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1905', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1419, '39e7c10f1a12d15cfd1b2458d5b0ce8e', 38, 130, 'Spain Traffic from Amazon.es', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1906', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1420, 'e3a6ab9cb6d6ae4f2227583305935bde', 38, 130, 'Spain Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1907', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1421, '486af473117f6a64411d024ad31de492', 38, 130, 'Spain Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1908', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1422, '970681d6dd6b58e71a2cf6806d432ffc', 38, 130, 'Spain Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1909', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1423, '7587743857eddfc3f9c9bcf3f262ca75', 38, 130, 'Spain Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1910', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1424, '0dc9a61c0a70c50c74bc404d04ff83d5', 38, 130, 'Spain Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1911', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1425, '1fcb57ab56e25697d572275f2f1184eb', 38, 130, 'Spain Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1912', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1426, '5668ba4514114d3c4a0be38a4031cc52', 38, 130, 'Spain Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1913', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1427, '48f53a4002f01391f59e272c98a07fdd', 38, 130, 'Spain Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1914', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1428, '4c4648e623f150954e46783cd05d934c', 38, 130, 'Spain Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1915', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1429, 'fb834cc3c35712ac4451c3d495ff174c', 38, 130, 'Spain Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1916', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1430, '889d4eeb788f7bbb42acc4adddc0cfbe', 38, 130, 'Spain Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1917', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1431, 'ebdcaba24c90d89f7b2954d9ec2eb0ba', 38, 130, 'Spain Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1918', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1432, '589fc89e75c7e22997d4d404fac8da0b', 38, 130, 'Spain Traffic from eBay.es', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1919', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1433, '3298713b33d3d0361a81fe33cc8c16ce', 38, 130, 'Spain Traffic from Elpais.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1920', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1434, '4c5a7722ce3d2250657e500fb87edba7', 38, 130, 'Spain Traffic from Marca.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1921', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1435, '2ffc2c86bc6fc0a464ed344a1b6cf8d2', 38, 130, 'Spain Traffic from as.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1922', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1436, '926ca37fea2c342c974c0f095a1fb6be', 38, 130, 'Spain Traffic from Milanuncios.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1923', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1437, '741aed97dff3625f00ac308941e0e99a', 38, 130, 'Spain Traffic from elconfidencial.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1924', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1438, '8a407529e185d2227bfad22e6f8ce8e4', 38, 130, 'Spain Traffic from 20minutos.es', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1925', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1439, '899fd4f714bc0e692f219ce1d0452ac9', 38, 130, 'Spain Traffic from eldiario.es', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1926', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1440, '32d14796abb5fc4519c92a8b8b6d2411', 38, 130, 'Spain Traffic from idealista.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1927', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1441, '39342c758afe733c23f944478974f245', 38, 131, '🔍 Ukraine Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '1956', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1442, 'f9974d25a6c090cf812992a914c2d6f0', 38, 131, 'Ukraine Traffic from Google.com.ua', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1957', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1443, '744266064b4a23bbec6c3b2a3bf2d886', 38, 131, 'Ukraine Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1958', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1444, 'e01e8a3f5420ea30944ea986c8c26b6f', 38, 131, 'Ukraine Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1959', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1445, '0e588bdf64dd3a2573d3dec88771860d', 38, 131, 'Ukraine Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1960', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1446, '4813824e0450fae854001672f03a07c1', 38, 131, 'Ukraine Traffic from Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1961', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1447, '97353933bc6476723991e1f990ea3341', 38, 131, 'Ukraine Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1962', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1448, 'bfaf5cc6d0105616ecbe382028bfd983', 38, 131, 'Ukraine Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1963', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1449, '6d46e11d0070c5a0e70f437b7e9eb271', 38, 131, 'Ukraine Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1964', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1450, 'f363d6ea3076e28babffe79cceb8cac3', 38, 131, 'Ukraine Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1965', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1451, 'c9c092e107dc8134743d04f7bc0cec01', 38, 131, 'Ukraine Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1966', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1452, 'bb860dc20c12c85a4700c023b3d5af37', 38, 131, 'Ukraine Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1967', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1453, '580d3003ba2f3b2a994ea96178380084', 38, 131, 'Ukraine Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1968', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1454, '36b99dc40af9f169a6418a64c678bd55', 38, 131, 'Ukraine Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1969', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1455, '8b73e046126f42ccb94e3e43d99f624f', 38, 131, 'Ukraine Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1970', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1456, '09439cba31e30266631eb01a18d51427', 38, 131, 'Ukraine Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1971', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1457, '9cd04418c3f39b9fe62e1d40fd989c18', 38, 131, 'Ukraine Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1972', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1458, '52c0358eda7d55420d91b630c68a390d', 38, 131, 'Ukraine Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1973', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1459, '3fe731a0d998ea67cd42d9773e853d12', 38, 131, 'Ukraine Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1974', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1460, '011b2423d7bfa91fecf42170d4c17c37', 38, 131, 'Ukraine Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1975', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1461, 'cb617fa5407c8367de7a2a09140c03c7', 38, 131, 'Ukraine Traffic from Olx.ua', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1976', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1462, '23f200d013cd2aad70977e7e0f2843c8', 38, 131, 'Ukraine Traffic from Telegraf.com.ua', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1977', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1463, '7ba64a5dc8b80ae85cc88f30ab187147', 38, 131, 'Ukraine Traffic from Prom.ua', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1978', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1464, 'a587e511c1948d83d2d1c199732378dd', 38, 131, 'Ukraine Traffic from ukr.net', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1979', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1465, 'bb198e34f0f54922207ab2db76b8ebd2', 38, 131, 'Ukraine Traffic from OK.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1980', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1466, '98a75d272dda55176a13f8d6d54e6269', 38, 131, 'Ukraine Traffic from Mail.ru', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1981', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1467, '58bfcc6855331f2d1e106af4c7a0c120', 38, 131, 'Ukraine Traffic from Ria.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1982', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1468, '11b4a281b07f0dbb32715ae8a64ef49b', 38, 131, 'Ukraine Traffic from I.UA', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '1983', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1469, 'b7300c5b8bff43a2f3ad1542d592b9da', 38, 132, '🔍 Czech Republic Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2012', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1470, 'fad42408b0ae65b5652b975a9af71753', 38, 132, 'Czech Republic Traffic from Google.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2013', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1471, '0b066a37a045b822b5abe984fc5ca268', 38, 132, 'Czech Republic Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2014', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1472, '05c337c87d3afd1f65e5cc51f0a7f50f', 38, 132, 'Czech Republic Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2015', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1473, '8f0bc59a62625c1a333aad08b3eb4207', 38, 132, 'Czech Republic Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2016', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1474, '56b3549409cf16b6ab7bc832eaf413e7', 38, 132, 'Czech Republic Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2017', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1475, '67819bcf44b782957eb9ffc9e98aa8b6', 38, 132, 'Czech Republic Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2018', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1476, '0272aab33fe58cf5b51a6f0b7f5ec609', 38, 132, 'Czech Republic Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2019', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1477, 'dd3c3ba87d0eec0d469c283cc754f0da', 38, 132, 'Czech Republic Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2020', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1478, '0bfb9919617bf50e98ae15a3f8ee54ab', 38, 132, 'Czech Republic Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2021', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1479, '12349e4d22eb5ee436a3ac51645fe76b', 38, 132, 'Czech Republic Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2022', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1480, 'c7e3d0706be1724c1daa7f61c2959d94', 38, 132, 'Czech Republic Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2023', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1481, '6e2afd07ffc47665c71465d70bed4b98', 38, 132, 'Czech Republic Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2024', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1482, 'abada31a976f1601f84b483f04379a3e', 38, 132, 'Czech Republic Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2025', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1483, '5b2af07e10eed192179022475fc7683a', 38, 132, 'Czech Republic Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2026', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1484, '98ee37b43dc4d157b120feb5d3b9d3fd', 38, 132, 'Czech Republic Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2027', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1485, 'd582ff3ef32276d99c395f330c1459a3', 38, 132, 'Czech Republic Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2028', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1486, '5a2cb818f943bd6d5c93f50b6e6188bb', 38, 132, 'Czech Republic Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2029', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1487, '3ab337be463fcb74db31eb4bb004f927', 38, 132, 'Czech Republic Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2030', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1488, '98d325efe5eafce366f9e973533db471', 38, 132, 'Czech Republic Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2031', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1489, '62857d6a6120a7b9cd0022e91e77d0cb', 38, 132, 'Czech Republic Traffic from Seznam.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2032', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1490, '97b54a327161f9921a46d1db21216a03', 38, 132, 'Czech Republic Traffic from Idnes.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2033', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1491, '6a757fd5c59014a0d98c7d58bb408bde', 38, 132, 'Czech Republic Traffic from Novinky.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2034', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1492, '36ee044ed4b0252030749a97f1427220', 38, 132, 'Czech Republic Traffic from super.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2035', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1493, 'c45afd541bb418600e2659abe6a8f489', 38, 132, 'Czech Republic Traffic from Sport.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2036', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1494, '9e355d212293c767097dc443750121dd', 38, 132, 'Czech Republic Traffic from Alza.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2037', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1495, '02bcebd6d7a225a0ab3c5be1ac01b9ca', 38, 132, 'Czech Republic Traffic from Bazos.cz', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2038', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1496, '81c2870fc1c0ced8f283afa1d0d20322', 38, 133, '❤️ Japan Traffic from Google.co.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2066', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1497, 'af2e8ba05ec18f77ac416e9f8110063d', 38, 133, 'Japan Traffic from Baidu.com', NULL, '0.6000', '0.4600', 1000, 1000000, 'api', 'default', '2067', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1498, 'f2acc7ecad61ed49c92016c78cb753fa', 38, 133, 'Japan Traffic from Naver.com', NULL, '0.6000', '0.4600', 1000, 1000000, 'api', 'default', '2068', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1499, 'eacdea1631d28712e54e1f687c36b88f', 38, 133, 'Japan Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2071', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1500, '35bbfa565b040b17ced47cc41c5d1683', 38, 133, 'Japan Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2072', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1501, 'bda04bf39530865dfb8511f07e9056ff', 38, 133, 'Japan Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2073', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1502, 'c84127571a179062e4ef54bca1b48845', 38, 133, 'Japan Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2074', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1503, '1780b6c251dddf13f8e7f163f85a681f', 38, 133, 'Japan Traffic from Amazon.co.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2075', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1504, '0fb471ca659b75f48e546adcce855f10', 38, 133, 'Japan Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2076', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1505, '1bbef3ab84df2fb3dcdaf36025475ab5', 38, 133, 'Japan Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2077', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1506, 'e7f53488a3bfdef89cf6497039a43678', 38, 133, 'Japan Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2078', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1507, '18a45eebe336e8c01e1fb40228442dfa', 38, 133, 'Japan Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2079', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1508, '997214c6a1b481b593af87a37bc98790', 38, 133, 'Japan Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2080', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1509, '979604b53b360e8039e1eefb9000522c', 38, 133, 'Japan Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2081', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1510, '18a07d4638f97003f0daf5ed637e7e07', 38, 133, 'Japan Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2082', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1511, '53d277e87330b85d412d78e2886cb816', 38, 133, 'Japan Traffic from Yahoo.co.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2083', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1512, 'f7791b1aba218aac261558934549893c', 38, 133, 'Japan Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2084', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1513, 'f03b4d137831fda4e8ee514b6a6e9e32', 38, 133, 'Japan Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2085', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1514, 'd215930886031b913f8fa9b9bebae6af', 38, 133, 'Japan Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2086', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1515, '07a0d7c9f08b676d4a8debaf6cbf677c', 38, 133, 'Japan Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2087', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1516, 'b384895d7f8b335bbbd093e1d603cea6', 38, 133, 'Japan Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2088', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1517, '5a4385162291e924b3d4f9ff018418c9', 38, 133, 'Japan Traffic from news.Yahoo.co.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2089', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1518, 'dcd0935942c81ba87256de7abe86da8e', 38, 133, 'Japan Traffic from Rakuten.co.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2090', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1519, '33c5b9ef48e206f2e91cd1a471e08cd8', 38, 133, 'Japan Traffic from nicovideo.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2091', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1520, 'cea00c36c1442a914eabd47b6f6257e4', 38, 133, 'Japan Traffic from livedoor.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2092', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1521, '36f8e57fe5b8dbe6db4752449476d456', 38, 133, 'Japan Traffic from kakaku.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2093', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1522, 'feaa923c2b4e37b79ce424d41d6d0024', 38, 133, 'Japan Traffic from ameblo.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2094', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1523, 'f4d158f3b39fab4e589d90b8b7f90195', 38, 133, 'Japan Traffic from pixiv.net', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2095', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1524, '5a3a6d70ba58f0d5ab643f4ceeddf341', 38, 133, 'Japan Traffic from auone.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2096', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1525, 'b50437fbf5876bd5ff7c920eaad5bc86', 38, 133, 'Japan Traffic from goo.ne.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2097', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1526, 'c97a1a5b85cb6031c176d2b17189969b', 38, 133, 'Japan Traffic from syosetu.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2098', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1527, '78b4eece62324d94750696737dc861be', 38, 133, 'Japan Traffic from blog.jp', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2099', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1528, '8448dd5468cfb3592ac0b28a11ff2bf4', 38, 133, 'Japan Traffic from matome.naver.jp (blogs)', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2100', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1529, '4a5ced58decb1fe1e44c08e0ff2b1928', 38, 134, '🔍 Indonesia Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2136', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1530, '2e96eade91e36ad540581a33ab475ba1', 38, 134, 'Indonesia Traffic from Google.co.id', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2137', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1531, '581217445bef8ecdd353af9d202b658e', 38, 134, 'Indonesia Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2138', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1532, '0b5420a08c02015b75859893f7710972', 38, 134, 'Indonesia Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2139', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1533, 'd94e952aef9ba445bfb3a40ffac40023', 38, 134, 'Indonesia Traffic from id.Pinterest', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2140', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1534, 'ebb35821202e4964d19fe15316786e88', 38, 134, 'Indonesia Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2141', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1535, '6abf0d87e436fc0685120942a094f27d', 38, 134, 'Indonesia Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2142', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1536, 'c6215e1537134007d93bad1b50f197f9', 38, 134, 'Indonesia Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2143', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1537, '64789a547db4a47e109bd7eb0c40dccc', 38, 134, 'Indonesia Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2144', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1538, '52553dce2020f47ef51ecfc3089436f3', 38, 134, 'Indonesia Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2145', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1539, '3c4b2681ec80164712867cd0836aef94', 38, 134, 'Indonesia Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2146', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1540, 'f932771d0b193ff1b2dbebdc451b8903', 38, 134, 'Indonesia Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2147', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1541, 'b1acccdc0ba8934224a4a08f06b87718', 38, 134, 'Indonesia Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2148', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1542, '9464afbfbd32e64f4433622671ac34ee', 38, 134, 'Indonesia Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2149', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1543, 'b4f5b4bfa339c06fd67ce3d45caa0be0', 38, 134, 'Indonesia Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2150', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1544, 'a3f98c1cac70aa871f2470e96530f40b', 38, 134, 'Indonesia Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2151', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1545, 'f39bdab730edd4a0aceffede263209cc', 38, 134, 'Indonesia Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2152', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1546, '72e1c1b8b28859414137bd7491ad60cc', 38, 134, 'Indonesia Traffic from eBay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2153', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(1547, '4b7f848e6acfff2771a049d5608990b0', 38, 134, 'Indonesia Traffic from Shopee.co.id', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2154', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1548, '5bf393619fe7608ddee5b7f73d3aa373', 38, 134, 'Indonesia Traffic from Bukalapak.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2155', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1549, '4566eab2089c9eb77f01ff83ee7b992b', 38, 134, 'Indonesia Traffic from Tribunnews.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2156', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1550, '857ce6b35021acf453269b790c83b34c', 38, 134, 'Indonesia Traffic from Detik.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2157', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1551, '4429a21fcbcf3d612e93cd194f66438a', 38, 134, 'Indonesia Traffic from Tokopedia.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2158', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1552, '23ce2bf7fe8b6cb6bc0be0238dbde26a', 38, 134, 'Indonesia Traffic from Kompas.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2159', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1553, '9eebf073d04cc1b8c374f5b64589e990', 38, 134, 'Indonesia Traffic from Brainly.co.id', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2160', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1554, 'fe38d793f9a1f9123f8875adb7479a8c', 38, 134, 'Indonesia Traffic from News.detik.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2161', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1555, '9d3476ebd876fcb5263639141d810a45', 38, 135, '🔍 Germany Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2188', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1556, '5aa886397954b483260a912c15da5e4f', 38, 135, 'Germany Traffic from Google.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2189', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1557, 'dfa09d9a7457956f497eb095d438a210', 38, 135, 'Germany Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2190', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1558, 'd175e650c889e18061d52c1522a922bc', 38, 135, 'Germany Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2191', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1559, '36a62eda54e6c8f1b46077f808c9bd6a', 38, 135, 'Germany Traffic from Pinterest.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2192', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1560, '1d0a58ca1403f237ce083efe4840ec34', 38, 135, 'Germany Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2193', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1561, '9f7e3c49e0f9c25ed664c93febc71381', 38, 135, 'Germany Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2194', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1562, '113a76802a2dfcf1c1efeeb40bb1d3cf', 38, 135, 'Germany Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2195', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1563, '4d0529f6fc877a88f61121cbaa521a25', 38, 135, 'Germany Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2196', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1564, '7663108181f60eb686833fe597a00893', 38, 135, 'Germany Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2197', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1565, 'f4a4ecbdb637160aa401004df730fa7f', 38, 135, 'Germany Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2198', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1566, 'a632d593bb737d223649862bf046c6d5', 38, 135, 'Germany Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2199', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1567, '838db05a2f3714605d7f38404de3295c', 38, 135, 'Germany Traffic from Amazon.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2200', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1568, 'e7b5eef3f9acf197a40973d2ae074e79', 38, 135, 'Germany Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2201', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1569, 'd7a4aff22c33ba2942265396f92aef3d', 38, 135, 'Germany Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2202', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1570, '61df0d141ec4c9a9534b1207ed20e6ac', 38, 135, 'Germany Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2203', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1571, '77183326905c51630ddabff32b42cd79', 38, 135, 'Germany Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2204', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1572, 'ce13e442deb0c8f607b3e0638c39f3f7', 38, 135, 'Germany Traffic from eBay.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2205', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1573, '18defa39f13464d651af87e0fa57a1e8', 38, 135, 'Germany Traffic from Ebay-kleinanzeigen.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2206', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1574, '5ead5c412bcfa4ab024d1271dd64d167', 38, 135, 'Germany Traffic from Spiegel.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2207', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1575, 'ca680dd00c7151a6252f73953b980315', 38, 135, 'Germany Traffic from Bild.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2208', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1576, '27e533e383f2a703627b05b9a806759f', 38, 135, 'Germany Traffic from Web.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2209', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1577, 'c1fd849c18368cf46138883bbad0e8ef', 38, 135, 'Germany Traffic from GMX.net', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2210', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1578, 'd2665e18192b7aa808afce53878a337e', 38, 135, 'Germany Traffic from Chip.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2211', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1579, '1deaa3398feb9910c27234675ddd17a0', 38, 135, 'Germany Traffic from Focus.de', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2212', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1580, 'a9351a4cb87299484b36307d5c4a7eb0', 38, 136, '🔍 Pakistan Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2238', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1581, '2a67584f9aedf1c711c2a4c506dba04a', 38, 136, 'Pakistan Traffic from Google.com.pk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2239', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1582, 'db94f151e86e9c9df3b05efafabff832', 38, 136, 'Pakistan Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2240', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1583, '77f97b35d3575eb34aca0733288faeda', 38, 136, 'Pakistan Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2241', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1584, '903af27786d95f24ac9ff0e705769005', 38, 136, 'Pakistan Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2242', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1585, 'a7af2196841333313a57d827816ebba6', 38, 136, 'Pakistan Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2243', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1586, '6fd87459ff1a9078c4d83f6e28cc384f', 38, 136, 'Pakistan Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2244', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1587, '32d61b3aa08a979cb92bd845cec4babb', 38, 136, 'Pakistan Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2245', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1588, '299037d4ac58bdc3cbade6b1a6e65068', 38, 136, 'Pakistan Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2246', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1589, '6609d09d08931e3b44843de534e524fd', 38, 136, 'Pakistan Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2247', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1590, '464f22dae02fe2d4fcd21f63d8890632', 38, 136, 'Pakistan Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2248', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1591, '13231ecf4d48f94e7d7da55c294c1808', 38, 136, 'Pakistan Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2249', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1592, '89389223af75b84f17f8362ba7c8e809', 38, 136, 'Pakistan Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2250', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1593, '6be13b42b487d625926ce289a1338aa2', 38, 136, 'Pakistan Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2251', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1594, '1d460f2ee9764ae0f8eb63e87c3a6c23', 38, 136, 'Pakistan Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2252', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1595, '147d25353a9b0bad55eebf439182e413', 38, 136, 'Pakistan Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2253', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1596, 'de3befa03f53785733d1060e7955c92d', 38, 136, 'Pakistan Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2254', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1597, 'd818893f5ce2dc0c777efeff9143d32d', 38, 136, 'Pakistan Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2255', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1598, '152ef244f485316723a5a482f3a4db5f', 38, 136, 'Pakistan Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2256', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1599, 'dbc29508ef8baf9eb83e215b655d578f', 38, 136, 'Pakistan Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2257', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1600, 'e4955a5126fae511bbe3b490dfab46bc', 38, 136, 'Pakistan Traffic from Urdupoint.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2258', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1601, '62c446f59a141832697fb60056947603', 38, 136, 'Pakistan Traffic from Hamariweb.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2259', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1602, '2043280939063905f6d07a493fa2c5d4', 38, 136, 'Pakistan Traffic from Express.pk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2260', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1603, 'ae81d8db5d3d6d090fe4ba2a9ccb298b', 38, 136, 'Pakistan Traffic from Thenews.com.pk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2261', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1604, '19491eef06167d8f356b5cacf81637b2', 38, 136, 'Pakistan Traffic from Daraz.pk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2262', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1605, '959428b8cba3b116b025ac2b57248bd1', 38, 136, 'Pakistan Traffic from Olx.com.pk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2263', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1606, '175a7c3471e169f0145e2260f3ac9016', 38, 136, 'Pakistan Traffic from Dunyanews.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2264', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1607, '2fd35a7e8e1155af8c475830ccab05aa', 38, 136, 'Pakistan Traffic from Tribune.com.pk', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2265', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1608, '5500676a01f02fce577b2f248387c6d9', 38, 137, '🔍 Thailand Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2294', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1609, '13f507bcba35534b69af3760d7aa9c6c', 38, 137, 'Thailand Traffic from Google.co.th', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2295', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1610, 'f69c1d36dde5d50b77da02e992abc306', 38, 137, 'Thailand Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2296', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1611, '8de70efdefb2a01875d88319a692bbdb', 38, 137, 'Thailand Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2297', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1612, '66f09d489f5bd0278b8431ea4180c8ed', 38, 137, 'Thailand Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2298', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1613, 'ec500821316dc4abbb84d588bff006ce', 38, 137, 'Thailand Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2299', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1614, '7b1686e3575c517f57ed352bf45c9c47', 38, 137, 'Thailand Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2300', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1615, '55f100190d52b5d0369e32f3829ea387', 38, 137, 'Thailand Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2301', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1616, '15b3ce43dd9602c183c95f4c9a0ffb57', 38, 137, 'Thailand Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2302', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1617, 'f5ee489caf11fb9fa2c41ce36624378f', 38, 137, 'Thailand Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2303', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1618, '45dcc1ec51c6ac6e43ae4f6a78e015b0', 38, 137, 'Thailand Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2304', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1619, '97f0b7f26d3312a75b04a5e07eaa1582', 38, 137, 'Thailand Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2305', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1620, '9df5adf06535ebbc26cba473910b7184', 38, 137, 'Thailand Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2306', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1621, '033f584117bfe5069dce77be0c4139d6', 38, 137, 'Thailand Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2307', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1622, '04f29ede0745495cf172d78d3f4dc498', 38, 137, 'Thailand Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2308', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1623, '45fc27009a85dcf3e73a8e183f178418', 38, 137, 'Thailand Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2309', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1624, 'bf4e792a2031438d5617e43fbe8e041e', 38, 137, 'Thailand Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2310', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1625, '2d2a5c373e3a0bba2ebce39ac1d17bae', 38, 137, 'Thailand Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2311', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1626, 'fb30b2def703dcd64110c1b29de4cbf3', 38, 137, 'Thailand Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2312', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1627, 'dbe11506b104b5dcd4a6d77fdc429a9e', 38, 137, 'Thailand Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2313', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1628, '00ba04bd8b85159793af1180b326ee86', 38, 137, 'Thailand Traffic from Pantip.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2314', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1629, 'd6ecc5514e7e131ebcecd6c79762ff2c', 38, 137, 'Thailand Traffic from Lazada.co.th', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2315', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1630, '50db31b0ef90f0cf9b2d5b46c5cc1886', 38, 137, 'Thailand Traffic from Sanook.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2316', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1631, '54a12d5c317f59a2b19f916e9bc0a18f', 38, 137, 'Thailand Traffic from Kapook.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2317', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1632, 'adc6943bd25ddc3055155f876c5ca662', 38, 137, 'Thailand Traffic from Shopee.co.th', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2318', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1633, '047d5cc3b861a3d3142bab322f44e453', 38, 137, 'Thailand Traffic from Thairath.co.th', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2319', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1634, 'db814c3b8420989b277def3dac771c09', 38, 137, 'Thailand Traffic from Mthai.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2320', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1635, '1c2f75dc6ec3158bb0046cf5f18439d0', 38, 138, '🔍 Taiwan Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2348', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1636, '985506dc4afadfece3d74b5c24c78c3f', 38, 138, 'Taiwan Traffic from Google.com.tw', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2349', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1637, 'd7b2ffb3b5372d7015dec7d047b8aa86', 38, 138, 'Taiwan Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2350', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1638, '61964a55d6db54bf275a48b0f75424b0', 38, 138, 'Taiwan Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2351', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1639, '10b22573733e17f3c10e1a23b425d376', 38, 138, 'Taiwan Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2352', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1640, '804bd1eaa8bf5e03f717adbe37f37d79', 38, 138, 'Taiwan Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2353', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1641, 'eb6f38b7b9fca93e45b0c912fdadb60a', 38, 138, 'Taiwan Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2354', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1642, '26ebaaf6d322d03b7e150b81d7a1edfa', 38, 138, 'Taiwan Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2355', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1643, '826be95b31dea2bdfe8d94613e408b94', 38, 138, 'Taiwan Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2356', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1644, '3f52501a5b1702eb239ddf2a27a0f236', 38, 138, 'Taiwan Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2357', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1645, 'a179477a9794a15cff0be7551e6ebc96', 38, 138, 'Taiwan Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2358', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1646, '20df7f9cfb3346e7a7b371eb29b4965c', 38, 138, 'Taiwan Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2359', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1647, '50c404587ed8a76101e93276d8692932', 38, 138, 'Taiwan Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2360', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1648, '02efcf7def82cd05d5b12418090f33fd', 38, 138, 'Taiwan Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2361', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1649, 'eab751d36445f6ba1eccfbbe90a2257d', 38, 138, 'Taiwan Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2362', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1650, '308f85a967aa3ac4072873fa6d986ae5', 38, 138, 'Taiwan Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2363', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1651, 'b9e6ff4d8cd9d94bd4fca17a03d574f2', 38, 138, 'Taiwan Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2364', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1652, 'ac9cbb6bf9ab0393a6ab06ddf2d75d50', 38, 138, 'Taiwan Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2365', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1653, 'beaa9f1e319e15564ec728a236c003a0', 38, 138, 'Taiwan Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2366', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1654, 'b80180707b5f27e2cbc63efbe5466501', 38, 138, 'Taiwan Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2367', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1655, '5fd095322c749a2b6407bf91611bc9b9', 38, 138, 'Taiwan Traffic from Pixnet.net', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2368', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1656, '07c0acfd3692b4e6bb1f98f26bd8d0f4', 38, 138, 'Taiwan Traffic from Ettoday.net', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2369', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1657, 'c769bad6b40646c73d4278e55bcb28d0', 38, 138, 'Taiwan Traffic from Ltn.com.tw', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2370', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1658, '7569fce9d4065c26437722698809696a', 38, 138, 'Taiwan Traffic from Setn.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2371', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1659, '98053a463317e78412257be158ef53b8', 38, 138, 'Taiwan Traffic from Momoshop.com.tw', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2372', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1660, 'ed46792d72e91846e1884796606bd024', 38, 138, 'Taiwan Traffic from 104.com.tw', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2373', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1661, '21b74e481ebd793c35df0776526e7f8f', 38, 138, 'Taiwan Traffic from Ebc.net.tw', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2374', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1662, 'cb7a6a1b0eb800fce11e7aec01b4dfea', 38, 138, 'Taiwan Traffic from Gamer.com.tw', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2375', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1663, '097723f7ec09079c0c5d835c4462757a', 38, 138, 'Taiwan Traffic from Udn.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2376', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1664, '082a686349cc667dc3b4061f7a40176e', 38, 138, 'Taiwan Traffic from Ptt.cc', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2377', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1665, 'b79e96da24e9edd8935a0163e7b30545', 38, 138, 'Taiwan Traffic from Shopee.tw', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2378', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1666, '6f7035e15d593f70a6dc783b5132879c', 38, 139, '🔍 Vietnam Traffic from Google.com [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2410', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1667, '66a4d227027674ed193f9fc15ac51c06', 38, 139, 'Vietnam Traffic from Google.com.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2411', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1668, '32bba7600231c068a8bb2cdc27c558d1', 38, 139, 'Vietnam Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2412', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1669, '33d9822ebd7f2fbb79f29acdaf4c1468', 38, 139, 'Vietnam Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2413', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1670, '211f91d663a3b9931d9fec4c56401200', 38, 139, 'Vietnam Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2414', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1671, '6e6725df07815d2a708e01866f24ce78', 38, 139, 'Vietnam Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2415', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1672, '02301a9ce518ce4d811e89371612b9c6', 38, 139, 'Vietnam Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2416', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1673, 'aa60a71c2670ebd36d2386d976ddbf06', 38, 139, 'Vietnam Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2417', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1674, 'e534a5c4862b9d663e1203e64ac18778', 38, 139, 'Vietnam Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2418', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1675, '5521e77f724dd2b47680332ce640580f', 38, 139, 'Vietnam Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2419', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1676, 'bd6b9c4b4a31fcb246ca0924b04b8785', 38, 139, 'Vietnam Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2420', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1677, '2613f2647d80ea7e6fdd2e37a174ffb1', 38, 139, 'Vietnam Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2421', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1678, '128c1187adeee7613d280035f503e7da', 38, 139, 'Vietnam Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2422', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1679, '6da438e09581faca9a8cae79add88fe2', 38, 139, 'Vietnam Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2423', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1680, '5563d69da42950b3026dd5b6d500a72e', 38, 139, 'Vietnam Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2424', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1681, 'cadef2acebfd3d0bbe953c4bdf71b929', 38, 139, 'Vietnam Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2425', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1682, '6b3ee2807ccfa0d08844af89969f2501', 38, 139, 'Vietnam Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2426', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1683, 'b025638e2d165720bb9532d8487f92ae', 38, 139, 'Vietnam Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2427', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1684, '3ad7e286d970ae64b452cb1345536e10', 38, 139, 'Vietnam Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2428', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1685, 'e0fc57f068b23a5b7a542608dd33b34b', 38, 139, 'Vietnam Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2429', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1686, '7cbe806cb9b2c9a2648ab2dd974c9c9c', 38, 139, 'Vietnam Traffic from - Dkn.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2430', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1687, '06a9e6f1568a6baee4021792d3103643', 38, 139, 'Vietnam Traffic from Vnexpress.net', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2431', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1688, '92550c971c2943c1132de1ebed9add19', 38, 139, 'Vietnam Traffic from Vtv.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2432', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1689, '5367649f4a89135e06b047144cca6961', 38, 139, 'Vietnam Traffic from Zing.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2433', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1690, '125583e21732fa37ea0345c430a2f5e0', 38, 139, 'Vietnam Traffic from Thethao247.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2434', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1691, '49f226a821708fe0cf9bf4f762b37d2d', 38, 139, 'Vietnam Traffic from Phimmoi.net', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2435', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1692, 'aae1d170c74ffe448b173b3cfac71e49', 38, 139, 'Vietnam Traffic from 24h.com.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2436', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1693, 'e9660237b10f1c0f073114223b4687db', 38, 139, 'Vietnam Traffic from Kenh14.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2437', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1694, 'd0cdf3c1bf55375a262f0a54d9c8e5d3', 38, 139, 'Vietnam Traffic from Shopee.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2438', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1695, '4860e92a69f472fb6f3b65ac83077b32', 38, 139, 'Vietnam Traffic from Tiki.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2439', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1696, 'f8fdec5dc096bdef64c739f4289724ed', 38, 139, 'Vietnam Traffic from Dantri.com.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2440', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1697, '8d6f42c951919b4592c6825ed64ca3d3', 38, 139, 'Vietnam Traffic from Lazada.vn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2441', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1698, 'bd09b885dda77793ed9faf3fc01518b1', 38, 139, 'Vietnam Traffic from Baomoi.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2442', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1699, '8cded8c5476f8fe0103389871243836c', 38, 140, '🔍 Singapore Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2476', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1700, '6c65eeb62660640034036b409d04acde', 38, 140, 'Singapore Traffic from Google.com.sg', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2477', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1701, 'da00b1b9ffa66fe07a4b54f22d764da7', 38, 140, 'Singapore Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2478', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1702, '577aa434bbd202834d14c7e9ea2cdf12', 38, 140, 'Singapore Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2479', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1703, '70666492e88b36760402cab91b06d460', 38, 140, 'Singapore Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2480', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1704, '0e4653dc671db3ef5b1eae807f14b1da', 38, 140, 'Singapore Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2481', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1705, '581c1e039afcd86d7c89b98e0a504865', 38, 140, 'Singapore Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2482', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1706, '3e93f0072c65a2b6319c818e8b619859', 38, 140, 'Singapore Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2483', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1707, '008d79b73a9e65562c794bd964b8b764', 38, 140, 'Singapore Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2484', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1708, '439d2a657522118efad15c5803e31bda', 38, 140, 'Singapore Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2485', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1709, '69c8302d1369c778498e89a5af51f191', 38, 140, 'Singapore Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2486', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1710, '05b19680d6310e1d1947f56188e4193f', 38, 140, 'Singapore Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2487', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1711, '5fd1ba3f515c932500e9bd6be5220968', 38, 140, 'Singapore Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2488', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1712, '5425eb4efb2077a8dad017a2a4c1a1ce', 38, 140, 'Singapore Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2489', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1713, '6bfe7b7ba9fa3231b8eaf192ab5ea222', 38, 140, 'Singapore Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2490', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1714, '737956e37a0702f8d0d3aaa10db7daa6', 38, 140, 'Singapore Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2491', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1715, '93ef0aa454ffeeffc64d46d9699c62d0', 38, 140, 'Singapore Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2492', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1716, 'd4f53d39960c2006fc5b62839bce2737', 38, 140, 'Singapore Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2493', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1717, 'e0d79c5ecbd84c122c0bcf63f95909f0', 38, 140, 'Singapore Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2494', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1718, 'd08bcc19127dfe63556340f46fac57a9', 38, 140, 'Singapore Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2495', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1719, '9976b1697556343563d30658a4c35052', 38, 140, 'Singapore Traffic from Lazada.sg', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2496', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1720, 'b2274b298fb7240be463b45749e41bbe', 38, 140, 'Singapore Traffic from Qoo10.sg', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2497', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1721, 'cc380bc3e4a9650ddeb6c960006c0e8e', 38, 140, 'Singapore Traffic from Dbs.com.sg', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2498', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1722, '9059c2d739f35b4b7cf6dfd3adf97390', 38, 140, 'Singapore Traffic from straitstimes.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2499', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1723, 'f91fda47f425a1e065ae8685fa800480', 38, 141, '🔍 Romania Traffic from Google.com Search [Organic] [Custom Keywords]', NULL, '0.9100', '0.7000', 1000, 1000000, 'api', 'default', '2524', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1724, '9a4433dfc27f2af995cf461ee230d5cc', 38, 141, 'Romania Traffic from Google.ro', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2525', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1725, 'a7926b09028c6c8041a0c50a13c07b87', 38, 141, 'Romania Traffic from YouTube', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2526', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1726, '9c6f2b2a2a68c63795c7f57d553ae23d', 38, 141, 'Romania Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2527', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1727, '81c9fe865cc3ba8ee9bc90669e120bfc', 38, 141, 'Romania Traffic from Instagram', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2528', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1728, 'e3d5eb311cbf5c8a37c6449edc3b3e08', 38, 141, 'Romania Traffic from Twitter', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2529', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1729, 'a9f8249df7526be0c055c2d03c16f36d', 38, 141, 'Romania Traffic from Amazon.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2530', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1730, '9e9f2163c5115d28e7832bd7f925150d', 38, 141, 'Romania Traffic from Reddit', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2531', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1731, '785f8b4c0aa9e38e8112ace7b0979bcd', 38, 141, 'Romania Traffic from Quora', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2532', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1732, '340f75e683f22344c2b104dfa1be4303', 38, 141, 'Romania Traffic from Tumblr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2533', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1733, 'ff1c4a30035968a7cc2e4023bd56e933', 38, 141, 'Romania Traffic from Pinterest.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2534', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1734, '95ea4d5227b94130d8c4563e3b4f4423', 38, 141, 'Romania Traffic from Blogspot.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2535', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1735, '85c71f4ff73ab5cb08484758276d729b', 38, 141, 'Romania Traffic from LinkedIn', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2536', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1736, '46b51848eaeceeeb94928a750394efa2', 38, 141, 'Romania Traffic from Bing.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2537', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1737, '771ec74e34517154681af60229dc38a4', 38, 141, 'Romania Traffic from Yahoo', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2538', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1738, 'f0d529e67f082a5285c9119095b8dd4d', 38, 141, 'Romania Traffic from Twitch.tv', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2539', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1739, '85ce81ac1e8a9a864612e8d292c1f475', 38, 141, 'Romania Traffic from Wikipedia', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2540', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1740, 'e2407c3f3db26917cfa3e2d226e1d9aa', 38, 141, 'Romania Traffic from Fiverr', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2541', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1741, '765ea90f7bc819d3608e1e23b7b25701', 38, 141, 'Romania Traffic from VK.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2542', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1742, '85c9255d9dbced6a66150d49edf30081', 38, 141, 'Romania Traffic from Ebay.com', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2543', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1743, 'db9e034bbb521252ee5fde83db752809', 38, 141, 'Romania Traffic from Olx.ro', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2544', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1744, 'eb5bdf902a35388827b788d19b4dc1b2', 38, 141, 'Romania Traffic from Emag.ro', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2545', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1745, 'db03fce55ac90e6239c67fb510b6e6b6', 38, 141, 'Romania Traffic from Digi24.ro', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2546', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1746, '65d7cade8ed040f37e690458ef333a68', 38, 141, 'Romania Traffic from Adevarul.ro', NULL, '0.6000', '0.4600', 500, 1000000, 'api', 'default', '2547', 4, 1, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1747, 'b283737d06c23d65bffd01e482f73d10', 38, 142, 'Morocco Traffic from Google', NULL, '0.9100', '0.7000', 500, 20000, 'api', 'default', '2573', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1748, 'be2685001c33d5a43608a52464db32f8', 38, 142, 'Morocco Traffic from Facebook', NULL, '0.6000', '0.4600', 500, 50000, 'api', 'default', '2572', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1749, 'e53140ba364baf5007559271a4d57b88', 38, 143, 'Instagram HQ Real Followers | No Refill | Speed 5K/D', NULL, '0.2600', '0.2000', 100, 1000, 'api', 'default', '2734', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1750, 'e6fcf835e642c8073e2b891d1417e62d', 38, 143, '𝐒𝐓𝐀𝐁𝐋𝐄 - TikTok %100 Real Likes [R30] 🔥', NULL, '2.0800', '1.6000', 100, 15000, 'api', 'default', '298', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1751, '40cfc9548e7cc5e6accfe7ac76d86980', 38, 143, 'Youtube [ 4000 Hours ] Watchtime [ 120 Days Refill ] EXCLUSIVE 🔥🔥%100 NO DROP', NULL, '11.0500', '8.5000', 100, 4000, 'api', 'default', '544', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1752, 'f56c7ba2744d5fce3558f04d9c1e7d71', 38, 143, 'Clubhouse Followers | Super Instant! | Speed 2-3K/D 🔥', NULL, '1298.7000', '999.0000', 100, 10000, 'api', 'default', '597', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1753, 'ef35ac7eb58d79d69a24d4abdd56dbd1', 38, 143, 'Facebook Real Page Likes | Non Drop! [ R30 ] 5K/D', NULL, '1298.7000', '999.0000', 100, 75000, 'api', 'default', '460', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1754, 'e7ce051813247ea68aba62418c012152', 38, 143, 'Instagram REAL HQ Followers | 𝐍𝐎𝐍𝐃𝐑𝐎𝐏!! |  Instant! 🔥🔥[R30]', NULL, '2.0800', '1.6000', 100, 35000, 'api', 'default', '250', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1755, 'c097ae54bcfde835c104319366173ccf', 38, 143, '🔥 Instagram HQ Real Likes | Always Instant | Speed 500/H - No Drop', NULL, '0.3900', '0.3000', 20, 2000, 'api', 'default', '425', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1756, '260cd82db2a94b72f4a8261e90ee787f', 38, 143, '🔥 Instagram %100 Real Likes | Always Instant | Speed 500/H - No Drop', NULL, '0.3300', '0.2500', 20, 2000, 'api', 'default', '436', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1757, '1ab3a0b6434e8543ae641234ca6c741d', 38, 143, '🔥Exlusive! YouTube Subscribers | Less DROP | Speed 1K/D [R30]', NULL, '1298.7000', '999.0000', 100, 1500, 'api', 'default', '2707', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1758, 'b9142584ff7131d86326791decf05855', 38, 143, 'TikTok %100 Real Likes | 𝐍𝐎𝐍 𝐃𝐑𝐎𝐏!! | Instant! Super Fast!  Speed 3K/D 🔥🔥[R30]', NULL, '0.6400', '0.4900', 20, 50000, 'api', 'default', '301', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1759, '79ce3a30da90033ec012ddacda9b396c', 38, 143, 'YouTube Subscribers Instant - Non Drop!  5K/D 30 Days Refill', NULL, '12998.7000', '9999.0000', 1000, 100000, 'api', 'default', '47', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1760, '75f57248005b417935f451fb4a139ddf', 38, 143, '💙 Big Base', NULL, '128.7000', '99.0000', 20, 5000, 'api', 'default', '161', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1761, '87f6a1a053044e0a015bc65f8f5335f1', 38, 143, 'YouTube Subscribers Instant Non Drop! 30 Days Auto Refill - 3-5K/D', NULL, '12998.7000', '9999.0000', 1000, 50000, 'api', 'default', '46', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1762, 'f90e8cb85152f596acad7100712b49c6', 38, 143, 'YouTube Subscribers Instant Non Drop! 30 Days Refill - 1-2K/D', NULL, '128.7000', '99.0000', 200, 4000, 'api', 'default', '74', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1763, 'ac5c2789ae5454b830f0d3ae4f778dcd', 38, 143, '🔥Private! YouTube Subscribers Instant Non/Less Drop! 30 Days Refill - 500/D', NULL, '129998.7000', '99999.0000', 100, 2000, 'api', 'default', '1062', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1764, '1e0b428a49b10c9dd096312115cb6c62', 38, 143, '🔥Private! YouTube Subscribers Instant Non/Less Drop! 30 Days Refill - 500/D', NULL, '129998.7000', '99999.0000', 100, 2000, 'api', 'default', '1277', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1765, 'fbbb175bc1d0d00fb5018e88613d0564', 38, 143, '𝐍𝐄𝐖 - Instagram Real Likes |  Instant! Speed 3K/Hour NonDrop!', NULL, '0.6500', '0.5000', 20, 35000, 'api', 'default', '426', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1766, 'd641e923275cbaa35f2e125b412cd2aa', 38, 143, 'Youtube Subscribers | Instant | Speed 5K/D - No Refill', NULL, '1.7600', '1.3500', 200, 2000, 'api', 'default', '1234', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1767, 'e987a25580e9800e2a18e4356c7553f5', 38, 143, 'Instagram REAL Followers | From ADS', NULL, '3.3200', '2.5500', 5000, 5000, 'api', 'default', '143', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1768, '4c693bd9ab60f56dc749454180734fbb', 38, 143, 'YouTube Subscribers - Non Drop! 1K/D 15 Days Refill 0-24 hours', NULL, '12998.7000', '9999.0000', 10, 5000, 'api', 'default', '48', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1769, '7466b6c0ca20ff17f0689c3c1b3e48fd', 38, 143, 'Instagram HQ Real Likes - Instant! Speed 5K/Hour -  NonDrop!', NULL, '0.8500', '0.6500', 20, 100000, 'api', 'default', '427', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1770, 'ee9661f15eeb4609d0b0b887c8beae0e', 38, 143, 'YouTube Subscribers Instant - Non Drop! 2-3K/D 30 Days Refill', NULL, '12998.7000', '9999.0000', 200, 3000, 'api', 'default', '75', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1771, '646bcf78e146e5f6c881f09e6fe6eeaa', 38, 143, '🔴 YouTube [ 10K ] Subscribers Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 10000, 10000, 'api', 'default', '134', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1772, 'b6faa66c088398024988d885b27462e2', 38, 143, '🔴 YouTube [ 20K ] Subscribers Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 20000, 20000, 'api', 'default', '88', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1773, 'edd536a1dc4aa5b05058dd1198d3768f', 38, 143, '🔴 YouTube [ 30K ] Subscribers Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 30000, 30000, 'api', 'default', '89', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1774, '9ed162d2f85e5af0c55fb56a24dfac12', 38, 143, '🔵 Facebook [ 5K ] Page Likes Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 5000, 5000, 'api', 'default', '90', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1775, 'f0ae85f008343f8d3c63984b0ab4fd28', 38, 143, '🔵 Facebook [ 10K ] Page Likes Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 10000, 10000, 'api', 'default', '91', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1776, 'b4424bc3e0556d6444b934e4d1f06e5c', 38, 143, '🔵 Facebook [ 20K ] Page Likes Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 20000, 20000, 'api', 'default', '92', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1777, 'c6d0a95d4aa9e480ea4f741833a0ea65', 38, 143, '🔵 Facebook [ 30K ] Page Likes Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 30000, 30000, 'api', 'default', '93', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1778, '1bfcb5f8eddc735b76d3c8d9dedeee49', 38, 143, '🔵 Facebook [ 40K ] Page Likes Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 40000, 40000, 'api', 'default', '94', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1779, '2e485a1e684464201bf73d40e4b80484', 38, 143, '🔵 Facebook [ 50K ] Page Likes Non Drop | 10-15K/D', NULL, '12998.7000', '9999.0000', 50000, 50000, 'api', 'default', '95', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1780, '0c1410dd0acf2a3bee64e9a7956b82be', 38, 143, '🔥 Youtube HR Views [ Life Time Guarantee - Max 8M ] [ Speed 10-15K+/D ]', NULL, '2.9300', '2.2500', 500, 8000000, 'api', 'default', '112', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1781, '9ae796220e24de440264714d494b9484', 38, 143, 'YT VIEWS EXLUSIVE', NULL, '1298.7000', '999.0000', 500, 2000000, 'api', 'default', '117', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');
INSERT INTO `services` (`id`, `ids`, `uid`, `cate_id`, `name`, `desc`, `price`, `original_price`, `min`, `max`, `add_type`, `type`, `api_service_id`, `api_provider_id`, `dripfeed`, `status`, `changed`, `created`) VALUES
(1782, 'ed6de2d9802472811dd9564759845110', 38, 143, 'Instagram %100 TURK Real Followers | Instant Super Fast! | No Refill	- 2K/H', NULL, '3.3000', '2.5400', 50, 8000, 'api', 'default', '368', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1783, 'c532e3e43378c77b3efb51751caa4919', 38, 143, 'Vip Subs', NULL, '12998.7000', '9999.0000', 1000, 2000, 'api', 'default', '128', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1784, '644d9cf70e74aecc4d650ebcc43a837d', 38, 143, 'Vip Subs 2', NULL, '12998.7000', '9999.0000', 1000, 30000, 'api', 'default', '136', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1785, '931afb197a3c36687b9999c6893f1bb1', 38, 143, 'YT Subs No Refill', NULL, '12998.7000', '9999.0000', 100, 5000, 'api', 'default', '133', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1786, 'e5a11af857a740b9194937de38cf50f7', 38, 143, 'YT Subs No Refill Different Data', NULL, '12998.7000', '9999.0000', 100, 15000, 'api', 'default', '141', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1787, '05b85180b48f705efe3d829777cd8c09', 38, 143, '⭐Twt Likes⭐', NULL, '128.7000', '99.0000', 20, 1000, 'api', 'default', '119', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1788, '8c9244bc147a2b80ec04a374f8e15552', 38, 143, '⭐Twt Likes⭐', NULL, '128.7000', '99.0000', 10, 1000, 'api', 'default', '125', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1789, 'acb24a494262abcf7744f0279d346bd9', 38, 143, '⭐Fb Post Likes⭐', NULL, '12998.7000', '9999.0000', 10, 10000, 'api', 'default', '120', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1790, 'bfac83c9ca9c6d119e467624461991eb', 38, 143, '⭐Fb Post Likes 2⭐', NULL, '12998.7000', '9999.0000', 10, 15000, 'api', 'default', '162', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1791, '9a74de21923da727c2f60d5b4f98ac0f', 38, 143, '⭐Fb Post Likes 2⭐', NULL, '12998.7000', '9999.0000', 50, 15000, 'api', 'default', '591', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1792, '25de0994d58809e2f9bcca874e32ff2c', 38, 143, '🔵Fb Page Likes🔵', NULL, '3.7700', '2.9000', 100, 70000, 'api', 'default', '124', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1793, '33881b8af5e5e0388cc00a061c75f432', 38, 143, '🔵 Fb Page Likes 2🔵', NULL, '128.7000', '99.0000', 100, 70000, 'api', 'default', '132', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1794, '83594bd0be036a09d0676dcb54cc8b2c', 38, 143, '❤️ Real Likes', NULL, '128.7000', '99.0000', 20, 150000, 'api', 'default', '127', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1795, '0ca2d7376037d5077b11726781c78897', 38, 143, '❤️ Real Likes', NULL, '128.7000', '99.0000', 20, 150000, 'api', 'default', '558', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1796, '8d97f12a2425d17b12550216dd588250', 38, 143, '💙 Real Likes Private', NULL, '128.7000', '99.0000', 50, 5000, 'api', 'default', '160', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1797, '4f71f7c0824d1c59eb15ab887a6d459b', 38, 143, '💙 Real Likes Private', NULL, '128.7000', '99.0000', 50, 25000, 'api', 'default', '328', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1798, '6e48a5d6735f9fa11e5f269d402d655b', 38, 143, '💙 Real Likes Private w', NULL, '128.7000', '99.0000', 50, 25000, 'api', 'default', '332', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1799, 'c1d5f681bd579dda417ac7fa7aadf0c7', 38, 143, '❤️ Real Likes Private w', NULL, '1298.7000', '999.0000', 20, 25000, 'api', 'default', '333', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1800, 'b00b565f7372454071bb581d58755714', 38, 143, '😈❤️ Real Likes Private w', NULL, '128.7000', '99.0000', 20, 40000, 'api', 'default', '334', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1801, 'f1e7de9981223aab9cf9a76a914b0242', 38, 143, '❤️ Real Likes 2', NULL, '1298.7000', '999.0000', 50, 3000, 'api', 'default', '159', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1802, 'd144b60271fda214e8fb1a0d52dcb662', 38, 143, '❤️ Real Likes 3', NULL, '1298.7000', '999.0000', 20, 80000, 'api', 'default', '164', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1803, '8d9aa91ab99c3d04e8deeb286986e5c4', 38, 143, '😈❤️ Real Likes 3', NULL, '0.6400', '0.4900', 20, 75000, 'api', 'default', '201', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1804, '597239bb39f044d989bc5afd633c5965', 38, 143, '😈❤️ Real Likes 3', NULL, '1.3000', '0.9990', 20, 15000, 'api', 'default', '2747', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1805, '41f612a297fbd77f32b42220d9d89180', 38, 143, '😈❤️ Real Likes Instant 5K/Hour No Drop R30', NULL, '1298.7000', '999.0000', 20, 85000, 'api', 'default', '415', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1806, 'bbec2fcb5bda6ed848b2f9a326c54d62', 38, 143, '😈❤️ Real Likes  R365 Instant NoDrop 3K/Hour', NULL, '1298.7000', '999.0000', 20, 30000, 'api', 'default', '300', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1807, 'a0d19837ea44cb59ce7a022ac70e4aba', 38, 143, '👹❤️ Real Likes 3-3', NULL, '1298.7000', '999.0000', 25, 8000, 'api', 'default', '259', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1808, '40a1545646709f5076c4aeac7d70275c', 38, 143, '❤️ Real Likes 3-3', NULL, '1298.7000', '999.0000', 25, 10000, 'api', 'default', '548', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1809, '8b6c202694c9e13b441f679744f4f6dd', 38, 143, '❤️ Real Likes 4', NULL, '1298.7000', '999.0000', 50, 15000, 'api', 'default', '184', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1810, '706910ab195f8897dd62b6192997ab80', 38, 143, '🔥❤️ Power Likes R45', NULL, '1298.7000', '999.0000', 20, 150000, 'api', 'default', '357', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1811, '61eed26acb6f5e0cc4c5a018f24bbb0c', 38, 143, '❤️ Slow Likes', NULL, '0.7200', '0.5500', 20, 10000, 'api', 'default', '256', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1812, '538ca025bc0f75e7d39951729d70b245', 38, 144, 'Facebook - Likes+Followers ~ Vietnam ~ Max 100k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ 1k/days ~ INSTANT', NULL, '1.2000', '0.9200', 100, 100000, 'api', 'default', '2934', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1813, 'b1318e644edc565d3764a9eb149bfed8', 38, 144, 'Facebook - Likes+Followers ~ Vietnam ~ Max 100k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ 3k/days ~ INSTANT', NULL, '2.1600', '1.6600', 100, 100000, 'api', 'default', '2935', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1814, '14b771e9a03b404d18a495f1d96b1c00', 38, 144, 'Facebook - Likes+Followers ~ Vietnam ~ Max 200k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ 50k/days ~ INSTANT', NULL, '2.3700', '1.8200', 1000, 200000, 'api', 'default', '2936', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1815, '6b946a703262615f761a1045d5d3b0a9', 38, 144, 'Facebook - Profile Followers ~ Vietnam ~ Max 100k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ 500/days ~ INSTANT', NULL, '1.2000', '0.9200', 100, 100000, 'api', 'default', '2937', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1816, '16b436bc5c30996cb6e7e71b400fa553', 38, 144, 'Facebook - Profile Followers ~ Vietnam ~ Max 200k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ 3k/days ~ INSTANT', NULL, '1.8900', '1.4500', 100, 200000, 'api', 'default', '2938', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1817, 'dbe5424eec752f013df235f6a98d0d68', 38, 144, 'Facebook - Profile Followers ~ Vietnam ~ Max 200k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ 50k/days ~ INSTANT', NULL, '2.3700', '1.8200', 1000, 200000, 'api', 'default', '2939', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1818, 'bd6510ed0c9d41245a98af4b18cd47ee', 38, 144, 'Facebook - Post Likes ~ Vietnam ~ Max 100k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ 12k/days ~ INSTANT', NULL, '0.6100', '0.4700', 100, 100000, 'api', 'default', '2940', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1819, 'ed00fcc05e6a4dee5477ca83a569a3b5', 38, 144, 'Facebook - Post Likes ~ Vietnam ~ Max 1k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ 1k/1min ~ INSTANT', NULL, '0.7500', '0.5800', 50, 1000, 'api', 'default', '2941', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1820, '2ae3ea776407f2fd7e7eba61cd2230c5', 38, 144, 'Facebook - Post Likes ~ Vietnam ~ Max 100k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ 10k/days ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2942', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1821, '68a6b59a69157a3fd9ec2437bcd0da2d', 38, 144, 'Facebook - Post Likes ~ Vietnam ~ Max 100k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ 10k/days ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2943', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1822, '521b05a2749caace7410d6b51aa8e2dd', 38, 144, 'Facebook - Post Likes ~ Vietnam ~ Max 100k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ 10k/days ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2944', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1823, '4d2d3764b996140a0e34c41e19a9e223', 38, 144, 'Facebook - Comment Likes ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D  ~ 2k/days ~ INSTANT', NULL, '5.6200', '4.3200', 10, 20000, 'api', 'default', '2945', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1824, '320483ea235eea956a334e08f63b94b5', 38, 144, 'Facebook - Auto Page Post Likes ~ Vietnam', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'subscriptions', '2946', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1825, '4949b0b9d11e7fe7166127bfb85d0515', 38, 144, 'Facebook - Share ~ Vietnam ~ Max 1k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D  ~ 1k/days ~ INSTANT', NULL, '1.2000', '0.9200', 100, 1000000, 'api', 'default', '2948', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1826, 'c1399d8098f0349066fbf2e16ee448d7', 38, 144, 'Facebook - Group Join ~ Vietnam ~ Max 250k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D  ~ 2k/days ~ INSTANT', NULL, '2.6400', '2.0300', 5000, 250000, 'api', 'default', '2949', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1827, 'd78581a1e61b9937235d9ce4d332e187', 38, 144, 'Facebook - Group Join ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D  ~ 2k/days ~ INSTANT', NULL, '4.8500', '3.7300', 1000, 50000, 'api', 'default', '2950', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1828, '2ba26e549641be990dd2b5378c3aed1d', 38, 144, 'Facebook - Comment ~ Post | Live Video ~ Max 100 ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D  ~ 100/Hrs ~ INSTANT', NULL, '29.8000', '22.9200', 10, 100, 'api', 'custom_comments', '2951', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1829, '5f99bd17f76d60acd43cb34a95aef40d', 38, 144, 'Facebook - Comment ~ Only Post  ~ Max 100k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D  ~ 1k/days ~ INSTANT', NULL, '7.0200', '5.4000', 20, 100000, 'api', 'custom_comments', '2952', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1830, 'f22adab3733b642363bf6bb32e9885ea', 38, 144, 'Facebook - Auto Post Likes ~ Vietnam ~ Monthly Package', NULL, '118.8300', '91.4100', 50, 10000, 'api', 'default', '2953', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1831, 'fa97b053019f6e721ba9911c645d6446', 38, 145, 'Facebook - Reaction ~ Love ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2954', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1832, 'ed4f46f8762446873348780f58a5983a', 38, 145, 'Facebook - Reaction ~ Care ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2955', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1833, 'a4653249859e32e26bd4f3fe069aff1f', 38, 145, 'Facebook - Reaction ~ HaHa ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2956', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1834, '388f08072396b7ad0cc0e44a2dd2f3de', 38, 145, 'Facebook - Reaction ~ WoW ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2957', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1835, '4d533be84980554f5755070e3b3f4439', 38, 145, 'Facebook - Reaction ~ Sad ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2958', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1836, 'e4b41a3d20172e0c1692bef2a2dd6e42', 38, 145, 'Facebook - Reaction ~ Angry ~ Vietnam ~ Max 50k ~ 𝗥𝗘𝗙𝗜𝗟𝗟 30D ~ INSTANT', NULL, '1.6600', '1.2800', 50, 50000, 'api', 'default', '2959', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1837, 'cc4cc63cfced739ad70d1bd97100b64a', 38, 145, 'Facebook - Reaction ~ Love ~ Vietnam ~ Max 1k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ INSTANT', NULL, '1.0000', '0.7700', 50, 1000, 'api', 'default', '2960', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1838, '2b4522f4d341b186654a75b1880f34f6', 38, 145, 'Facebook - Reaction ~ HaHa ~ Vietnam ~ Max 1k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ INSTANT', NULL, '1.0000', '0.7700', 50, 1000, 'api', 'default', '2961', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1839, '8ee464bc82b0fb02b73ec04c968f58df', 38, 145, 'Facebook - Reaction ~ WoW ~ Vietnam ~ Max 1k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ INSTANT', NULL, '1.0000', '0.7700', 50, 1000, 'api', 'default', '2962', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1840, '3269992e1ac9cdd0d113c56914c662d5', 38, 145, 'Facebook - Reaction ~ Sad ~ Vietnam ~ Max 1k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ INSTANT', NULL, '1.0000', '0.7700', 50, 1000, 'api', 'default', '2963', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13'),
(1841, '6b7801a9c10bc32e912cd12d49ba458f', 38, 145, 'Facebook - Reaction ~ Angry ~ Vietnam ~ Max 1k ~ 𝐍𝐎 𝗥𝗘𝗙𝗜𝗟𝗟 ~ INSTANT', NULL, '1.0000', '0.7700', 50, 1000, 'api', 'default', '2964', 4, 0, 1, '2021-08-19 14:53:13', '2021-08-19 14:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed','answered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `user_read` double NOT NULL DEFAULT '0',
  `admin_read` double NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creditcards`
--
ALTER TABLE `creditcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users_price`
--
ALTER TABLE `general_users_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `creditcards`
--
ALTER TABLE `creditcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `general_lang`
--
ALTER TABLE `general_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `general_users_price`
--
ALTER TABLE `general_users_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1842;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
