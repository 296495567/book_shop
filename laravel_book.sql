-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-12 17:46:30
-- 服务器版本： 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_book`
--

-- --------------------------------------------------------

--
-- 表的结构 `book_admin`
--

CREATE TABLE `book_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_admin`
--

INSERT INTO `book_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'ca95a7cb6dfc2a840255b7703d5a3f21');

-- --------------------------------------------------------

--
-- 表的结构 `book_cart_item`
--

CREATE TABLE `book_cart_item` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `book_category`
--

CREATE TABLE `book_category` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category_no` int(3) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `preview` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_category`
--

INSERT INTO `book_category` (`id`, `name`, `category_no`, `parent_id`, `preview`, `created_at`, `updated_at`) VALUES
(1, 'php', 1, NULL, NULL, NULL, NULL),
(2, 'java', 2, NULL, NULL, NULL, NULL),
(3, 'javascript', 3, NULL, NULL, NULL, NULL),
(4, 'laravel', 1, 1, NULL, NULL, NULL),
(5, 'java web', 2, 2, NULL, NULL, NULL),
(6, 'angular.js', 3, 3, NULL, NULL, NULL),
(7, 'thinkphp', 1, 1, NULL, NULL, NULL),
(8, 'node.js', 3, 3, NULL, '2018-04-08 06:28:17', '2018-04-08 06:28:17'),
(9, 'java-base', 2, 2, '', '2018-04-12 08:16:37', '2018-04-12 08:16:37'),
(10, '心灵鸡汤', 4, NULL, '', '2018-04-12 09:05:00', '2018-04-12 09:05:00'),
(11, '遇见未知的自己', 4, 10, '', '2018-04-12 09:17:15', '2018-04-12 09:17:15'),
(12, '青春文学', 5, NULL, '', '2018-04-12 09:24:34', '2018-04-12 09:24:34'),
(13, '那年春天', 5, 12, NULL, '2018-04-12 09:25:07', '2018-04-12 09:25:07');

-- --------------------------------------------------------

--
-- 表的结构 `book_member`
--

