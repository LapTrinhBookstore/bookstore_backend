-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 13, 2022 lúc 05:34 AM
-- Phiên bản máy phục vụ: 10.5.12-MariaDB
-- Phiên bản PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id18067134_bookstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `introduction` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`id`, `name`, `introduction`) VALUES
('AT00000001', 'Dale Carnegie', 'Dale Carnegie sinh năm 1888 tại Maryville, Missouri, trong một gia đình nông dân, con trai thứ hai của James William Carnagey (sinh tại Indiana, tháng 2 năm 1852 – 1910) và vợ là Amanda Elizabeth Harbison (sinh tại Missouri, tháng 2 năm 1858 – 1910).'),
('AT00000002', 'Trần Minh Thông', 'Nếu muốn kiếm được nhiều tiền, một là bạn thật là giỏi hoặc bạn phải thật là đẹp. Không có hai yếu tố trên thì cách tốt nhất để bạn kiếm tiền là: làm việc và làm việc cật lực hơn nữa. Bản thân tôi, tôi không giỏi và cũng không đẹp và tôi cũng không đi tìm kiếm sự giàu có từ tiền bạc. '),
('AT00000003', 'LAM HUYNH', ' '),
('AT00000004', 'Nguyễn Nga', 'Nguyễn Nga tốt nghiệp khoa Báo chí-Truyền thông, trường ĐH Khoa học xã hội và Nhân văn, tốt nghiệp khóa Đạo diễn ngắn hạn, trường ĐH Sân khấu-Điện ảnh TP.HCM.'),
('AT00000005', 'Arthur Conan Doyle', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.'),
('AT00000006', 'John Burdett', 'John Burdett is a nonpracticing lawyer who worked in Hong Kong for a British firm until he found his true vocation as a writer.'),
('AT00000007', 'Keigo Higashino', 'KEIGO HIGASHINO is the bestselling, best-known novelist in Japan and around Asia, with numerous television and film adaptations of his work appearing in several languages.'),
('AT00000008', 'Howard Marks', 'Howard Marks is a Welsh author and former drug smuggler who achieved notoriety as an international cannabis smuggler through high-profile court cases.'),
('AT00000009', 'H.P. Lovecraft', 'Howard Phillips Lovecraft là một nhà văn người Mỹ đạt nhiều thành công qua lĩnh vực truyện kinh dị giả tưởng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authordetail`
--

CREATE TABLE `authordetail` (
  `idProduct` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idAuthor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authordetail`
--

INSERT INTO `authordetail` (`idProduct`, `idAuthor`, `number`) VALUES
('PD00000001', 'AT00000005', 1),
('PD00000002', 'AT00000002', 1),
('PD00000003', 'AT00000001', 1),
('PD00000004', 'AT00000003', 1),
('PD00000005', 'AT00000004', 1),
('PD00000006', 'AT00000006', 1),
('PD00000007', 'AT00000007', 1),
('PD00000008', 'AT00000008', 1),
('PD00000009', 'AT00000009', 1),
('PD00000010', 'AT00000005', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booktype`
--

CREATE TABLE `booktype` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `booktype`
--

INSERT INTO `booktype` (`id`, `name`) VALUES
('BT00000001', 'Fiction'),
('BT00000002', 'Classics'),
('BT00000003', 'Biography & Autobiography'),
('BT00000004', 'Personal Memoirs'),
('BT00000005', 'Kỹ năng xã hội và giao tiếp'),
('BT00000006', 'Kinh doanh & Kinh tế'),
('BT00000007', 'Đầu tư & Chứng khoán'),
('BT00000008', 'Sách hư cấu'),
('BT00000009', 'Lãng mạn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `NguoiDung`
--

CREATE TABLE `NguoiDung` (
  `ma` int(11) NOT NULL,
  `taiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phanQuyen` int(11) NOT NULL,
  `hoVaTen` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `gioiTinh` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `NguoiDung`
--

INSERT INTO `NguoiDung` (`ma`, `taiKhoan`, `matKhau`, `phanQuyen`, `hoVaTen`, `gioiTinh`, `ngaySinh`) VALUES
(1, 'vanhoan', 'vanhoan', 0, 'Nguyễn Văn Hoàn', 'Nam', '2001-12-25'),
(2, 'kelong', 'kelong', 0, 'Nguyễn Hoàng Kế Long', 'Nam', '2001-06-06'),
(3, 'admin', 'admin', 1, 'admin', 'Nam', '2005-10-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `NhapDich`
--

CREATE TABLE `NhapDich` (
  `ma` int(11) NOT NULL,
  `banNhap` text COLLATE utf8_unicode_ci NOT NULL,
  `banDich` text COLLATE utf8_unicode_ci NOT NULL,
  `ngonNguNhap` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngonNguDich` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoiGian` datetime NOT NULL,
  `maND` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `NhapDich`
--

INSERT INTO `NhapDich` (`ma`, `banNhap`, `banDich`, `ngonNguNhap`, `ngonNguDich`, `thoiGian`, `maND`) VALUES
(1, 'How are you', 'Bạn khỏe không', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(2, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(3, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(4, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(5, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(6, 'Great', 'Tuyệt', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(7, 'Good Luck', 'Chúc may mắn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(8, 'Good idea', 'Ý tưởng tốt', 'English', 'Vietnamese', '2021-12-20 00:00:00', 1),
(9, 'Don’t worry', 'Đừng lo lắng', 'English', 'Vietnamese', '2021-12-20 00:00:00', 2),
(10, 'Ca sĩ', 'Singer', 'Vietnamese', 'English', '2021-12-20 00:00:00', 1),
(11, 'Please call me', 'Vui lòng gọi cho tôi', 'English', 'Vietnamese', '2021-12-20 00:00:00', 1),
(12, 'I feel good', 'Tôi cảm thấy tốt', 'English', 'Vietnamese', '2021-12-20 00:00:00', 2),
(13, 'How are you', 'Bạn khỏe không', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(14, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(15, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(16, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(17, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(18, 'Great', 'Tuyệt', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(19, 'Good Luck', 'Chúc may mắn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(20, 'Good idea', 'Ý tưởng tốt', 'English', 'Vietnamese', '2021-12-20 00:00:00', 1),
(21, 'Don’t worry', 'Đừng lo lắng', 'English', 'Vietnamese', '2021-12-20 00:00:00', 2),
(22, 'Ca sĩ', 'Singer', 'Vietnamese', 'English', '2021-12-20 00:00:00', 1),
(23, 'Please call me', 'Vui lòng gọi cho tôi', 'English', 'Vietnamese', '2021-12-23 00:00:00', 1),
(24, 'How are you', 'Bạn khỏe không', 'English', 'Vietnamese', '2021-12-22 00:00:00', 1),
(25, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-23 00:00:00', 1),
(26, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(27, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(28, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(29, 'Great', 'Tuyệt', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(30, 'Good Luck', 'Chúc may mắn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(31, 'Good idea', 'Ý tưởng tốt', 'English', 'Vietnamese', '2021-12-20 00:00:00', 1),
(32, 'Don’t worry', 'Đừng lo lắng', 'English', 'Vietnamese', '2021-12-20 00:00:00', 2),
(33, 'Ca sĩ', 'Singer', 'Vietnamese', 'English', '2021-12-20 00:00:00', 1),
(34, 'How are you', 'Bạn khỏe không', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(35, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(36, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(37, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(38, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(39, 'Great', 'Tuyệt', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(40, 'Good Luck', 'Chúc may mắn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(41, 'Good idea', 'Ý tưởng tốt', 'English', 'Vietnamese', '2021-12-20 00:00:00', 1),
(42, 'Don’t worry', 'Đừng lo lắng', 'English', 'Vietnamese', '2021-12-20 00:00:00', 2),
(43, 'How are you', 'Bạn khỏe không', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(44, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(45, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(46, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(47, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(48, 'Great', 'Tuyệt', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(49, 'Good Luck', 'Chúc may mắn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(50, 'Good idea', 'Ý tưởng tốt', 'English', 'Vietnamese', '2021-12-20 00:00:00', 1),
(51, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(52, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(53, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(54, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(55, 'Great', 'Tuyệt', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(56, 'Good Luck', 'Chúc may mắn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(57, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(58, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(59, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(60, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(61, 'Great', 'Tuyệt', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(62, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(63, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(64, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(65, 'Thời gian', 'Time', 'Vietnamese', 'English', '2021-12-21 00:00:00', 2),
(66, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(67, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(68, 'Good morning', 'Chào buổi sáng', 'English', 'Vietnamese', '2021-12-21 00:00:00', 2),
(69, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-21 00:00:00', 1),
(70, 'Thank you', 'Cảm ơn', 'English', 'Vietnamese', '2021-12-22 00:00:00', 1),
(71, 'Hello', 'Xin chào', 'English', 'Vietnamese', '2021-12-22 00:00:00', 1),
(78, 'hihi', 'Xin chào', 'Anh', 'VietNam', '2021-10-22 20:30:30', 1),
(82, 'go', 'đi', 'English', 'VietNam', '2021-12-22 22:19:16', 1),
(83, 'display chart', 'biểu đồ hiển thị', 'English', 'VietNam', '2021-12-22 22:21:06', 1),
(84, 'Window', 'Cửa sổ', 'English', 'VietNam', '2021-12-23 11:01:56', 1),
(85, 'class', 'lớp học', 'English', 'VietNam', '2021-12-23 21:47:24', 1),
(86, 'Hello', 'Xin chào', 'English', 'VietNam', '2021-12-23 22:17:39', 1),
(87, 'class', 'lớp học', 'English', 'VietNam', '2021-12-23 22:25:08', 1),
(88, 'Hello', 'Xin chào', 'English', 'VietNam', '2021-12-23 23:03:27', 1),
(89, 'add', 'thêm vào', 'English', 'VietNam', '2021-12-24 21:41:47', 1),
(90, 'age', 'tuổi', 'English', 'VietNam', '2021-12-24 21:44:23', 1),
(91, 'ago', 'cách đây', 'English', 'VietNam', '2021-12-24 21:48:27', 2),
(92, 'agree', 'đồng ý', 'English', 'VietNam', '2021-12-24 21:48:59', 1),
(93, 'tất cả', 'TẤT CẢ', 'English', 'VietNam', '2021-12-24 21:52:40', 2),
(94, 'luôn luôn', 'always', 'VietNam', 'English', '2021-12-24 21:55:22', 2),
(95, 'also', 'cũng vậy', 'English', 'VietNam', '2021-12-24 21:55:50', 2),
(96, 'me', 'tôi', 'English', 'VietNam', '2021-12-24 21:57:53', 2),
(97, 'hi', 'hi', 'English', 'VietNam', '2021-12-24 22:00:47', 3),
(98, 'and', 'và', 'English', 'VietNam', '2021-12-24 22:01:44', 1),
(99, 'apple', 'Quả Táo', 'English', 'VietNam', '2021-12-24 22:12:13', 1),
(100, 'ask', 'hỏi', 'English', 'VietNam', '2021-12-25 22:19:13', 1),
(101, 'at', 'tại', 'English', 'VietNam', '2021-12-25 22:20:50', 1),
(102, 'me', 'tôi', 'English', 'VietNam', '2021-12-25 22:22:03', 1),
(103, 'teams', 'đội', 'English', 'VietNam', '2021-12-25 22:24:17', 1),
(104, 'hello', 'xin chào', 'English', 'VietNam', '2021-12-25 22:25:26', 1),
(105, 'space', 'không gian', 'English', 'VietNam', '2021-12-25 22:26:38', 1),
(106, 'event', 'sự kiện', 'English', 'VietNam', '2021-12-25 22:28:08', 1),
(107, 'text', 'bản văn', 'English', 'VietNam', '2021-12-25 22:29:45', 2),
(108, 'app', 'ứng dụng', 'English', 'VietNam', '2021-12-25 22:30:41', 2),
(109, 'book', 'sách', 'English', 'VietNam', '2021-12-25 22:34:52', 2),
(110, 'or', 'hoặc là', 'English', 'VietNam', '2021-12-25 22:44:09', 1),
(111, 'hello', 'xin chào', 'English', 'VietNam', '2021-12-25 23:01:24', 3),
(112, 'engage with ted', 'tham gia với TED', 'English', 'VietNam', '2021-12-26 10:39:56', 1),
(113, 'engage with ted in a whole new day. Ted members earn exclusive access to unforgettable', 'Tham gia với TED trong một ngày hoàn toàn mới. Thành viên TED kiếm được quyền truy cập độc quyền để không thể nào quên', 'English', 'VietNam', '2021-12-26 10:41:33', 1),
(114, 'Engage with TED', 'Tham gia với TED', 'English', 'VietNam', '2021-12-26 10:54:42', 1),
(115, 'Là nó ra', 'Is ra', 'English', 'VietNam', '2021-12-26 10:57:38', 2),
(117, 'Remember me', 'Nhớ tôi', 'English', 'VietNam', '2021-12-26 11:26:18', 1),
(118, 'Hello', 'Xin chào', 'English', 'VietNam', '2021-12-26 11:29:01', 1),
(119, 'Doàn tàu đang chąay', 'Dao thẳng', 'English', 'VietNam', '2021-12-26 12:22:25', 3),
(120, 'Doàn tàu đang chay', 'Ventus is vegetarian', 'VietNam', 'English', '2021-12-26 12:25:50', 3),
(121, 'I told you that I never would', 'Tôi đã nói với bạn rằng tôi sẽ không bao giờ', 'English', 'VietNam', '2021-12-26 12:28:43', 3),
(122, 'hello', 'xin chào', 'English', 'VietNam', '2021-12-26 13:19:26', 3),
(123, 'alo', 'alo', 'English', 'VietNam', '2021-12-26 13:19:48', 3),
(124, 'go', 'اذهب', 'English', 'Arabic', '2021-12-26 14:23:25', 1),
(125, 'go', 'перайсці', 'English', 'Belarusian', '2021-12-26 14:23:53', 1),
(126, 'chào', 'नमस्ते', 'VietNam', 'Hindi', '2021-12-26 14:25:30', 2),
(127, 'chào', 'नमस्ते', 'VietNam', 'Hindi', '2021-12-26 14:25:33', 2),
(128, 'go', 'đi', 'English', 'VietNam', '2021-12-26 15:27:32', 1),
(129, 'Hello', 'Xin chào', 'English', 'VietNam', '2021-12-26 15:28:00', 1),
(130, 'I told you that I never would', 'Tôi đã nói với bạn rằng tôi sẽ không bao giờ', 'English', 'VietNam', '2021-12-26 15:28:16', 1),
(131, 'go', 'đi', 'English', 'VietNam', '2021-12-26 15:29:08', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `publisher` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `publishDate` date NOT NULL,
  `pageNumber` int(11) NOT NULL,
  `language` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productImg` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `introduction` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `publisher`, `publishDate`, `pageNumber`, `language`, `productImg`, `introduction`, `view`, `price`) VALUES
('PD00000001', 'The Memoirs of Sherlock Holmes', 'Simon and Schuster', '2014-11-18', 320, 'Tiếng Anh', 'the_memoirs.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', 374400, 22463),
('PD00000002', 'Không đường ít đá', 'Trần Minh Thông', '2014-11-18', 77, 'Tiếng Việt', 'khong_duong.jpg', 'Nếu muốn kiếm được nhiều tiền, một là bạn thật là giỏi hoặc bạn phải thật là đẹp. Không có hai yếu tố trên thì cách tốt nhất để bạn kiếm tiền là: làm việc và làm việc cật lực hơn nữa. Bản thân tôi, tôi không giỏi và cũng không đẹp và tôi cũng không đi tìm kiếm sự giàu có từ tiền bạc. ', 232000, 20000),
('PD00000003', 'Đắc Nhân Tâm', 'First News', '2014-11-18', 320, 'Tiếng Anh', 'dac_nhan.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', 673000, 57000),
('PD00000004', 'Đầu Tư Chứng Khoán Cơ Bản', 'LAM HUYNH', '2021-08-05', 313, 'Tiếng Việt', 'dau_tu.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', 55000, 29000),
('PD00000005', 'Thầy Cãi Miệt Vườn Tập 1', 'Viết lách VN', '2020-05-15', 60, 'Tiếng Việt', 'thay_cai.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', 189000, 0),
('PD00000006', 'Bangkok 8: A Royal Thai Detective Novel (1)', 'Vintage Crime/Black Lizard', '2003-06-18', 336, 'Tiếng Anh', 'bangkok_8_1.png', 'A thriller with attitude to spare, Bangkok 8 is a sexy, razor-edged, often darkly hilarious novel set in one of the world’s most exotic cities.', 60000, 155000),
('PD00000007', 'Under the Midnight Sun: A Novel', 'Minotaur Books', '2016-11-08', 544, 'Tiếng Anh', 'a_novel.png', 'From the acclaimed international bestseller Keigo Higashino (The Devotion of Suspect X) comes a sweeping novel in the tradition of Les Miserables and Crime and Punishment. ', 5000, 157000),
('PD00000008', 'Mr Nice: The Incredible Story of an Unconventional Life', 'Random House', '2010-03-30', 560, 'Tiếng Anh', 'mr_nice.png', '21ST ANNIVERSARY EDITION WITH AN INTRODUCTION BY IRVINE WELSH', 125000, 231000),
('PD00000009', 'Horror classics collection', 'Strelbytskyy Multimedia Publishing', '2020-01-14', 742, 'Tiếng Anh', 'horor.png', 'Horror books have been part of the literary world for years, but it seems like horror in all its mediums has been on the upswing in recent times.', 142000, 3000),
('PD00000010', '100 classic detectives.', 'Strelbytskyy Multimedia Publishing', '2021-08-01', 9153, 'Tiếng Anh', 'golden_age.png', 'Some of the greatest detective stories every wrote are collected in this massive anthology.', 17000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt`
--

CREATE TABLE `receipt` (
  `productID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `purchasePrice` decimal(8,2) NOT NULL,
  `purchaseTime` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt`
--

INSERT INTO `receipt` (`productID`, `userID`, `purchasePrice`, `purchaseTime`, `created_at`, `updated_at`, `status`) VALUES
('PD00000002', 'US00000001', 100000.00, '2022-01-10', NULL, NULL, 1),
('PD00000003', 'US00000001', 100000.00, '2022-01-10', NULL, NULL, 1),
('PD00000005', 'US00000001', 100000.00, '2022-01-10', NULL, NULL, 1),
('PD00000006', 'US00000001', 100000.00, '2022-01-10', NULL, NULL, 1),
('PD00000010', 'US00000001', 100000.00, '2022-01-10', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typedetail`
--

CREATE TABLE `typedetail` (
  `idBook` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idType` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `typedetail`
--

INSERT INTO `typedetail` (`idBook`, `idType`, `number`) VALUES
('PD00000001', 'BT00000001', 1),
('PD00000001', 'BT00000002', 2),
('PD00000002', 'BT00000003', 1),
('PD00000002', 'BT00000004', 2),
('PD00000003', 'BT00000005', 1),
('PD00000004', 'BT00000006', 1),
('PD00000004', 'BT00000007', 2),
('PD00000005', 'BT00000008', 1),
('PD00000005', 'BT00000009', 2),
('PD00000006', 'BT00000001', 1),
('PD00000006', 'BT00000002', 2),
('PD00000007', 'BT00000001', 1),
('PD00000007', 'BT00000002', 2),
('PD00000008', 'BT00000001', 1),
('PD00000008', 'BT00000002', 1),
('PD00000009', 'BT00000001', 2),
('PD00000009', 'BT00000002', 1),
('PD00000010', 'BT00000001', 1),
('PD00000010', 'BT00000002', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `avatarImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numberOfCoins` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `email_verified_at`, `password`, `phoneNumber`, `dateOfBirth`, `gender`, `avatarImg`, `numberOfCoins`, `created_at`, `updated_at`) VALUES
('US00000001', 'Nguyễn Văn Hoàn', 'vanhoan@gmail.com', NULL, '123456', '0123456789', '2001-12-25', 1, NULL, 100, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `authordetail`
--
ALTER TABLE `authordetail`
  ADD PRIMARY KEY (`idProduct`,`idAuthor`),
  ADD KEY `authordetail_fk_idat` (`idAuthor`);

--
-- Chỉ mục cho bảng `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `NguoiDung`
--
ALTER TABLE `NguoiDung`
  ADD PRIMARY KEY (`ma`);

--
-- Chỉ mục cho bảng `NhapDich`
--
ALTER TABLE `NhapDich`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `fk_nhapdich_idnd` (`maND`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`productID`,`userID`),
  ADD KEY `receipt_fk_userid` (`userID`);

--
-- Chỉ mục cho bảng `typedetail`
--
ALTER TABLE `typedetail`
  ADD PRIMARY KEY (`idBook`,`idType`),
  ADD KEY `typedetail_fk_idt` (`idType`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `NguoiDung`
--
ALTER TABLE `NguoiDung`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `NhapDich`
--
ALTER TABLE `NhapDich`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `authordetail`
--
ALTER TABLE `authordetail`
  ADD CONSTRAINT `authordetail_fk_idat` FOREIGN KEY (`idAuthor`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authordetail_fk_idpd` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `NhapDich`
--
ALTER TABLE `NhapDich`
  ADD CONSTRAINT `fk_nhapdich_idnd` FOREIGN KEY (`maND`) REFERENCES `NguoiDung` (`ma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_fk_prdid` FOREIGN KEY (`productID`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `receipt_fk_userid` FOREIGN KEY (`userID`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `typedetail`
--
ALTER TABLE `typedetail`
  ADD CONSTRAINT `typedetail_fk_idb` FOREIGN KEY (`idBook`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `typedetail_fk_idt` FOREIGN KEY (`idType`) REFERENCES `booktype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
