-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 07, 2023 lúc 06:37 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database_duan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id_binhluan` int(11) NOT NULL,
  `nd_binhluan` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id_binhluan`, `nd_binhluan`, `id_user`, `id_pro`, `time`) VALUES
(10, 'hay', 1, 19, '2022-12-05 06:26:42'),
(11, 'sản phẩm chất lượng', 1, 18, '2022-12-06 05:55:59'),
(12, 'sản phẩm quá đẹp', 1, 24, '2022-12-08 11:55:53'),
(13, 'sản phẩm ok', 1, 31, '2022-12-10 02:55:11'),
(14, 'sản phẩm này quá chất lượng', 1, 32, '2022-12-10 15:15:31'),
(15, 'sản phẩm chất lượng quá', 1, 41, '2022-12-10 15:16:10'),
(16, 'Sản phẩm này khá độc đáo', 23, 44, '2022-12-11 10:20:28'),
(17, 'Tôi đã mua rất đẹp', 23, 44, '2022-12-11 10:20:39'),
(18, 'sản phẩm rất thú vị đó', 23, 46, '2022-12-11 10:20:54'),
(19, 'sản phẩm quá đẹp', 24, 50, '2022-12-11 10:23:13'),
(20, 'Tôi để nó trong phòng', 24, 54, '2022-12-11 10:23:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `title_blog` varchar(255) NOT NULL,
  `des_blog` text NOT NULL,
  `img_blog` varchar(255) NOT NULL,
  `at_blog` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id_blog`, `title_blog`, `des_blog`, `img_blog`, `at_blog`) VALUES
(3, '5 SAI LẦM CẦN TRÁNH KHI MUA BÀN GHẾ SOFA', 'Hiện nay, nhu cầu chọn mua bàn ghế sofa đã dần trở nên phổ biến và được ưa chuộng nhiều hơn. Tuy nhiên, không phải ai cũng biết cách để chọn được một bộ sofa ưng ý và phù hợp nhất. Qua bài viết này, chúng tôi sẽ chỉ ra một số sai lầm mà mọi người thường mắc phải khi mua một bộ bàn ghế sofa. Modern Furniture cũng sẽ có những gợi ý để giúp bạn mua bộ ghế sofa chất lượng và phù hợp cho ngôi nhà của mình.<br>\r\n\r\nChọn kích thước bàn ghế sofa không phù hợp<br>\r\nĐây là sai lầm phổ biến và dễ mắc phải khi bạn chọn mua một bộ sofa mới cho ngôi nhà của mình. Sai lầm này sảy ra do bạn chưa đo đạc kĩ không gian bài trí của mình mà chỉ ước chừng hoặc chọn lựa theo cảm giác khi mua bàn ghế sofa. Dẫn đến việc bạn chọn một bộ sofa quá lớn hoặc quá nhỏ so với không gian nhà.\r\nNgoài việc đo đạc không gian bài trí để lựa chọn được bộ sofa phù hợp nhất. Bạn hãy chú ý đến những kích thước của các phần nội thất khác đang được bài trí tại đó. Việc này sẽ giúp bạn dễ dàng lựa chọn những bộ sofa với kích thước phù hợp nhất cho ngôi nhà của bạn. Hãy chắc chắn rằng bạn đã chừa đủ khoảng cách giữa bộ sofa và các phần xung quang để có thể di chuyển một cách thoải mái.<br>\r\n \r\nMua bàn ghế sofa mà chưa có trải nghiệm thực tế sản phẩm<br>\r\nCũng giống khi lựa chọn bộ sofa có kích thước phù hợp với không gian bài trí. Bạn không nên chọn mua bàn ghế sofa có kích thước không phù hợp với chính bản thân bạn. Việc này sẽ dẫn đến những trải nghiệm không thoải mái, thậm chí là khó chịu khi sử dụng sản phẩm.<br>\r\n\r\nNếu có thể, bạn hãy đến trực tiếp các showroom, cửa hàng khi mua bàn ghế sofa để có được những trải nghiệm thực tế trên sản phẩm. Lựa chọn bộ sofa mà bạn sử cảm thấy thoải mái, dễ chịu nhất khi sử dụng.<br>\r\n\r\nChọn mua bộ ghế sofa không hợp tổng thể bài trí<br>\r\nMỗi ngôi nhà, mỗi căn phòng sẽ có những phong cách chủ đạo khác nhau, tùy theo sở thích của mỗi người. Và việc bạn mua một bộ sofa có phong cách quá khác biệt so với phần còn lại của khu vực bài trí sẽ mang đến cho người nhìn cảm giác lạc lõng và khó chịu.<br>\r\n \r\nVì vậy, chọn mua bàn ghế sofa nên hài hòa, kết nối được với phong cách tổng thể chung của cả căn phòng.  Kể cả khi bạn muốn chọn một bộ sofa độc đáo để tạo điểm nhấn khác biệt, độc đáo cho không gian bài trí. Bí quyết ở đây là nên chọn mua bộ bàn ghế sofa có  ít nhất 1 đến 2 chi tiết có sự liên kết với tổng thể xung quanh. Bộ bàn ghế phải vừa thật sự ấn tượng, nhưng cũng phải hài hòa với tổng thể không gian bài trí.<br>\r\nChọn chất liệu của bộ sofa không phù hợp<br>\r\nPhòng khách ngoài trời đã không còn quá xa lạ đối với con người hiện đại. Những ngôi nhà có sân vườn đều muốn sở hữu riêng cho mình một khu vực tiếp khách ngoài trời. Tuy nhiên,không phải bộ ghế sofa nào cũng phù hợp với khu vực ngoài trời. Lựa chọn sai chất liệu làm nên bộ bàn ghế sẽ dẫn đến các tình trạng biến dạng, hư hỏng của bộ sofa sau thời gian ngắn sử dụng.<br>\r\n\r\nHãy chọn mua những bộ sofa với chất liệu chuyên dụng cho nội thất ngoài trời, ngoại thất. Nổi bật trong số đó phải kể đến vật liệu mây nhựa cao cấp. Những bộ sofa mây nhựa ngoài trời có thể chống chịu tốt với nhiều tác động không mong muốn từ môi trường tự nhiên như biến dạng, bay màu bởi nhiệt độ, tia UV hay hao mòn, hư hỏng do tiếp xúc nhiều với nước và độ ẩm cao… Mang đến cho bạn bộ sản phẩm an toàn, tiết kiệm được công sức, thời gian, tiền bạc khi vệ sinh hay bảo trì.<br>\r\n\r\nChọn mua sofa giá rẻ thay vì chất lượng<br>\r\nTuy giá cả cũng là 1 tiêu chí quan trọng khi bạn chọn mua bộ sofa cho ngôi nhà của mình, nhưng không nên vì thế mà bạn bỏ qua các yếu tố về chất lượng. Các nhà sản xuất nội thất uy tín sẽ luôn tìm cách cân bằng giá thành và chất lượng của sản phẩm để tạo nên mức giá cạnh tranh nhất. Một gợi ý nhỏ cho bạn: Hãy đặt ra một khoảng chi phí phù hợp với bạn trước khi chọn mua bàn ghế sofa và tìm các giải pháp từ những nhà sản xuất nội thất uy tín.<br>\r\n\r\nĐổi lại với một mức giá cao hơn thì chắc chắn bộ bàn ghế sofa cũng sẽ đi kèm với chất lượng và độ bền tốt hơn. Bên cạnh đó tính thẩm mĩ cũng như trải nghiệm người dùng cũng sẽ được đảm bảo tốt nhất, luôn được quan tâm và chú trọng hàng đầu khi thiết kế sản phẩm.', './uploads/B1.webp', '2022-12-11 08:27:09'),
(6, '5 Lưu ý khi chọn mua sofa cho căn hộ nhỏ', 'Để hoàn thiện nội thất cho căn hộ nhỏ, diện tích khiêm tốn thì việc sắp xếp, bố trí nội thất để có không gian tối ưu về diện tích nhưng vẫn thanh lịch, hiện đại và đầy đủ tiện nghi là một thách thức không hề nhỏ cho gia chủ. <br>\r\nMột trong những món nội thất tạo nên linh hồn cho căn hộ chính là bộ sofa, để lựa chọn được chiếc sofa đúng chuẩn, cần dựa vào một số tiêu chí bắt buộc sau đây để có 1 bộ sofa ưng ý và chất lượng:<br>\r\n1- Phần khung<br>\r\nLà phần quan trọng nhất vì nó quyết định chất lượng sofa bởi tính chịu lực cao. Vì vậy phần khung nên được làm từ gỗ tư nhiên sẽ đảm bảo tính bền vững của chiếc sofa.\r\n2- Phần nệm<br>\r\nĐệm mút là nguyên liệu quan trọng làm nên 1 chiếc ghế sofa êm ái, vì vậy bạn cần tìm hiểu về chất liệu của mút. Mút tốt là mút có độ đặc cao, độ đàn hồi lớn, không bị xẹp lún trong quá trình sử dụng. Hiện nay mút dùng cho đệm ô tô hay còn gọi D40 là một trong những loại mút tốt nhất trên thị trường.<br>\r\n3- Chân ghế<br>\r\nPhần chân tất nhiên phải làm từ các vật liệu chắc chắn nhất, gỗ tự nhiên hoặc kim loại cứng như inox hoặc thép. Kết cấu vững nhất là chân nên là một phần của khung ghế chứ không chỉ là dạng gắn bên ngoài vào. Tuy nhiên loại gắn bên ngoài cũng có ưu điểm là có thể tháo rời để có thể dễ dàng khi vận chuyển.<br>\r\n4- Kiểu dáng của ghế<br>\r\nBạn nên tìm hiểu trước về kiểu dáng và mẫu mã sofa hoặc hỏi ý kiến kiến trúc sư, nhà thiết kế nội thất trước khi quyết định mua ghế. Lưu ý khi chọn kiểu dáng ghế sofa nên phù hợp với nội thất cả căn nhà hoặc không gian để đảm bảo căn phòng sẽ trở nên sang trọng, đẳng cấp hơn và chuẩn Gu hơn.<br>\r\n5- Kích cỡ<br>\r\nXem xét kích thước tổng thể của căn phòng từ đó xác định chiều dài, rộng, cao của chiếc ghế sofa sao cho cảm giác nhìn tốt nhất trong không gian đó. Bạn có thể dùng một số vật dụng dụng đánh dấu hoặc dán băng kéo lên sàn, để một vài ngày để xem cảm giác đi lại và sinh hoạt trong căn phòng có vấn đề gì không.<br>\r\nVới 5 tiêu chí cơ bản trên bạn chắc chắn sẽ tìm được một bộ sofa phù hợp để hoàn thiện nội thất cho căn hộ nhỏ.<br>', './uploads/b2.webp', '2022-12-11 09:05:26'),
(7, 'Thư giãn từ cách trang trí nội thất đơn giản', 'Ngôi nhà không chỉ là nơi sum họp gia đình mà nó cũng là nơi vui chơi thư giãn sau nhưng ngày làm việc mệt nhọc, vì vậy để có thể trang trí nội thất cho căn hộ sao cho phù hợp là đều không thể bỏ qua.<br>\r\nDưới đây là những mẹo vặt cơ bản để trang trí nội thất cho căn hộ nhỏ của mình:<br>\r\n1. ÁNH SÁNG.<br>\r\nĐưa ánh sáng tự nhiên vào phòng đúng cách. Thông thường ánh sáng tự nhiên được “lọc” qua màn cửa, cửa chớp, rèm sẽ đem đến cho bạn cảm giác ấm áp. Đối với ánh sáng nhân tạo, bạn có thể dùng đèn bàn, nến, những dây đèn chớp lấp lánh trang trí trên kệ, viền quanh ô cửa hoặc đặt trong một lọ thủy tinh lớn.<br>\r\n2. XÚC GIÁC/MÙI HƯƠNG/SỰ THOẢI MÁI/ÂM NHẠC.<br>\r\nKhi cảm nhận bằng xúc giác, mọi thứ sẽ trở nên tuyệt vời hơn theo cách tự nhiên nhất. Những món đồ nho nhỏ bạn đem về từ chuyến du lịch nào đó như quả, lá cây khô, vỏ gối hoặc chăn đan, cây nến tỏa mùi oải hương…<br>\r\nNhững thứ tạo nên cảm giác thoải mái và đọng lại trong bạn ước muốn sống chậm lại một phút giây nào đó: trang trí nội thất cho căn hộ giá rẻ làm từ gỗ thông, bộ sofa mềm mại, chiếc gối bông mượt như bơ, tấm thảm thật mịn trên sàn nhà…Mùi hương tỏa ra từ căn bếp nhỏ.<br>\r\nVà dĩ nhiên không thể thiếu âm nhạc. Nhạc jazz Pháp hoặc Frank Sinatra trong bếp, nhạc cho trẻ em tại phòng của em bé, nhạc yêu thích trong phòng ngủ của bạn…Thật dễ chịu phải không nào?<br>\r\n3. SỰ TINH TẾ.<br>\r\nTận hưởng những giây phút của riêng mình tại thời điểm này, với chính mình. Chú ý đến những điều vô cùng đặc biệt mà bạn thường bỏ qua: làn hơi bốc ra từ ấm đun nước, ánh nến chập chờn, ánh đèn nghiêng nghiêng êm dịu tỏa ra từ cây đèn sàn ở góc nhà.<br>', './uploads/b3.webp', '2022-12-11 15:12:11'),
(8, 'Những lỗi lo gặp phải khi xây nhà và chọn nội thất', 'Giống như các khoản đầu tư khác, tiền xây nhà cần được dự toán, quản lý kỹ để tránh cho gia chủ rơi vào tình huống đang thi công thiếu hụt tiền phải tìm chỗ vay nợ, hoàn thiện nhà nhưng dự định trang trí, sắm sửa nội thất không thực hiện được... <br>\r\nTheo kiến trúc sư Hồ Lê Phương (TP HCM), nếu đã có bản thiết kế chi tiết, chủ nhà nên dự trù kinh phí trên bản thiết kế, thông thường, dự toán có thể sai số 5-10%. Gia đình có thể dự phòng thêm khoảng 10-20% kinh phí cho các vấn đề phát sinh như giá vật liệu tăng trong quá trình xây dựng. Đầu tư cho chất lượng công trình từ giai đoạn đầu chọn vật liệu xây dựng giúp hạn chế tình trạng “một lần sợ tốn, bốn lần không xong”.<br>\r\nKhi hoạch định tài chính xây nhà, gia đình chỉ dự định chi ngân sách nhỏ cho vật liệu xây dựng. Những vật liệu rẻ nhìn đẹp nhưng thường không bền, tuổi thọ thấp khiến tốn nhiều tiền hơn về sau. Kiến trúc sư Hồ Lê Phương khuyên gia chủ đặt yếu tố bền, an toàn cho sức khỏe của vật liệu lên đầu tiên. Thanh ốp tường, thanh lót sàn, tấm vách... từ thương hiệu SCG sẽ gợi ý thêm cho gia chủ.<br>\r\nNgôi nhà dù lớn hay nhỏ, đơn giản hay cầu kỳ, gia chủ cũng nên tham khảo đơn giá xây dựng tại địa phương, ước tính để có thể chủ động về ngân sách.<br>\r\nXác định phong cách kiến trúc là công đoạn tốn nhiều thời gian vì có thể mỗi thành viên trong gia đình lại có ý thích riêng. Chủ nhà cần dành tối thiểu 2 tháng cho giai đoạn thiết kế, trao đổi với kiến trúc sư. Căn cứ vào đặc điểm kỹ thuật, bối cảnh công trình, môi trường xung quanh... kiến trúc sư sẽ tư vấn để đưa ra thiết kế hợp lý nhất.<br>\r\nTùy hoàn cảnh cụ thể và sở thích, chủ nhà có thể lựa chọn phong cách hiện đại, đương đại, tối giản, Á Đông, cổ điển, tân cổ điển, công nghiệp, art deco, vintage... Dù thiết kế theo phong cách nào, ngôi nhà cũng cần đảm bảo một số tiêu chí để đạt được độ hài hòa. <br>\r\nKiến trúc sư Phạm Thanh Truyền (CEO Cát Mộc Group) cho biết, nhà cần được thiết kế để tận dụng tối đa ánh sáng tự nhiên tạo cảm giác không gian rộng hơn, tiết kiệm năng lượng. Gia chủ nên lưu ý vật liệu xây dựng bởi màu sắc, kiểu dáng hay công dụng của chúng thể hiện nhiều phong cách. Ví dụ vật liệu màu gỗ phù hợp với phong cách cổ điển, Á Đông; trong khi vật liệu màu đen hay trắng vừa vặn với phong cách hiện đại, tối giản.<br>', './uploads/b4.webp', '2022-12-11 09:16:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double(10,2) NOT NULL,
  `tongtien` double(10,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_pro`, `id_user`, `soluong`, `dongia`, `tongtien`, `img`, `name_pro`, `trangthai`) VALUES
