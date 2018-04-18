-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-18 12:30:06
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `author` varchar(32) NOT NULL,
  `keyword` varchar(64) NOT NULL,
  `image` varchar(256) NOT NULL,
  `abstract` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL,
  `belong` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `editor_id` int(4) unsigned NOT NULL,
  `auditor_id` int(4) unsigned DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_UNIQUE` (`source`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `author`, `keyword`, `image`, `abstract`, `source`, `date`, `content`, `belong`, `status`, `amount`, `editor_id`, `auditor_id`, `create_time`, `update_time`) VALUES
(19, '杭州大江东产业集聚区管理条例', 'root', '管理条例、产业集聚区', '/image/20170918/a496d35ea63b8cbaff3d0f6d4b6cac16.jpg', '最新条例！', 'zhihu', '2017-09-28', '（2016年12月29日杭州市第十二届人民代表大会常务委员会第四十一次会议通过\n　　2017年3月30日浙江省第十二届人民代表大会常务委员会第三十九次会议批准）\n　　杭州市第十二届人民代表大会常务委员会公告\n　　第82号\n　　2016年12月29日杭州市第十二届人民代表大会常务委员会第四十一次会议审议通过的《杭州大江东产业集聚区管理条例》，已经2017年3月30日浙江省第十二届人民代表大会常务委员会第三十九次会议批准，现予公布，自2017年5月1日起施行。', 2, 1, 4, 1, NULL, 1505728486, 1505728803),
(18, '党建引领 特色服务 巧客小镇发展驶入快车道', 'root', '党建，规划', '/image/20170918/55db5d69705a27cd93cf38b8d83a2b40.jpg', '【党建+规划】：镇小客巧 生态家园', 'douban', '2017-06-28', '在巧客小镇创建过程中，河庄街道党工委以“党建引领、特色服务”为总体思路，深入实施“党建+”工程，从“党建+规划”、“党建+项目”、“党建+宣传”等多个维度创新举措，最大限度发挥党支部战斗堡垒作用和党员先锋模范作用，为巧客小镇的特色化、差异化发展注入了强大的“红色动力”。\n【党建+规划】：镇小客巧 生态家园\n    河庄街道党工委通过召开会议、开展座谈、走村入户等多种方式加大特色小镇“镇小客巧 生态家园”建设理念的宣传力度，争取群众的最大理解和支持，为特色小镇创建营造良好的社会氛围和奠定下阶段深入推进的基础。同时坚持党建工作与特色小镇建设同步规划、同步推进，积极探索创新党内组织生活，为特色小镇创建聚合力、添活力、激动力。', 3, 1, 1, 1, 0, 1505728204, 1505728204),
(20, '江东村文化礼堂开展了迎端午裹粽子活动', 'root', '端午、粽子', '/image/20170918/3710252fdfaf2e8e878c9e4447d45735.jpg', '裹粽子活动！', 'guokr', '2017-09-24', '在端午节即将到来之际，为了传承和弘扬中华优秀传统美德，增进邻里和谐，5月24日下午，江东村文化礼堂开展了迎端午裹粽子活动。江东村妇女代表共20余人参加了活动。\n端午节又称端阳节，是中华名族的传统节日，在这一天人们有着吃粽子、赛龙舟的习俗。端午节前夕为了让村民们体验端午气氛、感受传统节日文化，丰富村民的文化生活，江东村文化礼堂特开展了此次活动。村民们说，包粽子、吃粽子，一直是我们中国的传统习俗，村文化礼堂组织这个包粽子活动不仅使他们感受到了浓浓的传统文化氛围，而且也使大家在互帮互助的包粽子过程中，增进了邻里间的友情。', 1, 1, 1, 1, NULL, 1505728661, 1505729130),
(21, '与义蓬火星村开展两村工作交流活动', 'root', '交流、火星村', '/image/20170918/982ea82d34b97ca69eb5e7415b233d87.jpg', '欢迎火星村代表！', '村务公开', '2017-06-21', '6月21日，义蓬街道火星村组织的村民代表一行专程来到河庄街道江东村，开展两村工作学习交流活动。火星村代表们一行先后参观了江东村直河及沿线整治情况和村文化礼堂，实地了解江东村建设发展现状，随后与江东村书记方建庆面对面座谈交流。通过观看视频和汇报交流，双方着重在村不文明现象整治，如何做好村风民风的建设等内容进行了深入的探讨和交流，大家对江东村的做法予以肯定，对取得的成绩表示赞赏，纷纷表示将认真学习和借鉴先进经验，因村制宜，拉高标杆，科学规划，为村民群众创造更加优美的居住生活环境。（丁海江、陈狄锋）', 2, 1, 2, 1, 0, 1505729827, 1505729827);

-- --------------------------------------------------------

--
-- 表的结构 `exhibit`
--

CREATE TABLE IF NOT EXISTS `exhibit` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(6) unsigned NOT NULL,
  `picture` varchar(256) NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` char(40) NOT NULL,
  `realname` varchar(8) NOT NULL,
  `email` varchar(256) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `last_login_ip` varchar(16) DEFAULT NULL,
  `last_login_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `realname`, `email`, `rank`, `status`, `last_login_ip`, `last_login_time`) VALUES
(1, 'root', 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'woider', 'root@email.com', 0, 1, '0.0.0.0', 1505730105);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
