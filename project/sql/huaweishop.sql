-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-18 13:26:43
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huaweishop`
--

-- --------------------------------------------------------

--
-- 表的结构 `adver`
--

CREATE TABLE `adver` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `adver`
--

INSERT INTO `adver` (`sid`, `url`) VALUES
(1, 'https://res.vmallres.com/pimages//sale/2018-05/20180508171230816.jpg'),
(2, 'https://res.vmallres.com/pimages//sale/2018-05/20180504103614954.png'),
(3, 'https://res.vmallres.com/pimages//sale/2018-05/20180510172539769.jpg'),
(4, 'https://res.vmallres.com/pimages//sale/2018-05/20180504103605837.png'),
(5, 'https://res.vmallres.com/pimages//sale/2018-05/20180504101421663.png'),
(6, 'https://res.vmallres.com/pimages//sale/2018-05/20180509000254526.png');

-- --------------------------------------------------------

--
-- 表的结构 `ai`
--

CREATE TABLE `ai` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(200,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ai`
--

INSERT INTO `ai` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res3.vmallres.com/pimages//product/6901443168712/428_428_1495598460509mp.jpg', NULL, '荣耀畅玩手环 A2', '限时优惠30元', 169),
(2, 'https://res3.vmallres.com/pimages//product/6901443197828/428_428_1516188208906mp.jpg', NULL, 'HUAIWEI WATCH 2', '花纹第二代智能运动手表', 1538),
(3, 'https://res3.vmallres.com/pimages//product/6901443183548/428_428_1496627716396mp.jpg', 'https://res3.vmallres.com/pimages//tag/95/1497576073762.png', '荣耀手环3', '限时最高降40元', 159),
(4, 'https://res3.vmallres.com/pimages//product/6901443122974/428_428_1469093643984mp.jpg', NULL, '华为手环 B3', '蓝牙耳机与智能手环结合', 899),
(5, 'https://res3.vmallres.com/pimages//frontLocation/content/937161/1488161147740.png', 'https://res3.vmallres.com/pimages//tag/95/1497576073762.png', '荣耀手表 S1', '限时直降100元', 499),
(6, 'https://res3.vmallres.com/pimages//product/6901443190287/428_428_1498098860450mp.jpg', NULL, '华为运动手表', '5米防水游泳', 268),
(7, 'https://res3.vmallres.com/pimages//product/3102170000201/428_428_1523329236904mp.jpg', NULL, 'HUAWEI VR2', '适配HUAWEI P20系列，Mate 10系列', 1999);

-- --------------------------------------------------------

--
-- 表的结构 `app`
--

