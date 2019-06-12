-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.21-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for lap_trinh_web
CREATE DATABASE IF NOT EXISTS `lap_trinh_web` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `lap_trinh_web`;

-- Dumping structure for table lap_trinh_web.bai_dang
CREATE TABLE IF NOT EXISTS `bai_dang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chuyen_muc_id` int(11) DEFAULT NULL,
  `nguoi_dung_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `tieu_de` varchar(2000) DEFAULT NULL,
  `ngay_dang` varchar(45) DEFAULT NULL,
  `hinh_anh` longblob,
  `noi_dung_tom_tat` varchar(2005) DEFAULT NULL,
  `luot_xem` int(11) DEFAULT NULL,
  `tinh_trang` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bai_dang_chuyen_muc_idx` (`chuyen_muc_id`),
  KEY `fk_bai_dang_phong_vien_idx` (`nguoi_dung_id`),
  KEY `fk_bai_dang_tag_idx` (`tag_id`),
  CONSTRAINT `fk_bai_dang_chuyen_muc` FOREIGN KEY (`chuyen_muc_id`) REFERENCES `loai_chuyen_muc` (`chuyen_muc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bai_dang_phong_vien` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bai_dang_tag` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Dumping data for table lap_trinh_web.bai_dang: ~23 rows (approximately)
/*!40000 ALTER TABLE `bai_dang` DISABLE KEYS */;
REPLACE INTO `bai_dang` (`id`, `chuyen_muc_id`, `nguoi_dung_id`, `tag_id`, `tieu_de`, `ngay_dang`, `hinh_anh`, `noi_dung_tom_tat`, `luot_xem`, `tinh_trang`) VALUES
	(27, 1, 1, 1, 'Giá lúa gạo ở các tỉnh đồng bằng sông Cửu Long tăng mạnh', '2019-02-28', NULL, 'Trước diễn biến giá lúa này, chiều 19/2, Thủ tướng Chính phủ Nguyễn Xuân Phúc đã có cuộc họp với Bộ Nông nghiệp và Phát triển nông thôn, Bộ Tài Chính, Ngân hàng nhà nước, Hiệp hội Lương thực Việt Nam… nhằm giải quyết việc thu mua lúa gạo cho nông dân, đảm bảo quyền lợi cho nhà nông theo nguyên tắc thị trường.', 2156, NULL),
	(28, 1, 1, 1, 'Nghiêm túc thực hiện chế biến, tiêu thụ sản phẩm cao su thương hiệu VRG', '2018-08-11', NULL, 'Theo đó, năm 2018 là năm đầu tiên VRG triển khai sản xuất sản phẩm cao su thương hiệu VRG, với nhãn hàng hóa mới, có chất lượng đạt yêu cầu TCCS 112:2017 của VRG. VRG khuyến khích các công ty thành viên chủ động trong việc sản xuất và tiêu thụ, nỗ lực cùng với Tập đoàn quảng bá sản phẩm cao su VRG, quảng bá thương hiệu cao su của VRG. Lãnh đạo VRG đánh giá cao các công ty thực hiện tốt, đạt và vượt kế hoạch năm 2018 gồm các công ty: Tân Biên, Đồng Phú, Dầu Tiếng, Mang Yang Ratanakiri, Hoàng Anh Mang Yang K.', 2001, NULL),
	(29, 1, 1, 1, 'Năm 2019, sản lượng hạt tiêu sẽ đạt khoảng 200.000 tấn', '2018-04-3', NULL, 'Theo Cục Xuất nhập khẩu (Bộ Công Thương), giá hạt tiêu tại khu vực Tây Nguyên và miền Nam sau kỳ nghỉ Tết Nguyên đán ổn định ở mức 46.000 đồng/kg Hiện, Việt Nam xuất khẩu tới 95% sản lượng hạt tiêu. Do đó, để xuất khẩu hạt tiêu bền vững thì vấn đề chất lượng phải được đặt lên hàng đầu. Trong đó, sản lượng hạt tiêu của Việt Nam năm 2019 được dự báo sẽ đạt khoảng 175.000 tấn hạt tiêu đen và 25.000 tấn hạt tiêu trắng.', 1900, NULL),
	(30, 1, 2, 2, 'Giá cua biển Cà Mau tăng mạnh', '2019-01-29', NULL, 'Ghi nhận của PV Báo NNVN tại huyện Cái Nước (Cà Mau), ở thời điểm hiện tại cua gạch, cua cốm (cua lột) có giá dao động từ 550 – 600 ngàn đồng/kg, tăng từ 120 – 150 ngàn đồng/kg so với tháng trước; cua y có giá khoảng 350 – 370 ngàn đồng/kg; cua xô khoảng 100 ngàn đồng/kg.', 1405, NULL),
	(31, 1, 1, 2, 'Vì sao cua huỳnh đế bán gần 10 triệu đồng/con?', '2018-7-30', NULL, 'Nếu phải lựa chọn ra danh sách những món hải sản đắt đỏ nhất, cua hoàng đế (có nơi gọi là huỳnh đế) chắc chắn phải có một chỗ trong đó, thậm chí nằm trên top đầu. Cua huỳnh đế là gì và cua hoàng đế bổ dưỡng ra sao mà cực đắt. Được biết đến là một loại hải sản thơm ngon, cua hoàng đế có hình dạng lạ mắt, chắc thịt dù hơn 1 triệu/kg nhưng vẫn được mọi người ưa chuộng và tìm mua.', 1305, NULL),
	(32, 5, 1, 10, 'Juventus bị loại cúp C1: 300 triệu bảng mua Cristiano Ronaldo để làm gì?', '2018-02-10', NULL, 'Cristiano Ronaldo đã ghi 2 bàn ở cả lượt đi và về trước Ajax tại tứ kết Champions League. Tuy nhiên, chừng đó vẫn là không đủ để “Lão phu nhân” đi tiếp. Cơn thịnh nộ đến như một điều tất yếu, người hâm mộ lại đang phán xét Juventus về số tiền 300 triệu bảng để đưa về siêu sao người Bồ Đào Nha.', 1201, NULL),
	(33, 1, 1, 1, 'Triển khai mua dự trữ lúa gạo quốc gia', '2018-03-10', NULL, 'Năm 2018, xuất khẩu gạo Việt Nam đạt 6,1 triệu tấn, kim ngạch đạt 3,08 tỷ USD. Giá xuất khẩu bình quân 501 USD/tấn, tăng 13,86% so với 2017, giá xuất khẩu cao góp phần tiêu thụ ổn định lúa hàng hóa của nông dân. Tuy nhiên, qua năm 2019, thị trường nhiều biến động, đầu ra lúa đông - xuân gặp khó khăn.', 1105, NULL),
	(34, 1, 1, 1, 'Những tỷ phú "chân đất" nhờ trồng thanh long', '2018-09-20', NULL, 'Từ một xã nghèo cái ăn không đủ, người dân phải bỏ quê đi tha phương cầu thực thì đến nay xã Tân Thuận, huyện Hàm Thuận Nam, Bình Thuận đang là nơi có nhiều tỷ phú nhờ trồng cây thanh long . Xã Tân Thuận cách trung tâm huyện Hàm Thuận Nam chừng 5km theo đường chim bay. Nép mình sau núi Tà Cú, làng quê này xen giữa những cánh đồng thanh long bạt ngàn với những nóc nhà xanh đỏ hiện đại. Ngay khi bước chân vào đầu thôn Hiệp Nghĩa, chúng tôi bị choáng ngợp bởi những căn nhà mái Thái, những ngôi biệt thự đồ sộ lộng lẫy nằm dọc đường vào trung tâm xã.', 1009, NULL),
	(35, 1, 1, 1, 'Mùa đông ấm, vải thiều lại "tịt hoa"', '2017-02-04', NULL, 'Diễn biến thời tiết mùa đông 2018-2019 ấm hơn mọi năm khiến nhiều diện tích vải thiều tại các vựa lớn như Bắc Giang, Hải Dương có tỉ lệ ra hoa thấp. Hiện tượng vải thiều mất mùa do “tịt hoa” này lại diễn ra tương tự như niên vụ năm 2016-2017.', 1000, NULL),
	(36, 1, 1, 2, 'Kinh doanh cá chép bận rộn trước 23 Tháng Chạp', '2017-02-06', NULL, 'Sắp tới ngày ông Công ông Táo (23 Tháng Chạp), trong các cửa hàng cá cảnh, các chủ cửa hàng đang tất bật chuẩn bị cá chép để bán. Nhìn chung, các loại cá chép để phóng sinh được nuôi bán khá nhiều, giá rẻ như: Cá chép Tam Dương, cá chép vảy rồng, cá chép hoa… Trong đó, một số người bán hàng cho biết, cá chép đỏ Tam Dương được nhiều người tiêu dùng mua nhất vì giá thành tương đối rẻ, khoảng 30.000 - 50.000 đồng/ đôi, màu sắc vàng tươi sáng.', 999, NULL),
	(37, 4, 1, 8, 'Trực thăng AH-64 thế chỗ Ka-52 trên tàu đổ bộ Mistral', '2019-02-24', NULL, 'Hải quân Ai Cập là bên mua lại 2 tàu đổ bộ trực thăng Mistral mà Pháp đóng cho Nga nhưng không bàn giao được vì vướng phải các lệnh trừng phạt của phương Tây. Để tăng cường năng lực cho chiếc Mistral cũng như lực lượng yểm trợ hỏa lực đường không, vào năm 2015 Cairo đã đặt mua từ Nga 46 trực thăng tấn công Ka-52 Alligator.', 400, NULL),
	(38, 1, 1, 2, 'Bắt cua hoàng đế Alaska nguy hiểm ... nghề đánh bắt đó!', '2019-01-10', NULL, 'Cứ vào thu đông, các đội tàu ở Alaska lại ra khơi đánh bắt cua hoàng đế - món ăn cực phẩm mà nhiều ngư dân đã phải trả giá bằng cả sinh mạng. Cùng lúc đó, các nhà làm phim cũng có mặt trên boong tàu, đánh vật với sóng to gió lớn để ghi lại những thước phim quý về nghề đánh bắt này.', 750, NULL),
	(39, 1, 1, 2, 'Cá chép, những điều chưa biết', ' 2019-01-01', NULL, 'Cá chép là loài cá nước ngọt phổ biến, có cả ở sông suối, ao hồ, ngay cả trên những cánh đồng nước thì cá chép cũng sinh sôi nảy nở. Nhiều nghiên cứu cho thấy, cá chép có họ hàng xa với cá vàng và chúng có khả năng lai giống với nhau. Tuy nhiên, theo thời gian, môi trường sống thay đổi, chúng đã ít “đi lại” với nhau hơn, dẫn đến việc cá chép và cá vàng không phải là cùng một gốc.', 300, NULL),
	(40, 5, 1, 10, 'MU - Solskjaer ... siêu sao nào thế chỗ?', '2018-12-10', NULL, 'Một thông tin đầy giật gân vừa được tờ Telegraph đăng tải. Theo nguồn tin riêng của tờ báo này, MU sẵn sàng lắng nghe mọi đề nghị dành cho Romelu Lukaku. Thậm chí, đội chủ sân Old Trafford quyết tâm bán đứt Lukaku ngay trong phiên chợ mùa hè 2019, để qua đó tái đầu tư vào các thương vụ phù hợp với triết lý của HLV Solskjaer.', 300, NULL),
	(41, 4, 1, 7, 'Bằng chứng Khá “Bảnh” ... chục triệu đồng với con bạc', '2018-09-20', NULL, 'Liên quan tới vụ án Ngô Bá Khá (tức Khá Bảnh, SN 1993, ở thị xã Từ Sơn, tỉnh Bắc Ninh) đánh bạc và tổ chức đánh bạc, ngày 9/4, Viện Kiểm sát nhân dân (VKSND) tỉnh Bắc Ninh cho biết, VKSND thị xã Từ Sơn đã phê chuẩn các quyết định khởi tố bị can và lệnh tạm giam đối với các đối với Khá và 4 đối tượng khác', 421, NULL),
	(42, 1, 1, 2, 'Cua biển Cà Mau: đặc sản nức tiếng gần xa', '2018-09-01', NULL, 'Miền đất mũi đã được người mẹ thiên thiên bạn tặng cho thức quà tuyệt vời đó là cua biển Cà Mau mà ai cũng mong muốn một lần được nếm thử. Nhiều du khách đến cực Nam đều ngây ngất trong hương vị các món ăn được chế biến từ cua biển.Nhiều vị khách đánh giá cua biển Cà Mau là loại cua ngon nhất cả nước với thịt cua thơm, chắc nịch, ngọt vừa, không quá béo mà rất bùi, gạch cua béo ngậy khiến ai cũng muốn ăn thêm.', 158, NULL),
	(43, 1, 1, 1, 'Thanh long rớt giá thảm ... đâu?', ' 2018-06-04', NULL, 'Nhiều lần gặp tình trạng thanh long rớt giá, nhưng chưa bao giờ người trồng thanh long tại Bình Thuận lại điêu đứng trước tình hình giá thanh long xuống mức thấp nhất hiện nay: 500 đồng đến 1.000 đồng/kg. Rớt giá, ế ẩm, nhiều người dân ở “thủ phủ” thanh long Bình Thuận phải chặt bỏ đi.', 230, NULL),
	(44, 1, 1, 1, 'Thanh long tại vườn 2.000 đồng/kg,... với giá cao gấp 10 lần', '2018-06-04', NULL, 'Hơn 1 tuần nay, thanh long Bình Thuận rớt giá mạnh. Hiện giá thanh long ruột trắng chỉ có 500-1.000 đồng/kg, nhưng giá thanh long bán lẻ tại các hệ thông siêu thị, và các chợ trên địa bàn Hà Nội giá vẫn cao ngất ngưởng.', 97, NULL),
	(45, 2, 1, 3, '"Cả một siêu phẩm như “Avengers: Endgame” chỉ mình Người Sắt được đọc kịch bản"', '2019-02-08', NULL, 'Đạo diễn của bộ phim bom tấn “Avengers: Endgame” tiết lộ rằng chỉ có mình nam diễn viên Robert Downey Jr. được đọc toàn bộ kịch bản, các diễn viên khác hoặc chỉ được nhận phần kịch bản của vai mình đóng, hoặc thậm chí chỉ được nhận vài câu thoại và... không có kịch bản.', 600, NULL),
	(46, 2, 1, 4, '"Người đàn ông dũng cảm cứu sống 2 học sinh đuối nước trên biển"', '2019-01-10', NULL, '“Vừa kịp chạm vào thân thể cháu bé đuối nước, tôi phát hiện một cháu nữa đã chìm dưới biển với độ sâu chừng 2,5-3m. Thoáng nghĩ, tôi quyết định 1 tay giữ cháu bé rồi lặn vớt tiếp cháu còn lại. Đưa được hai cháu vào bờ, tôi lả đi vì mệt”, người đàn ông vừa cứu mạng 2 cháu nhỏ nhớ lại.', 20, NULL),
	(47, 3, 1, 6, 'Thủ tục khám chữa bệnh bằng thẻ bảo hiểm y tế theo quy định mới', '2019-01-01', NULL, 'Người tham gia BHYT khi đến KCB phải xuất trình thẻ BHYT có ảnh; trường hợp thẻ BHYT chưa có ảnh thì phải xuất trình một trong các giấy tờ tùy thân có ảnh do cơ quan, tổ chức có thẩm quyền cấp...', 100, NULL),
	(48, 5, 1, 9, 'Quảng Ninh - Sài Gòn: Thẻ đỏ & 3 "cú đấm" chí mạng', '2018-06-04', NULL, 'Sau trận thua tan nát 0-5 trước Hà Nội FC trong ngày khai mạc mùa giải, đoàn quân của HLV Phan Thanh Hùng đã có mạch 3 trận liên tiếp bất bại, trong đó có 2 chiến thắng và 1 trận hòa. Chuỗi trận thăng hoa của đội bóng đất Mỏ chỉ dừng lại sau thất bại 2-3 trên sân của HAGL', 200, NULL),
	(49, 2, 1, 2, 'Năm 2019, xuất khẩu tôm ước đạt 4 tỷ USD', '2018-02-10', NULL, 'Tổng cục Thủy sản (Bộ NN-PTNT) vừa cho biết, năm 2019, ngành thủy sản đặt mục tiêu có tổng kim ngạch xuất khẩu tôm đạt 4 tỷ USD. Theo ông Trần Đình Luân, Phó Tổng cục trưởng Tổng cục Thủy sản, để đảm bảo cho mục tiêu này, ngay từ đầu năm, ngành thủy sản xác định diện tích nuôi tôm sú năm 2019 duy trì khoảng 620.000ha, với sản lượng khoảng 330.000 tấn.', 200, NULL);
/*!40000 ALTER TABLE `bai_dang` ENABLE KEYS */;

-- Dumping structure for table lap_trinh_web.bai_viet
CREATE TABLE IF NOT EXISTS `bai_viet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bai_dang_id` int(11) DEFAULT NULL,
  `noi_dung_bai_viet` varchar(10000) DEFAULT NULL,
  `hinh` longblob,
  `action` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bai_viet_bai_dang_idx` (`bai_dang_id`),
  CONSTRAINT `fk_bai_viet_bai_dang` FOREIGN KEY (`bai_dang_id`) REFERENCES `bai_dang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='		';

-- Dumping data for table lap_trinh_web.bai_viet: ~35 rows (approximately)
/*!40000 ALTER TABLE `bai_viet` DISABLE KEYS */;
REPLACE INTO `bai_viet` (`id`, `bai_dang_id`, `noi_dung_bai_viet`, `hinh`, `action`) VALUES
	(4, 1, 'Theo báo cáo của Trung tâm tin học & Thống kê Bộ NN&PTNT, khối lượng xuất khẩu cao su tháng 2 năm 2019 của Việt nam ước đạt 71 nghìn tấn với giá trị đạt 93 triệu USD. Với ước tính này, khối lượng xuất khẩu cao su 2 tháng đầu năm 2019 đạt 228 nghìn tấn và 293 triệu USD, tăng 22,4% về khối lượng và tăng 6,8% về giá trị so với cùng kỳ năm 2018.', NULL, NULL),
	(5, 1, 'Giá cao su xuất khẩu bình quân tháng 1 năm 2019 đạt 1.271 USD/tấn, giảm 13,1% so với cùng kỳ năm 2018. Trung Quốc, Ấn Độ, và Hàn Quốc là 3 thị trường tiêu thụ cao su lớn nhất của Việt Nam trong tháng 1 năm 2019, chiếm thị phần lần lượt là 65,6%, 8,9% và 3,1%.', NULL, NULL),
	(6, 1, 'Thị trường cao su nguyên liệu trong nước trầm lắng trước và sau Tết Nguyên đán. Giá mủ cao su Bình Phước tháng 2-2019 giữ ở mức 255 đồng/độ. Tại Đồng Nai, mủ cao su dạng nước vẫn giữ ở mức 12.000 đồng/kg. Đầu năm 2019, xuất khẩu cao su của Việt Nam sang các nước đạt 157,15 nghìn tấn, ứng với 199,78 triệu USD, tăng 16 % về lượng và 0,8% về giá trị.', NULL, NULL),
	(7, 1, 'Dự báo trong năm nay, mức tăng trưởng tiêu thụ cao su thiên nhiên của toàn cầu sẽ chậm lại, ở mức 2,5%/năm, thêm nữa bất cứ động thái nào của Mỹ áp thuế lên ô tô và phụ tùng ô tô từ Trung Quốc đều có thể ảnh hưởng tiêu cực tới nhu cầu cao su tự nhiên, đây cũng là nước nhập khẩu cao su lớn nhất của Việt Nam. Trong thời gian tới, doanh nghiệp Việt Nam nên tìm kiếm những thị trường mới, tránh phụ thuộc vào những thị trường lớn như trước đây.', NULL, NULL),
	(8, 2, 'Theo Cục Chế biến và Phát triển thị trường nông sản Bộ Nông nghiệp và Phát triển nông thôn, diện tích cà phê cả nước đạt khoảng 664 nghìn héc-ta. Cà phê Việt Nam hiện được xuất sang 80 quốc gia và vùng lãnh thổ trên thế giới với kim ngạch xuất khẩu trên 3 tỷ USD, chiếm 14% thị phần và 10,4% giá trị cà phê nhân xuất khẩu toàn cầu. Mặc dù được đánh giá là “cây tỷ đô” có kim ngạch xuất khẩu cao trong nhóm hàng nông sản của Việt Nam, nhưng tốc độ tăng trưởng kim ngạch chỉ ở mức bình quân 6,57%; giá trị hạt cà phê Việt Nam chưa được đánh giá cao. Nguyên nhân chủ yếu do cà phê Việt Nam chịu nhiều biến động của thị trường cà phê thế giới, cơ cấu sản phẩm cà phê có giá trị gia tăng cao vẫn còn thấp, chỉ 7% cà phê Việt Nam được chế biến sâu, xuất khẩu cà phê nhân chiếm tỷ trọng lớn 93%.', NULL, NULL),
	(9, 2, 'Hiện cả nước có 50 đơn vị, nông hộ, trang trại nhà sản xuất, trồng, chế biến cà phê đặc sản, sản lượng 200 tấn mỗi năm, một số nhà sản xuất đã tiên phong đầu tư phòng thí nghiệm, kiểm định chất lượng, dạy nghề, cung ứng cung cấp thiết bị đánh giá chất lượng cà phê. Để phát triển ngành hàng cà phê đặc sản theo ông Trịnh Đức Minh cà phê cần được đưa vào danh mục sản phẩm quốc gia cà phê chất lượng cao, có cơ chế cho người trồng, doanh nghiệp chế biến, tăng cường quảng bá, mời gọi đầu tư, liên kết tạo ra thị trường cung cầu ổn định.', NULL, NULL),
	(10, 2, 'Tiến sỹ Phạm S-Phó Chủ tịch UBND tỉnh Lâm Đồng cho rằng, Lâm Đồng có diện tích 177.000 ha. Di Linh và Lâm Hà là hai địa phương được tỉnh lựa chọn để trồng cà phê đặc sản, nơi đây có điều kiện khí hậu, thổ nhưỡng phù hợp. Lâm Đồng ưu tiên ứng dụng khoa học công nghệ cao trong sản xuất, chế biến cà phê đặc sản, xác định phân khúc thị trường và quảng bá thị trường cà phê đặc sản, nhằm gia tăng giá trị hạt cà phê, mang lại giá trị cao cho người trồng cà phê.', NULL, NULL),
	(11, 2, 'Phó Chủ tịch UBND tỉnh Đắk Lắk Y Giang Gry Niê Knơng cho biết, cà phê là cây trồng chủ lực mang lại giá trị cao tại Đắk Lắk, quan điểm của tỉnh không tăng diện tích cà phê mà tập trung tái canh, áp dụng các biện pháp nâng cao năng suất, sản lượng, chất lượng đáp ứng nhu cầu xuất khẩu. Tỉnh tập trung mời gọi đầu tư chế biến sâu, tìm kiếm thị trường mới, ưu tiên nguồn vốn vay cho doanh nghiệp, vốn vay tái canh, đầu tư khoa học công nghệ nâng cao chất lượng cà phê Đắk Lắk nói riêng, cà phê Việt Nam nói chung, đặc biệt là cà phê đặc sản.', NULL, NULL),
	(12, 3, 'Vụ Đông Xuân năm 2018-2019 ở Khu vực Đồng bằng sông Cửu Long bắt đầu vào vụ thu hoạch, nhưng từ sau Tết Nguyên đán đến ngày 20/2, hầu hết diện tích lúa của nông dân vùng Đồng bằng sông Cửu Long vẫn “nằm im,” chưa được thương lái, doanh nghiệp thu mua.Nhiều nơi nông dân sốt ruột vì lúa đến độ chín rộ, để lâu sẽ bị rơi rụng, khó thu hoạch, nguy cơ thua lỗ nặng trước mắt.\r\nThị trường cao su nguyên liệu trong nước trầm lắng trước và sau Tết Nguyên đán. Giá mủ cao su Bình Phước tháng 2/2019 giữ ở mức 255 đồng/độ. Tại Đồng Nai, mủ cao su dạng nước vẫn giữ ở mức 12.000 đồng/kg. Đầu năm 2019, xuất khẩu cao su của Việt Nam sang các nước đạt 157,15 nghìn tấn, ứng với 199,78 triệu USD, tăng 16 % về lượng và 0,8% về giá trị.', NULL, NULL),
	(13, 3, 'Theo đánh giá của các chuyên gia ngành lúa gạo Việt Nam, nguyên nhân giá lúa vùng Đồng bằng sông Cửu Long giảm xuống trước vụ thu hoạch Đông Xuân chính là việc các doanh nghiệp chưa có đơn hàng xuất khẩu, thương lái chưa vào cuộc mạnh mẽ.', NULL, NULL),
	(14, 3, 'Trước diễn biến giá lúa này, chiều 19/2, Thủ tướng Chính phủ Nguyễn Xuân Phúc đã có cuộc họp với Bộ Nông nghiệp và Phát triển nông thôn, Bộ Tài Chính, Ngân hàng nhà nước, Hiệp hội Lương thực Việt Nam… nhằm giải quyết việc thu mua lúa gạo cho nông dân, đảm bảo quyền lợi cho nhà nông theo nguyên tắc thị trường.', NULL, NULL),
	(15, 3, 'Theo kế hoạch sản xuất đề ra hồi tháng 10/2018 của Bộ Nông nghiệp và Phát triển nông thôn, vùng Đồng bằng sông Cửu Long đã xuống giống lúa Đông Xuân là 985.000 ha, năng suất bình quân ước tính là 5,9 tấn/ha, tổng sản lượng thu hoạch trong vụ này hơn 5,8 triệu tấn. Do đó, sản lượng thu mua tạm trữ gạo của người dân là ở mức cao.Trước diễn biến thị trường như vậy, trong khi chờ sự hỗ trợ từ Chính phủ và chính quyền địa phương, nông dân các tỉnh Đồng bằng sông Cửu Long chủ động xoay xở, xử lý toàn bộ số lúa chưa được thương lái thu mua.Điển hình như ông Mai Thanh Tuấn, xã Giục Tượng, huyện Châu Thành, tỉnh Kiên Giang chia sẻ, từ nhiều năm trước, ông Tuấn cùng 4 hộ nông dân sản xuất lúa khác trong xã hợp tác, xây dựng kho trữ lúa.', NULL, NULL),
	(16, 4, 'Đây là chỉ đạo của lãnh đạo VRG trước kết quả thực hiện sản xuất, tiêu thụ sản phẩm cao su thương hiệu VRG được giao của các đơn vị trong năm 2018.', NULL, NULL),
	(17, 4, 'Theo đó, năm 2018 là năm đầu tiên VRG triển khai sản xuất sản phẩm cao su thương hiệu VRG, với nhãn hàng hóa mới, có chất lượng đạt yêu cầu TCCS 112:2017 của VRG. VRG khuyến khích các công ty thành viên chủ động trong việc sản xuất và tiêu thụ, nỗ lực cùng với Tập đoàn quảng bá sản phẩm cao su VRG, quảng bá thương hiệu cao su của VRG.', NULL, NULL),
	(18, 4, 'VRG đã giao nhiệm vụ sản xuất và tiêu thụ sản phẩm VRG cho 27 đơn vị thành viên, trong đó có 19 đơn vị trong nước và 8 đơn vị nước ngoài năm 2018. Trong đó kế hoạch sản xuất sản phẩm VRG giao chiếm 20,6% so với tổng sản lượng khai thác toàn VRG, tương đương 62.103 tấn. Kết quả, các đơn vị đã thực hiện sản xuất và tiêu thụ đạt được 6,9%, tương đương 20.791 tấn, so với kế hoạch giao đạt 33,5%.', NULL, NULL),
	(19, 4, 'Lãnh đạo VRG đánh giá cao các công ty thực hiện tốt, đạt và vượt kế hoạch năm 2018 gồm các công ty: Tân Biên, Đồng Phú, Dầu Tiếng, Mang Yang Ratanakiri, Hoàng Anh Mang Yang K. Các công ty này đã có nhiều cố gắng trong việc thực hiện kế hoạch sản xuất, kiểm soát chất lượng sản phẩm VRG, góp phần quảng bá thương hiệu VRG. Lãnh đạo VRG còn đánh giá cao các công ty mặc dù không được giao nhiệm vụ sản xuất sản phẩm VRG nhưng cũng đã chủ động thực hiện chủ trương lớn của VRG như Công ty Ea H’leo, Hàng Gòn.', NULL, NULL),
	(20, 4, 'Trước tình hình tỷ lệ thực hiện tương đối thấp, lãnh đạo VRG phê bình và yêu cầu các đơn vị nghiêm túc thực hiện kế hoạch trong năm 2019. Đặc biệt, kết quả sản xuất tiêu thụ sản phẩm cao su VRG năm 2019 sẽ được đưa vào tiêu chí xem xét thi đua, khen thưởng. Ngoài ra, lãnh đạo VRG còn yêu cầu các bộ phận liên quan xúc tiến đăng ký nhãn hiệu hàng hóa mang thương hiệu VRG và đăng ký bảo hộ logo của VRG tại Campuchia và Lào. Các đơn vị đã có phòng kiểm phẩm chưa đạt chứng nhận Vilas nhanh chóng xúc tiến để đạt chứng nhận trong năm 2019.', NULL, NULL),
	(21, 5, 'Theo Cục Xuất nhập khẩu (Bộ Công Thương), giá hạt tiêu tại khu vực Tây Nguyên và miền Nam sau kỳ nghỉ Tết Nguyên đán ổn định ở mức 46.000 đồng/kg - mức giá thấp nhất trong vòng gần 10 năm trở lại đây.\r\nTrong tháng đầu tiên của năm 2019, xuất khẩu hạt tiêu đạt 15.000 tấn, trị giá 46 triệu USD, tăng 19,5% về lượng và tăng 13,5% về trị giá so với tháng 12/2018. Cũng trong tháng này, giá xuất khẩu bình quân hạt tiêu đạt mức 3.067 USD/tấn, giảm 5,0% so với tháng 12/2018 và giảm 23,5% so với tháng 1/2018.', NULL, NULL),
	(22, 5, 'Theo các chuyên gia trong ngành, để làm được điều này, doanh nghiệp sản xuất và xuất khẩu hạt tiêu Việt Nam cần liên kết, kết nối với các đối tác khách hàng quốc tế, hiệp hội gia vị thế giới để mở rộng thị trường tiêu thụ, gia tăng chất lượng cho sản phẩm hạt tiêu.', NULL, NULL),
	(23, 6, 'Hiệp hội hạt tiêu quốc tế dự báo, sản lượng hạt tiêu của các nước xuất khẩu chính trong năm 2019 là Việt Nam, Brasil, Indonesia và Ấn Độ sẽ giảm so với năm 2018. Trong đó, sản lượng hạt tiêu của Việt Nam năm 2019 được dự báo sẽ đạt khoảng 175.000 tấn hạt tiêu đen và 25.000 tấn hạt tiêu trắng', NULL, NULL),
	(24, 6, 'Ghi nhận của PV Báo NNVN tại huyện Cái Nước (Cà Mau), ở thời điểm hiện tại cua gạch, cua cốm (cua lột) có giá dao động từ 550 – 600 ngàn đồng/kg, tăng từ 120 – 150 ngàn đồng/kg so với tháng trước; cua y có giá khoảng 350 – 370 ngàn đồng/kg; cua xô khoảng 100 ngàn đồng/kg.', NULL, NULL),
	(25, 6, 'Ông Hà Chí Hiền, ngụ xã Lương Thế Trân, cho biết: “Gia đình tôi có khoảng 1ha đất nuôi tôm, cua kết hợp. Vụ Tết này, tôi thả khoảng 1.000 con cua, hiện đã bước vào vụ thu hoạch. Mấy ngày gần đây, giá cua tăng. Trung bình mỗi ngày tôi bán khoảng 10kg cua các loại”.', NULL, NULL),
	(26, 7, 'Anh Nguyễn Văn Việt, thương lái thu mua cua, ngụ xã Thạnh Phú, thông tin: “Giá cua mấy ngày qua trên đà tăng mạnh, là do nguồn hàng cung ứng cho thị trường tết khan hiếm, sức tiêu thụ mạnh”.', NULL, NULL),
	(27, 7, 'Cua huỳnh đế là gì và cua hoàng đế bổ dưỡng ra sao mà cực đắt. Được biết đến là một loại hải sản thơm ngon, cua hoàng đế có hình dạng lạ mắt, chắc thịt dù hơn 1 triệu/kg nhưng vẫn được mọi người ưa chuộng và tìm mua.', NULL, NULL),
	(28, 7, 'Cua Huỳnh đế hay cua Hoàng đế (danh pháp hai phần: Ranina ranina) là một loài cua biển trong cận bộ Cua phân bố nhiều ở vùng biển phía Đông Nam Thái Bình Dương. Ở Việt Nam, cua Huỳnh đế xuất hiện nhiều ở vùng biển sạch, có đáy cát vàng và nguồn nước trong xanh như các vùng biển Quy Nhơn (Bình Định), Phú Yên, Tuy Phong (Bình Thuận), Sa Huỳnh (Quảng Ngãi), Cam Ranh (Khánh Hòa). Đây là một loài hải sản có giá trị kinh tế cao và được làm nguyên liệu chế biến thành những món đặc sản.', NULL, NULL),
	(29, 7, 'Nếu phải lựa chọn ra danh sách những món hải sản đắt đỏ nhất, cua hoàng đế (có nơi gọi là huỳnh đế) chắc chắn phải có một chỗ trong đó, thậm chí nằm trên top đầu.\r\nCua Huỳnh đế to bằng bàn tay xòe, mình khum tròn, nhìn giống con bọ khổng lồ hay có con hình dáng như loài rùa, đầu cua hơi chúi xuống, có màu đỏ hồng, mai hình vuông, càng và que ngắn, đầu cua dài và có nhiều râu. Cua Huỳnh đế có những con ở vùng biển nước sâu nặng hơn 1 ký.', NULL, NULL),
	(30, 7, 'Cua có bộ áo giáp dày và cứng có màu vàng rực như hoàng bào hay chiến bào, li ti gai nhọn xuôi theo thân, que và càng to, cạnh sắc lẻm như dao. Khác với cua thường, mỗi con cua Hoàng Đế chỉ có 6 chân và 2 càng.', NULL, NULL),
	(31, 7, 'Thịt cua Huỳnh đế thơm ngon, bổ dưỡng, thớ thịt cua săn chắc, trắng muốt nhô và độ đạm cao. Người ta cũng đã phát hiện Cua hoàng đế màu xanh ở Mỹ, nó có màu tím xanh và có kích thước tương đương những con cua hoàng đế đỏ khác, nhưng nổi bật nhờ màu tím xanh như màu hoa oải hương.', NULL, NULL),
	(32, 7, 'Cua hoàng đế đỏ có màu tím xanh là một hiện tượng rất hiếm. Trước đó, một con cua có màu tím xanh như hoa oải hương từng được phát hiện trong lô hàng cua hoàng đế đỏ tại Nhật Bản. Con cua nặng khoảng 3,5 kg, chiều dài càng khoảng một mét.', NULL, NULL),
	(33, 8, 'Từ một xã nghèo cái ăn không đủ, người dân phải bỏ quê đi tha phương cầu thực thì đến nay xã Tân Thuận, huyện Hàm Thuận Nam, Bình Thuận đang là nơi có nhiều tỷ phú nhờ trồng cây thanh long .', NULL, NULL),
	(34, 8, 'Xã Tân Thuận cách trung tâm huyện Hàm Thuận Nam chừng 5km theo đường chim bay. Nép mình sau núi Tà Cú, làng quê này xen giữa những cánh đồng thanh long bạt ngàn với những nóc nhà xanh đỏ hiện đại. Ngay khi bước chân vào đầu thôn Hiệp Nghĩa, chúng tôi bị choáng ngợp bởi những căn nhà mái Thái, những ngôi biệt thự đồ sộ lộng lẫy nằm dọc đường vào trung tâm xã.', NULL, NULL),
	(35, 8, 'Sống trong căn nhà bề thế đầy đủ tiện nghi, ông Đậu Quang Hoàng – một nông dân trồng thanh long ở thôn Hiệp Nhơn chia sẻ: Truớc đây đa phần là nhà tranh vách lá, nhà tranh vách đất, một số nhà có điều kiện hơn thì lợp tôn. Nhưng bây giờ, nhiều người đi xa xứ khoảng chừng 10 năm cũng giật mình', NULL, NULL),
	(36, 8, 'Ông Hoàng cho biết, trước đây vùng đất này rất nghèo khó. Đất đai khô cằn, thiếu dưỡng chất. Mỗi năm chỉ trồng được một vụ lúa tùy thuộc nước trời, cùng một số loại cây ngắn ngày, nhưng không đủ sống. Gia đình ông cũng vậy. Nhưng với 2.000 trụ thanh long hiện nay, mỗi năm ông thu về hơn nửa tỷ đồng. Không những xây nhà cao cửa rộng, mà nông dân làm thanh long ở đây ai cũng đủ khả năng sắm ô tô.', NULL, NULL),
	(37, 8, 'Tại xóm Rẫy, thôn Hiệp Nhơn, nơi nghèo nhất xã Tân Thuận năm xưa, những căn biệt thự mới xây mọc lên san sát, màu sơn còn tươi rói. Ít ai ngờ cả xóm nghèo trước đây nay đều là tỷ phú. Có nhà giàu đến nỗi mua xe ô tô tiền tỷ nhưng bỏ không trong biệt thự, mỗi năm mang ra thuê tài xế chở đi chơi chỉ một đôi lần.', NULL, NULL),
	(38, 8, 'Cũng tại khu xóm Rẫy này, chúng tôi gặp được ông Võ Lâm, 74 tuổi. Hai vợ chồng ông tuy già nhưng vẫn thường ngày chăm sóc thanh long. Uống ngụm trà, hồi tưởng quá khứ ông không nghĩ có lúc mình lại sướng như thời điểm này. Với vườn thanh long 1.200 trụ, mỗi năm thu về hơn 200 triệu đồng, ông không còn lo cảnh lúc đói lúc no như thuở trước.', NULL, NULL);
/*!40000 ALTER TABLE `bai_viet` ENABLE KEYS */;

-- Dumping structure for table lap_trinh_web.chuc_vu
CREATE TABLE IF NOT EXISTS `chuc_vu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_chuc_vu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table lap_trinh_web.chuc_vu: ~4 rows (approximately)
/*!40000 ALTER TABLE `chuc_vu` DISABLE KEYS */;
REPLACE INTO `chuc_vu` (`id`, `ten_chuc_vu`) VALUES
	(1, 'Độc giả'),
	(2, 'Phóng viên'),
	(3, 'Biên tập viên'),
	(4, 'Administrator');
/*!40000 ALTER TABLE `chuc_vu` ENABLE KEYS */;

-- Dumping structure for table lap_trinh_web.chuyen_muc
CREATE TABLE IF NOT EXISTS `chuyen_muc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_chuyen_muc_id` int(11) DEFAULT NULL,
  `ten_chuyen_muc` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `tinh_trang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_chuyen_muc_loai_chuyen_muc_idx` (`loai_chuyen_muc_id`),
  CONSTRAINT `fk_chuyen_muc_loai_chuyen_muc` FOREIGN KEY (`loai_chuyen_muc_id`) REFERENCES `loai_chuyen_muc_` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lap_trinh_web.chuyen_muc: ~10 rows (approximately)
/*!40000 ALTER TABLE `chuyen_muc` DISABLE KEYS */;
REPLACE INTO `chuyen_muc` (`id`, `loai_chuyen_muc_id`, `ten_chuyen_muc`, `tinh_trang`) VALUES
	(1, 1, 'Kinh doanh', 1),
	(2, 2, 'Kinh doanh', 1),
	(3, 3, 'Đời sống', 1),
	(4, 4, 'Đời sống', 1),
	(5, 5, 'Y tế', 1),
	(6, 6, 'Y tế', 1),
	(7, 7, 'Pháp luật', 1),
	(8, 8, 'Pháp luật', 1),
	(9, 9, 'Thể thao', 1),
	(10, 10, 'Thể thao', 1);
/*!40000 ALTER TABLE `chuyen_muc` ENABLE KEYS */;

-- Dumping structure for table lap_trinh_web.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bai_dang_id` int(11) DEFAULT NULL,
  `nguoi_dung_id` int(11) DEFAULT NULL,
  `noi_dung_comment` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_bai_dang_idx` (`bai_dang_id`),
  KEY `fk_comment_nguoi_dung_idx` (`nguoi_dung_id`),
  CONSTRAINT `fk_comment_bai_dang` FOREIGN KEY (`bai_dang_id`) REFERENCES `bai_dang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_nguoi_dung` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lap_trinh_web.comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table lap_trinh_web.loai_chuyen_muc_
CREATE TABLE IF NOT EXISTS `loai_chuyen_muc_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai_chuyen_muc` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinh_trang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lap_trinh_web.loai_chuyen_muc_: ~10 rows (approximately)
/*!40000 ALTER TABLE `loai_chuyen_muc_` DISABLE KEYS */;
REPLACE INTO `loai_chuyen_muc_` (`id`, `ten_loai_chuyen_muc`, `tinh_trang`) VALUES
	(1, 'Nông sản', 1),
	(2, 'Hải sản', 1),
	(3, 'Văn hóa', 1),
	(4, 'Xã hội', 1),
	(5, 'Bảo hiểm', 1),
	(6, 'Sắc đẹp', 1),
	(7, 'An ninh nhân dân', 1),
	(8, 'An ninh quốc phòng', 1),
	(9, 'Thể thao trong nước', 1),
	(10, 'Thể thao quốc tế', 1);
/*!40000 ALTER TABLE `loai_chuyen_muc_` ENABLE KEYS */;

-- Dumping structure for table lap_trinh_web.nguoi_dung
CREATE TABLE IF NOT EXISTS `nguoi_dung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chuc_vu_id` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `ten_nguoi_dung` varchar(45) DEFAULT NULL,
  `bi_danh` varchar(45) DEFAULT NULL,
  `ngay_sinh` varchar(45) DEFAULT NULL,
  `so_dien_thoai` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  `tinh_trang` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nguoi_dung_role_idx` (`chuc_vu_id`),
  CONSTRAINT `fk_nguoi_dung_role` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table lap_trinh_web.nguoi_dung: ~5 rows (approximately)
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
REPLACE INTO `nguoi_dung` (`id`, `chuc_vu_id`, `username`, `password`, `ten_nguoi_dung`, `bi_danh`, `ngay_sinh`, `so_dien_thoai`, `email`, `dia_chi`, `tinh_trang`) VALUES
	(1, 1, 'a', '123', 'Đoàn Khải', NULL, '24/9/1997', '0961258746', 'khaidoan123@gmail.com', NULL, NULL),
	(2, 1, 'c', '123', 'Lê Văn Hưng', NULL, '20/3/1997', '0784456123', 'hungvanle@gmail.com', NULL, NULL),
	(3, 4, 'b', '123', 'Khánh Nguyễn', NULL, '27/1/1997', '0961456789', 'khanhnguyenXM123@gmail.com', NULL, NULL),
	(4, 3, 'd', '123', 'Khánh Hòa', NULL, '4/1/1997', '0954159784', 'hoanguyenhcmus@gmail.com', NULL, NULL),
	(5, 2, 'e', '123', 'Khoa Trần', NULL, '27/1/1997', '0961456789', 'Trankhoa@gmail.com', NULL, NULL);
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;

-- Dumping structure for table lap_trinh_web.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table lap_trinh_web.tag: ~10 rows (approximately)
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
REPLACE INTO `tag` (`id`, `tag_name`) VALUES
	(1, 'Nông sản'),
	(2, 'Hải sản'),
	(3, 'Văn hóa'),
	(4, 'Xã hội'),
	(5, 'Bảo hiểm'),
	(6, 'Sắc đẹp'),
	(7, 'An ninh nhân dân'),
	(8, 'An ninh quốc phòng'),
	(9, 'Thể thao trong nước'),
	(10, 'Thể thao quốc tế');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
