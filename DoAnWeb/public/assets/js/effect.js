var slideIndex = 0;
var baiViet1 = {
  url: "gia-cao-su-xuat-khau-van-o-muc-thap-nhat",
  image: "assets/img/cao-su.png",
  header: "Giá cao su xuất khẩu vẫn ở mức thấp",
  displayText: "Theo báo cáo của Trung tâm tin học & Thống kê Bộ NN&PTNT, khối lượng xuất khẩu cao su tháng 2 năm 2019 của Việt nam ước đạt 71 nghìn tấn với giá trị đạt 93 triệu USD. Với ước tính này, khối lượng xuất khẩu cao su 2 tháng đầu năm 2019 đạt 228 nghìn tấn và 293 triệu USD, tăng 22,4% về khối lượng và tăng 6,8% về giá trị so với cùng kỳ năm 2018.",
}
var baiViet2 = {
  url: "Dak-Lak-can-nang-cao-gia-tri-hat-cafe",
  image: "assets/img/cafe.png",
  header: "Dak Lak cần nâng cao giá trị hạt cafe",
  displayText: "Theo Cục Chế biến và Phát triển thị trường nông sản Bộ Nông nghiệp và Phát triển nông thôn, diện tích cà phê cả nước đạt khoảng 664 nghìn héc-ta. Cà phê Việt Nam hiện được xuất sang 80 quốc gia và vùng lãnh thổ trên thế giới với kim ngạch xuất khẩu trên 3 tỷ USD, chiếm 14% thị phần và 10,4% giá trị cà phê nhân xuất khẩu toàn cầu. Mặc dù được đánh giá là “cây tỷ đô” có kim ngạch xuất khẩu cao trong nhóm hàng nông sản của Việt Nam, nhưng tốc độ tăng trưởng kim ngạch chỉ ở mức bình quân 6,57%; giá trị hạt cà phê Việt Nam chưa được đánh giá cao. Nguyên nhân chủ yếu do cà phê Việt Nam chịu nhiều biến động của thị trường cà phê thế giới, cơ cấu sản phẩm cà phê có giá trị gia tăng cao vẫn còn thấp, chỉ 7% cà phê Việt Nam được chế biến sâu, xuất khẩu cà phê nhân chiếm tỷ trọng lớn 93%."
}
var baiViet3 = {
  url: "scl-1",
  image: "assets/img/lua-gao-hinh2.png",
  header: "Giá lúa gạo ở các tỉnh đồng bằng sông Cửu Long tăng mạnh",
  displayText: "Vụ Đông Xuân năm 2018-2019 ở Khu vực Đồng bằng sông Cửu Long bắt đầu vào vụ thu hoạch, nhưng từ sau Tết Nguyên đán đến ngày 20/2, hầu hết diện tích lúa của nông dân vùng Đồng bằng sông Cửu Long vẫn “nằm im,” chưa được thương lái, doanh nghiệp thu mua.Nhiều nơi nông dân sốt ruột vì lúa đến độ chín rộ, để lâu sẽ bị rơi rụng, khó thu hoạch, nguy cơ thua lỗ nặng trước mắt."
}
var baiViet4 = {
  url: "vrg-1",
  image: "assets/img/cao-su-hinh6.png",
  header: "Nghiêm túc thực hiện chế biến, tiêu thụ sản phẩm cao su thương hiệu VRG",
  displayText: "Theo đó, năm 2018 là năm đầu tiên VRG triển khai sản xuất sản phẩm cao su thương hiệu VRG, với nhãn hàng hóa mới, có chất lượng đạt yêu cầu TCCS 112:2017 của VRG. VRG khuyến khích các công ty thành viên chủ động trong việc sản xuất và tiêu thụ, nỗ lực cùng với Tập đoàn quảng bá sản phẩm cao su VRG, quảng bá thương hiệu cao su của VRG."
}
var baiViet5 = {
  url: "san-luong-tieu-2019",
  image: "assets/img/tieu-hinh-2.png",
  header: "Năm 2019, sản lượng hạt tiêu sẽ đạt khoảng 200.000 tấn",
  displayText: "Theo Cục Xuất nhập khẩu (Bộ Công Thương), giá hạt tiêu tại khu vực Tây Nguyên và miền Nam sau kỳ nghỉ Tết Nguyên đán ổn định ở mức 46.000 đồng/kg - mức giá thấp nhất trong vòng gần 10 năm trở lại đây."
}
listBaiViet = [baiViet1, baiViet2, baiViet3, baiViet4, baiViet5];
function nextImage() {
  console.log("next");
  slideIndex++;
  if(slideIndex > 4) {
    slideIndex = 0;
  }
  updateBanner();
}
function preImage() {
  console.log("pre");
  slideIndex--;
  if(slideIndex < 0) {
    slideIndex = 4;
  }
  updateBanner();
}
function updateBanner() {
  var banner = document.getElementById("slide-banner");
  var header = document.getElementById("header-banner");
  var content = document.getElementById("text-display");
  banner.style.backgroundImage = "url("+ listBaiViet[slideIndex].image +")";
  header.innerText = listBaiViet[slideIndex].header;
  content.innerText = listBaiViet[slideIndex].displayText;
}
function plusDivs() {
  slideIndex++;
  if(slideIndex > 4) {
    slideIndex = 0;
  }
  updateBanner();
  setTimeout(plusDivs, 5000);
}
function moreInfo() {
  // location.replace("bai-viet-chi-tiet.html#" + listBaiViet[slideIndex].url);
}

plusDivs();