CREATE TABLE `app` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(200,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `app`
--

INSERT INTO `app` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res4.vmallres.com/pimages//product/6901443197071/428_428_1507545954611mp.jpg', 'https://res4.vmallres.com/pimages//tag/95/1497576073762.png', 'r荣耀路由2', '限时直降60元', 189),
(2, 'https://res4.vmallres.com/pimages//product/6901443233823/428_428_1524909241917mp.jpgl', 'https://res4.vmallres.com/pimages//tag/79/1497575938261.png', '华为4G路由2(白色)', '千兆网口 一机两用', 389),
(3, 'https://res4.vmallres.com/pimages//product/6901443202386/428_428_1507802394680mp.jpg', NULL, '荣耀分布式路由', '限时直降100元', 799),
(4, 'https://res4.vmallres.com/pimages//product/6901443202461/428_428_1507606609600mp.jpg', NULL, '华为路由WS5200', '支持5G信号智能优先选择', 249),
(5, 'https://res4.vmallres.com/pimages//product/6901443181803/428_428_1493972111510mp.jpg', 'https://res4.vmallres.com/pimages//tag/95/1497576073762.png', '荣耀路由X1 增强版', '限时直降30元', 119),
(6, 'https://res4.vmallres.com/pimages//product/6901443187355/428_428_1495075512638mp.jpg', NULL, '华为随行WiFi 2', '4G全网通', 439);

-- --------------------------------------------------------

--
-- 表的结构 `boutique`
--

CREATE TABLE `boutique` (
  `sid` tinyint(25) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `boutique`
--

INSERT INTO `boutique` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res0.vmallres.com/pimages//product/6901443233205/428_428_1525665745494mp.jpg', 'https://res0.vmallres.com/pimages//tag/79/1497575938261.png', '荣耀Magic Book', '星云紫首发 预定赠手环', 4999),
(2, 'https://res0.vmallres.com/pimages//product/3102170000201/428_428_1523329236904mp.jpg', NULL, 'HUAWEI VR 2', '适配HUAWEI P20 系列，Mate 10 系列', 1999),
(3, 'https://res0.vmallres.com/pimages//product/6901443173129/428_428_1518397678332mp.jpg', 'https://res7.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀体脂称', '限时优惠30元', 169),
(4, 'https://res0.vmallres.com/pimages//product/6901443197262/428_428_1506139200867mp.jpg', NULL, '华为手环B3 青春版', '是手环也是手机', 499),
(5, 'https://res0.vmallres.com/pimages//product/6901443183524/428_428_1496627594147mp.jpg', 'https://res7.vmallres.com/pimages//tag/71/1497575814983.png', '荣耀手环3', '50米防水 专业睡眠检测', 179),
(6, 'https://res0.vmallres.com/pimages//product/6901443207077/428_428_1512699241768mp.jpg', 'https://res7.vmallres.com/pimages//tag/71/1497575814983.png', '华为智能体脂称', '关注你的每一克', 199),
(7, 'https://res0.vmallres.com/pimages//product/6901443204526/428_428_1506671611280mp.jpg', 'https://res7.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀WatePlay', '防水影音平板', 1899),
(8, 'https://res0.vmallres.com/pimages//product/6901443206155/428_428_1513330471940mp.jpg', '', '华为6700mAh 移动电源', NULL, 79),
(9, 'https://res0.vmallres.com/pimages//product/6901443193080/428_428_1504584577479mp.jpg', NULL, '荣耀畅玩手环 A2', '限时优惠30元', 169),
(10, 'https://res0.vmallres.com/pimages//product/6901443182770/428_428_1494904534464mp.jpg', 'https://res7.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀畅玩平板2 9.6英寸', '高清大屏 清晰护眼', 999),
(11, 'https://res0.vmallres.com/pimages//product/6901443211388/428_428_1513571794593mp.jpg', NULL, 'HUAWEI MateBook D(2018版)', '15.6英寸轻薄笔记本电脑', 5188),
(12, 'https://res0.vmallres.com/pimages//product/6901443173129/428_428_1518397678332mp.jpg', 'https://res7.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀体脂称', 'BIA测脂/高精准传感', 169),
(13, 'https://res0.vmallres.com/pimages//product/6901443209576/428_428_1512959412750mp.jpg', NULL, '华为快充车载充电器', NULL, 99),
(14, 'https://res0.vmallres.com/pimages//product/6901443210695/428_428_1513061872226mp.jpg', 'https://res7.vmallres.com/pimages//tag/81/1497575964613.png', '荣耀平板2', '持久续航 好玩不贵', 1499),
(15, 'https://res0.vmallres.com/pimages//product/6901443204212/428_428_1507769117117mp.jpg', NULL, 'HUAWEI WATCH 2 Pro', '独立通话(eSIM技术)', 2588),
(16, 'https://res0.vmallres.com/pimages//product/6901443197071/428_428_1507545954611mp.jpg', 'https://res7.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀路由2', '双网双通 双频优选', 249),
(17, 'https://res0.vmallres.com/pimages//product/6901443202461/428_428_1507606609600mp.jpg', NULL, '华为路由器WS5200', '支持5G信号智能优先选择', 269),
(18, 'https://res0.vmallres.com/pimages//product/6901443181001/428_428_1495006232039mp.jpg', NULL, 'HUAWEI MateBook D ', '尊享6期分期免息', 4588),
(19, 'https://res0.vmallres.com/pimages//product/6901443197262/428_428_1506139200867mp.jpg', NULL, '华为手环B3 青春版', '蓝色通话 活动记录 智能提醒', 499),
(20, 'https://res0.vmallres.com/pimages//frontLocation/content/1268811/1496236124208.png', NULL, 'HUAWEI WATCH 2', '华为第二代智能运动手表', 1688),
(21, 'https://res0.vmallres.com/pimages//frontLocation/content/1268833/1496236247761.png', NULL, '华为平板 M3', '2K高清屏幕 麒麟950', 1888),
(22, 'https://res0.vmallres.com/pimages//product/6901443174256/428_428_1489548822739mp.jpg', 'https://res7.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀xSport 运动蓝牙耳机', '11h长续航 狂甩不掉', 299),
(23, 'https://res0.vmallres.com/pimages//product/6901443211937/428_428_1513560677378mp.jpg', NULL, '荣耀9青春版', '最高直降200+送耳机', 1099),
(24, 'https://res0.vmallres.com/pimages//product/6901443189175/428_428_1496990939106mp.jpg', NULL, '荣耀9', '最高优惠300元', 2299);

-- --------------------------------------------------------

--
-- 表的结构 `boutique2`
--

CREATE TABLE `boutique2` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `boutique2`
--

INSERT INTO `boutique2` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res4.vmallres.com/pimages//product/6901443198368/428_428_1507605356006mp.jpg', NULL, '华为路由器WS5100', '支持5G信号智能优先选择', 149),
(2, 'https://res4.vmallres.com/pimages//frontLocation/content/1268713/1500436144767.png', NULL, '华为子母路由器Q1', '双wifi覆盖', 519),
(3, 'https://res4.vmallres.com/pimages//product/6901443135615/428_428_1469695994751mp.jpg', NULL, '荣耀盒子Pro', '限时直降10元', 409),
(4, 'https://res4.vmallres.com/pimages//frontLocation/content/2026809/1496281828441.jpg', NULL, 'WS318 增强版', '高性能双天线', 99),
(5, 'https://res4.vmallres.com/pimages//frontLocation/content/775339/1482233802925.png', 'https://res4.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀路由Pro', '限时直降30元', 298),
(6, 'https://res4.vmallres.com/pimages//frontLocation/content/1762521/1493696328524.png', NULL, '华为路由器A1 畅享版', '优选5G信号+WiFi自动加速', 169),
(7, 'https://res4.vmallres.com/pimages//frontLocation/content/775335/1482233766254.png', NULL, '荣耀路由标准版', '限时直降39元', 149),
(8, 'https://res4.vmallres.com/pimages//frontLocation/content/775343/1484100325589.jpg', 'https://res4.vmallres.com/pimages//tag/77/1497575918300.png', '华为WS832', '1200M无线路由器', 249),
(9, 'https://res4.vmallres.com/pimages//product/6901443176465/428_428_1500025136978mp.jpg', NULL, '荣耀路由X1', '限时直降10元', 89),
(10, 'https://res4.vmallres.com/pimages//frontLocation/content/775349/1482233776849.png', NULL, '荣耀WiFi穿墙宝', '插座变热点 信号变满格', 255),
(11, 'https://res4.vmallres.com/pimages//frontLocation/content/1268783/1489245789451.jpg', NULL, '华为 WS550', '双核450M路由器', 139),
(12, 'https://res4.vmallres.com/pimages//frontLocation/content/1353073/1489753563752.jpg', NULL, '华为 PT500', '500M电力线适配器', 139);

-- --------------------------------------------------------

--
-- 表的结构 `boutique3`
--

CREATE TABLE `boutique3` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `boutique3`
--

INSERT INTO `boutique3` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res5.vmallres.com/pimages//product/6901443209491/428_428_1511839266304mp.jpg', 'https://res5.vmallres.com/pimages//tag/87/1497576023361.png', '荣耀车载充电器(supercharge 快充版)', '限时优惠50元', 149),
(2, 'https://res5.vmallres.com/pimages//product/6901443179442/428_428_1497325586428mp.jpg', NULL, '华为运动心率蓝牙耳机', '自在运动 随心律动', 499),
(3, 'https://res5.vmallres.com/pimages//product/6901443199365/428_428_1518168609693mp.jpg', NULL, '荣耀移动电源10000mAh快充版', '限时优惠20元', 149),
(4, 'https://res5.vmallres.com/pimages//product/6901443167258/428_428_1490921883474mp.jpg', NULL, '华为2万毫安移动电源', '大容量 更持久', 249),
(5, 'https://res5.vmallres.com/pimages//product/6901443211142/428_428_1513827604555mp.jpg', 'https://res5.vmallres.com/pimages//tag/87/1497576023361.png', '荣耀音乐小巨蛋', '限时优惠10元', 189),
(6, 'https://res5.vmallres.com/pimages//product/6901443154715/428_428_1515376079265mp.jpg', 'https://res5.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀车载充电器 快充版', '限时优惠10元', 89),
(7, 'https://res5.vmallres.com/pimages//product/6901443156689/428_428_1484106183237mp.jpg', 'https://res5.vmallres.com/pimages//tag/71/1497575814983.png', '华为4.5V 5A快速充电器', '5A快充 智能适配', 109),
(8, 'https://res5.vmallres.com/pimages//product/6901443218516/428_428_1523936863031mp.jpg', 'https://res5.vmallres.com/pimages//tag/87/1497576023361.png', '荣耀魔声耳机2（深海蓝）', '给您如临现场的音乐体验', 249),
(9, 'https://res5.vmallres.com/pimages//frontLocation/content/775189/1489245031509.jpg', NULL, '华为9V2A充电器', '高速快充 智能兼容', 69),
(10, 'https://res5.vmallres.com/pimages//product/6901443184903/428_428_1495018208785mp.jpg', 'https://res5.vmallres.com/pimages//tag/71/1497575814983.png', '荣耀三脚架自拍杆 无限版', '限时优惠10元', 109),
(11, 'https://res5.vmallres.com/pimages//product/6901443081622/428_428_1468287675019mp.jpg', NULL, '荣耀引擎耳机PLUS', '好看好听好品质', 99),
(12, 'https://res5.vmallres.com/pimages//product/6901443105649/428_428_1467185984175mp.jpg', 'https://res5.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀引擎耳机2带（皓白银）', '限时优惠40元', 89);

-- --------------------------------------------------------

--
-- 表的结构 `boutique4`
--

CREATE TABLE `boutique4` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `mianurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `boutique4`
--

INSERT INTO `boutique4` (`sid`, `url`, `mianurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res6.vmallres.com/pimages//product/GB3102150025101/428_428_1525243804767mp.jpg', NULL, '极米无屏电视Z6', '买就送3D眼镜一副', 2999),
(2, 'https://res6.vmallres.com/pimages//product/GB3102030002101/428_428_1509064211648mp.jpg', NULL, '绿联 Type-C转HDMI连接线', '华为Mate 10系列产品专为', 108),
(3, 'https://res6.vmallres.com/pimages//product/GB3102150001401/428_428_1525414197951mp.jpg', 'https://res6.vmallres.com/pimages//tag/71/1497575814983.png', '三思智能彩色球泡灯', '送3W球泡灯', 99),
(4, 'https://res6.vmallres.com/pimages//product/GB3102150003101/428_428_1506303386952mp.jpg', NULL, '晒帝电动遥控升降晾衣机', '限时直降200元 送20个铝衣撑', 1688),
(5, 'https://res6.vmallres.com/pimages//product/GB1303130000401/428_428_1480320498180mp.jpg', NULL, '耐翔 Type-C U盘', '5种安全保护 过硬品质', 149),
(6, 'https://res6.vmallres.com/pimages//product/GB3102150013401/428_428_1517900229994mp.jpg', NULL, '豪恩 家用报警套装', '满500元 赠送紧急按钮', 469),
(7, 'https://res6.vmallres.com/pimages//product/GB3102110000207/428_428_1520932090951mp.jpg', NULL, '金士顿 高速储存卡', '限时直降21.1元', 47),
(8, 'https://res6.vmallres.com/pimages//product/GB1305010011502/428_428_1492652017792mp.jpg', NULL, 'ROCK 运动腰包（灰色）', '小身材大容量', 49),
(9, 'https://res6.vmallres.com/pimages//product/GB3102150022401/428_428_1522651035751mp.jpg', NULL, '九阳破壁调理机', '为爱破壁', 1499),
(10, 'https://res6.vmallres.com/pimages//product/GB1303030003804/428_428_1492506927363mp.jpg', NULL, '缤特力无线运动蓝牙耳机', '限时直降300元', 498),
(11, 'https://res5.vmallres.com/pimages//product/6901443232499/428_428_1523952310070mp.jpg', 'https://res5.vmallres.com/pimages//tag/87/1497576023361.png', '荣耀月光棒 柔光自拍杆', '暗光自拍也清晰靓丽', 139),
(12, 'https://res5.vmallres.com/pimages//product/6901443207657/428_428_1513330615701mp.jpg', NULL, '华为6700mAh 移动电源', '时尚简约 多重安全防护', 79);

-- --------------------------------------------------------

--
-- 表的结构 `brand`
--

CREATE TABLE `brand` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `brand`
--

INSERT INTO `brand` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res6.vmallres.com/pimages//product/GB3102150020801/428_428_1522028875460mp.jpg', 'https://res6.vmallres.com/pimages//tag/77/1497575918300.png', '海雀摄像头Q1', '直降10元 多种赠品等你拿', 249),
(2, 'https://res6.vmallres.com/pimages//product/GB3102150017201/428_428_1518317468182mp.jpg', NULL, '科沃斯地宝智能扫地机器人', '送擦窗机+手持吸尘器', 2299),
(3, 'https://res6.vmallres.com/pimages//product/GB3102150018101/428_428_1520328640817mp.jpg', 'https://res6.vmallres.com/pimages//tag/83/1497575981308.png', '小鸟音响 蓝牙音响', '限时直降100元', 1299),
(4, 'https://res6.vmallres.com/pimages//product/GB3102150006901/428_428_1516585586465mp.jpg', NULL, '小狗无线手持推杆吸尘器', '限时直降300元', 999),
(5, 'https://res6.vmallres.com/pimages//product/GB3102150020001/428_428_1521013557213mp.jpg', 'https://res6.vmallres.com/pimages//tag/87/1497576023361.png', '享睡智能睡眠监测器', '限时直降100元', 899),
(6, 'https://res6.vmallres.com/pimages//product/GB3102150017101/428_428_1518169979958mp.jpg', 'https://res6.vmallres.com/pimages//tag/81/1497575964613.png', '西勒奇智能指纹锁', '限时直降200元 送复3周边', 3280);

-- --------------------------------------------------------

--
-- 表的结构 `computer`
--

CREATE TABLE `computer` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `urlmin` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `computer`
--

INSERT INTO `computer` (`sid`, `url`, `urlmin`, `name`, `main`, `pic`) VALUES
(1, 'https://res1.vmallres.com/pimages//product/6901443227792/428_428_1523525059850mp.jpg', 'https://res1.vmallres.com/pimages//tag/79/1497575938261.png', 'HUAWEI MateBook X Pro', '限量版298元配件', 7988),
(2, 'https://res1.vmallres.com/pimages//product/6901443181216/428_428_1495008740731mp.jpg', 'https://res1.vmallres.com/pimages//tag/75/1497575900592.png', 'HUAWEI MateBook X', '尊享6期分期免息', 6188),
(3, 'https://res1.vmallres.com/pimages//product/6901443211388/428_428_1513571794593mp.jpg', NULL, 'HUAWEI MateBook D', '15.6英寸轻薄笔记本电脑', 5188);

-- --------------------------------------------------------

--
-- 表的结构 `dannav`
--

CREATE TABLE `dannav` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `dannav`
--

INSERT INTO `dannav` (`sid`, `url`) VALUES
(1, 'https://res.vmallres.com/pimages//sale/2018-04/2018042811131740.png'),
(2, 'https://res.vmallres.com/pimages//sale/2018-04/20180412163826280.png'),
(3, 'https://res.vmallres.com/pimages//sale/2018-04/20180424221450652.png'),
(4, 'https://res.vmallres.com/pimages//sale/2018-05/20180512000026625.png');

-- --------------------------------------------------------

--
-- 表的结构 `footer`
--

CREATE TABLE `footer` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `footer`
--

INSERT INTO `footer` (`sid`, `url`) VALUES
(1, 'https://res.vmallres.com/pimages//sale/2017-03/20170313112742735.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hotimg`
--

CREATE TABLE `hotimg` (
  `hotsid` tinyint(20) NOT NULL,
  `hoturl` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `hotimg`
--

INSERT INTO `hotimg` (`hotsid`, `hoturl`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/1289553/1525691230739.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hotnav`
--

CREATE TABLE `hotnav` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `jiexi` varchar(300) CHARACTER SET utf8 NOT NULL,
  `pic` double(200,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `hotnav`
--

INSERT INTO `hotnav` (`sid`, `url`, `name`, `jiexi`, `pic`) VALUES
(1, 'https://res0.vmallres.com/pimages//product/6901443210213/428_428_1513158355343mp.jpg', '荣耀V10', '限时直降200元', 2499),
(2, 'https://res0.vmallres.com/pimages//product/6901443201990/428_428_1507795055092mp.jpg', 'HUAWEI Mate 10', '直降300元', 4199),
(3, 'https://res0.vmallres.com/pimages//product/6901443211937/428_428_1513560677378mp.jpg', '荣耀9青春版', '直降200+送耳机', 1099),
(4, 'https://res0.vmallres.com/pimages//product/6901443224418/428_428_1521296102232mp.jpg', '华为畅享8 Plus', '赠精美配件礼包', 1899),
(5, 'https://res0.vmallres.com/pimages//product/6901443218936/428_428_1520998358815mp.jpg', '荣耀畅玩7C', '送价值百元读书券', 899),
(6, 'https://res0.vmallres.com/pimages//product/2601010009803/428_428_1518318882828mp.jpg', 'HUAWEI Mate 10 Pro', '直降400元', 4499),
(7, 'https://res0.vmallres.com/pimages//product/6901443225637/428_428_1522135590524mp.jpg', '荣耀畅玩7A', '标配版送半入耳式耳机', 799),
(8, 'https://res0.vmallres.com/pimages//product/6901443211111/428_428_1518483439580mp.jpg', 'HUAWEI nova 2s', '赠配件好礼+3期免息', 2799);

-- --------------------------------------------------------

--
-- 表的结构 `ipad`
--

CREATE TABLE `ipad` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(200,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ipad`
--

INSERT INTO `ipad` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res2.vmallres.com/pimages//product/6901443204526/428_428_1506671611280mp.jpg', 'https://res2.vmallres.com/pimages//tag/95/1497576073762.png', '荣耀Waterplay', '限时最高直降200', 1799),
(2, 'https://res2.vmallres.com/pimages//product/6901443183708/428_428_1495096799385mp.jpg', NULL, '华为平板 M3 青春版 10.1英寸', 'EMUI5.1流畅体验', 1779),
(3, 'https://res2.vmallres.com/pimages//product/6901443192458/428_428_1500455962969mp.jpg', 'https://res2.vmallres.com/pimages//tag/95/1497576073762.png', '荣耀畅玩平板2 9.6英寸', '限时最高直降100', 1199),
(4, 'https://res2.vmallres.com/pimages//product/6901443185399/428_428_1497422265771mp.jpg', NULL, '华为平板M3 青春版 8英寸', 'EMUI5.1流畅体验', 1319),
(5, 'https://res2.vmallres.com/pimages//product/6901443146048/428_428_1476778957240mp.jpg', 'https://www.vmall.com/product/13278818.html', '荣耀平板2', '限时降50 赠保护膜', 1249),
(6, 'https://res2.vmallres.com/pimages//product/6901443143580/428_428_1473406494708mp.jpg', NULL, '华为平板 M3', '2K高清屏幕 HI-FI音效', 1888),
(7, 'https://res2.vmallres.com/pimages//product/6901443192441/428_428_1500455384160mp.jpg', NULL, '荣耀畅玩平板2 8英寸', '限时最高直降100元', 999);

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE `list` (
  `sid` tinyint(40) NOT NULL,
  `phonenum` double(20,0) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`sid`, `phonenum`, `password`) VALUES
(22, 15079279869, 'e10adc3949ba59abbe56e057f20f883e'),
(23, 13803561231, 'e10adc3949ba59abbe56e057f20f883e'),
(24, 15989859898, 'f1c1592588411002af340cbaedd6fc33'),
(25, 12894, '895'),
(26, 12894, '895'),
(27, 17989898897, 'f1c1592588411002af340cbaedd6fc33');

-- --------------------------------------------------------

--
-- 表的结构 `navimg`
--

CREATE TABLE `navimg` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navimg`
--

INSERT INTO `navimg` (`sid`, `url`, `name`, `pic`) VALUES
(1, 'https://res.vmallres.com/pimages//product/6901443223473/142_142_1523430506694mp.jpg', 'HUAWEI Mate Rs保时捷设计', 9999),
(2, 'https://res.vmallres.com/pimages//product/6901443232413/142_142_1523952379540mp.jpg', '荣耀10', 2599),
(3, 'https://res.vmallres.com/pimages//product/6901443223459/142_142_1522652355294mp.jpg', 'HUAWEI P20', 3788),
(4, 'https://res.vmallres.com/pimages//product/6901443211937/142_142_1513560677378mp.jpg', '荣耀9青春版', 1099);

-- --------------------------------------------------------

--
-- 表的结构 `navimg2`
--

CREATE TABLE `navimg2` (
  `sid` tinyint(20) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navimg2`
--

INSERT INTO `navimg2` (`sid`, `name`, `pic`, `url`) VALUES
(1, 'HUAWEI MateBook X Pro', 7988, 'https://res.vmallres.com/pimages//product/6901443227792/142_142_1523525059850mp.jpg'),
(2, '荣耀MagicBook', 4999, 'https://res.vmallres.com/pimages//product/6901443233182/142_142_1524125610580mp.jpg'),
(3, '华为平板M5 8.4英寸', 2488, 'https://res.vmallres.com/pimages//product/6901443215287/142_142_1525258653937mp.jpg'),
(4, '荣耀畅玩平板2 9.6英寸', 949, 'https://res.vmallres.com/pimages//product/6901443182770/142_142_1494904534464mp.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `navimg3`
--

CREATE TABLE `navimg3` (
  `sid` tinyint(20) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navimg3`
--

INSERT INTO `navimg3` (`sid`, `name`, `pic`, `url`) VALUES
(1, '荣耀手环3', 159, 'https://res.vmallres.com/pimages//product/6901443183524/142_142_1496627594147mp.jpg'),
(2, 'HUAIWEI WATCH 2 Pro', 2588, 'https://res.vmallres.com/pimages//product/6901443204212/142_142_1507769117117mp.jpg'),
(3, '荣耀畅玩手环 A2', 169, 'https://res.vmallres.com/pimages//product/6901443193073-01/142_142_1500340865479mp.jpg'),
(4, '华为运动手环', 388, 'https://res.vmallres.com/pimages//product/6901443190232/142_142_1498099225036mp.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `navimg4`
--

CREATE TABLE `navimg4` (
  `sid` tinyint(20) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navimg4`
--

INSERT INTO `navimg4` (`sid`, `name`, `pic`, `url`) VALUES
(1, '荣耀分布式路由', 799, 'https://res.vmallres.com/pimages//product/6901443202386/142_142_1507802394680mp.jpg'),
(2, '华为路由WS5100', 149, 'https://res.vmallres.com/pimages//product/6901443198368/142_142_1507605356006mp.jpg'),
(3, '荣耀路由2', 189, 'https://res.vmallres.com/pimages//product/6901443197071/142_142_1507545954611mp.jpg'),
(4, '华为路由 Q2', 799, 'https://res.vmallres.com/pimages//product/6901443219940/142_142_1521184530843mp.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `navimg5`
--

CREATE TABLE `navimg5` (
  `sid` tinyint(20) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navimg5`
--

INSERT INTO `navimg5` (`sid`, `name`, `pic`, `url`) VALUES
(1, '华为10000mAh移动电源 充电宝', 159, 'https://res.vmallres.com/pimages//product/6901443158379/142_142_1484107261446mp.jpg'),
(2, '荣耀xSport运动蓝牙耳机', 249, 'https://res.vmallres.com/pimages//product/6901443174256/142_142_1489548822739mp.jpg'),
(3, '华为智能体脂称', 179, 'https://res.vmallres.com/pimages//product/6901443207077/142_142_1512699241768mp.jpg'),
(4, '荣耀音乐小巨蛋', 189, 'https://res.vmallres.com/pimages//product/6901443211142/142_142_1513827604555mp.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `navimg6`
--

CREATE TABLE `navimg6` (
  `sid` tinyint(20) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pic` double(20,0) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navimg6`
--

INSERT INTO `navimg6` (`sid`, `name`, `pic`, `url`) VALUES
(1, 'HUAWEI P20 Pro手机导航套件', 199, 'https://res.vmallres.com/pimages//product/6901443219339/142_142_1524563372310mp.jpg'),
(2, '荣耀9 炫彩保护壳', 109, 'https://res.vmallres.com/pimages//product/6901443184019/142_142_1497318865289mp.jpg'),
(3, 'HUAWEI Mate Rs', 1999, 'https://res.vmallres.com/pimages//product/6901443229352/142_142_1523436939454mp.jpg'),
(4, '荣耀V10 PU保护套', 119, 'https://res.vmallres.com/pimages//product/6901443208777/142_142_1512723338638mp.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `navzi`
--

CREATE TABLE `navzi` (
  `sid` tinyint(20) NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navzi`
--

INSERT INTO `navzi` (`sid`, `main`, `url`) VALUES
(1, '荣耀', 'https://www.vmall.com/list-75'),
(2, 'HUAIWEI P系列', 'https://www.vmall.com/list-285'),
(3, '荣耀畅玩系列', 'https://www.vmall.com/list-77'),
(4, 'HUAWEI Mate系列', 'https://www.vmall.com/list-76'),
(5, 'HUAWEI nova系列', 'https://www.vmall.com/list-277'),
(6, 'HUAIWEI 麦芒系列', 'https://www.vmall.com/list-81'),
(7, '华为畅享系列', 'https://www.vmall.com/list-275'),
(8, '移动4G+专区', 'https://www.vmall.com/list-38');

-- --------------------------------------------------------

--
-- 表的结构 `navzi2`
--

CREATE TABLE `navzi2` (
  `sid` tinyint(20) NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navzi2`
--

INSERT INTO `navzi2` (`sid`, `main`, `url`) VALUES
(1, '平板电脑', 'https://www.vmall.com/list-41'),
(2, '笔记本电脑', 'https://www.vmall.com/list-42'),
(3, '笔记本配件', 'https://www.vmall.com/list-317');

-- --------------------------------------------------------

--
-- 表的结构 `navzi3`
--

CREATE TABLE `navzi3` (
  `sid` tinyint(20) NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navzi3`
--

INSERT INTO `navzi3` (`sid`, `main`, `url`) VALUES
(1, '手环', 'https://www.vmall.com/list-241'),
(2, '手表', 'https://www.vmall.com/list-247'),
(3, 'VR', 'https://www.vmall.com/list-329');

-- --------------------------------------------------------

--
-- 表的结构 `navzi4`
--

CREATE TABLE `navzi4` (
  `sid` tinyint(20) NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navzi4`
--

INSERT INTO `navzi4` (`sid`, `main`, `url`) VALUES
(1, '路由器', 'https://www.vmall.com/list-45'),
(2, '电视盒子', 'https://www.vmall.com/list-46'),
(3, '照明', 'https://www.vmall.com/list-46'),
(4, '字母/分式路由器', 'https://www.vmall.com/list-263'),
(5, '电视猫/WiFi放大器', 'https://www.vmall.com/list-44'),
(6, '随行wifi', 'https://www.vmall.com/list-97'),
(7, '节能', 'https://www.vmall.com/list-423');

-- --------------------------------------------------------

--
-- 表的结构 `navzi5`
--

CREATE TABLE `navzi5` (
  `sid` tinyint(20) NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navzi5`
--

INSERT INTO `navzi5` (`sid`, `main`, `url`) VALUES
(1, '移动电源', 'https://www.vmall.com/list-56'),
(2, '耳机', 'https://www.vmall.com/list-229'),
(3, '自拍杆/支架', 'https://www.vmall.com/list-229'),
(4, '排插', 'https://www.vmall.com/list-233'),
(5, '智能应硬件', 'https://www.vmall.com/list-239');

-- --------------------------------------------------------

--
-- 表的结构 `navzi6`
--

CREATE TABLE `navzi6` (
  `sid` tinyint(20) NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `navzi6`
--

INSERT INTO `navzi6` (`sid`, `main`, `url`) VALUES
(1, '保护壳', 'https://www.vmall.com/list-48'),
(2, '保护套', 'https://www.vmall.com/list-49'),
(3, '贴膜', 'https://www.vmall.com/list-49'),
(4, '触控笔', 'https://www.vmall.com/list-397');

-- --------------------------------------------------------

--
-- 表的结构 `oneai`
--

CREATE TABLE `oneai` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `oneai`
--

INSERT INTO `oneai` (`sid`, `url`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/2440103/1510043740940.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `oneapp`
--

CREATE TABLE `oneapp` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `oneapp`
--

INSERT INTO `oneapp` (`sid`, `url`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/957167/1523520344098.png');

-- --------------------------------------------------------

--
-- 表的结构 `onebrand`
--

CREATE TABLE `onebrand` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `onebrand`
--

INSERT INTO `onebrand` (`sid`, `url`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/1268659/1525857051755.png');

-- --------------------------------------------------------

--
-- 表的结构 `onecomputer`
--

CREATE TABLE `onecomputer` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `onecomputer`
--

INSERT INTO `onecomputer` (`sid`, `url`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/1947317/1525965223783.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `oneipad`
--

CREATE TABLE `oneipad` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `oneipad`
--

INSERT INTO `oneipad` (`sid`, `url`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/1948737/1524040941875.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `oneparts`
--

CREATE TABLE `oneparts` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `oneparts`
--

INSERT INTO `oneparts` (`sid`, `url`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/951979/1525827582807.png');

-- --------------------------------------------------------

--
-- 表的结构 `onephone`
--

CREATE TABLE `onephone` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `onephone`
--

INSERT INTO `onephone` (`sid`, `url`) VALUES
(1, 'https://res0.vmallres.com/pimages//frontLocation/content/1268817/1525702846878.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `parts`
--

CREATE TABLE `parts` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `minurl` varchar(200) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `main` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pic` double(20,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `parts`
--

INSERT INTO `parts` (`sid`, `url`, `minurl`, `name`, `main`, `pic`) VALUES
(1, 'https://res5.vmallres.com/pimages//product/6901443207077/428_428_1512699241768mp.jpg', 'https://res5.vmallres.com/pimages//tag/71/1497575814983.png', '华为智能体脂称', '高精度芯片 更精准的感知', 179),
(2, 'https://res5.vmallres.com/pimages//product/6901443192946/428_428_1501064909833mp.jpg', NULL, '华为全景相机', '360度无界视野', 699),
(3, 'https://res5.vmallres.com/pimages//product/6901443173129/428_428_1518397678332mp.jpg', 'https://res5.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀体脂称', '限时优惠30元', 169),
(4, 'https://res5.vmallres.com/pimages//product/6901443174256/428_428_1489548822739mp.jpg', 'https://res5.vmallres.com/pimages//tag/77/1497575918300.png', '荣耀运动蓝牙耳机', '限时优惠20元', 249),
(5, 'https://res5.vmallres.com/pimages//product/6901443158379/428_428_1484107261446mp.jpg', 'https://res5.vmallres.com/pimages//tag/71/1497575814983.png', '华为10000mAh 移动电源', '18W双向快充', 159),
(6, 'https://res5.vmallres.com/pimages//product/6901443164509/428_428_1490087922122mp.jpg', 'https://res5.vmallres.com/pimages//tag/71/1497575814983.png', '华为运动蓝牙耳机', '高品质音质 智能开关', 269);

-- --------------------------------------------------------

--
-- 表的结构 `phone`
--

CREATE TABLE `phone` (
  `sid` tinyint(20) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `main` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pic` double(20,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `phone`
--

INSERT INTO `phone` (`sid`, `url`, `name`, `main`, `pic`) VALUES
(1, 'https://res0.vmallres.com/pimages//product/6901443218660/428_428_1521287027365mp.jpg', '华为畅享8', '配增件好礼', 1299),
(2, 'https://res0.vmallres.com/pimages//product/6901443189182/428_428_1496991957745mp.jpg', '荣耀9', '最高优惠300元', 2299),
(3, 'https://res0.vmallres.com/pimages//product/6901443225804/428_428_1521789402333mp.jpg', '华为畅享8e', '增精美配件礼包', 1099),
(4, 'https://res0.vmallres.com/pimages//product/6901443217298/428_428_1517624781373mp.jpg', '华为畅享7S', '领劵立减100云', 1699),
(5, 'https://res0.vmallres.com/pimages//product/6901443211944/428_428_1513560654770mp.jpg', '荣耀9青春版', '最高降200+送耳机', 1099),
(6, 'https://res0.vmallres.com/pimages//product/6901443187645/428_428_1503398881431mp.jpg', '华为畅享7 Plus', '领劵减200+赠好礼', 1499),
(7, 'https://res0.vmallres.com/pimages//product/6901443204793/428_428_1514860379284mp.jpg', '荣耀畅玩7X', '最高优惠200', 1199);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adver`
--
ALTER TABLE `adver`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ai`
--
ALTER TABLE `ai`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `boutique`
--
ALTER TABLE `boutique`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `boutique2`
--
ALTER TABLE `boutique2`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `boutique3`
--
ALTER TABLE `boutique3`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `boutique4`
--
ALTER TABLE `boutique4`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `dannav`
--
ALTER TABLE `dannav`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `hotimg`
--
ALTER TABLE `hotimg`
  ADD PRIMARY KEY (`hotsid`);

--
-- Indexes for table `hotnav`
--
ALTER TABLE `hotnav`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ipad`
--
ALTER TABLE `ipad`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navimg`
--
ALTER TABLE `navimg`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navimg2`
--
ALTER TABLE `navimg2`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navimg3`
--
ALTER TABLE `navimg3`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navimg4`
--
ALTER TABLE `navimg4`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navimg5`
--
ALTER TABLE `navimg5`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navimg6`
--
ALTER TABLE `navimg6`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navzi`
--
ALTER TABLE `navzi`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navzi2`
--
ALTER TABLE `navzi2`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navzi3`
--
ALTER TABLE `navzi3`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navzi4`
--
ALTER TABLE `navzi4`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navzi5`
--
ALTER TABLE `navzi5`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `navzi6`
--
ALTER TABLE `navzi6`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `oneai`
--
ALTER TABLE `oneai`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `oneapp`
--
ALTER TABLE `oneapp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `onebrand`
--
ALTER TABLE `onebrand`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `onecomputer`
--
ALTER TABLE `onecomputer`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `oneipad`
--
ALTER TABLE `oneipad`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `oneparts`
--
ALTER TABLE `oneparts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `onephone`
--
ALTER TABLE `onephone`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`sid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `adver`
--
ALTER TABLE `adver`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `ai`
--
ALTER TABLE `ai`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `app`
--
ALTER TABLE `app`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `boutique`
--
ALTER TABLE `boutique`
  MODIFY `sid` tinyint(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `boutique2`
--
ALTER TABLE `boutique2`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `boutique3`
--
ALTER TABLE `boutique3`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `boutique4`
--
ALTER TABLE `boutique4`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `brand`
--
ALTER TABLE `brand`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `computer`
--
ALTER TABLE `computer`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `dannav`
--
ALTER TABLE `dannav`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `footer`
--
ALTER TABLE `footer`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hotimg`
--
ALTER TABLE `hotimg`
  MODIFY `hotsid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `hotnav`
--
ALTER TABLE `hotnav`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `ipad`
--
ALTER TABLE `ipad`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `list`
--
ALTER TABLE `list`
  MODIFY `sid` tinyint(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `navimg`
--
ALTER TABLE `navimg`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `navimg2`
--
ALTER TABLE `navimg2`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `navimg3`
--
ALTER TABLE `navimg3`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `navimg4`
--
ALTER TABLE `navimg4`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `navimg5`
--
ALTER TABLE `navimg5`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `navimg6`
--
ALTER TABLE `navimg6`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `navzi`
--
ALTER TABLE `navzi`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `navzi2`
--
ALTER TABLE `navzi2`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `navzi3`
--
ALTER TABLE `navzi3`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `navzi4`
--
ALTER TABLE `navzi4`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `navzi5`
--
ALTER TABLE `navzi5`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `navzi6`
--
ALTER TABLE `navzi6`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `oneai`
--
ALTER TABLE `oneai`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `oneapp`
--
ALTER TABLE `oneapp`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `onebrand`
--
ALTER TABLE `onebrand`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `onecomputer`
--
ALTER TABLE `onecomputer`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `oneipad`
--
ALTER TABLE `oneipad`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `oneparts`
--
ALTER TABLE `oneparts`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `onephone`
--
ALTER TABLE `onephone`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `phone`
--
ALTER TABLE `phone`
  MODIFY `sid` tinyint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
