-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-02-20 09:47:52
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coobar`
--

-- --------------------------------------------------------

--
-- 表的结构 `coobar_adimg`
--

CREATE TABLE `coobar_adimg` (
  `id` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `src` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_adimg`
--

INSERT INTO `coobar_adimg` (`id`, `img`, `src`, `title`, `aid`) VALUES
(1, 'img/index-section/lunbo1.jpg', '/products', NULL, NULL),
(2, 'img/index-section/lunbo2.jpg', '/products', NULL, NULL),
(3, 'img/index-section/lunbo3.jpg', '/products', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `coobar_cart`
--

CREATE TABLE `coobar_cart` (
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_cart`
--

INSERT INTO `coobar_cart` (`cid`, `uid`, `pid`, `count`) VALUES
(1, 3, 3, 2),
(3, 3, 4, 2),
(4, 3, 7, 1),
(5, 3, 9, 2),
(6, 3, 2, 1),
(7, 3, 10, 1),
(8, 3, 4, 1),
(9, 3, 6, 1),
(10, 3, 15, NULL),
(11, 3, 18, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `coobar_index_f1_product`
--

CREATE TABLE `coobar_index_f1_product` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `seatNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_index_f1_product`
--

INSERT INTO `coobar_index_f1_product` (`id`, `pid`, `img_src`, `href`, `old_price`, `new_price`, `title`, `count`, `seatNumber`) VALUES
(1, 1, 'img/F1_product/南瓜1.jpg', '/details/', '49.90', '29.90', '新疆板栗南瓜单个装重1-2kg', 1, 1),
(2, 2, 'img/F1_product/四季豆1.jpg', '/details/', '9.90', '4.90', '四川四季豆500g', 1, 2),
(3, 3, 'img/F1_product/娃娃菜1.jpg', '/details/', '4.90', '2.90', '重庆娃娃菜500g', 1, 3),
(4, 4, 'img/F1_product/白萝卜1.jpg', '/details/', '4.90', '3.90', '山东白萝卜500g', 1, 4),
(5, 5, 'img/F1_product/莲藕1.jpg', '/details/', '5.90', '2.50', '江苏莲藕500g', 1, 5),
(6, 6, 'img/F1_product/红薯1.jpg', '/details/', '9.90', '5.90', '福建蜜薯500g(单个重约260g)', 1, 6),
(7, 7, 'img/F1_product/玉米.jpg', '/details/', '16.90', '9.90', '湖北甜玉米3根装重约750g', 1, 7),
(8, 8, 'img/F1_product/金针菇1.jpg', '/details/', '9.90', '6.90', '甘肃金针菇500g', 1, 8);

-- --------------------------------------------------------

--
-- 表的结构 `coobar_index_f2_product`
--

CREATE TABLE `coobar_index_f2_product` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `seatNumber` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_index_f2_product`
--

INSERT INTO `coobar_index_f2_product` (`id`, `pid`, `img_src`, `href`, `old_price`, `new_price`, `title`, `seatNumber`, `count`) VALUES
(1, 9, 'img/F2_product/TB1drRwkCzqK1RjSZFHSuv3CpXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '159.00', '99.00', '新西兰进口奇异果4kg(30-36个)新鲜美味', 1, 1),
(2, 10, 'img/F2_product/TB1J6ZjoNYaK1RjSZFnSuu80pXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '29.90', '19.90', '泰国龙眼2kg(皮薄肉厚核小)', 2, 1),
(3, 11, 'img/F2_product/TB1lpxmkgHqK1RjSZFkSut.WFXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '129.00', '79.00', '泰国进口红毛丹2.5kg', 3, 1),
(4, 12, 'img/F2_product/TB1n8YGiPTpK1RjSZKPSuu3UpXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '199.00', '99.00', '墨西哥进口牛油果一盒(12个)', 4, 1),
(5, 13, 'img/F2_product/TB1Npthkb2pK1RjSZFsSuuNlXXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '49.00', '29.00', '台湾甜芒果2kg', 5, 1),
(6, 14, 'img/F2_product/TB1vAMoh3HqK1RjSZFPSuwwapXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '129.00', '69.00', '越南进口红龙果6个', 6, 1),
(7, 15, 'img/F2_product/TB1Wq65kAzoK1RjSZFlSuui4VXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '199.00', '129.00', '智利进口车厘子2kg', 7, 1),
(8, 16, 'img/F2_product/TB1yOoVh7PoK1RjSZKbSut1IXXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '149.00', '89.00', '菲律宾进口菠萝蜜1个(重4-6kg)', 8, 1),
(9, 17, 'img/F2_product/TB13RNjkCzqK1RjSZFLSuwn2XXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '129.00', '89.90', '秘鲁进口蓝莓1kg', 9, 1),
(10, 18, 'img/F2_product/TB178W3j3TqK1RjSZPhSutfOFXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '169.00', '119.00', '南非西柚12个(约重4kg)', 10, 1);

-- --------------------------------------------------------

--
-- 表的结构 `coobar_index_f3_product`
--

CREATE TABLE `coobar_index_f3_product` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `seatNumber` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_index_f3_product`
--

INSERT INTO `coobar_index_f3_product` (`id`, `pid`, `img_src`, `href`, `old_price`, `new_price`, `title`, `seatNumber`, `floor`, `count`) VALUES
(1, 19, 'img/F3_produc/5ac74859Nd2ba4167.jpg!q80.webp', '/details/', '199.00', '129.00', '澳大利亚进口牛排套餐10片装', 1, 1, 1),
(2, 20, 'img/F3_produc/5af56c0eN14d05186.jpg!q80.webp', '/details/', '49.90', '29.90', '六和 鸡爪 1000g/袋 卤鸡爪食材烧烤食材烤鸡爪', 2, 1, 1),
(3, 21, 'img/F3_produc/5b19e796Nc52a5c42.jpg!q80.webp', '/details/', '149.00', '89.00', '阿根廷进口牛腱子1.5kg', 3, 1, 1),
(4, 22, 'img/F3_produc/5b696be7Nf570f376.jpg!q80.webp', '/details/', '199.00', '99.00', '韩国进口鲜活牡蛎2.5kg  海鲜水产生蚝 刺身生蚝2.5kg', 4, 1, 1),
(5, 23, 'img/F3_produc/5be4f0ddN03d1dee5.jpg!q80.webp', '/details/', '229.00', '139.00', '日本 冷冻无公害金鲳鱼  1000g 2条 袋装 海鲜水产', 5, 2, 1),
(6, 24, 'img/F3_produc/37f1313fa5041d59.jpg!q80.webp', '/details/', '129.00', '79.00', '百年栗园 散养土鸡大公鸡1000g/只 农家散养', 6, 2, 1),
(7, 25, 'img/F3_produc/59c1d989Ncb17b9ed.jpg!q80.webp', '/details/', '99.00', '59.00', '内蒙古大草原羔羊肉片 1000g/袋 无公害谷饲 火锅食材羊肉卷', 7, 2, 1),
(8, 26, 'img/F3_produc/58180449Ncb53676f.jpg!q80.webp', '/details/', '149.00', '89.00', '甘肃 羔羊羊蝎子 1000g/袋 羊脊骨 无公害谷饲', 8, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `coobar_products`
--

CREATE TABLE `coobar_products` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `img_src` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` datetime DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `surplus_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_products`
--

INSERT INTO `coobar_products` (`id`, `title`, `old_price`, `new_price`, `count`, `img_src`, `href`, `lname`, `category`, `details`, `shelf_time`, `sold_count`, `surplus_count`) VALUES
(1, '新疆板栗南瓜单个装重1-2kg', '49.90', '29.90', 1, 'img/F1_product/南瓜1.jpg', '/details/', '南瓜', '蔬菜', '新疆板栗南瓜单个装重1-2kg', '2019-01-26 16:32:04', 2999, 100),
(2, '四川四季豆500g', '9.90', '4.90', 1, 'img/F1_product/四季豆1.jpg', '/details/', '四季豆', '蔬菜', '四川四季豆500g', '2019-01-26 16:32:04', 3897, 146),
(3, '重庆娃娃菜500g', '4.90', '2.90', 1, 'img/F1_product/娃娃菜1.jpg', '/details/', '娃娃菜', '蔬菜', '重庆娃娃菜500g', '2019-01-26 16:32:04', 23234, 234),
(4, '山东白萝卜500g', '4.90', '3.90', 1, 'img/F1_product/白萝卜1.jpg', '/details/', '萝卜', '蔬菜', '山东白萝卜500g', '2019-01-26 16:32:05', 2334, 1234),
(5, '江苏莲藕500g', '5.90', '2.50', 1, 'img/F1_product/莲藕1.jpg', '/details/', '莲藕', '蔬菜', '江苏莲藕500g', '2019-01-26 16:32:05', 21334, 234),
(6, '福建蜜薯500g(单个重约260g)', '9.90', '5.90', 1, 'img/F1_product/红薯1.jpg', '/details/', '红薯', '蔬菜', '福建蜜薯500g(单个重约260g)', '2019-01-26 16:32:05', 21334, 2342),
(7, '湖北甜玉米3根装重约750g', '16.90', '9.90', 1, 'img/F1_product/玉米.jpg', '/details/', '玉米', '蔬菜', '湖北甜玉米3根装重约750g', '2019-01-26 16:32:05', 21334, 352),
(8, '甘肃金针菇500g', '9.90', '6.90', 1, 'img/F1_product/金针菇1.jpg', '/details/', '金针菇', '蔬菜', '甘肃金针菇500g', '2019-01-26 16:32:05', 21638, 382),
(9, '新西兰进口奇异果4kg(30-36个)新鲜美味', '159.00', '99.00', 1, 'img/F2_product/TB1drRwkCzqK1RjSZFHSuv3CpXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '奇异果', '水果', '新西兰进口奇异果4kg(30-36个)新鲜美味', '2019-01-26 16:32:05', 1638, 382),
(10, '泰国龙眼2kg(皮薄肉厚核小)', '29.90', '19.90', 1, 'img/F2_product/TB1J6ZjoNYaK1RjSZFnSuu80pXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '龙眼', '水果', '泰国龙眼2kg(皮薄肉厚核小)', '2019-01-26 16:32:05', 41638, 422),
(11, '泰国进口红毛丹2.5kg', '129.00', '79.00', 1, 'img/F2_product/TB1lpxmkgHqK1RjSZFkSut.WFXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '红毛丹', '水果', '泰国进口红毛丹2.5kg', '2019-01-26 16:32:05', 2338, 234),
(12, '墨西哥进口牛油果一盒(12个)', '199.00', '99.00', 1, 'img/F2_product/TB1n8YGiPTpK1RjSZKPSuu3UpXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '牛油果', '水果', '墨西哥进口牛油果一盒(12个)', '2019-01-26 16:32:05', 12338, 84),
(13, '台湾甜芒果2kg', '49.00', '29.00', 1, 'img/F2_product/TB1Npthkb2pK1RjSZFsSuuNlXXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '芒果', '水果', '台湾甜芒果2kg', '2019-01-26 16:32:05', 42638, 135),
(14, '越南进口红龙果6个', '129.00', '69.00', 1, 'img/F2_product/TB1vAMoh3HqK1RjSZFPSuwwapXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '火龙果', '水果', '越南进口红龙果6个', '2019-01-26 16:32:05', 32323, 1335),
(15, '智利进口车厘子2kg', '199.00', '129.00', 1, 'img/F2_product/TB1Wq65kAzoK1RjSZFlSuui4VXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '车厘子', '水果', '智利进口车厘子2kg', '2019-01-26 16:32:05', 32323, 1335),
(16, '菲律宾进口菠萝蜜1个(重4-6kg)', '129.00', '69.00', 1, 'img/F2_product/TB1yOoVh7PoK1RjSZKbSut1IXXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '菠萝蜜', '水果', '菲律宾进口菠萝蜜1个(重4-6kg)', '2019-01-26 16:32:05', 12323, 3335),
(17, '秘鲁进口蓝莓1kg', '129.00', '89.90', 1, 'img/F2_product/TB13RNjkCzqK1RjSZFLSuwn2XXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '蓝莓', '水果', '秘鲁进口蓝莓1kg', '2019-01-26 16:32:05', 2323, 335),
(18, '南非西柚12个(约重4kg)', '169.00', '119.00', 1, 'img/F2_product/TB178W3j3TqK1RjSZPhSutfOFXa.jpg_240x5000Q60s0.jpg_.webp', '/details/', '西柚', '水果', '南非西柚12个(约重4kg)', '2019-01-26 16:32:06', 21323, 1335),
(19, '澳大利亚进口牛排套餐10片装', '199.00', '129.00', 1, 'img/F3_produc/5ac74859Nd2ba4167.jpg!q80.webp', '/details/', '牛肉', '肉类', '澳大利亚进口牛排套餐10片装', '2019-01-26 18:50:30', 1323, 112),
(20, '六和 鸡爪 1000g/袋 卤鸡爪食材烧烤食材烤鸡爪)', '49.90', '29.90', 1, 'img/F3_produc/5af56c0eN14d05186.jpg!q80.webp', '/details/', '鸡爪', '肉类', '六和 鸡爪 1000g/袋 卤鸡爪食材烧烤食材烤鸡爪)', '2019-01-26 18:50:30', 2122, 212),
(21, '阿根廷进口牛腱子1.5kg', '149.00', '89.00', 1, 'img/F3_produc/5b19e796Nc52a5c42.jpg!q80.webp', '/details/', '牛肉', '肉类', '阿根廷进口牛腱子1.5kg', '2019-01-26 18:50:30', 1323, 258),
(22, '韩国进口鲜活牡蛎2.5kg  海鲜水产生蚝 刺身生蚝2.5kg', '199.00', '99.00', 1, 'img/F3_produc/5b696be7Nf570f376.jpg!q80.webp', '/details/', '牡蛎', '肉类', '韩国进口鲜活牡蛎2.5kg  海鲜水产生蚝 刺身生蚝2.5kg', '2019-01-26 18:50:30', 13323, 2258),
(23, '日本 冷冻无公害金鲳鱼  1000g 2条 袋装 海鲜水产', '199.00', '129.00', 1, 'img/F3_produc/5be4f0ddN03d1dee5.jpg!q80.webp', '/details/', '金鲳鱼', '肉类', '日本 冷冻无公害金鲳鱼  1000g 2条 袋装 海鲜水产', '2019-01-26 18:50:30', 41323, 7258),
(24, '百年栗园 散养土鸡大公鸡1000g/只 农家散养', '129.00', '79.00', 1, 'img/F3_produc/37f1313fa5041d59.jpg!q80.webp', '/details/', '公鸡', '肉类', '百年栗园 散养土鸡大公鸡1000g/只 农家散养', '2019-01-26 18:50:30', 5373, 139),
(25, '内蒙古大草原羔羊肉片 1000g/袋 无公害谷饲 火锅食材羊肉卷', '99.00', '59.00', 1, 'img/F3_produc/59c1d989Ncb17b9ed.jpg!q80.webp', '/details/', '羊', '肉类', '内蒙古大草原羔羊肉片 1000g/袋 无公害谷饲 火锅食材羊肉卷', '2019-01-26 18:50:30', 4373, 69),
(26, '甘肃 羔羊羊蝎子 1000g/袋 羊脊骨 无公害谷饲', '149.00', '89.00', 1, 'img/F3_produc/58180449Ncb53676f.jpg!q80.webp', '/details/', '羊', '肉类', '甘肃 羔羊羊蝎子 1000g/袋 羊脊骨 无公害谷饲', '2019-01-26 18:50:30', 56773, 169),
(27, '新土豆4-5个重约2kg', '8.00', '4.50', 1, 'img/F1_product/土豆1.jpg', '/details/', '土豆', '蔬菜', '新土豆4-5个重约2kg', '2019-01-26 19:51:27', 66773, 769),
(28, '湖南洋葱2个装(单个重0.5kg)', '9.80', '6.50', 1, 'img/F1_product/洋葱1.jpg', '/details/', '洋葱', '蔬菜', '湖南洋葱2个装(单个重0.5kg)', '2019-01-26 19:51:27', 47773, 479),
(29, '山东西红柿2kg', '13.90', '10.50', 1, 'img/F1_product/西红柿1.jpg', '/details/', '西红柿', '蔬菜', '山东西红柿2kg', '2019-01-26 19:51:28', 7573, 349),
(30, '大棚黄瓜3根装(单根重150g)', '9.90', '7.90', 1, 'img/F1_product/黄瓜1.jpg', '/details/', '黄瓜', '蔬菜', '大棚黄瓜3根装(单根重150g)', '2019-01-26 19:51:28', 27773, 1349),
(31, '云南松花菜1颗(重约1.6kg)', '14.80', '8.50', 1, 'img/F1_product/松花菜1.jpg', '/details/', '花菜', '蔬菜', '云南松花菜1颗(重约1.6kg)', '2019-01-26 19:51:28', 24545, 1235),
(32, '云南西蓝花1.5kg', '12.90', '7.50', 1, 'img/F1_product/西蓝花1.jpg', '/details/', '西蓝花', '蔬菜', '云南西蓝花1.5kg', '2019-01-26 19:51:28', 4773, 79),
(33, '湖北大棚小西红柿2kg', '19.90', '12.50', 1, 'img/F1_product/小西红柿1.jpg', '/details/', '西红柿', '蔬菜', '湖北大棚小西红柿2kg', '2019-01-26 19:51:28', 12773, 148),
(34, '黑龙江太空杂交玉米2kg', '29.90', '18.90', 1, 'img/F1_product/玉米2.jpg', '/details/', '玉米', '蔬菜', '黑龙江太空杂交玉米2kg', '2019-01-26 19:51:28', 9773, 128),
(35, '重庆有机蔬菜莲白2.5kg', '18.90', '12.90', 1, 'img/F1_product/莲白1.jpg', '/details/', '莲白', '蔬菜', '重庆有机蔬菜莲白2.5kg', '2019-01-26 19:51:28', 5733, 58);

-- --------------------------------------------------------

--
-- 表的结构 `coobar_product_img`
--

CREATE TABLE `coobar_product_img` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `img_sm` varchar(128) DEFAULT NULL,
  `img_md` varchar(128) DEFAULT NULL,
  `img_lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_product_img`
--

INSERT INTO `coobar_product_img` (`id`, `pid`, `img_sm`, `img_md`, `img_lg`) VALUES
(1, 1, 'img/produc_details/product_details1/small_picture/ps1.jpg', 'img/produc_details/product_details1/big_picture/pb1.jpg', 'img/produc_details/product_details1/big_picture/pb1.jpg'),
(2, 1, 'img/produc_details/product_details1/small_picture/ps2.jpg', 'img/produc_details/product_details1/big_picture/pb2.jpg', 'img/produc_details/product_details1/big_picture/pb2.jpg'),
(3, 1, 'img/produc_details/product_details1/small_picture/ps3.jpg', 'img/produc_details/product_details1/big_picture/pb3.jpg', 'img/produc_details/product_details1/big_picture/pb3.jpg'),
(4, 1, 'img/produc_details/product_details1/small_picture/ps4.jpg', 'img/produc_details/product_details1/big_picture/pb4.jpg', 'img/produc_details/product_details1/big_picture/pb4.jpg'),
(5, 1, 'img/produc_details/product_details1/small_picture/ps5.jpg', 'img/produc_details/product_details1/big_picture/pb5.jpg', 'img/produc_details/product_details1/big_picture/pb5.jpg'),
(6, 1, 'img/produc_details/product_details1/small_picture/ps6.jpg', 'img/produc_details/product_details1/big_picture/pb6.jpg', 'img/produc_details/product_details1/big_picture/pb6.jpg'),
(7, 1, 'img/produc_details/product_details1/small_picture/ps7.jpg', 'img/produc_details/product_details1/big_picture/pb7.jpg', 'img/produc_details/product_details1/big_picture/pb7.jpg'),
(8, 1, 'img/produc_details/product_details1/small_picture/ps8.jpg', 'img/produc_details/product_details1/big_picture/pb8.jpg', 'img/produc_details/product_details1/big_picture/pb8.jpg'),
(9, 1, 'img/produc_details/product_details1/small_picture/ps9.jpg', 'img/produc_details/product_details1/big_picture/pb9.jpg', 'img/produc_details/product_details1/big_picture/pb9.jpg'),
(10, 1, 'img/produc_details/product_details1/small_picture/ps10.jpg', 'img/produc_details/product_details1/big_picture/pb10.jpg', 'img/produc_details/product_details1/big_picture/pb10.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `coobar_user`
--

CREATE TABLE `coobar_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(32) NOT NULL,
  `phone` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `coobar_user`
--

INSERT INTO `coobar_user` (`uid`, `uname`, `upwd`, `phone`) VALUES
(1, 'love1234', '25d55ad283aa400af464c76d713c07ad', '13333333322'),
(2, 'yzh123', 'ed2b1f468c5f915f3f1cf75d7068baae', '13333333333'),
(3, 'aw1234', '25d55ad283aa400af464c76d713c07ad', '18883870725');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coobar_adimg`
--
ALTER TABLE `coobar_adimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coobar_cart`
--
ALTER TABLE `coobar_cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `coobar_index_f1_product`
--
ALTER TABLE `coobar_index_f1_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coobar_index_f2_product`
--
ALTER TABLE `coobar_index_f2_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coobar_index_f3_product`
--
ALTER TABLE `coobar_index_f3_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coobar_products`
--
ALTER TABLE `coobar_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coobar_product_img`
--
ALTER TABLE `coobar_product_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coobar_user`
--
ALTER TABLE `coobar_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `coobar_adimg`
--
ALTER TABLE `coobar_adimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `coobar_cart`
--
ALTER TABLE `coobar_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `coobar_index_f1_product`
--
ALTER TABLE `coobar_index_f1_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `coobar_index_f2_product`
--
ALTER TABLE `coobar_index_f2_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `coobar_index_f3_product`
--
ALTER TABLE `coobar_index_f3_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `coobar_products`
--
ALTER TABLE `coobar_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `coobar_product_img`
--
ALTER TABLE `coobar_product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `coobar_user`
--
ALTER TABLE `coobar_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
