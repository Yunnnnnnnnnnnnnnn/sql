-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-10-25 17:52:35
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `testdbfromsql`
--

-- --------------------------------------------------------

--
-- 資料表結構 `供應商`
--

CREATE TABLE `供應商` (
  `供應商編號` varchar(5) NOT NULL,
  `供應商名稱` varchar(50) DEFAULT NULL,
  `聯絡人` varchar(30) DEFAULT NULL,
  `聯絡人職稱` varchar(30) DEFAULT NULL,
  `聯絡人性別` varchar(2) DEFAULT NULL,
  `郵遞區號` varchar(10) DEFAULT NULL,
  `地址` varchar(60) DEFAULT NULL,
  `電話` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `供應商`
--

INSERT INTO `供應商` (`供應商編號`, `供應商名稱`, `聯絡人`, `聯絡人職稱`, `聯絡人性別`, `郵遞區號`, `地址`, `電話`) VALUES
('S0001', '新統', '陳柏霖', '業務', '男', '106', '台北市忠孝東路三段99號', '(02) 555-2222'),
('S0002', '權勝', '李姿玲', '董事長', '女', '400', '台中市仁愛路四段59號', '(03) 555-4822'),
('S0003', '妙恩', '張家豪', '董事長', '男', '540', '南投縣埔里路389號', '(04) 555-5735'),
('S0004', '丁泉', '周俊安', '業務', '男', '931', '屏東縣石光村中巷1號', '(08) 305-5011'),
('S0005', '正心', '薛竣生', '訂貨員', '男', '900', '屏東市圓通南路23巷27號', '(08) 598-7654');

-- --------------------------------------------------------

--
-- 資料表結構 `員工`
--

CREATE TABLE `員工` (
  `員工編號` int(11) NOT NULL,
  `姓名` varchar(20) DEFAULT NULL,
  `職稱` varchar(20) DEFAULT NULL,
  `性別` varchar(2) DEFAULT NULL,
  `主管` int(11) DEFAULT NULL,
  `出生日期` date DEFAULT NULL,
  `任用日期` date DEFAULT NULL,
  `區域號碼` varchar(10) DEFAULT NULL,
  `地址` varchar(60) DEFAULT NULL,
  `分機號碼` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `員工`
--

INSERT INTO `員工` (`員工編號`, `姓名`, `職稱`, `性別`, `主管`, `出生日期`, `任用日期`, `區域號碼`, `地址`, `分機號碼`) VALUES
(1, '陳祥輝', '總經理', '男', NULL, '1965-07-15', '1992-11-13', '114', '台北市內湖區康寧 路23巷', '1888'),
(2, '黃謙仁', '工程師', '男', 4, '1969-03-22', '1992-11-26', '407', '台中市西屯區工業11路', '3087'),
(3, '林其達', '工程助理', '男', 2, '1971-06-06', '1992-12-06', '235', '台北縣中和市大勇街25巷', '2138'),
(4, '陳森耀', '工程協理', '男', 1, '1968-11-14', '1993-01-14', '106', '台北市大安區忠孝東路4段', '3085'),
(5, '徐沛汶', '業務助理', '女', 12, '1963-09-30', '1993-03-16', '330', '桃園縣桃園市縣府路', '2234'),
(6, '劉逸萍', '業務', '女', 10, '1958-09-15', '1993-05-23', '111', '台北市士林區士東路', '2230'),
(7, '陳臆如', '業務協理', '女', 1, '1987-04-03', '2009-08-01', '114', '台北市內湖區瑞光路513巷', '2247'),
(8, '胡琪偉', '業務', '男', 10, '1963-08-12', '1993-10-17', '220', '台北縣板橋市中山路一段', '2238'),
(9, '吳志梁', '業務', '男', 10, '1960-05-19', '1994-07-02', '406', '台中市北屯區太原路3段', '2236'),
(10, '林美滿', '業務經理', '女', 7, '1958-02-09', '1994-08-27', '104', '台北市中山區 一江街', '2344'),
(11, '劉嘉雯', '業務', '女', 10, '1968-02-07', '2005-11-05', '111', '台北市士林區福志路', '2234'),
(12, '張懷甫', '業務經理', '男', 7, '1952-09-16', '1994-12-26', '106', '台北市大安區仁愛路四段', '2342');

-- --------------------------------------------------------

--
-- 資料表結構 `客戶`
--

CREATE TABLE `客戶` (
  `客戶編號` varchar(5) NOT NULL,
  `公司名稱` varchar(50) DEFAULT NULL,
  `聯絡人` varchar(30) DEFAULT NULL,
  `聯絡人職稱` varchar(30) DEFAULT NULL,
  `聯絡人性別` varchar(2) DEFAULT NULL,
  `郵遞區號` varchar(10) DEFAULT NULL,
  `地址` varchar(60) DEFAULT NULL,
  `電話` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `客戶`
--

INSERT INTO `客戶` (`客戶編號`, `公司名稱`, `聯絡人`, `聯絡人職稱`, `聯絡人性別`, `郵遞區號`, `地址`, `電話`) VALUES
('C0001', '心宥川公司', '謝方怡', '業務', '女', '115', '台北市南港區忠孝東路五段', '(02) 778-9652'),
('C0002', '玫瑰花卉', '徐禹維', '業務', '男', '807', '高雄市三民區克武路4巷', '(07) 556-6665'),
('C0003', '日盛金樓', '吳中平', '董事長', '男', '408', '台中市南屯區向學路', '(03) 862-9682'),
('C0004', '東信銀行', '謝世彬', '訂貨員', '男', '811', '高雄市楠梓區興楠路', '(07) 555-8888'),
('C0005', '五金行', '莊海川', '業務', '男', '974', '花蓮縣壽豐鄉大學路二段', '(06) 245-9665'),
('C0006', '優勢企業', '劉顯忠', '行銷專員', '男', '261', '宜蘭縣頭城鎮協天路706巷', '(06) 556-3365'),
('C0007', '業永房屋', '蔡爵如', '董事長', '男', '104', '台北市中山區八德路', '(02) 765-5252'),
('C0008', '信義建設', '林美孜', '會計人員', '女', '105', '台北市松山區健康路', '(02) 322-7628'),
('C0009', '林木材料', '吳嘉修', '業務助理', '男', '807', '高雄市三民區金山路', '(07) 256-6932'),
('C0010', '悅式海鮮店', '王中志', '訂貨員', '男', '221', '台北縣汐止市莊敬街', '(02) 695-7788'),
('C0011', '丁泉', '周俊安', '業務', '男', '931', '屏東縣石光村中巷1號', '(08) 305-5011'),
('C0012', '富同公司', '邵雲龍', '董事長', '男', '104', '台北市中山區農安街', '(02) 591-9766'),
('C0013', '權勝', '李姿玲', '董事長', '女', '400', '台中市仁愛路四段59號', '(03) 555-4822'),
('C0014', '科瑞棧藝品', '黃靖貿', '會計人員', '女', '221', '台北縣汐止市大同路三段', '(02) 695-9682'),
('C0015', '宏詮工業', '朱晉陞', '業務', '男', '302', '新竹縣竹北市光明六路', '(04) 358-6932'),
('C0016', '日新日公司', '李豫恩', '業務助理', '男', '407', '台中市西屯區協和里工業區37路', '(03) 999-5681');

-- --------------------------------------------------------

--
-- 資料表結構 `產品資料`
--

CREATE TABLE `產品資料` (
  `產品編號` int(11) NOT NULL,
  `類別編號` int(11) DEFAULT NULL,
  `供應商編號` varchar(5) DEFAULT NULL,
  `產品名稱` varchar(40) DEFAULT NULL,
  `建議單價` int(11) DEFAULT NULL,
  `平均成本` int(11) DEFAULT NULL,
  `庫存量` int(11) DEFAULT NULL,
  `安全存量` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `產品資料`
--

INSERT INTO `產品資料` (`產品編號`, `類別編號`, `供應商編號`, `產品名稱`, `建議單價`, `平均成本`, `庫存量`, `安全存量`) VALUES
(1, 1, 'S0001', '蘋果汁', 18, 12, 390, 50),
(2, 1, 'S0001', '蔬果汁', 20, 13, 117, 50),
(3, 3, 'S0001', '汽水', 20, 10, 213, 200),
(4, 1, 'S0002', '蘆筍汁', 15, 9, 110, 120),
(5, 5, 'S0002', '運動飲料', 15, 10, 210, 100),
(6, 2, 'S0003', '烏龍茶', 27, 15, 320, 300),
(7, 2, 'S0003', '紅茶', 16, 8, 450, 500),
(8, 6, 'S0003', '礦泉水', 18, 10, 339, 200),
(9, 4, 'S0004', '牛奶', 45, 25, 0, 300),
(10, 8, 'S0004', '咖啡', 35, 22, 0, 150),
(11, 4, 'S0005', '奶茶', 25, 12, 220, 200),
(12, 7, 'S0004', '啤酒', 30, 22, 0, 300);

-- --------------------------------------------------------

--
-- 資料表結構 `產品類別`
--

CREATE TABLE `產品類別` (
  `類別編號` int(11) NOT NULL,
  `類別名稱` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `產品類別`
--

INSERT INTO `產品類別` (`類別編號`, `類別名稱`) VALUES
(1, '果汁'),
(2, '茶類'),
(3, '蘇打類'),
(4, '奶類'),
(5, '運動飲料'),
(6, '水類'),
(7, '酒類'),
(8, '咖啡類');

-- --------------------------------------------------------

--
-- 資料表結構 `訂單`
--

CREATE TABLE `訂單` (
  `訂單編號` varchar(8) NOT NULL,
  `員工編號` int(11) DEFAULT NULL,
  `客戶編號` varchar(5) DEFAULT NULL,
  `訂貨日期` date DEFAULT NULL,
  `出貨日期` datetime DEFAULT NULL,
  `預計到貨日期` date DEFAULT NULL,
  `實際到貨日期` datetime DEFAULT NULL,
  `付款方式` varchar(10) DEFAULT NULL,
  `交貨方式` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `訂單`
--

INSERT INTO `訂單` (`訂單編號`, `員工編號`, `客戶編號`, `訂貨日期`, `出貨日期`, `預計到貨日期`, `實際到貨日期`, `付款方式`, `交貨方式`) VALUES
('94010104', 7, 'C0007', '2005-01-10', '2005-03-10 13:00:00', '2005-03-11', '2005-03-12 00:00:00', '現金', '海運'),
('94010105', 10, 'C0008', '2005-01-11', '2005-03-12 14:30:00', '2005-03-12', '2005-03-12 18:00:00', '信用卡', '郵寄'),
('94010201', 10, 'C0003', '2005-11-04', '2005-11-10 14:30:00', '2005-11-15', '2005-11-14 20:00:00', '現金', '快遞'),
('94010202', 6, 'C0005', '2005-05-12', '0000-00-00 00:00:00', '2005-05-25', '2005-05-25 18:00:00', '支票', '郵寄'),
('94010301', 8, 'C0016', '2005-07-03', '2005-07-21 14:00:00', '2005-07-25', '2005-05-26 10:20:00', '信用卡', '快遞'),
('94010302', 10, 'C0012', '2005-08-03', '2005-08-10 13:20:00', '2005-08-12', '2005-05-12 11:00:00', '信用卡', '郵寄'),
('94010303', 10, 'C0014', '2005-09-03', '2005-10-01 10:10:00', '2005-10-03', '2005-10-03 11:30:00', '支票', '郵寄'),
('94010401', 7, 'C0014', '2005-11-04', '2005-11-10 11:26:13', '2005-11-15', '2005-11-14 11:26:24', '支票', '快遞'),
('94010501', 7, 'C0014', '2005-12-15', '2005-12-20 13:30:00', '2005-12-23', '2005-12-22 19:20:00', '支票', '郵寄'),
('94010601', 8, 'C0011', '2005-12-16', '2005-12-28 09:00:00', '2005-12-30', '2005-12-31 10:00:00', '信用卡', '快遞'),
('94010701', 9, 'C0016', '2006-01-27', '2006-02-02 10:00:00', '2006-02-05', '2006-02-05 09:30:00', '現金', '郵寄'),
('94010702', 10, 'C0009', '2006-02-27', '2006-03-01 14:00:00', '2006-03-03', '0000-00-00 00:00:00', '現金', '快遞'),
('94010705', 6, 'C0011', '2006-02-27', '2006-03-02 11:20:00', '2006-03-03', '2006-03-04 10:20:00', '支票', '空運'),
('94010801', 6, 'C0010', '2006-04-18', '2006-04-22 15:30:00', '2006-04-25', '2006-04-25 18:00:00', '支票', '郵寄'),
('94010803', 10, 'C0013', '2006-05-20', '2006-05-30 00:00:00', '2005-06-01', '0000-00-00 00:00:00', '信用卡', '快遞'),
('94010804', 7, 'C0016', '2006-06-20', '0000-00-00 00:00:00', '2006-07-01', '0000-00-00 00:00:00', '信用卡', '空運'),
('94010805', 7, 'C0015', '2006-09-20', '2006-09-26 09:00:00', '2006-09-26', '2006-09-26 14:00:00', '現金', '快遞'),
('94010806', 6, 'C0011', '2006-11-08', NULL, '2006-11-12', NULL, '現金', '快遞');

-- --------------------------------------------------------

--
-- 資料表結構 `訂單明細`
--

CREATE TABLE `訂單明細` (
  `訂單編號` varchar(8) NOT NULL,
  `產品編號` int(11) NOT NULL,
  `實際單價` int(11) DEFAULT NULL,
  `數量` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `訂單明細`
--

INSERT INTO `訂單明細` (`訂單編號`, `產品編號`, `實際單價`, `數量`) VALUES
('94010104', 1, 18, 12),
('94010104', 3, 20, 20),
('94010105', 4, 15, 10),
('94010105', 6, 25, 20),
('94010201', 1, 18, 10),
('94010201', 6, 25, 20),
('94010201', 10, 35, 15),
('94010202', 7, 15, 30),
('94010301', 6, 25, 20),
('94010301', 12, 7, 22),
('94010302', 3, 20, 10),
('94010303', 10, 35, 17),
('94010401', 3, 20, 9),
('94010401', 5, 15, 6),
('94010501', 3, 20, 9),
('94010601', 1, 16, 50),
('94010601', 2, 20, 10),
('94010701', 10, 35, 13),
('94010702', 4, 9, 88),
('94010702', 6, 22, 20),
('94010705', 2, 20, 20),
('94010801', 1, 16, 55),
('94010803', 10, 31, 35),
('94010806', 1, 18, 20),
('94010806', 3, 18, 55);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `供應商`
--
ALTER TABLE `供應商`
  ADD PRIMARY KEY (`供應商編號`);

--
-- 資料表索引 `員工`
--
ALTER TABLE `員工`
  ADD PRIMARY KEY (`員工編號`);

--
-- 資料表索引 `客戶`
--
ALTER TABLE `客戶`
  ADD PRIMARY KEY (`客戶編號`);

--
-- 資料表索引 `產品資料`
--
ALTER TABLE `產品資料`
  ADD PRIMARY KEY (`產品編號`),
  ADD KEY `FK_產品資料_供應商` (`供應商編號`),
  ADD KEY `FK_產品資料_產品類別` (`類別編號`);

--
-- 資料表索引 `產品類別`
--
ALTER TABLE `產品類別`
  ADD PRIMARY KEY (`類別編號`);

--
-- 資料表索引 `訂單`
--
ALTER TABLE `訂單`
  ADD PRIMARY KEY (`訂單編號`),
  ADD KEY `FK_訂單_客戶` (`客戶編號`),
  ADD KEY `FK_訂單_員工` (`員工編號`);

--
-- 資料表索引 `訂單明細`
--
ALTER TABLE `訂單明細`
  ADD PRIMARY KEY (`訂單編號`,`產品編號`),
  ADD KEY `FK_訂單明細_產品資料` (`產品編號`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `產品資料`
--
ALTER TABLE `產品資料`
  ADD CONSTRAINT `FK_產品資料_供應商` FOREIGN KEY (`供應商編號`) REFERENCES `供應商` (`供應商編號`),
  ADD CONSTRAINT `FK_產品資料_產品類別` FOREIGN KEY (`類別編號`) REFERENCES `產品類別` (`類別編號`);

--
-- 資料表的限制式 `訂單`
--
ALTER TABLE `訂單`
  ADD CONSTRAINT `FK_訂單_員工` FOREIGN KEY (`員工編號`) REFERENCES `員工` (`員工編號`),
  ADD CONSTRAINT `FK_訂單_客戶` FOREIGN KEY (`客戶編號`) REFERENCES `客戶` (`客戶編號`);

--
-- 資料表的限制式 `訂單明細`
--
ALTER TABLE `訂單明細`
  ADD CONSTRAINT `FK_訂單明細_產品資料` FOREIGN KEY (`產品編號`) REFERENCES `產品資料` (`產品編號`),
  ADD CONSTRAINT `FK_訂單明細_訂單` FOREIGN KEY (`訂單編號`) REFERENCES `訂單` (`訂單編號`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
