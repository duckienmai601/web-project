-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 26, 2024 lúc 04:05 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(1, 'Kệ sách', 1),
(2, 'Ghế Sofa', 1),
(3, 'Bàn gỗ', 1),
(4, 'Tủ Quần Áo', 1),
(5, 'Đèn Trang Trí', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone_number` varchar(20) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Đang xử lý',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `delivery_at` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `pay_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_address`, `customer_email`, `customer_phone_number`, `total_price`, `status`, `created_at`, `user_id`, `delivery_at`, `city`, `district`, `pay_method`) VALUES
(1, 'duongngocnguyen', '6NguyenTrai', 'abcde@gmail.com', '0123456789', 0.00, 'Đã hủy', '2023-05-05 17:16:48', 2, '2023-05-12', 'Thành phố Hồ Chí Minh', 'Quận 5', 'bank_transfer'),
(2, 'duongngocnguyen', '6NguyenTrai', 'abcde@gmail.com', '0123456789', 0.00, 'Đã hủy', '2023-05-05 17:17:51', 2, '2023-05-11', 'Thành phố Hồ Chí Minh', 'Quận 5', 'bank_transfer'),
(3, 'duongngocnguyen', '6NguyenTrai', 'abcde@gmail.com', '0123456789', 0.00, 'Đã hủy', '2023-05-05 17:21:00', 2, '2023-05-12', 'Thành phố Hồ Chí Minh', 'Quận 5', 'bank_transfer'),
(4, 'duongngocnguyen', '6NguyenTrai', 'abcde@gmail.com', '0123456789', 0.00, 'Đã hủy', '2023-05-05 17:22:29', 2, '2023-05-12', 'Thành phố Hồ Chí Minh', 'Quận 5', 'bank_transfer'),
(5, 'duongminhson', '273 An Duong Vuong', 'minhson@gmail.com', '0050505055', 2550000.00, 'Đã hoàn thành', '2023-05-05 17:30:11', 7, '2023-05-07', 'Thành phố Hồ Chí Minh', 'Quận 5', 'cash_on_delivery'),
(6, 'hodanghoang', '273 An Duong Vuong', 'hoang@gmail.com', '0121021021', 2550000.00, 'Đã hoàn thành', '2023-05-05 17:36:04', 5, '2023-05-07', 'Thành phố Hồ Chí Minh', 'Quận Bình Tân', 'bank_transfer'),
(7, 'thanhthao', '110 Ba Hom', 'thao@gmail.com', '0525252521', 2100000.00, 'Đã hoàn thành', '2023-05-05 17:43:44', 5, '2023-05-09', 'Thành phố Hồ Chí Minh', 'Quận 6', 'cash_on_delivery'),
(8, 'minhsonduong', '273 An Duong Vuong', 'minhsonduong@gmail.com', '0123456789', 2100000.00, 'Đang xử lý', '2023-05-06 10:02:08', 7, NULL, 'Thành phố Hồ Chí Minh', 'Quận 5', 'cash_on_delivery'),
(9, 'dương ngọc nguyên', '273 An Dương Vương', 'abcde@gmail.com', '0121021021', 8750000.00, 'Đang xử lý', '2023-05-08 14:54:52', 7, NULL, 'Thành phố Hồ Chí Minh', 'Quận 5', 'cash_on_delivery'),
(10, 'ngọc nguyên', '273 An Dương Vương', 'thao@gmail.com', '0050505055', 2100000.00, 'Đã hoàn thành', '2023-05-08 14:56:21', 7, '2023-05-18', 'Thành phố Hồ Chí Minh', 'Quận 5', 'bank_transfer'),
(11, 'duongngocnguyen', '273 An Duong Vuong', 'abcde@gmail.com', '0123456789', 1250000.00, 'Đang xử lý', '2023-05-09 06:15:27', 7, NULL, 'Tỉnh Cao Bằng', 'Huyện Hà Quảng', 'bank_transfer'),
(12, 'Pham thanh vuong', 'dai hoc sai gon', 'zz@gmail.com', '0973366791', 1050000.00, 'Đang xử lý', '2023-05-09 08:59:49', 7, NULL, 'Thành phố Hồ Chí Minh', 'Quận 12', 'cash_on_delivery'),
(13, 'hoang', 'binh chanh', 'hodanghoang2003@gmail.com', '123142352', 3100000.00, 'Đang giao', '2023-05-09 15:34:52', 7, '2023-05-12', 'Thành phố Hồ Chí Minh', 'Huyện Bình Chánh', 'cash_on_delivery'),
(14, 'hoang', 'binh chanh', 'hoang123@gmail.com', '0377694735', 2600000.00, 'Đang xử lý', '2023-05-10 02:22:20', 7, NULL, 'Thành phố Hồ Chí Minh', 'Huyện Bình Chánh', 'cash_on_delivery'),
(15, 'asasasasasa', 'aksgasgadka', 'abcde@gmail.com', '09292030238', 9450000.00, 'Đang xử lý', '2023-05-12 03:10:57', 7, NULL, 'Thành phố Hà Nội', 'Quận Hoàn Kiếm', 'bank_transfer'),
(16, 'nguyen1', '1212121212asasasas', 'nguyen1@gmail.com', '1212121212', 9450000.00, 'Đang xử lý', '2023-05-12 03:18:49', 7, NULL, 'Thành phố Hồ Chí Minh', 'Quận 5', 'cash_on_delivery'),
(17, 'hoang1', '273 An Dương Vương', 'abcde@gmail.com', '1212121212', 3780000.00, 'Đã hoàn thành', '2023-05-12 03:30:52', 7, '2023-05-13', 'Thành phố Hồ Chí Minh', 'Quận 5', 'bank_transfer'),
(18, 'minhson2', '6NguyenTrai', 'thao@gmail.com', '0525252521', 13230000.00, 'Đang xử lý', '2023-05-12 17:08:12', 10, NULL, 'Thành phố Hồ Chí Minh', 'Quận 5', 'cash_on_delivery'),
(19, 'minhson', '273 An Duong Vuong', 'abcde@gmail.com', '0123456789', 13230000.00, 'Đang xử lý', '2023-05-12 17:10:15', 7, NULL, 'Thành phố Hồ Chí Minh', 'Quận 5', 'cash_on_delivery'),
(20, 'minhsonduong', '273 An Dương Vương', 'minhson@gmail.com', '0050505055', 9450000.00, 'Đã hoàn thành', '2023-05-13 09:07:37', 7, '2023-05-12', 'Thành phố Hồ Chí Minh', 'Quận 5', 'bank_transfer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total_price`) VALUES
(1, 4, 36, 5, 1050000.00, 5250000.00),
(2, 4, 9, 2, 1050000.00, 2100000.00),
(3, 5, 1, 2, 1275000.00, 2550000.00),
(4, 6, 1, 2, 1275000.00, 2550000.00),
(5, 7, 36, 1, 1050000.00, 1050000.00),
(6, 7, 34, 1, 1050000.00, 1050000.00),
(7, 8, 9, 1, 1050000.00, 1050000.00),
(8, 8, 36, 1, 1050000.00, 1050000.00),
(9, 9, 37, 7, 1250000.00, 8750000.00),
(10, 10, 36, 2, 1050000.00, 2100000.00),
(11, 11, 37, 1, 1250000.00, 1250000.00),
(12, 12, 39, 1, 1050000.00, 1050000.00),
(13, 13, 40, 2, 1550000.00, 3100000.00),
(14, 14, 40, 1, 1550000.00, 1550000.00),
(15, 14, 39, 1, 1050000.00, 1050000.00),
(16, 15, 9, 5, 1890000.00, 9450000.00),
(17, 16, 9, 5, 1890000.00, 9450000.00),
(18, 17, 9, 2, 1890000.00, 3780000.00),
(19, 18, 9, 7, 1890000.00, 13230000.00),
(20, 19, 9, 7, 1890000.00, 13230000.00),
(21, 20, 9, 5, 1890000.00, 9450000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `isshow` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image_url`, `price`, `quantity`, `category_id`, `isshow`) VALUES
(1, 'Kệ sách gỗ 4 tầng 40\r\n', 'Quy cách sản phẩm: Kệ sách 4 tầng cao 90 cm, chiều sâu 28cm và có chiều rộng 40cm, hồi 2cm dày dặn, chắc chắn. Bạn có thể dễ dàng chọn được một sản phẩm có chiều cao, rộng phù hợp với không gian nhà bạn.\r\n\r\nMàu sắc sản phẩm: Có 2 màu cơ bản là màu gỗ tự nhiên và màu cánh gián. Màu tự nhiên của gỗ cao su có màu vàng sáng phù hợp với không gian nội thất hiện đại, màu cánh gián phù hợp với không gian nội thất giả cổ.\r\n\r\nHình thức sản phẩm: Với bộ óc sáng tạo của người thợ, thớ gỗ cao su mịn màng cùng sự hỗ trợ của công nghệ, máy móc các sản phẩm kệ sách gỗ cao su trông rất trang nhã và đẹp mắt. Kệ sách của bạn trông sinh động và đẹp hơn hẳn khi có chú gấu bông, một khung ảnh nhỏ hay vật trang trí nào đó.\r\n\r\nTính hữu dụng: Kệ sách – có thể gọi là kệ đa năng – với kết cấu vững chắc bạn có thể để từ sách vở, mũ bảo hiểm, giày dép, đồ dùng gia đình, có thể trưng bày hàng hóa hay bất cứ đồ dùng phù hợp. Góc gia đình trở lên gọn gàng và đáng yêu biết mấy khi có sự hiện diện của các kệ sách.\r\n\r\nChính sách bảo hành: Được đánh giá là sản phẩm thân thiện với môi trường vì sau 30 đến 50 năm khi hết tuổi khai thác mủ gỗ cao su mới được khai thác. Khách hàng có thể hoàn toàn an tâm về sản phẩm kệ sách do Bestgoods cung cấp với chế độ bảo hành mối mọt, cong vênh, nứt lẻ, thay thế bất cứ chi tiết nào của sản phẩm lỗi, hỏng do vận chuyển hoặc lỗi của nhà sản xuất.', 'go-4-tang-40.png', 510000.00, 50, 1, 0),
(7, 'Kệ sách BIG ONE VIETNAM SPR-1980DK', 'Quy cách sản phẩm: Kệ sách 4 tầng cao 90 cm, chiều sâu 28cm và có chiều rộng 40cm, hồi 2cm dày dặn, chắc chắn. Bạn có thể dễ dàng chọn được một sản phẩm có chiều cao, rộng phù hợp với không gian nhà bạn.\r\n\r\nMàu sắc sản phẩm: Có 2 màu cơ bản là màu gỗ tự nhiên và màu cánh gián. Màu tự nhiên của gỗ cao su có màu vàng sáng phù hợp với không gian nội thất hiện đại, màu cánh gián phù hợp với không gian nội thất giả cổ.\r\n\r\nHình thức sản phẩm: Với bộ óc sáng tạo của người thợ, thớ gỗ cao su mịn màng cùng sự hỗ trợ của công nghệ, máy móc các sản phẩm kệ sách gỗ cao su trông rất trang nhã và đẹp mắt. Kệ sách của bạn trông sinh động và đẹp hơn hẳn khi có chú gấu bông, một khung ảnh nhỏ hay vật trang trí nào đó.\r\n\r\nTính hữu dụng: Kệ sách – có thể gọi là kệ đa năng – với kết cấu vững chắc bạn có thể để từ sách vở, mũ bảo hiểm, giày dép, đồ dùng gia đình, có thể trưng bày hàng hóa hay bất cứ đồ dùng phù hợp. Góc gia đình trở lên gọn gàng và đáng yêu biết mấy khi có sự hiện diện của các kệ sách.\r\n\r\nChính sách bảo hành: Được đánh giá là sản phẩm thân thiện với môi trường vì sau 30 đến 50 năm khi hết tuổi khai thác mủ gỗ cao su mới được khai thác. Khách hàng có thể hoàn toàn an tâm về sản phẩm kệ sách do Bestgoods cung cấp với chế độ bảo hành mối mọt, cong vênh, nứt lẻ, thay thế bất cứ chi tiết nào của sản phẩm lỗi, hỏng do vận chuyển hoặc lỗi của nhà sản xuất.', 'BOV-SPR-1980DK.png', 460000.00, 50, 1, 0),
(8, 'Bàn cafe tròn gỗ đẹp\r\n', 'Chất liêu: Sản xuất từ Gỗ MDF sơn Bệt 2k\r\n\r\nKích thước: 800x800x350mm(Quý khách có thể đặt kích thước khác để phù hợp với phòng nhà mình)\r\n\r\nMàu: nâu\r\n\r\nChất lượng: Gỗ công nghiệp MDF nhập khẩu nguyên tấm từ Malaysia, vật liệu chất lượng cao.\r\n\r\nVới 100% nhựa nguyên chất, đảm bảo không độc hại, không mối mọt, ẩm ướt..v..v', 'cafe-tron-go-dep.png', 6900000.00, 50, 3, 0),
(9, 'Bàn GTY 091\r\n', 'Nếu quý khách là người có tính cách hiện đại thì mẫu bàn ăn 11 là dành cho quý khách.\r\n\r\nKhông rườm rà, mặt bàn trong xanh được tô điểm bằng hai mép kính uốn cong bằng công nghệ hiện đại.\r\n\r\nBốn chân bàn và phụ kiện kết nối hình trụ tròn đồng bộ tạo nên tính logic trong thiết kế.\r\n\r\nMặt bàn là kính 12 ly cường lực, đợt kính (ngăn bàn) kính dầy 7 ly có nhiều mầu và hoa văn.\r\n\r\nKhoảng cách giữa mặt bàn và đợt kính (nếu có) thường trong khoảng 16-18cm.', 'GTY-091.png', 1890000.00, 45, 3, 0),
(10, 'Kệ trang trí Rubik Modulo Home 1846', 'Kệ trang trí Rubik Modulo Home 1846 của Modulo Home không những là sản phẩm giúp bạn để sách, đồ lưu niệm,... mà còn là vật trang trí và tô điểm thêm cho không gian nội thất của bạn. Kệ có kết cấu chắc chắn và bền đẹp do được làm từ gỗ công nghiệp nhập khẩu từ Malaysia giúp vẻ ngoài sang trọng và bắt mắt hơn. Kệ trang trí Rubik Modulo Home 1846 có nhiều ngăn với kích thước phù hợp để bạn có thể lưu giữ bộ sưu tập sách, những khung hình kỷ niệm, những chú gấu bông đáng yêu hay một vài chai nước hoa, chai rượu với kiểu dáng lạ mắt để trang trí cho ngôi nhà của mình.', 'RubikMH-1846.png', 900000.00, 50, 1, 0),
(11, 'Giá sách treo Hurakids 2130-002\r\n', 'Đối với các không gian nội thất nhỏ hẹp thì lựa chọn những vật dụng, đồ dùng, thiết bị,... có kích thước nhỏ gọn, tiện lợi, đa năng và không chiếm nhiều không gian là một việc vô cùng cần thiết. Hãy nhanh tay sở hữu ngay chiếc kệ sách treo Hurakids 2130-002 để không gian nhà bạn được sắp xếp gọn gàng và khoa học hơn. Sản phẩm được thiết kế giúp bạn đựng sách báo, tài liệu phục vụ cho công việc, học tập,... một cách hợp lý và gọn gàng. Với màu sắc tươi sáng, trang nhã từ chất liệu gỗ cao cấp, kệ sách treo Hurakids 2130-002 vừa được trang bị độ bền tuyệt đối, chịu lực tốt vừa mang đến vẻ sang trọng, thu hút cho không gian nhà bạn. Đây chắc chắn sẽ là dụng cụ hỗ trợ đắc lực giúp không gian sống của bạn được ngăn nắp và gọn gàng hơn rất nhiều.', 'treo-Hurakids-2130-001.png', 1550000.00, 50, 1, 0),
(12, 'Bàn gỗ dài\r\n', 'Bàn màu ghi chì chất liệu gỗ công nghiệp nhập khẩu.\r\n\r\nKích thước : W1200 x D600 x H750\r\n\r\nNgoài ra cùng kiểu dáng còn có kích thước : W1200 x D700 x H750 và các loại từ 1,4 - 1,8m.\r\n\r\nGhế cafe TF 105 Với thiết kế đơn giản nhưng sang trọng, được tối ưu các chi tiết góc canh, để tạo cho bạn có cảm giác ngồi thoải mái nhất có thể.\r\n\r\nĐảm bảo không độc hại, sẽ tạo nên bộ bàn ghế hoàn hảo cho không gian của quý khách hàng.\r\n\r\n', 'go-dai.png', 800000.00, 50, 3, 0),
(16, 'Bàn tròn kính\r\n', 'Bàn trà được làm bằng gỗ veneer với thiết kế đơn giản bền đẹp phù hợp với nhiều không gian sống\r\n\r\nChất liêu: Sản xuất từ Gỗ veneer\r\n\r\nKích thước: 600x900x350mm(Quý khách có thể đặt kích thước khác để phù hợp với phòng nhà mình)\r\n\r\nMàu: Trắng\r\n\r\nChất lượng: Gỗ công nghiệp veneer sơn pu, màu sắc bền đẹp', 'GTY-091 (1).png', 1250000.00, 50, 3, 0),
(27, 'Ghế sopha kem\r\n', 'Với sự kết hợp hài hoà về màu sắc, mẫu mã và không gian kiến trúc của ngôi nhà.\r\n\r\nNhững tông màu hiện đại, thiết kế trẻ trung theo từng phong cách.\r\n\r\nCông ty sản xuất sofa đơn đẹp rẻ tại 356 Bạch Mai sẽ mang đến cho bạn những bộ ghế sofa giá rẻ hợp với không gian sống.\r\n\r\nVới nhiều mẫu mã thiết kế đa dạng theo phong cách khác nhau. Những sản phẩm sofa giá rẻ tại đây tự hào mang đến cho bạn không gian sống hoàn hảo nhất.\r\n\r\nKhung gỗ : tự nhiên cao cấp', 'kem.png', 9200000.00, 50, 2, 0),
(28, 'Sopha cafe\r\n', '- Chất liệu nỉ ấm áp kết hợp hài hòa cùng màu sắc\r\n\r\n- Kiểu dáng thiết kế đặc biệt với phần tựa lưng thấp và có đệm mút dày nhưng lại không tạo cảm giác thô cho toàn bộ bộ sofa.\r\n\r\n- Gam màu lạnh của bộ ghế sofa kết hợp cùng màu gối tạo sự hòa trộn hài hòa giữa màu sắc\r\n\r\n- Bộ sofa này dành cho những căn phòng có không gian đủ rộng để bài trí.\r\n\r\n- Cấu tạo: Vật liệu bọc nỉ nhập khẩu Indo', 'cafe.png', 1200000.00, 50, 2, 0),
(29, 'Ghế sopha đơn êm ái\r\n', 'Với sự kết hợp hài hoà về màu sắc, mẫu mã và không gian kiến trúc của ngôi nhà.\r\n\r\nNhững tông màu hiện đại, thiết kế trẻ trung theo từng phong cách.\r\n\r\nCông ty sản xuất sofa đơn đẹp rẻ tại 356 Bạch Mai sẽ mang đến cho bạn những bộ ghế sofa giá rẻ hợp với không gian sống.\r\n\r\nVới nhiều mẫu mã thiết kế đa dạng theo phong cách khác nhau. Những sản phẩm sofa giá rẻ tại đây tự hào mang đến cho bạn không gian sống hoàn hảo nhất.\r\n\r\nKhung gỗ : tự nhiên cao cấp', 'don-em-ai.png', 1600000.00, 50, 2, 0),
(30, 'Sofa đơn SFD18\r\n', 'Chất liệu: khung gỗ tự nhiên đã qua xử lý chống cong vênh, mối mọt.\r\n\r\nĐệm mút cứng hoặc mềm (tùy chọn).\r\n\r\nChân gỗ tròn cao 3cm.\r\n\r\nNỉ Indo nhập khẩu.\r\n\r\nGhế có 2 đệm, mỗi đệm dày 12 cm', 'don-SFD18.png', 3500000.00, 50, 2, 0),
(32, 'Tủ quần áo BIG ONE VIETNAM WVR-1855L', 'Sản phẩm được sản xuất từ công ty Nhật Bản được phân phối bởi Công Ty Big One Việt Nam.\r\n\r\nĐây là sản phẩm có kiểu dáng và màu sắc đang được yêu thích và bán chạy tại thị trường Nhật Bản.', 'BOV-WVR-1855L.png', 5300000.00, 50, 4, 0),
(33, 'Tủ áo B1241K\r\n', 'Đặc điểm nổi bật của TỦ ÁO B1241:\r\n\r\nThiết kế tinh tế và hiện đại phù hợp với phong cách Việt Nam.Tủ chia thành 2 ngăn đứng với 3 cánh cửa mở đóng tiện dụng:\r\n\r\nNgăn đứng lớn để treo quần áo, phía dưới được trang bị thêm 1 ngăn mở chứa các vật dụng cần thiết.\r\n\r\nNgăn đứng nhỏ hơn gồm 4 ngăn mở tiện dụng để quần áo, gối, mền hoặc các vật dụng cần thiết khác.\r\n\r\nViền nhôm trang trí đẹp và tay nắm cùng tông màu bạc rất bắt mắt.\r\n\r\nChất liệu ván MFC được xử lý chống mọt và chống hút ẩm.', 'B1241K.png', 4600000.00, 50, 4, 0),
(34, 'Tủ Áo Bellasofa B1239\r\n', 'Đặc điểm nổi bật của TỦ ÁO B1239:\r\n\r\nThiết kế tinh tế, hiện đại, sang trọng theo phong cách Châu Âu phù hợp với mọi không gian phòng ngủ.\r\n\r\nTủ chia thành 2 ngăn đứng với 4 cánh cửa mở đóng tiện dụng:\r\n\r\nNgăn đứng để treo áo, phía dưới trong ngăn treo áo có trang bị 3 ngăn mở có thể chứa gối, mền và các vật dụng cần thiết.', 'Bellasofa-B1239.png', 950000.00, 50, 4, 0),
(36, 'Tủ áo B1238\r\n', 'Thiết kế tinh tế và hiện đại phù hợp với phong cách Việt Nam.\r\n\r\nTủ chia thành 2 ngăn đứng với 3 cánh cửa mở đóng tiện dụng:\r\n\r\nNgăn đứng lớn để treo áo, phía dưới trong ngăn treo áo có trang bị 2 ngăn kéo nhỏ và 3 ngăn mở có thể chứa các vật dụng cần thiết.', 'B1238.png', 950000.00, 50, 4, 0),
(37, 'Đèn trang trí vách cao cấp NETVIET NV 8825', 'dh', 'Netviet-NV-8825.png', 1750000.00, 50, 5, 0),
(39, 'Đèn trang trí vách cao cấp pha lê Netviet NV 9005/2\r\n', 'Kích thước( cm): 40x40x42\r\n\r\nLoại bóng sử dụng: E14 x 2\r\n\r\nVị trí lắp: Vách tường hoặc trụ cột.\r\n\r\nỨng dụng: Lắp đặt ở vị trí vách có mặt phẳng như tường phòng khách, phòng ngủ, hành lang phù hợp cho biệt thự, nhà phố, khách sạn, nhà hàng,...', 'Netviet-NV-9005-2.png', 1750000.00, 50, 5, 0),
(40, 'Đèn trang trí vách Netviet NV 8205/1\r\n', 'đèn vách kính treo tường\r\n\r\nkích thước : L270 x H300\r\n\r\nloại bóng : E27 x 1\r\n\r\nThân đèn bằng thép phun sơn chống ăn mòn\r\n\r\nChao đèn làm bằng thủy tinh chịu nhiệt tốt', 'Netviet-NV-8205-1.png', 1750000.00, 50, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `is_admin`, `status`) VALUES
(1, 'nguyen1', 'nguyen1', 'dnnguyen@gmail.com', 1, 0),
(2, 'nguyen2', 'nguyen2', 'nguyen2@gmail.com', 0, 0),
(5, 'hoang', 'hoangvuive', 'hoangvuive@gmail.com', 0, 1),
(6, 'nguyen5', 'nguyen5', 'nguyen5@gmail.com', 0, 1),
(7, 'minhson', 'minhson', 'minhson@gmail.com', 0, 0),
(9, 'hoang1', 'hoang1', 'hodanghoang@gmail.com', 1, 0),
(10, 'minhson2', '123', 'son@gmail.com', 0, 0),
(11, 'sonw', '123', 'son@gmail.com', 0, 0),
(12, 'son2321', '123', 'son@gmail.com', 0, 0),
(13, 'son23213', '123', 'son@gmail.com', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
