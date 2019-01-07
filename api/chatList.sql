-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-12-29 17:22:51
-- 服务器版本： 5.6.21-log
-- PHP Version: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- 表的结构 `chatList`
--

CREATE TABLE `chatList` (
  `chatId` int(11) NOT NULL COMMENT '聊天室id',
  `title` varchar(20) DEFAULT NULL COMMENT '聊天室名称',
  `body` varchar(255) DEFAULT NULL COMMENT '聊天室简介 ',
  `createDate` date DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='聊天室列表';

--
-- 转存表中的数据 `chatList`
--

INSERT INTO `chatList` (`chatId`, `title`, `body`, `createDate`) VALUES
(3, '午饭吃什么', '午饭吃什么，作为一个千年难解的难题！是一个值得研究的方法。要不还是先来一杯奶茶。', '2018-09-27'),
(4, '我爱学习', '我们主要学习的有HTML,CSS,JAVASCRIPT,JQURTY,VUE', '2018-09-27'),
(5, 'Vue.js', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。', '2018-09-27'),
(15, '轩辕十四', '四大王星', '2018-09-29'),
(16, '元宝', '元宝', '2018-09-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatList`
--
ALTER TABLE `chatList`
  ADD PRIMARY KEY (`chatId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `chatList`
--
ALTER TABLE `chatList`
  MODIFY `chatId` int(11) NOT NULL AUTO_INCREMENT COMMENT '聊天室id', AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