(58, 55, 24, 3, 154.00, 462.00, './uploads/a17.jpg', 'Hộp đựng gia vị ', '1'),
(59, 46, 24, 1, 240.00, 240.00, './uploads/a6.jpg', 'Đồng hồ quả lắc', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(255) NOT NULL,
  `des_cate` varchar(255) NOT NULL,
  `at_cate` timestamp NULL DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `img_cate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id_cate`, `name_cate`, `des_cate`, `at_cate`, `id_user`, `img_cate`) VALUES
(22, 'NỘI THẤT PHÒNG KHÁCH', 'bao gồm tất cả sản phẩm', '2022-12-11 09:34:54', 23, './uploads/blog-3.jpg'),
(23, 'NỘI THẤT PHÒNG NGỦ', 'bao gồm tất cả sản phẩm nội thất phòng ngủ', '2022-12-11 09:35:48', 23, './uploads/blog-4.jpg'),
(24, 'NỘI THẤT PHÒNG BẾP', 'bao gồm tất cả sản phẩm', '2022-12-11 09:36:12', 23, './uploads/blog-2.jpg'),
(25, 'NỘI THẤT TRANG TRÍ', 'bao gồm tất cả sản phẩm', '2022-12-11 09:37:07', 23, './uploads/blog-1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productions`
--

CREATE TABLE `productions` (
  `id_pro` int(11) NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `img_pro` varchar(255) NOT NULL,
  `price_pro` double(10,2) NOT NULL,
  `des_pro` text NOT NULL,
  `at_pro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_user` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `productions`
--

INSERT INTO `productions` (`id_pro`, `name_pro`, `img_pro`, `price_pro`, `des_pro`, `at_pro`, `id_user`, `id_cate`) VALUES
(44, 'Ghế tình yêu hình bông hoa', './uploads/a10.jpg', 800.00, '<p>Chiếc ghế tình yêu này do nhà thiết kế nổi tiếng người Pháp Marc vonet với mong muốn tạo ra sự gắn kết êm dịu thoải mái mà tình yêu mang đến.</p>', '2022-12-11 09:44:50', 23, 22),
(45, 'Tấm Ốp Lam 4 Sóng', './uploads/a9.jpg', 780.00, '<p>Tấm ốp lam sóng ngoài trời được sản xuất từ gỗ nhựa composite, dùng để lắp đặt ngoài trời, chống chịu nước tốt và ít bị co giãn vì nhiệt. Bên cạnh đó, tấm ốp có độ bền ổn định, độ bền màu cao, không bị cong vênh, mối mọt.<br>\r\nTấm ốp lam sóng ngoài trời mang đến một cái nhìn dịu mắt hơn về ngôi nhà, tạo ra một không gian ấm cúng, mộc mạc và thiên nhiên. Rõ ràng, các công trình sử dụng tấm lam sóng ngoài trời luôn tạo ra một điểm nhấn ấn tượng. <br>\r\nThi công tấm ốp đòi hỏi nhiều khâu phức tạp nên cần có đội ngủ thi công kinh nghiệm và tỉ mỉ, chính vì thế chi phí thi công tấm ốp thường tương đối cao so với các vật liệu nội thất khác trên thị trường hiện nay.</p>', '2022-12-11 15:48:41', 23, 22),
(46, 'Đồng hồ quả lắc', './uploads/a6.jpg', 240.00, '<p>Đồng hồ treo tường hợp kim cao cấp, hiện đại được thiết kế theo phong cách Bắc Âu sang trọng, mặt đồng hồ khảm trai hoặc bọc da tạo sự khác biệt cho sản phẩm, mặt số nổi làm nổi bật trên mảng tường. Với đồng hồ hợp kim cao cấp gam màu trắng, vàng ánh kim hoặc xanh cam kết hợp bộ kim đồng hồ vàng ánh kim sẽ giúp không gian thêm phần điểm nhấn đặc biệt, nâng tầm không gian sống.<br>\r\n– Chất liệu: Hợp Kim<br\r\n>– Kích thước: 70*50cm<br>\r\n– Máy đồng hồ kim trôi, không gây tiếng ồn.<br>\r\n– Máy đồng hồ đạt tiêu chuẩn Châu Âu.<br>\r\n– Bảo hành máy đồng hồ 3 năm</p>', '2022-12-11 15:50:39', 23, 23),
(47, 'Đèn thả phòng ăn', './uploads/a4.jpg', 540.00, '<p>- Đèn thả bằn gỗ được thiết kế đa dạng với nhiều kiểu dáng, phù hợp với những không gian thiết kế khác nhau như phòng khách, phòng ngủ, nhà hàng, phòng trưng bày,… Bạn có thể chọn lựa mẫu sản phẩm phù hợp với không gian thiết kế nội thất. Thiết kế tinh tế với sự độc đáo và ấn tượng, những mẫu đèn thả gỗ chắc chắn sẽ là điểm nhấn thẩm mỹ cho không gian nội thất mà nó hiện diện.</p>', '2022-12-11 09:54:12', 23, 24),
(48, 'Đồng hồ treo tường', './uploads/a7.jpg', 200.00, '<p>* Phong cách: Tân cổ điển <br>\r\n* Chất liệu: Gỗ thông <br>\r\n* Kích thước: 30x30cm<br>\r\n* Độ dày: 6mm <br>\r\n* Màu sắc: Vàng gỗ tự nhiên, đen. <br>\r\n* Ứng dụng: Phòng khách, phòng ngủ, văn phòng, nhà hàng, khách sạn, quán cafe, <br>\r\n* Gắn tường: Treo bằng đinh hoặc dán keo. <br>\r\n* Kỹ thuật: Công nghệ Laser Châu Âu.</p>', '2022-12-11 15:56:49', 23, 25),
(49, 'Ghế gỗ dựa lưng', './uploads/a5.jpg', 750.00, '<p>Được làm hoàn toàn bằng chất liệu bền bỉ, có kết cấu chắc chắn, giúp đứng được vững chãi hơn, hạn chế tình trạng rung lắc hay ngã đổ<br>\r\nNhững đường nét đậm, đơn giản không cầu kỳ càng tôn thêm nét thanh lịch và sang trọng cho mẫu thiết kế này<br>\r\nSản phẩm sở hữu thiết kế đơn giản mà độc đáo, tiện dụng, giúp tiết kiệm diện tích và chi phí hiệu quả. Phù hợp với nhiều không gian nội thất khác nhau như: phòng khách, phòng ngủ, văn phòng làm việc,…<br>\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p>', '2022-12-11 15:58:50', 23, 22),
(50, 'Ghế băng', './uploads/a11.jpg', 450.00, '<p>Ghế băng chờ salon tóc ROYAL BW-111 gọn nhẹ, đơn giản nhưng không kém phần sang trọng cho không gian ngồi chờ của khách hàng.</p>', '2022-12-11 16:00:40', 23, 23),
(51, 'Đèn thả khung sắt Venus', './uploads/a13.jpg', 250.00, '<p>Đèn thả khung sắt hiện đại Venus KDCN135A được sản xuất từ các vật liệu chất lượng cao, cùng với quá trình gia công tỉ mỉ. Đem đến vẻ đẹp hoàn thiện, chi tiết cùng khả năng sử dụng lâu bền so với các sản phẩm khác trên thị trường.<br>\r\nĐèn thả khung sắt hiện đại Venus KDCN135A có vẻ đẹp vô cùng tuyệt vời để thắp sáng và trang trí cho ngôi nhà thân yêu của bạn. Ánh sáng từ đèn trang trí như một vật trang sức không thể thiếu cho bất kỳ không gian hoàn hảo nào.</p>', '2022-12-11 16:04:00', 23, 24),
(52, 'Đèn sàn đan', './uploads/a14.jpg', 580.00, '<p>Bolla S|M|L|XL là đèn đứng sàn lõi mây tự nhiên có dây, công tắc và bóng đèn 14-18-42 W, 220 Volt, đui đèn E 27.‎ Theo yêu cầu, 110 Volt, phích cắm US, bóng đèn không bao gồm. Cùng một mẫu, sơn mài trắng mờ, xám, đen, đại dương, xám bồ câu.</p>', '2022-12-11 10:07:31', 23, 25),
(53, 'Ghế tựa mây tre đen', './uploads/a15.jpg', 849.00, '<p>Một chiếc ghế bành ngoài trời thoải mái được thiết kế bởi Yuzuru Yamakawa vào năm 1965. Khung sơn tĩnh điện màu đen có sẵn với vỏ polyetylen đen hoặc lúa mì.</p>', '2022-12-11 16:11:15', 23, 24),
(54, 'Đồng hồ để bàn', './uploads/a16.jpg', 390.00, '<p>Vật chấtThép<br>Màu sắcmàu xanh lá<br>Kích thước35 x 15 x 24 cm<br>Đồng hồ để bàn, đa chức năng Formae Giratempo được thiết kế bởi Leonardo Fortino. Một phụ kiện thiết kế có thể được sử dụng theo nhiều cách. Đồng hồ tròn có thể đảo ngược và có gương ở mặt sau, trong khi đế hình chữ nhật cũng có thể được sử dụng làm hộp đựng đồ. Đồng hồ để bàn Giratempo có thể là một bổ sung trang nhã và chức năng cho bất kỳ ngôi nhà nào. Nó có thể dễ dàng đặt trong bất kỳ phòng nào của căn hộ. Nó đặc biệt được đặc trưng bởi thiết kế, đường nét đồ họa và vẻ ngoài đầy màu sắc - hãy nhìn vào thời gian, nhìn lại chính chúng ta và chúng ta đã sẵn sàng.</p>', '2022-12-11 16:13:58', 23, 25),
(55, 'Hộp đựng gia vị ', './uploads/a17.jpg', 154.00, '<p>Hũ (Lọ) đựng tăm/hạt tiêu bằng tre (8x4,8cm)<br>Thông tin sản phẩm: <br>- Kích thước: 8x4,8cm <br>- Màu sắc: Tự nhiên <br>- Chất liệu: Tre <br>- Xuất xứ: Việt Nam <br>- Quy trình sản xuất: Thủ công <br>- Sản phẩm của The handicrafts được chọn lựa kỹ trước khi đến tay khách hàng. <br>- Hướng dẫn sử dụng: Sau khi sử dụng, để đồ nơi khô ráo, thoáng mát, tránh ngâm trong nước và để khu vực ẩm thấp. <br>Bảo hành & Dịch vụ<br>- Bảo hành 1 đổi 1 miễn phí trong vòng 7 ngày nếu sản phẩm có lỗi kĩ thuật. <br>- Bảo hành chất lượng sản phẩm 12 tháng. <br>- Chăm sóc & tư vấn trọn đời.<br></p>', '2022-12-11 16:18:33', 23, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name_users` varchar(255) NOT NULL,
  `email_users` varchar(255) NOT NULL,
  `pw_users` varchar(255) NOT NULL,
  `address_users` varchar(255) NOT NULL,
  `phone_users` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_users`, `name_users`, `email_users`, `pw_users`, `address_users`, `phone_users`, `role`) VALUES
(23, 'ADMIN', 'admin@gmail.com', 'admin', 'Hưng Đạo, Đông Lỗ, Hiệp Hòa, Bắc Giang', '0977027136', 2),
(24, 'Cão Vĩ Hồng', 'caovihong@gmail.com', 'caovihong', 'Số 5 Quận Tân Thanh, Thành Phố Bắc Giang', '0979319353', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_binhluan`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `lk_pro` (`id_pro`),
  ADD KEY `lk_user` (`id_user`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cate`),
  ADD KEY `fk_users` (`id_user`);

--
-- Chỉ mục cho bảng `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `fk_cate_c` (`id_cate`),
  ADD KEY `fk_users_us` (`id_user`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `productions`
--
ALTER TABLE `productions`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `lk_pro` FOREIGN KEY (`id_pro`) REFERENCES `productions` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productions`
--
ALTER TABLE `productions`
  ADD CONSTRAINT `fk_cate_c` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id_cate`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_users_us` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