CREATE TABLE `book_member` (
  `id` int(11) NOT NULL,
  `nickname` varchar(16) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_member`
--

INSERT INTO `book_member` (`id`, `nickname`, `phone`, `email`, `active`, `password`, `created_at`, `updated_at`) VALUES
(1, 'nick', '15123456789', NULL, NULL, '55555', '2018-03-30 03:39:21', '2018-03-30 03:43:24'),
(2, 'kg', '15899995555', NULL, NULL, '66666', '2018-03-30 03:44:00', '2018-03-30 03:44:03'),
(3, 'kjjg', '15865452356', NULL, NULL, '999999', NULL, NULL),
(7, NULL, '15920123551', NULL, 0, 'e10adc3949ba59abbe56e057f20f883e', '2018-04-02 10:26:01', '2018-04-02 10:26:01'),
(10, 'King', '15888888888', '296495567@qq.com', 1, 'e10adc3949ba59abbe56e057f20f883e', '2018-04-03 02:21:05', '2018-04-12 08:46:13');

-- --------------------------------------------------------

--
-- 表的结构 `book_order`
--

CREATE TABLE `book_order` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `order_no` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payway` int(11) DEFAULT '1',
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_order`
--

INSERT INTO `book_order` (`id`, `member_id`, `order_no`, `name`, `total_price`, `payway`, `status`, `created_at`, `updated_at`) VALUES
(46, 7, 'E152335560946', '《ThinkPHP实战》', '78.40', 1, 2, '2018-04-10 10:20:09', '2018-04-12 08:16:04'),
(47, 7, 'E152341797747', '《Laravel入门与实战》', '140.80', 1, 2, '2018-04-11 03:39:37', '2018-04-11 03:39:37'),
(49, 7, 'E152341800549', '《Node.js指南》', '11.00', 1, 1, '2018-04-11 03:40:04', '2018-04-11 03:40:05'),
(50, 7, 'E152343347650', '《Laravel入门与实战》', '281.60', 1, 1, '2018-04-11 07:57:56', '2018-04-11 07:57:56'),
(55, 7, 'E152343387355', '《Laravel入门与实战》', '140.80', 1, 1, '2018-04-11 08:04:32', '2018-04-11 08:04:33'),
(56, 7, 'E152343408456', '《Laravel入门与实战》', '140.80', 1, 1, '2018-04-11 08:08:04', '2018-04-11 08:08:04'),
(59, 7, 'E152343419359', '《深入浅出Node.js》', '10.00', 1, 1, '2018-04-11 08:09:53', '2018-04-11 08:09:53'),
(61, 7, 'E152343695261', '《ThinkPHP实战》《Node.js指南》', '50.20', 1, 1, '2018-04-11 08:55:52', '2018-04-11 08:55:52'),
(62, 10, 'E152350098962', '《ThinkPHP实战》', '39.20', 1, 1, '2018-04-12 02:43:09', '2018-04-12 02:43:09'),
(63, 10, 'E152350305663', '《Laravel入门与实战》', '140.80', 1, 2, '2018-04-12 03:17:36', '2018-04-12 03:18:08'),
(64, 10, 'E152350321864', '《ThinkPHP实战》', '39.20', 1, 1, '2018-04-12 03:20:18', '2018-04-12 03:20:18'),
(66, 10, 'E152350332166', '《Node.js指南》', '11.00', 1, 2, '2018-04-12 03:22:01', '2018-04-12 03:22:58'),
(67, 10, 'E152350393167', '《深入浅出Node.js》', '10.00', 1, 1, '2018-04-12 03:32:11', '2018-04-12 03:32:11'),
(68, 10, 'E152351593068', '《深入浅出Node.js》《Node.js指南》', '21.00', 1, 2, '2018-04-12 06:52:09', '2018-04-12 06:52:23');

-- --------------------------------------------------------

--
-- 表的结构 `book_order_item`
--

CREATE TABLE `book_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `pdt_snapshot` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_order_item`
--

INSERT INTO `book_order_item` (`id`, `order_id`, `product_id`, `count`, `pdt_snapshot`) VALUES
(1, 46, 6, 2, '{"id":6,"name":"ThinkPHP\\u5b9e\\u6218","summary":"\\u719f\\u6089\\u638c\\u63e1\\u5b9e\\u7528\\u7684ThinkPHP\\u6280\\u672f\\uff0c\\u6210\\u4e3a\\u5feb\\u901f\\u3001\\u7b80\\u5355\\u9762\\u5411\\u5bf9\\u8c61\\u7684\\u8f7b\\u91cf\\u7ea7PHP\\u5f00\\u53d1\\u6846\\u67b6\\u9ad8\\u624b","price":"39.20","preview":"\\/images\\/6.jpg","category_id":7,"created_at":null,"updated_at":null}'),
(2, 47, 5, 1, '{"id":5,"name":"Laravel\\u5165\\u95e8\\u4e0e\\u5b9e\\u6218","summary":"\\u6784\\u5efa\\u4e3b\\u6d41PHP\\u5e94\\u7528\\u5f00\\u53d1\\u6846\\u67b6+Laravel\\u6846\\u67b6\\u5173\\u952e\\u6280\\u672f","price":"140.80","preview":"\\/images\\/5.jpg","category_id":4,"created_at":null,"updated_at":null}'),
(3, 49, 2, 1, '{"id":2,"name":"Node.js\\u6307\\u5357","summary":"node.js\\u6307\\u5357\\uff0c\\u6307\\u5357node.js","price":"11.00","preview":"\\/images\\/2.jpg","category_id":8,"created_at":"2018-04-08 15:13:36","updated_at":"2018-04-08 15:13:36"}'),
(4, 50, 5, 2, '{"id":5,"name":"Laravel\\u5165\\u95e8\\u4e0e\\u5b9e\\u6218","summary":"\\u6784\\u5efa\\u4e3b\\u6d41PHP\\u5e94\\u7528\\u5f00\\u53d1\\u6846\\u67b6+Laravel\\u6846\\u67b6\\u5173\\u952e\\u6280\\u672f","price":"140.80","preview":"\\/images\\/5.jpg","category_id":4,"created_at":null,"updated_at":null}'),
(5, 55, 5, 1, '{"id":5,"name":"Laravel\\u5165\\u95e8\\u4e0e\\u5b9e\\u6218","summary":"\\u6784\\u5efa\\u4e3b\\u6d41PHP\\u5e94\\u7528\\u5f00\\u53d1\\u6846\\u67b6+Laravel\\u6846\\u67b6\\u5173\\u952e\\u6280\\u672f","price":"140.80","preview":"\\/images\\/5.jpg","category_id":4,"created_at":null,"updated_at":null}'),
(6, 56, 5, 1, '{"id":5,"name":"Laravel\\u5165\\u95e8\\u4e0e\\u5b9e\\u6218","summary":"\\u6784\\u5efa\\u4e3b\\u6d41PHP\\u5e94\\u7528\\u5f00\\u53d1\\u6846\\u67b6+Laravel\\u6846\\u67b6\\u5173\\u952e\\u6280\\u672f","price":"140.80","preview":"\\/images\\/5.jpg","category_id":4,"created_at":null,"updated_at":null}'),
(7, 59, 1, 1, '{"id":1,"name":"\\u6df1\\u5165\\u6d45\\u51faNode.js","summary":"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3node\\u7684\\u56fe\\u4e66","price":"10.00","preview":"\\/images\\/1.jpg","category_id":8,"created_at":"2018-04-08 15:13:38","updated_at":"2018-04-08 15:13:38"}'),
(8, 61, 6, 1, '{"id":6,"name":"ThinkPHP\\u5b9e\\u6218","summary":"\\u719f\\u6089\\u638c\\u63e1\\u5b9e\\u7528\\u7684ThinkPHP\\u6280\\u672f\\uff0c\\u6210\\u4e3a\\u5feb\\u901f\\u3001\\u7b80\\u5355\\u9762\\u5411\\u5bf9\\u8c61\\u7684\\u8f7b\\u91cf\\u7ea7PHP\\u5f00\\u53d1\\u6846\\u67b6\\u9ad8\\u624b","price":"39.20","preview":"\\/images\\/6.jpg","category_id":7,"created_at":null,"updated_at":null}'),
(9, 61, 2, 1, '{"id":2,"name":"Node.js\\u6307\\u5357","summary":"node.js\\u6307\\u5357\\uff0c\\u6307\\u5357node.js","price":"11.00","preview":"\\/images\\/2.jpg","category_id":8,"created_at":"2018-04-08 15:13:36","updated_at":"2018-04-08 15:13:36"}'),
(10, 62, 6, 1, '{"id":6,"name":"ThinkPHP\\u5b9e\\u6218","summary":"\\u719f\\u6089\\u638c\\u63e1\\u5b9e\\u7528\\u7684ThinkPHP\\u6280\\u672f\\uff0c\\u6210\\u4e3a\\u5feb\\u901f\\u3001\\u7b80\\u5355\\u9762\\u5411\\u5bf9\\u8c61\\u7684\\u8f7b\\u91cf\\u7ea7PHP\\u5f00\\u53d1\\u6846\\u67b6\\u9ad8\\u624b","price":"39.20","preview":"\\/images\\/6.jpg","category_id":7,"created_at":null,"updated_at":null}'),
(11, 63, 5, 1, '{"id":5,"name":"Laravel\\u5165\\u95e8\\u4e0e\\u5b9e\\u6218","summary":"\\u6784\\u5efa\\u4e3b\\u6d41PHP\\u5e94\\u7528\\u5f00\\u53d1\\u6846\\u67b6+Laravel\\u6846\\u67b6\\u5173\\u952e\\u6280\\u672f","price":"140.80","preview":"\\/images\\/5.jpg","category_id":4,"created_at":null,"updated_at":null}'),
(12, 64, 6, 1, '{"id":6,"name":"ThinkPHP\\u5b9e\\u6218","summary":"\\u719f\\u6089\\u638c\\u63e1\\u5b9e\\u7528\\u7684ThinkPHP\\u6280\\u672f\\uff0c\\u6210\\u4e3a\\u5feb\\u901f\\u3001\\u7b80\\u5355\\u9762\\u5411\\u5bf9\\u8c61\\u7684\\u8f7b\\u91cf\\u7ea7PHP\\u5f00\\u53d1\\u6846\\u67b6\\u9ad8\\u624b","price":"39.20","preview":"\\/images\\/6.jpg","category_id":7,"created_at":null,"updated_at":null}'),
(13, 66, 2, 1, '{"id":2,"name":"Node.js\\u6307\\u5357","summary":"node.js\\u6307\\u5357\\uff0c\\u6307\\u5357node.js","price":"11.00","preview":"\\/images\\/2.jpg","category_id":8,"created_at":"2018-04-08 15:13:36","updated_at":"2018-04-08 15:13:36"}'),
(14, 67, 1, 1, '{"id":1,"name":"\\u6df1\\u5165\\u6d45\\u51faNode.js","summary":"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3node\\u7684\\u56fe\\u4e66","price":"10.00","preview":"\\/images\\/1.jpg","category_id":8,"created_at":"2018-04-08 15:13:38","updated_at":"2018-04-08 15:13:38"}'),
(15, 68, 1, 1, '{"id":1,"name":"\\u6df1\\u5165\\u6d45\\u51faNode.js","summary":"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3node\\u7684\\u56fe\\u4e66","price":"10.00","preview":"\\/images\\/1.jpg","category_id":8,"created_at":"2018-04-08 15:13:38","updated_at":"2018-04-08 15:13:38"}'),
(16, 68, 2, 1, '{"id":2,"name":"Node.js\\u6307\\u5357","summary":"node.js\\u6307\\u5357\\uff0c\\u6307\\u5357node.js","price":"11.00","preview":"\\/images\\/2.jpg","category_id":8,"created_at":"2018-04-08 15:13:36","updated_at":"2018-04-08 15:13:36"}');

-- --------------------------------------------------------

--
-- 表的结构 `book_pdt_content`
--

CREATE TABLE `book_pdt_content` (
  `id` int(11) NOT NULL,
  `content` varchar(20000) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_pdt_content`
--

INSERT INTO `book_pdt_content` (`id`, `content`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '本书从基础开始详细地讲解了Laravel开发框架。本书对Laravel框架进行了系统的介绍，包括Laravel的背景、Laravel开发环境的搭建、路由与控制器、Blade模板、前端组件、收集和处理用户数据、Artisan和Tinker、数据库和Eloquent、容器、Laravel测试等知识。通过阅读本书，读者可以比较全面地学习并掌握Laravel开发的相关理论知识。另外，书中涵盖大量实例，更有利于读者在学习过程中不断实践。', 5, NULL, NULL),
(2, '<p>《深入浅出Node.js》从不同的视角介绍了 Node 内在的特点和结构。由首章Node 介绍为索引，涉及Node 的各个方面，主要内容包含模块机制的揭示、异步I/O 实现原理的展现、异步编程的探讨、内存控制的介绍、二进制数据Buffer 的细节、Node 中的网络编程基础、Node 中的Web 开发、进程间的消息传递、Node 测试以及通过Node 构建产品需要的注意事项。附录介绍了Node 的安装、调试、编码规范和NPM 仓库等事宜。 <br>　　《深入浅出Node.js》适合想深入了解 Node 的人员阅读。</p>', 1, '2018-04-08 08:03:05', '2018-04-08 08:03:05'),
(3, '<p>《深入浅出Node.js》从不同的视角介绍了 Node 内在的特点和结构。由首章Node 介绍为索引，涉及Node 的各个方面，主要内容包含模块机制的揭示、异步I/O 实现原理的展现、异步编程的探讨、内存控制的介绍、二进制数据Buffer 的细节、Node 中的网络编程基础、Node 中的Web 开发、进程间的消息传递、Node 测试以及通过Node 构建产品需要的注意事项。附录介绍了Node 的安装、调试、编码规范和NPM 仓库等事宜。 <br>　　《深入浅出Node.js》适合想深入了解 Node 的人员阅读。</p>', 2, '2018-04-09 08:51:16', '2018-04-09 08:51:16'),
(4, '<p>《深入浅出Node.js》从不同的视角介绍了 Node 内在的特点和结构。由首章Node 介绍为索引，涉及Node 的各个方面，主要内容包含模块机制的揭示、异步I/O 实现原理的展现、异步编程的探讨、内存控制的介绍、二进制数据Buffer 的细节、Node 中的网络编程基础、Node 中的Web 开发、进程间的消息传递、Node 测试以及通过Node 构建产品需要的注意事项。附录介绍了Node 的安装、调试、编码规范和NPM 仓库等事宜。 <br>　　《深入浅出Node.js》适合想深入了解 Node 的人员阅读。</p>', 6, '2018-04-09 08:55:15', '2018-04-09 08:55:15'),
(5, '由Facebook开发，并且被Netflix、Walmart和The New York Times等公司用于构建大部分Web界面，React很快就受到大众的青睐。通过这本实践指南学习你将如何构建React组件，并充分感受React在实际工作中的神奇魅力。\r\n\r\n用JavaScript学习核心的函数式编程概念。\r\n\r\n了解React在浏览器中的运行机制。\r\n\r\n通过挂载和合成React组件来创建应用程序表现层。\r\n\r\n使用组件树管理数据，减少调试应用程序的时间。\r\n\r\n探索React组件生命周期，并使用它来加载数据和提高UI性能。\r\n\r\n为浏览器历史、书签和单页应用程序的其他功能选用路由解决方案。\r\n\r\n学习如何在服务端构建React应用程序。', 3, NULL, NULL),
(6, '本书堪称Angular领域的里程碑式著作，涵盖了关于Angular的几乎所有内容。对于没有经验的人，本书平实、通俗的讲解，递进、严密的组织，可以让人毫无压力地登堂入室，迅速领悟新一代Web应用开发的精髓。如果你有相关经验，那本书对Angular概念和技术细节的全面剖析，以及引人入胜、切中肯綮的讲解，将帮助你彻底掌握这个框架，在自己职业技术修炼之路上更进一步。', 7, NULL, NULL),
(7, '本书从现代前端开发的标准、趋势和常用工具入手，由此引出了优秀的构建工具webpack 和JavaScript库React，之后用一系列的实例来阐述两者的特色、概念和基本使用方法。随着应用复杂度的增加，进而介绍了Flux 和Redux 两种架构思想，并且使用Redux 对现有程序进行改造，最后介绍了在开发过程中出现的反模式和性能优化方法。', 4, NULL, NULL),
(8, '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">谦卑和感恩是解决一切问题的万灵丹。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">《遇见未知的自己》这本书，可以让你了解自己、看清小我，进而在生活中操练，让自己更加自在、解脱、快乐。而感恩，正是你用谦卑的心去体会一切之后，自然而然发生的。感恩会带来更多的谦卑、更多的福分、更多的快乐，这样就形成了一个非常好的良性循环。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">这个成长进步的过程，需要大家把书中的资讯拿出来，彻底在生活中执行。一段时间以后，你一定会在某个领域或是某些情境能够做到先知先觉，不再堕入惯性模式的陷阱里。</p><p><br/></p>', 8, '2018-04-12 09:10:17', '2018-04-12 09:10:17'),
(9, '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">很多时候：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　走得越久，我们离自己越远。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　我们身负重壳努力向前爬行，</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　殊不知只是为了取悦别人；</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　我们自认为在努力奋斗，</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　殊不知只是在满足无限的欲望；</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　我们总认为自己可以寻找到一把可以安放灵魂的躺椅，</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　殊不知是踏入了另一个浮躁的世界；</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　*终，只换来一副充满了浮躁与不安的皮囊。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　其实——</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　单纯，才是复杂世界的武器。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　在这本书里：</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　关于爱情，关于灵魂，关于生活，关于人生，关于梦想的35个故事</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　总有一个能让你*初的记忆喷薄而出</p><p><br/></p>', 9, '2018-04-12 09:22:06', '2018-04-12 09:22:06'),
(10, '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">《从你的全世界路过：让所有人心动的故事》是新媒体时代的写故事高手张嘉佳的短篇小说集。读过睡前故事的人会知道，这是一本精彩纷呈的书。书中讲述了发生在我们身边的爱情故事，故事里的人物嘴贱心善，真实得就像身边的哥儿们和闺密，在深夜和你掏心掏肺地讲述，讲述他走过的千山万水，经历过的爱恨情仇。那么多的故事，情节曲折，细节动人，有温暖的，有明亮的，有落单的，有疯狂的，有无聊的，有胡说八道的；有念念不忘的美好，有爱而不得的疼痛，有生离死别的遗憾，有一再错过的宿命，也有喧嚣之后的回归和温暖。当你辗转失眠时，当你需要安慰时，当你赖床慵懒时，当你等待列车时……无论何时何地你都能翻开这本书，找到一篇好看的故事。总有那么一些瞬间，你会在张嘉佳的故事里看到自己，也总有那么一些瞬间，你会因为这些故事，而想到某个人，某段爱情。《从你的全世界路过：让所有人心动的故事》注定会在你的记忆里，留下印记，刻下痕迹，因为这本书，是关于你的故事。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: tahoma, arial, &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, u5b8bu4f53, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">　　我希望写一本书，你可以留在枕边、放进书架，或者送给重要的那个人。<br/>　　从你的全世界路过，随便打开一篇就可以了。<br/>　　——张嘉佳</p><p><br/></p>', 10, '2018-04-12 09:36:59', '2018-04-12 09:36:59');

-- --------------------------------------------------------

--
-- 表的结构 `book_pdt_images`
--

CREATE TABLE `book_pdt_images` (
  `id` int(11) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `image_no` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_pdt_images`
--

INSERT INTO `book_pdt_images` (`id`, `image_path`, `image_no`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '/images/1.jpg', NULL, 1, NULL, NULL),
(2, '/images/2.jpg', NULL, 1, '2018-04-09 08:01:52', '2018-04-09 08:01:52'),
(3, '/images/1.jpg', NULL, 2, NULL, NULL),
(4, '/images/5.jpg', NULL, 5, NULL, NULL),
(5, '/images/6.jpg', NULL, 6, '2018-04-09 08:55:09', '2018-04-09 08:55:09'),
(6, '/images/7.jpg', NULL, 7, NULL, NULL),
(7, '/images/4.jpg', NULL, 4, NULL, NULL),
(8, '/images/8.jpg', NULL, 3, NULL, NULL),
(9, '/images/9.jpg', NULL, 8, NULL, NULL),
(10, '/images/10.jpg', NULL, 9, NULL, NULL),
(11, '/upload/images/20180412/268e35ba2ad38da7162c394abc7037c2.jpg', 1, 10, '2018-04-12 09:36:59', '2018-04-12 09:36:59');

-- --------------------------------------------------------

--
-- 表的结构 `book_product`
--

CREATE TABLE `book_product` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `preview` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_product`
--

INSERT INTO `book_product` (`id`, `name`, `summary`, `price`, `preview`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '深入浅出Node.js', '第一本深度讲解node的图书', '10.00', '/images/1.jpg', 8, '2018-04-08 07:13:38', '2018-04-08 07:13:38'),
(2, 'Node.js指南', 'node.js指南，指南node.js', '11.00', '/images/2.jpg', 8, '2018-04-08 07:13:36', '2018-04-08 07:13:36'),
(3, 'React', 'React 起源于 Facebook 的内部项目，因为该公司对市场上所有 JavaScript MVC 框架，都不满意，就决定自己写一套，用来架设Instagram 的网站。做出来以后，发现这套东西很好用，就在2013年5月开源了。', '10.50', '/images/3.jpg', 9, '2018-04-08 07:13:30', '2018-04-08 07:13:30'),
(4, 'React全栈', 'Redux+Flux+webpack+Babel整合开发', '61.00', '/images/4.jpg', 5, '2018-04-08 07:13:41', '2018-04-08 07:13:41'),
(5, 'Laravel入门与实战', '构建主流PHP应用开发框架+Laravel框架关键技术', '140.80', '/images/5.jpg', 4, NULL, NULL),
(6, 'ThinkPHP实战', '熟悉掌握实用的ThinkPHP技术，成为快速、简单面向对象的轻量级PHP开发框架高手', '39.20', '/images/6.jpg', 7, NULL, NULL),
(7, 'Angular权威教程', '通俗易懂，带你轻松领悟新一代Web开发精髓；Google Angular项目经理兼主管Naomi Black、Google开发技术推广部大中华区主管栾跃作序推荐', '85.40', '/images/7.jpg', 6, '2018-04-08 07:15:13', '2018-04-08 07:15:13'),
(8, '遇见未知的自己', '遇见未知的自己 ', '9.00', '/images/9.jpg', 11, '2018-04-12 09:16:20', '2018-04-12 09:16:20'),
(9, '愿你历尽千帆，归来仍是少年', '知乎大V @Hannibal Lecte首部作品集！手中空无一物，出门已是险恶江湖。愿你既是一个有担当的大人也是一个热情的孩子。获得1009747次赞同， 211184 次感谢，491804 次收藏', '24.00', '/images/10.jpg', 13, '2018-04-12 09:25:26', '2018-04-12 09:25:26'),
(10, '从你的全世界路过 ', '从你的全世界路过 [I belonged to you]', '24.00', '/upload/images/20180412/ed4fa2f74294da59418c62ec79abd167.jpg', 13, '2018-04-12 09:36:59', '2018-04-12 09:36:59');

-- --------------------------------------------------------

--
-- 表的结构 `book_temp_email`
--

CREATE TABLE `book_temp_email` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `deadline` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_temp_email`
--

INSERT INTO `book_temp_email` (`id`, `member_id`, `code`, `deadline`) VALUES
(2, 9, '60802a04bbdb62fc6e542290d9d50f54', '2018-04-04 02:13:31'),
(3, 10, '02ac4c4cd931400110dd04935e19b911', '2018-04-04 02:21:05');

-- --------------------------------------------------------

--
-- 表的结构 `book_temp_phone`
--

CREATE TABLE `book_temp_phone` (
  `id` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `code` int(11) NOT NULL,
  `deadline` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_temp_phone`
--

INSERT INTO `book_temp_phone` (`id`, `phone`, `code`, `deadline`) VALUES
(1, '15920123551', 914282, '2018-04-02 11:05:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_admin`
--
ALTER TABLE `book_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_cart_item`
--
ALTER TABLE `book_cart_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_member`
--
ALTER TABLE `book_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_2` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_order_item`
--
ALTER TABLE `book_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_pdt_content`
--
ALTER TABLE `book_pdt_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_pdt_images`
--
ALTER TABLE `book_pdt_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_product`
--
ALTER TABLE `book_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_temp_email`
--
ALTER TABLE `book_temp_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_temp_phone`
--
ALTER TABLE `book_temp_phone`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `book_admin`
--
ALTER TABLE `book_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `book_cart_item`
--
ALTER TABLE `book_cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `book_member`
--
ALTER TABLE `book_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- 使用表AUTO_INCREMENT `book_order_item`
--
ALTER TABLE `book_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `book_pdt_content`
--
ALTER TABLE `book_pdt_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `book_pdt_images`
--
ALTER TABLE `book_pdt_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `book_product`
--
ALTER TABLE `book_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `book_temp_email`
--
ALTER TABLE `book_temp_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `book_temp_phone`
--
ALTER TABLE `book_temp_phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
