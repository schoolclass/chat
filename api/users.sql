-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-12-29 17:22:57
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
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `userId` int(11) UNSIGNED NOT NULL COMMENT '自增ID',
  `userName` varchar(40) DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(40) DEFAULT NULL COMMENT '用户密码',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `userLevel` smallint(1) DEFAULT '1' COMMENT '用户等级。0表示超级管理员，1表示普通用户',
  `phoneNumber` varchar(11) DEFAULT NULL COMMENT '手机号码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`userId`, `userName`, `passWord`, `userAvatar`, `userLevel`, `phoneNumber`) VALUES
(135, '应华', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181126/1543203847.png', 0, '13758255527'),
(141, '美食家', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180928/1538144276.png', 1, NULL),
(142, '咖啡', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538229592.png', 1, '13758255527'),
(143, '南笙', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181401.png', 1, NULL),
(144, '哈哈哈', '70d6d78d2129e59f995533ca0fe24bc182792901', '../upload/20180929/1538181411.png', 1, NULL),
(145, '头像', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20180929/1538181437.png', 1, NULL),
(146, '咕叽', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', '../upload/20180929/1538181445.png', 1, NULL),
(147, '呦呵', '17ba0791499db908433b80f37c5fbc89b870084b', '../upload/20180929/1538181459.png', 1, NULL),
(148, '小二', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181496.png', 1, NULL),
(149, '万', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181510.png', 1, NULL),
(150, '嗯', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181535.png', 1, NULL),
(151, '尼泊尔', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181539.png', 1, NULL),
(152, '王豪文', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181566.png', 1, NULL),
(153, '黄荣', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181567.png', 1, NULL),
(154, '我我我我我', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181591.png', 1, '18958142940'),
(155, '应华大魔王', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538181595.png', 1, NULL),
(156, '西街', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181596.png', 1, NULL),
(157, '啊', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20180929/1538181623.png', 1, NULL),
(158, '王大锤', 'cfa1150f1787186742a9a884b73a43d8cf219f9b', '../upload/20180929/1538181630.png', 1, NULL),
(159, '丁聪', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20180929/1538181798.png', 1, NULL),
(160, '林康', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538181864.png', 1, NULL),
(161, '嗨', 'c1dfd96eea8cc2b62785275bca38ac261256e278', '../upload/20180929/1538181956.png', 1, NULL),
(162, '东', 'e78386fe483881d7ae85c1d9f5b1490eeaf2fe45', '../upload/20180929/1538182056.png', 1, NULL),
(163, '轩辕十四', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538182084.png', 1, NULL),
(164, '杨元宝', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '../upload/20180929/1538184503.png', 1, NULL),
(165, '大家', 'bed4eb698c6eeea7f1ddf5397d480d3f2c0fb938', '../upload/20180929/1538182403.png', 1, NULL),
(166, '黎哥就是我', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180929/1538182422.png', 1, NULL),
(167, '一一一一', '1161e6ffd3637b302a5cd74076283a7bd1fc20d3', '../upload/20180929/1538182456.png', 1, NULL),
(168, '秀苹', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538182635.png', 1, NULL),
(169, '你', '22ea1c649c82946aa6e479e1ffd321e4a318b1b0', '../upload/20180929/1538182808.png', 1, NULL),
(170, '信仰', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538182897.png', 1, NULL),
(171, '由于', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538189884.png', 1, NULL),
(172, '哈哈', '70d6d78d2129e59f995533ca0fe24bc182792901', '../upload/20180929/1538190722.png', 1, NULL),
(173, '超级用户', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538190936.png', 1, NULL),
(174, '罗学成', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538193169.png', 1, NULL),
(175, '王', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538200812.png', 1, NULL),
(176, '威威日', 'fb0a8929865016ba27349dbfeeaa31a699fb74d5', '../upload/20180929/1538201333.png', 1, NULL),
(177, '陈陈', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538201489.png', 1, NULL),
(178, '陈陈陈陈', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538201535.png', 1, NULL),
(179, '广告', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538217036.png', 1, NULL),
(180, '啊啊', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180929/1538217992.png', 1, NULL),
(181, '啦', '7b52009b64fd0a2a49e6d8a939753077792b0554', '../upload/20180929/1538220785.png', 1, NULL),
(182, '啦啦啦', '8cb2237d0679ca88db6464eac60da96345513964', '../upload/20180929/1538223337.png', 1, NULL),
(183, '请问', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', '../upload/20180930/1538278711.png', 1, NULL),
(184, '气温', '4d9012b4a77a9524d675dad27c3276ab5705e5e8', '../upload/20180930/1538279048.png', 1, NULL),
(185, '前期', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20180930/1538279131.png', 1, NULL),
(186, '问问', '601f1889667efaebb33b8c12572835da3f027f78', '../upload/20180930/1538279246.png', 1, NULL),
(187, '也一样', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20180930/1538279375.png', 1, NULL),
(188, '朱文韬', 'eaa67f3a93d0acb08d8a5e8ff9866f51983b3c3b', '../upload/20180930/1538286485.png', 1, NULL),
(189, '丁丁', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20180930/1538286751.png', 1, NULL),
(190, '时代的', 'c441f164b1283bd56e0aa24dabb133150397df87', '../upload/20181002/1538492349.png', 1, NULL),
(191, '刘', '601f1889667efaebb33b8c12572835da3f027f78', '../upload/20181004/1538630920.png', 1, NULL),
(192, '海', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20181004/1538631327.png', 1, NULL),
(193, '订单', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20181004/1538631627.png', 1, NULL),
(194, '简介', '011c945f30ce2cbafc452f39840f025693339c42', '../upload/20181004/1538633785.png', 1, NULL),
(195, '啊啊啊', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181004/1538636363.png', 1, NULL),
(196, '地导弹', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181004/1538636622.png', 1, NULL),
(197, '上课时空', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '../upload/20181004/1538637587.png', 1, NULL),
(198, '张嘉豪', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181004/1538637637.png', 1, NULL),
(199, '阿三的理解阿', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '../upload/20181005/1538742037.png', 1, NULL),
(200, '哩哩啦啦', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '../upload/20181007/1538905300.png', 1, NULL),
(201, '啊呀', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20181006/1538801411.png', 1, NULL),
(202, '月华', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181008/1538982116.png', 1, NULL),
(203, '刘小凡', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181008/1538986797.png', 1, '11111111111'),
(204, '何俊克', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181008/1538986918.png', 1, NULL),
(205, '石头', 'ec9ed463f0154874d2768f2a8ce7689f16923633', '../upload/20181008/1538986969.png', 1, '13779999773'),
(206, '乔治', '7c4a8d09ca3762af61e59520943dc26494f8941b', '../upload/20181009/1539053354.png', 1, NULL),
(207, '及户籍', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20181009/1539082804.png', 1, NULL),
(208, '聚聚', '356a192b7913b04c54574d18c28d46e6395428ab', '../upload/20181009/1539086002.png', 1, NULL),
(209, '古月方源', 'db524b0ce68f7275aca7a733be9744f08071d80b', '../upload/20181022/1540204561.png', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID', AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
