-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2022 lúc 05:51 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_shop_dep`
--
CREATE DATABASE IF NOT EXISTS `web_shop_dep` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `web_shop_dep`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE IF NOT EXISTS `banner_image` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `title` varchar(64) DEFAULT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner_image`
--

INSERT INTO `banner_image` (`banner_id`, `link`, `image`, `sort_order`, `title`, `sub_title`, `description`, `price`, `status`) VALUES
(1, 'index.php?route=product/manufacturer/info&manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0, 'HP Banner', '', '', '0.0000', 0),
(2, '/product-info.php?product_id=63', 'catalog/banners/banner1.png', 1, 'Dép', '', '<p><br></p>', '0.0000', 1),
(3, '/product-info.php?product_id=69', 'catalog/banners/banner2.png', 2, 'Dép', 'Sieu pham cua ', '<p><br></p>', '0.0000', 1),
(4, '', 'catalog/banners/banner5.png', 0, 'Dép', 'Say Hello to Future !', '<p><br></p>', '0.0000', 1),
(5, '/product-info.php?product_id=65', 'catalog/banners/cach-chon-giay-sandal-nam-cuc-chuan-va-phu-hop-thumb-1-1200x628.jpg', 2, 'chưa có tựa đề', '', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '0.0000', 1),
(6, 'http://www.acer.com', '', 0, 'chưa có tựa đề', '', '<p><br></p>', '0.0000', 0),
(7, 'http://www.asus.com', '', 0, 'chưa có tựa đề', '', '<p><br></p>', '0.0000', 0),
(8, 'http://www.canon.com', 'catalog/manufacturers/Canon_logo.png', 0, 'chưa có tựa đề', '', '<p><br></p>', '0.0000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `featured`) VALUES
(18, 'catalog/demo/hp_2.jpg', 69, 1, 0, 2, 1, '2009-01-05 21:49:15', '2017-03-03 17:27:09', 'Túi Chống Nước', '<p>\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.</p>\r\n', 0),
(20, 'catalog/banners/banner-1-370x240.jpg', 0, 0, 0, 5, 1, '2009-01-05 21:49:43', '2022-09-12 15:46:06', 'Loại Khác ...', '<p>Desktops deliver more power and flexibility than you can get from a \r\nlaptop, and there are more designs than ever to choose from. Here\'s our \r\nbuying advice, along with our list of the best models we\'ve tested.\r\n            </p><p><span></span></p><p style=\"\">Why on Earth would you want to buy a desktop PC or Mac\r\n in 2016? Simply put, there are computing needs that mobile devices like\r\n laptops and tablets can\'t fulfill as well as the stalwart desktop. \r\nHere\'s what to consider when deciding on your next desktop PC.</p>\r\n\r\n<p style=\"\"><b>It\'s About the Power</b><br>\r\n Desktop-class CPUs and graphics processors are simply more powerful \r\nthan their mobile counterparts for the same money. They give you the \r\npower to finish whatever task you\'re working on in less time. Desktop \r\ncomponents are less expensive in general, so instead of buying a $500 \r\nlaptop with a competent Intel Atom processor, you can buy a $500 desktop\r\n with a powerful Intel Core i5 desktop CPU in it.</p><p></p>', 0),
(24, 'catalog/banners/TemplateMonster/OpenCart/53398/6c1ab453395537ac8fc9cbfb9eb7ffa8.jpg', 0, 0, 0, 3, 1, '2009-01-20 02:36:26', '2022-09-11 14:27:16', 'Camera Phones', 'We always stay in touch with the latest fashion tendencies and hi-tech achievements.', 0),
(25, 'catalog/products/It-peripherals.png', 69, 1, 0, 5, 1, '2009-01-31 01:04:25', '2017-03-03 17:24:55', 'Gậy Selfie', '<div class=\"post-content__excerpt\" itemprop=\"description\">\r\n                    <p>Year by year, the world is migrating from 1080p. \r\n1440p is now become the sweet spot even for mid-range graphics cards. \r\nEven consoles are making a break for the 4K horizon, courtesy of the PS4\r\n Pro and Microsoft\'s Project Scorpio.</p>\r\n<p>But if you want to purchase a 4K monitor today, it\'s not enough to do\r\n it for gaming. There has to be a productivity benefit. So over the last\r\n few months, I\'ve been using one of LG\'s latest 4K monitors - the \r\n27UD88-W, a $900 4K monitor with an IPS panel, FreeSync and a very \r\nversatile USB-C port.                </p></div>', 0),
(26, '', 20, 0, 0, 3, 1, '2009-01-31 01:55:14', '2021-04-20 21:50:36', '4G', '<p><br></p>', 0),
(27, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:34', '2021-04-20 21:50:05', '2G', '<p>https://en.wikipedia.org/wiki/2G</p><p>https://bkaii.com.vn/tin-tuc/306-su-khac-biet-giua-cac-loai-mang-di-dong-gsm-3g-4g-5g</p><p><br></p><p>Trước tiên ta cùng tìm hiểu về mạng 2G:</p><p><br></p><p>Đây chính là thế hệ mạng di động thứ 2 với tên gọi đầy đủ là hệ thống thông tin di động toàn cầu. Mạng 2G có tên tiếng anh là Global System for Mobile Communications hay còn gọi là GSM. Mạng 2G có khả năng phủ sóng rộng khắp, làm cho những chiếc điện thoại có thể được sử dụng ở nhiều nơi trên thế giới. GSM gồm nhiều các trạm thu phát sóng để những điện thoại di động có thể kết nối mạng qua việc tìm kiếm các trạm thu phát gần nhất.</p><p><br></p><p>Mạng 2G chia làm 2 nhánh chính: nền TDMA và CDMA và nhiều dạng kết nối tùy theo yêu cầu sử dụng. Các chuẩn thương mại chính: D-AMPS, GSM/GPRS/EDGE, cdmaOne.</p><p><br></p><p>Khi mạng 2G xuất hiện, chất lượng cuốc gọi được cải thiện đáng kể, tín hiệu và tốc độ cũng tốt hơn rất nhiều so với thế hệ trước đó. Thời gian và chi phí được tiết kiệm khi mã hóa dữ liệu theo dạng kĩ thuật số. Những thiết bị được thiết kế nhỏ gọn và nhẹ hơn, ngoài ra chúng còn có thể thực hiện tin nhắn dạng SMS.</p><p><br></p><p>Những modem truyền thông trong công nghiệp như F2103 cũng sử dụng công nghệ mạng 2G này để thực hiện truyền tải dữ liệu. Nói chung mạng 2G có những tác động khá lớn tới ngành thông tin liên lạc và truyền tải dữ liệu.</p>', 0),
(28, '', 69, 0, 0, 1, 1, '2009-02-02 13:11:12', '2017-03-03 17:21:33', 'Thẻ Nhớ', '<p><br></p>', 0),
(29, '', 69, 0, 0, 1, 1, '2009-02-02 13:11:37', '2017-03-03 17:27:47', 'Pin Sạc Dự Phòng', '<p><br></p>', 0),
(30, '', 69, 0, 0, 1, 1, '2009-02-02 13:11:59', '2017-03-03 17:22:33', 'Tai Nghe', '<p><br></p>', 0),
(31, '', 69, 0, 0, 1, 1, '2009-02-03 14:17:24', '2017-03-03 17:23:39', 'Loa', '<p><br></p>', 0),
(32, '', 69, 0, 0, 1, 1, '2009-02-03 14:17:34', '2017-03-03 17:26:03', 'Móc Dán Điện Thoại', '<p><br></p>', 0),
(45, '', 69, 0, 0, 1, 1, '2010-09-24 18:29:16', '2017-03-03 17:28:20', 'Đế Điện Thoại', '<p>https://www.thegioididong.com/phu-kien-khac?g=de-dien-thoai<br></p>', 0),
(46, '', 69, 0, 0, 0, 1, '2010-09-24 18:29:31', '2017-03-03 17:28:30', 'Cáp Sạc', '<p><br></p>', 0),
(57, 'catalog/demo/category/ipad-2-black.jpg', 69, 1, 0, 1, 1, '2011-04-26 08:53:16', '2017-03-03 17:24:16', 'Miếng Dán Màn Hình', '<span><p style=\"\">There are countless tablets on the market, but which one is right for you? Whether you\'re eyeing an iPad, one of the many <a target=\"_blank\" href=\"http://www.pcmag.com/article2/0,2817,2483566,00.asp\">Android tablets</a> available, or a <a href=\"http://www.pcmag.com/article2/0,2817,2417564,00.asp\" target=\"_blank\">Windows slate</a>\r\n for productivity, here are the key factors you need to consider when \r\nshopping, along with some of the top-rated models we\'ve tested.</p>\r\n\r\n<p style=\"\">We\'d like to make one \r\nnote for the fall: Apple\'s iPad lineup is starting to look a bit old. \r\nIt\'s been almost two full years since the company updated its midrange <a href=\"http://www.pcmag.com/article2/0,2817,2470708,00.asp\">iPad Air</a>\r\n series. It\'s still a fine tablet, but we\'d suggest holding off, if you \r\ncan, to see if Apple announces a late October update, if you\'re looking \r\nfor an iOS tablet that\'s not an iPad Pro.</p></span>', 0),
(69, 'catalog/categories/crocs/OIP (1).jpg', 0, 0, 0, 4, 1, '2015-06-14 04:59:18', '2022-09-21 00:17:50', 'Deps crocs', '<p>Our products have some advantages such as durability and reliability. </p>', 0),
(70, 'catalog/categories/070/20.jpg', 0, 1, 0, 1, 1, '2016-02-23 13:58:14', '2022-10-12 09:30:44', 'Dép quai ngang', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', 1),
(71, 'catalog/categories/070/38.jpg', 0, 1, 0, 0, 1, '2016-02-23 13:58:39', '2022-10-12 09:29:53', 'Dép kẹp ', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', 1),
(72, 'catalog/categories/070/91.jpg', 0, 1, 0, 2, 1, '2016-02-23 13:59:01', '2022-10-12 09:32:05', 'Sandal', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', 1),
(73, '', 20, 0, 0, 100, 1, '2016-02-23 14:12:20', '2021-04-20 21:51:01', 'PDA', '<p><br></p>', 0),
(74, 'catalog/banners/TemplateMonster/OpenCart/53398/54097190c9dd11a7b268d5376c0f9825.jpg', 69, 0, 0, 0, 1, '2017-02-17 15:06:36', '2022-09-11 15:21:23', 'Ốp Lưng', '<p>We always stay in touch with the latest fashion tendencies and hi-tech achievements. </p>', 0),
(75, '', 20, 0, 0, 2, 1, '2021-04-20 21:49:29', '2021-04-20 21:50:20', '3G', '<p>https://en.wikipedia.org/wiki/3G</p><p>https://bkaii.com.vn/tin-tuc/306-su-khac-biet-giua-cac-loai-mang-di-dong-gsm-3g-4g-5g<br></p><p>Mạng 3G</p><p><br></p><p>Thế hệ thứ 3 của chuẩn công nghệ điện thoại di động chính là mạng 3G Third-generation technology, cho phép truyền cả dữ liệu thoại như nghe gọi, nhắn tin và dữ liệu ngoài thoại như gửi mail, tải dữ liệu, hình ảnh. Nhờ có 3G ta có thể truy cập Internet cho cả thuê bao cố định hay di chuyển ở các tốc độ khác nhau. Đa số các smart phone hiện nay đều hỗ trợ công nghệ 3G. Hiện nay công nghệ 3G được xây dựng với 4 chuẩn chính: W-CDMA, CDMA2000, TD-CDMA, TD-SCDMA.</p><p><br></p><p>Mạng 3G cải thiện chất lượng cuộc gọi, tín hiệu, tốc độ so với 2G. Ta có thể truy cập Internet tốc độ cao ngay khi đang di chuyển, truy cập thế giới nội dung đa phương tiện: nhạc, phim, hình ảnh chất lượng cao. Người dùng có thể trò chuyện mọi nơi với chi phí rẻ hơn rất nhiều qua các ứng dụng hỗ trợ như: zalo, Viber, Line,…</p>', 0),
(76, '', 20, 0, 0, 4, 1, '2021-04-20 21:52:45', '2021-04-20 21:53:18', '5G', '<p>https://en.wikipedia.org/wiki/5G</p><p><br></p><p>Mạng 5G</p><p>Giống như những gì chúng ta hình dung, 5G nhanh hơn 4G. Hiện tại, mạng 5G mới được lên kế hoạch hoạt động trong dải tần số cao của băng tần không dây – nó nằm giữa 30 GHz và 300 GHz, hay còn được gọi là băng tần bước sóng milimet. Đối với các thiết bị di động, 5G sẽ giúp sửa chữa rất nhiều vấn đề của 4G và các công nghệ không dây hiện tại. Nó sẽ được thiết kế để hỗ trợ đồng thời nhiều người dùng và thiết bị hơn (theo thông số kỹ thuật ITU mỗi cell 5G sẽ hỗ trợ cho 1 triệu thiết bị trên diện tích 1 km2), với tốc độ cao hơn cả 4G. Việc tốc độ dữ liệu của bạn bị chậm đi khi đang ở một sự kiện đông người sẽ chỉ còn là quá khứ.</p><p><br></p><p>Tuy vậy 5G vẫn còn là một khái niệm khá trìu tượng với nước ta. Để 5G có thể trở nên phổ biến phát mất nhiều thời gian nữa.</p>', 0),
(77, 'catalog/products/crocs/OIP (1).jpg', 0, 1, 1, 4, 1, '2022-09-21 00:18:19', '2022-09-28 08:20:27', 'Crocs', '<p><br></p>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_path`
--

DROP TABLE IF EXISTS `category_path`;
CREATE TABLE IF NOT EXISTS `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_path`
--

INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES
(18, 18, 1),
(18, 69, 0),
(20, 20, 0),
(24, 24, 0),
(25, 25, 1),
(25, 69, 0),
(26, 20, 0),
(26, 26, 1),
(27, 20, 0),
(27, 27, 1),
(28, 28, 1),
(28, 69, 0),
(29, 29, 1),
(29, 69, 0),
(30, 30, 1),
(30, 69, 0),
(31, 31, 1),
(31, 69, 0),
(32, 32, 1),
(32, 69, 0),
(45, 45, 1),
(45, 69, 0),
(46, 46, 1),
(46, 69, 0),
(57, 57, 1),
(57, 69, 0),
(69, 69, 0),
(70, 70, 0),
(71, 71, 0),
(72, 72, 0),
(73, 20, 0),
(73, 73, 1),
(74, 69, 0),
(74, 74, 1),
(75, 20, 0),
(75, 75, 1),
(76, 20, 0),
(76, 76, 1),
(77, 77, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `date_added`, `date_modified`, `phone`, `date`, `address`, `website`) VALUES
(9, 'Lê Minh Họa', 'hoa@gmail.com', 'V/v chính sách khách hàng', 'Tôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.\r\nTôi có một vài điểm không đồng thuận về chính sách khách hàng.', '2020-07-05 11:45:21', '2020-07-11 18:11:22', NULL, NULL, NULL, NULL),
(10, 'Ví Văn Dụ', 'vidu@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị\r\nTôi cực lực lên án cách bán hàng của các vị', '2020-07-11 18:17:31', '2020-07-11 18:34:18', '+(84)-0912247115', '2020-07-13 09:35:00', NULL, NULL),
(11, 'Khách Văn Hàng', 'hang@gmail.com', 'Khiếu nại về chất lượng sản phẩm', 'Tôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án\r\nTôi cực lực lên án', '2020-07-11 22:12:42', '2020-07-14 14:43:59', '0915147115', '2020-07-15 12:15:00', '285 Đội Cấn. Hà Nội', 'http://hang.org');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `fullname`, `email`, `telephone`, `address`, `password`, `status`, `date_added`) VALUES
(1, 'Bình', 'binh@fpt.vn', '0979999999', '285 Doi Can, Ba Dinh, HaNoi', '$2y$10$T.kuGeuZQRLuWraL3zclZuHl67q8InDwn4tmzFJ/Tn4lCb2OqaK5G', 1, '2015-07-10 13:37:34'),
(3, 'Quảng', 'quang@bkav.com', '0915686868', '69 Quan Hoa Cầu Giấy Hà Nội', '$2y$10$yeJkGSXTPLQoBX6QqjPlteI9qE496Qkl0z7jsQK0PJUa/pf9kOtua', 1, '2016-03-02 10:55:52'),
(4, 'Đức', 'demo@project.com', '0968686868', 'Playku Gialai2', '$2y$10$P1kJFjMxDqMP0jRhkkXVPuDv8hGLEDLGxmLyaX39.QObjsl0usu9.', 1, '2016-03-06 23:14:33'),
(5, 'Linh', 'linh@gmail.com', '0915147115', 'Hanoi 2', '$2y$10$KcH17v0lydo.ak/7.fEOdO3kPAE1nlZubuhlM3ygN9WBdYRjJ2TAS', 1, '2020-07-03 15:20:20'),
(6, 'chung', 'chung@gmail.com', '', 'Việt Nam ', '$2y$10$2IboCW5mYrQvao5lE2P8B./pB5y34PgLAywI1gBogEXR5J5JO1FW2', 1, '2022-10-17 20:03:19'),
(7, 'sinh', 'sinh@gmail.com', '', 'Việt Nam ', '$2y$10$dWvfQWmGXQVHzNDL0rDZc.U5QRRfAMcZG0zu2h5njrvfyY2oVY3f6', 1, '2022-10-17 20:04:33'),
(8, 'kieuanh', 'kieuanh@gmail.com', '02193012849', 'Việt Nam', '$2y$10$huFsMahWsAv9JUIXrqZRQuEgpnIvOd7O5IuKcFZEQ3.A01dAgU.6W', 1, '2022-10-17 20:06:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`, `featured`) VALUES
(5, 'valentino', 'catalog/categories/070/valen.jpg', 0, 1),
(6, 'Palm', 'catalog/manufacturers/palm_logo.jpg', 0, 0),
(7, 'LV', 'catalog/logos/Louis-Vuitton-Emblem-700x394.png', 0, 1),
(8, 'Keedo', 'catalog/logos/images2.jpg', 0, 1),
(9, 'Canon', 'catalog/manufacturers/canon_logo.jpg', 0, 0),
(10, 'Sony', 'catalog/manufacturers/sony_logo.jpg', 0, 0),
(11, 'Samsung', '', 0, 0),
(12, 'Nokia', '', 0, 0),
(13, 'LG', '', 0, 0),
(14, 'Asus', '', 0, 0),
(15, 'Acer', '', 0, 0),
(16, 'nike', 'catalog/logos/Nike-Logo.png', 0, 1),
(17, 'Dell', '', 0, 0),
(18, 'Microsoft', '', 0, 0),
(19, 'Motorola', '', 0, 0),
(20, 'NEC', '', 0, 0),
(21, 'Panasonic', '', 0, 0),
(22, 'Siemens', '', 0, 0),
(23, 'Alcaltel', '', 0, 0),
(24, 'Huawei', '', 0, 0),
(25, 'Oppo', '', 0, 0),
(26, 'O2', '', 0, 0),
(27, 'Philips', '', 0, 0),
(28, 'Sharp', '', 0, 0),
(29, 'Toshiba', '', 0, 0),
(30, 'Vodafone', '', 0, 0),
(31, 'Ericsson', '', 0, 0),
(32, 'Fujitsu', '', 0, 0),
(33, 'BlackBerry', '', 0, 0),
(34, 'Vertu', 'catalog/manufacturers/Vertu_7d69a_450x450.png', 0, 0),
(35, 'Supreme', 'catalog/categories/070/supreme.jpg', 0, 1),
(36, 'puma', 'catalog/logos/abd21a1a0ca69d934b2fcb95d22d336f.png', 0, 1),
(37, 'Adidas', 'catalog/categories/070/adidas.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `email`, `telephone`, `fullname`, `address`, `comment`, `total`, `date_added`) VALUES
(23, 4, 'minhhoahuuvu@gmail.com', '043668866', 'Đức', '285 Doi Can', '', '601.0000', '2015-05-11 22:52:08'),
(25, 4, 'minhhoa2@gmail.com', '0968222222', 'Đức', 'Ngõ 285 Đội Cấn 1', '', '12020000.0000', '2015-06-16 04:16:17'),
(26, 4, 'minhhoa3@gmail.com', '0968333333', 'Đức', 'hà nội 3', '', '4020000.0000', '2015-06-16 04:24:58'),
(27, 4, 'minhhoa4@gmail.com', '0968444444', 'Đức', 'Ngõ 285 Đội Cấn 4', '', '16020000.0000', '2015-06-16 09:36:03'),
(28, 4, 'minhhoa5@gmail.com', '0968555555', 'Đức', 'Palo Alto CA 5', 'Some comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5', '16020000.0000', '2015-06-17 08:14:16'),
(29, 4, 'minhhoa6@gmail.com', '0968 666 666', 'Đức', 'Palo Alto CA 6', 'Some comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6', '12020000.0000', '2015-06-17 09:17:52'),
(30, 4, 'minhhoa7@gmail.com', '0968777777', 'Đức', 'Address 7', 'Some comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7', '14020000.0000', '2015-07-01 05:44:03'),
(31, 4, 'minhhoa8@gmail.com', '0968888888', 'Đức', '285 Doi Can Hanoi', 'I like these products', '6020000.0000', '2015-07-09 09:09:08'),
(32, 4, 'minhhoa9@gmail.com', '0968999999', 'Đức', '285 Doi Can 9', 'Fuck it offf', '14020000.0000', '2015-07-09 09:10:55'),
(33, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:14:08'),
(34, 4, 'minhhoa10@gmail.com', '0968101010', 'Đức', '258 Doi Can 10', '', '4020000.0000', '2015-07-09 09:15:17'),
(35, 4, 'minhhoa12@gmail.com', '0968111111', 'Đức', '285 Doi Can', 'Don hang nay mang so bao danh 11', '34020000.0000', '2015-07-09 13:33:00'),
(36, 4, 'minhhoa13@gmail.com', '09681313133', 'Đức', '285 Doi Can 13', 'Fuck offf 13', '4020000.0000', '2015-07-09 13:41:13'),
(37, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '12020000.0000', '2015-07-11 10:02:33'),
(38, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', '', '16020000.0000', '2015-07-11 10:02:56'),
(39, 1, 'minhhoa@gmail.com', '0968802828', 'minhhoa', '285 Doi Can, Ba Dinh, HaNoi', 'Some test comment from minhhoa', '6020000.0000', '2015-07-11 11:06:09'),
(40, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Đây là những sản phẩm công nghệ đắt tiền tôi yêu thích, quý công ty vui lòng vận chuyển cẩn thận và phải trực tiếp đến tay tôi.', '82720000.0000', '2016-12-30 09:29:24'),
(41, 0, 'tham@gmail.com', '09688028282', 'Thám', '285 Đội Cấn', 'Đây chỉ là một màn test', '13360000.0000', '2017-04-03 15:57:06'),
(42, 4, 'demo@project.com', '0968686868', 'Đức', 'Playku Gialai2', 'Hello 20170405', '10100000.0000', '2017-04-05 09:41:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_order_details_to_order` (`order_id`),
  KEY `fk_order_details_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`) VALUES
(23, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000'),
(23, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000'),
(25, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(25, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(26, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(26, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(27, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(27, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(27, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(28, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(28, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(28, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(28, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(29, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(29, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(30, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(30, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(30, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(31, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(31, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(31, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(32, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(32, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(32, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(34, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(34, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(35, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(35, 43, 'MacBook', 'Product 16', 3, '10000000.0000', '30000000.0000'),
(36, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(36, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(37, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(38, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(38, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(38, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(38, 43, 'MacBook', 'Product 16', 1, '10000000.0000', '10000000.0000'),
(39, 30, 'Canon EOS 5D', 'Product 3', 1, '2000000.0000', '2000000.0000'),
(39, 40, 'iPhone', 'product 11', 1, '2020000.0000', '2020000.0000'),
(39, 41, 'iMac', 'Product 14', 1, '2000000.0000', '2000000.0000'),
(40, 30, 'Pixel C', 'Product 3', 2, '11340000.0000', '22680000.0000'),
(40, 40, 'iPhone 3gs', '3GS', 2, '2020000.0000', '4040000.0000'),
(40, 41, 'iMac', 'iMac MK142ZP/A', 1, '26000000.0000', '26000000.0000'),
(40, 43, 'MacBook', 'Mac Old', 3, '10000000.0000', '30000000.0000'),
(41, 30, 'Pixel C', 'Product 3', 1, '11340000.0000', '11340000.0000'),
(41, 40, 'iPhone 3gs', '3GS', 1, '2020000.0000', '2020000.0000'),
(42, 40, 'iPhone 3gs', '3GS', 5, '2020000.0000', '10100000.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tag` text DEFAULT NULL,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_to_manufacturer` (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `model`, `image`, `manufacturer_id`, `price`, `sort_order`, `status`, `date_added`, `date_modified`, `name`, `description`, `tag`, `best_seller`, `featured`) VALUES
(28, 'Dép kẹp ngang', 'catalog/categories/070/25.jpg', 8, '460000.0000', 0, 1, '2009-02-03 16:06:50', '2022-09-11 15:36:53', 'Dép kẹp nam da bò thật cao cấp KEEDO TN-9021-11', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul><ul>\r\n</ul>\r\n', '', 0, 1),
(29, 'VENTO', 'catalog/categories/070/vento.jpg', 8, '260000.0000', 0, 1, '2009-02-03 16:42:17', '2022-09-12 15:38:12', '  Sandanl nam VENTO', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\">Sandanl nam VENTO cao cấp mới Siêu Đẹp Siêu Bền rất đa tiện ích dùng để đi học, đi chơi, đi du lịch hay đi phượt và đi bất cứ đâu bạn muốn.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ:</span>&nbsp;Made in Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kế:&nbsp;</span>Đơn giản, trẻ trung</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;quai dù dễ vệ sinh, đế cao su chống trợt</li></ul><ul>\r\n</ul>\r\n', '', 0, 0),
(30, 'Product 3', 'catalog/categories/070/dep-kep-nam-da-bo-that-keedo-17-600x600.jpg', 37, '220000.0000', 0, 1, '2009-02-03 16:59:00', '2022-09-11 15:11:32', 'Dép xỏ ngón nam da bò thật KEEDO TN-T82', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật bền đẹp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 1),
(31, '', 'catalog/products/crocs/OIP (1).jpg', 37, '280000.0000', 0, 1, '2009-02-03 17:00:10', '2022-09-28 08:25:35', 'crocs vàng', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 0),
(32, 'Sandal', 'catalog/categories/070/sandal-nam-keedo-14-1-600x600.jpg', 8, '245000.0000', 0, 1, '2009-02-03 17:07:26', '2022-09-11 15:12:12', 'Sandal nam chính hãng KEEDO KDS03', '<h2 style=\"text-align: justify;\"><p style=\"margin-bottom: 1.3em;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai dù cao cấp</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động, đi học, đi chơi…</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Nhận hàng và kiểm tra trước khi thanh toán</li><li></li></ul></h2>', '', 0, 1),
(33, 'quai ngang', 'catalog/categories/070/dep-nam-quai-ngang-keedo-4-3-600x600.jpg', 8, '520000.0000', 0, 1, '2009-02-03 17:08:31', '2022-09-12 14:54:13', 'Dép da nam trung niên quai ngang cao cấp KEEDO KD4076', '<div><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;May quai và đế rất chắc chắn. Kiểu dáng trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></div>\r\n', '', 0, 0),
(34, 'V10', 'catalog/categories/070/dep-nam-quai-ngang-da-bo-that-keedo-11-300x300.jpg', 8, '460000.0000', 0, 1, '2009-02-03 18:07:54', '2022-09-12 14:41:06', ' Dép quai ngang hàng hiệu da bò thật KEEDO KD368', '<h3 class=\"text-normal\"><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h3>', '', 0, 0),
(36, 'A39', 'catalog/categories/070/dep-hai-quai-ngang-keedo-20-600x600.jpg', 8, '290000.0000', 0, 1, '2009-02-03 18:09:19', '2022-09-12 14:45:13', ' Dép hai quai ngang nam KEEDO KD0505', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in VietNam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da tổng hợp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nhà</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 0),
(40, 'Sandal', 'catalog/categories/070/dep-sandal-quai-hau-keedo-1-600x600.jpg', 8, '485000.0000', 0, 1, '2009-02-03 21:07:12', '2022-09-11 15:05:26', 'Dép sandal hàng hiệu da bò thật KEEDO DR1016', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động vừa có thể làm dép, và làm giày quai hậu được</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>\r\n', '', 0, 1),
(41, 'Sandal', 'catalog/categories/070/Sandal-adidas-adilette-2-600x600.jpg', 8, '425000.0000', 0, 1, '2009-02-03 21:07:26', '2022-09-11 15:42:41', '         Sandal adidas adilette', '<h2 class=\"hero-headline\"><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;VNXK</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Trẻ trung, năng động dễ dàng mang vào tháo ra</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 1),
(43, 'Dép quai ngang', 'catalog/categories/070/dep-quai-ngang-nam-ca-sau -keedo-4-1-600x600.jpg', 5, '460000.0000', 0, 1, '2009-02-03 21:07:49', '2022-09-11 16:01:21', 'Dép Quai Ngang Cá Sấu KEEDO KD7622', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt. Thoải mái đi mưa đi biển.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 1),
(46, 'KD1505', 'catalog/categories/070/dep-nam-hai-quai-keedo-14-600x600.jpg', 8, '360000.0000', 0, 1, '2009-02-03 21:08:29', '2022-09-12 15:09:17', ' Dép Hai Quai Ngang Nam KEEDO-KD1505', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai vải dù cao cấp</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 0),
(47, 'Quai ngang ', 'catalog/categories/070/dep-nam-quai-ngang-keedo-15-600x600.jpg', 8, '360000.0000', 0, 1, '2009-02-03 21:08:40', '2022-09-12 15:01:33', 'Dép Hai Quai Ngang Nam KEEDO-KD1705', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai vải dù cao cấp</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 0),
(48, 'quai ngang', 'catalog/categories/070/Dep-nam-quai-cheo-keedo-1-600x600.jpg', 8, '480000.0000', 0, 1, '2009-02-08 17:21:51', '2022-09-12 14:49:36', 'Dép da nam quai chéo cao cấp KEEDO BH01016', '<h2><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 12 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '', 0, 0),
(49, 'KD912', 'catalog/categories/070/Dep-nam-keedo-kd912-4-600x600.jpg', 8, '290000.0000', 1, 1, '2011-04-26 08:57:34', '2022-09-12 15:27:33', ' Dép Hai Quai Ngang KEEDO-KD912', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt. Quai da tổng hợp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>\r\n', '', 0, 0),
(60, 'Quai ngang ', 'catalog/categories/070/dep-quai-ngang-nam-keedo-14-600x600.jpg', 8, '480000.0000', 0, 1, '2015-06-22 06:46:02', '2022-09-12 14:57:50', 'Dép 2 Quai Ngang cao cấp KEEDO BH01014', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '', 0, 0),
(63, 'Quai ngang ', 'catalog/categories/070/dep-nam-hai-quai-keedo-4-1-600x600.jpg', 8, '380000.0000', 1, 1, '2016-02-23 14:33:11', '2022-09-11 15:46:44', 'Dép 2 Quai Ngang cao cấp KEEDO TNG-50824', '<h2 class=\"hero-subtitle subsection-headline\"><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h2>', '...', 0, 1),
(64, 'dép ', 'catalog/categories/070/dep-kep-nam-keedo-19-600x600.jpg', 8, '240000.0000', 1, 1, '2016-02-23 14:50:04', '2022-09-11 15:59:55', 'Dép kẹp nam cao cấp KEEDO D28', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Thiết kế đơn giản thời trang được làm thủ công với bàn tay điêu luyện của những nghệ nhân có kinh nghiệm dày dặn trong nghề</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Việt Nam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt. Thoải mái đi mưa đi biển.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nơi</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 0),
(65, ' DR223', 'catalog/categories/070/dep-nam-quai-cheo-may-san-doctor-8-600x600.jpg', 8, '345000.0000', 1, 1, '2016-02-23 15:12:12', '2022-09-12 15:22:33', 'Dép doctor quai chéo da bò thật may sẵn DR223', '<div class=\"wrap inner-x left\">\r\n<div class=\"title active black m-black\"><p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\">Dép doctor quai chéo được may hoàn toàn 100% thủ công, đều dặn và chắc chắn. Mang em này di chuyển thoải mái bởi chất đế cao su tự nhiên. Đế bám đường, chịu lực tốt trên nhiều địa hình.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Thailand</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></div><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x left\"><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\">\r\n</div></div>\r\n</div></div>\r\n</div></div>\r\n</div>', '...', 0, 0),
(66, 'KD2802', 'catalog/categories/070/kd2802.jpg', 8, '290000.0000', 1, 1, '2016-02-23 15:25:42', '2022-09-12 15:32:58', 'Dép Nam Cao Cấp KEEDO KD2802', '<h3 class=\"content-block-enhanced-caption__headline\"><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in VietNam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da tổng hợp bền đẹp.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Mua hàng online giao hàng tận nhà</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul></h3><div class=\"content-block-enhanced-caption\"><div class=\"content-block-enhanced-caption-content-wrapper half-wrapper\">\r\n </div>\r\n </div>', '...', 0, 0),
(67, 'Dép quai ngang', 'catalog/categories/070/dep-nam-quai-ngang-keedo-3-2-600x600.jpg', 8, '380000.0000', 1, 1, '2016-02-23 16:29:43', '2022-09-11 15:04:46', 'Dép Quai Ngang Cao Cấp KEEDO TNG-50827', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 1, 1),
(68, 'Luxury', 'catalog/categories/070/dep-kep-nam-cao-cap-keedo-1-600x600.jpg', 36, '290000.0000', 1, 1, '2016-02-23 16:44:19', '2022-09-11 15:54:48', 'Dép kẹp nam cao cấp hàng hiệu KEEDO KD0604', '<p style=\"margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\">Dép kẹp được may hoàn toàn bằng thủ công, đều dặn và chắc chắn. Mang em này di chuyển thoải mái bởi chất đế cao su tự nhiên. Đế bám đường, chịu lực tốt trên nhiều địa hình.</p><ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in Việt Nam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trượt, Quai model mới</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng năng động hợp phong cách giới trẻ</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 0),
(69, 'KD2904', 'catalog/categories/070/dep-nam-hai-quai-da-bo-that-15-600x600.jpg', 8, '460000.0000', 1, 1, '2016-11-22 18:07:40', '2022-09-21 00:02:21', 'Dép 2 Quai Ngang cao cấp đế may sẵn KEEDO KD2904', '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 20px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;May quai và đế rất chắc chắn. Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 1, 0),
(70, '', 'catalog/products/crocs/OIP.jpg', 16, '300000.0000', 1, 1, '2022-09-28 08:29:44', '2022-09-28 08:29:44', 'crocs đen', '<ul style=\"margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Xuất xứ :</span>&nbsp;Made in&nbsp; Vietnam</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Chất liệu:</span>&nbsp;Đế cao su nguyên chất chống trơn trợt, quai da bò thật 100% siêu bền.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Thiết kê:</span>&nbsp;Kiểu dáng phù hợp phong cách giới trẻ, trung niên.</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Bảo hành</span>: 6 Tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\"><span style=\"font-weight: bolder;\">Miễn phí ship</span>&nbsp;hàng toàn quốc với đơn hàng trên 500k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Với đơn hàng dưới 500k phí ship đồng giá 30k</li><li style=\"margin-bottom: 0.6em; margin-left: 0em;\">Nhận hàng và kiểm tra trước khi thanh toán</li></ul>', '...', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`,`image`),
  KEY `product_id` (`product_id`),
  KEY `fk_product_image_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`product_id`, `image`, `sort_order`) VALUES
(28, 'catalog/categories/070/24.jpg', 2),
(28, 'catalog/categories/070/25.jpg', 2),
(28, 'catalog/categories/070/26.jpg', 3),
(29, 'catalog/categories/070/90.jpg', 0),
(29, 'catalog/categories/070/91.jpg', 0),
(29, 'catalog/categories/070/92.jpg', 0),
(30, 'catalog/categories/070/2.jpg', 0),
(30, 'catalog/categories/070/3.jpg', 0),
(30, 'catalog/categories/070/4.jpg', 0),
(31, '', 0),
(31, 'catalog/products/crocs/OIP (3).jpg', 0),
(31, 'catalog/products/crocs/OIP.jpg', 0),
(32, 'catalog/categories/070/10.jpg', 0),
(32, 'catalog/categories/070/11.jpg', 0),
(32, 'catalog/categories/070/12.jpg', 0),
(33, 'catalog/categories/070/55.jpg', 0),
(33, 'catalog/categories/070/56.jpg', 0),
(33, 'catalog/categories/070/57.jpg', 0),
(33, 'catalog/categories/070/58.jpg', 0),
(34, 'catalog/categories/070/44.jpg', 0),
(34, 'catalog/categories/070/45.jpg', 0),
(34, 'catalog/categories/070/46.jpg', 0),
(34, 'catalog/categories/070/47.jpg', 0),
(36, 'catalog/categories/070/48.jpg', 0),
(36, 'catalog/categories/070/49.jpg', 0),
(36, 'catalog/categories/070/50.jpg', 0),
(36, 'catalog/categories/070/51.jpg', 0),
(40, 'catalog/categories/070/13.jpg', 0),
(40, 'catalog/categories/070/14.jpg', 0),
(40, 'catalog/categories/070/15.jpg', 0),
(40, 'catalog/categories/070/16.jpg', 0),
(40, 'catalog/categories/070/17.jpg', 0),
(40, 'catalog/categories/070/18.jpg', 0),
(41, 'catalog/categories/070/27.jpg', 0),
(41, 'catalog/categories/070/28.jpg', 0),
(41, 'catalog/categories/070/29.jpg', 0),
(41, 'catalog/categories/070/30.jpg', 0),
(43, 'catalog/categories/070/19.jpg', 0),
(43, 'catalog/categories/070/20.jpg', 0),
(43, 'catalog/categories/070/22.jpg', 0),
(43, 'catalog/categories/070/23.jpg', 0),
(46, 'catalog/categories/070/65.jpg', 0),
(46, 'catalog/categories/070/66.jpg', 1),
(46, 'catalog/categories/070/67.jpg', 2),
(46, 'catalog/categories/070/68.jpg', 3),
(46, 'catalog/categories/070/69.jpg', 4),
(47, 'catalog/categories/070/62.jpg', 0),
(47, 'catalog/categories/070/63.jpg', 0),
(47, 'catalog/categories/070/64.jpg', 0),
(48, 'catalog/categories/070/52.jpg', 0),
(48, 'catalog/categories/070/53.jpg', 0),
(48, 'catalog/categories/070/54.jpg', 0),
(49, 'catalog/categories/070/81.jpg', 0),
(49, 'catalog/categories/070/82.jpg', 0),
(49, 'catalog/categories/070/83.jpg', 0),
(49, 'catalog/categories/070/84.jpg', 0),
(49, 'catalog/categories/070/85.jpg', 0),
(60, 'catalog/categories/070/59.jpg', 0),
(60, 'catalog/categories/070/60.jpg', 1),
(60, 'catalog/categories/070/61.jpg', 2),
(63, 'catalog/categories/070/31.jpg', 0),
(63, 'catalog/categories/070/32.jpg', 0),
(63, 'catalog/categories/070/33.jpg', 0),
(63, 'catalog/categories/070/34.jpg', 0),
(63, 'catalog/categories/070/35.jpg', 0),
(64, 'catalog/categories/070/41.jpg', 0),
(64, 'catalog/categories/070/42.jpg', 0),
(64, 'catalog/categories/070/43.jpg', 0),
(65, 'catalog/categories/070/74.jpg', 0),
(65, 'catalog/categories/070/75.jpg', 0),
(65, 'catalog/categories/070/76.jpg', 0),
(65, 'catalog/categories/070/77.jpg', 0),
(65, 'catalog/categories/070/78.jpg', 0),
(65, 'catalog/categories/070/79.jpg', 0),
(65, 'catalog/categories/070/80.jpg', 0),
(66, 'catalog/categories/070/86.jpg', 0),
(66, 'catalog/categories/070/87.jpg', 0),
(66, 'catalog/categories/070/88.jpg', 0),
(66, 'catalog/categories/070/89.jpg', 0),
(67, 'catalog/categories/070/5.jpg', 0),
(67, 'catalog/categories/070/6.jpg', 0),
(67, 'catalog/categories/070/7.jpg', 0),
(67, 'catalog/categories/070/8.jpg', 0),
(67, 'catalog/categories/070/9.jpg', 0),
(68, 'catalog/categories/070/36.jpg', 0),
(68, 'catalog/categories/070/37.jpg', 0),
(68, 'catalog/categories/070/38.jpg', 0),
(68, 'catalog/categories/070/39.jpg', 0),
(69, 'catalog/categories/070/70.jpg', 0),
(69, 'catalog/categories/070/71.jpg', 0),
(69, 'catalog/categories/070/72.jpg', 0),
(69, 'catalog/categories/070/73.jpg', 0),
(70, 'catalog/products/crocs/OIP (2).jpg', 0),
(70, 'catalog/products/crocs/OIP (3).jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `fk_product_to_category_to_category` (`category_id`),
  KEY `fk_product_to_category_to_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(28, 71),
(29, 72),
(30, 71),
(31, 77),
(32, 72),
(33, 70),
(34, 70),
(36, 70),
(40, 72),
(41, 72),
(43, 70),
(46, 70),
(47, 70),
(48, 70),
(49, 70),
(60, 70),
(63, 70),
(64, 71),
(65, 70),
(66, 70),
(67, 70),
(68, 71),
(69, 70),
(70, 77);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`setting_id`, `key`, `value`) VALUES
(171, 'config_name', 'Newbie'),
(172, 'config_owner', 'Steve Jobs'),
(173, 'config_address', 'Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, t.p Hà Nội. Việt Nam.'),
(176, 'config_telephone', '0968999888'),
(178, 'config_image', 'catalog/logos/Apple_logo.png'),
(179, 'config_open', '08h:00'),
(180, 'config_comment', 'Cửa hành chỉ nhận thanh toán tiền mặt.'),
(194, 'config_product_count', '1'),
(195, 'config_product_limit', '15'),
(196, 'config_product_description_length', '100'),
(197, 'config_limit_admin', '20'),
(220, 'config_order_mail', '0'),
(231, 'config_logo', 'catalog/logos/newbie.png'),
(232, 'config_icon', 'catalog/logos/newbie.png'),
(233, 'config_image_category_width', '80'),
(234, 'config_image_category_height', '80'),
(235, 'config_image_thumb_width', '228'),
(236, 'config_image_thumb_height', '228'),
(237, 'config_image_popup_width', '500'),
(238, 'config_image_popup_height', '500'),
(239, 'config_image_product_width', '228'),
(240, 'config_image_product_height', '228'),
(241, 'config_image_additional_width', '74'),
(242, 'config_image_additional_height', '74'),
(243, 'config_image_related_width', '80'),
(244, 'config_image_related_height', '80'),
(245, 'config_image_compare_width', '90'),
(246, 'config_image_compare_height', '90'),
(247, 'config_image_wishlist_width', '47'),
(248, 'config_image_wishlist_height', '47'),
(249, 'config_image_cart_width', '47'),
(250, 'config_image_cart_height', '47'),
(251, 'config_image_location_width', '268'),
(252, 'config_image_location_height', '50'),
(269, 'config_file_max_size', '300000'),
(270, 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods'),
(271, 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet'),
(272, 'config_maintenance', '0'),
(273, 'config_password', '1'),
(275, 'config_compression', '0'),
(276, 'config_error_display', '1'),
(277, 'config_error_log', '1'),
(278, 'config_error_filename', 'error.log'),
(280, 'config_email', 'newbie@gmail.com'),
(281, 'config_url', 'http://localhost:82/xxxxxx/'),
(282, 'products_featured_limit', '8'),
(283, 'products_best_seller_limit', '5'),
(284, 'html_google_map_embed', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7297008861333!2d105.8469290148016!3d21.003469486012065!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad58455db2ab%3A0x9b3550bc22fd8bb!2zNTQgTMOqIFRoYW5oIE5naOG7iywgQsOhY2ggS2hvYSwgSGFpIELDoCBUcsawbmcsIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1618929186381!5m2!1sen!2s\" style=\"border:0; width: 100%;\"  height=\"450\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(285, 'config_post_limit', '15'),
(286, 'categories_featured_limit', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `due_date` datetime NOT NULL DEFAULT '2099-01-01 23:00:00',
  `phone` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`, `image`, `code`, `status`, `date_added`, `due_date`, `phone`, `description`, `sort_order`) VALUES
(1, 'admin', '$2y$10$pXRBC0XmG7/xMW5iD78Hbusv6Htqxj33yudacQ.rhUR8.rStMS4A6', 'Phạm Tài Linh', '', 'catalog/profiles/billgates.jpg', '', 1, '2015-01-29 08:07:20', '2099-01-01 23:00:00', '+(84)-0912247115', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Passionate about digital marketing, good food, animals, nature and coffee. </font><font style=\"vertical-align: inherit;\">I have lived abroad for many years, and have never stopped looking for good food, especially what could make me feel at home. </font><font style=\"vertical-align: inherit;\">Unfortunately even in times of globalization, certain products are not available in stores or on the Internet. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n \r\n	               Foodgenuine is an ambitious and special project, our aim\r\n is to \"reduce\" the distances and bring you that \"good time\", no matter \r\nwhere you are. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               I love pizza and pasta, and I could always eat Genoese focaccia. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \r\n	               My slogan? </font><font style=\"vertical-align: inherit;\">\"You are what you eat\".</font></font></span></p>', 0),
(4, 'Sinh', '$2y$10$ZLipDnO6LmBXDjAbV.PuBulf30fYTOpP4FW4fT3F949z52WmbGPJi', 'Lê Đức Sinh', 'billgates@gmail.com', 'catalog/profiles/billgates.jpg', '', 1, '2015-04-03 17:32:02', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">A lover of technology and the internet, I have worked in the Netherlands for more than 7 years in this area. </font><font style=\"vertical-align: inherit;\">I Holland food is not a factor of pride and my passion for good food and the difficulty of finding it in supermarkets and on the net has weighed heavily on my stay abroad. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Driven by this need, I started the creation of Foodgenuine, an e-commerce for the sale of food and drinks that are genuine, healthy, natural and non-industrial. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               My goal is also to offer small producers the opportunity to sell their products worldwide. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">	               Good and healthy food for everyone; </font><font style=\"vertical-align: inherit;\">\" </font></font><span style=\"font-style: italic;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">food is not filling your belly, food is health</font></font></span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> \".</font></font></span></p>', 3),
(5, 'Linh', '$2a$10$Onh3/KpeCpd5a.SuC18/geyLew.VHS73AFWq9mCcK4dW3.S45KbhS', 'Phạm Tài Linh', 'zuck@facebook.com', 'catalog/profiles/mark-zuckerberg.jpg', '', 1, '2015-04-06 18:25:04', '2099-01-01 23:00:00', '', '<p><span style=\"font-size: 16px;\" lang=\"IT-IT\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Passionate\r\n about the internet and technology, health and well-being, I like to \r\ntravel and taste the typical products of different locations in search \r\nof the best products and unique flavors. </font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n	               So I decided to take part in the Foodgenuine project taking care of the IT aspect.</font></font></span></p>', 2),
(7, 'Kiều Anh Hera', '$2y$10$deoauGiQgarivYBASiGRZuto0DII3h7i6JO95xURyOb.Bx/8aBry.', 'Phạm Thị Kiều Anh ', 'obama@gov.com', 'catalog/profiles/obama.png', '', 1, '2020-07-09 22:45:42', '2099-01-01 23:00:00', '', '<p><br></p>', 0);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_order_details_to_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `fk_order_details_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_to_manufacturer` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `fk_product_image_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD CONSTRAINT `fk_product_to_category_to_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_product_to_category_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
