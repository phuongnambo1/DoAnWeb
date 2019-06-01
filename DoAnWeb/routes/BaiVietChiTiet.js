var express = require('express');
var router = express.Router();

router.get('/:id', function (req, res, next) {
  // get bài viết by id: id lấy ra từ: req.params.id
  var BaiViet = [
    {}
  ];
  var BaiVietLienQuan = [
    {
      id: 1,
      tieu_de: "Giá cao su xuất khẩu vẫn ở mức thấp ",
      hinh_anh: "assets/img/cao-su.png",
      tags: "Nông sản",
      ngay_dang: "2019-04-10",
      noi_dung_tom_tat: `Theo báo cáo của Trung tâm tin học & Thống kê Bộ NN&PTNT, khối lượng xuất khẩu cao
          su tháng 2 năm 2019
          của Việt nam ước đạt 71 nghìn tấn với giá trị đạt 93 triệu USD. Với ước tính này,
          khối lượng xuất khẩu
          cao su 2 tháng đầu năm 2019 đạt 228 nghìn tấn và 293 triệu USD, tăng 22,4% về khối
          lượng và tăng 6,8% về
          giá trị so với cùng kỳ năm 2018.`
    },
    {
      id: 2,
      tieu_de: "Dak Lak cần nâng cao giá trị hạt cafe",
      hinh_anh: "assets/img/cafe.png",
      tags: "Nông sản",
      ngay_dang: "2019-01-08",
      noi_dung_tom_tat: `Cà phê là mặt hàng nông sản chủ lực, mang về ngoại tệ lớn cho tỉnh,
        nhưng lượng cà phê chế biến sâu vẫn còn khiêm tốn. Với những lợi thế sẵn
        có thì việc thúc đẩy công nghiệp chế biến sẽ nâng cao giá trị, khẳng định
        vị thế cho mặt hàng này`
    },
    {
      id: 3,
      tieu_de: "Dak Lak cần nâng cao giá trị hạt cafe",
      hinh_anh: "assets/img/cafe.png",
      tags: "Nông sản",
      ngay_dang: "2019-01-08",
      noi_dung_tom_tat: `Cà phê là mặt hàng nông sản chủ lực, mang về ngoại tệ lớn cho tỉnh,
        nhưng lượng cà phê chế biến sâu vẫn còn khiêm tốn. Với những lợi thế sẵn
        có thì việc thúc đẩy công nghiệp chế biến sẽ nâng cao giá trị, khẳng định
        vị thế cho mặt hàng này`
    },
    {
      id: 4,
      tieu_de: "Giá cao su xuất khẩu vẫn ở mức thấp ",
      hinh_anh: "assets/img/cao-su.png",
      tags: "Nông sản",
      ngay_dang: "2019-04-10",
      noi_dung_tom_tat: `Theo báo cáo của Trung tâm tin học & Thống kê Bộ NN&PTNT, khối lượng xuất khẩu cao
        su tháng 2 năm 2019
        của Việt nam ước đạt 71 nghìn tấn với giá trị đạt 93 triệu USD. Với ước tính này,
        khối lượng xuất khẩu
        cao su 2 tháng đầu năm 2019 đạt 228 nghìn tấn và 293 triệu USD, tăng 22,4% về khối
        lượng và tăng 6,8% về
        giá trị so với cùng kỳ năm 2018.`
    },
    {
      id: 5,
      tieu_de: "Dak Lak cần nâng cao giá trị hạt cafe",
      hinh_anh: "assets/img/cafe.png",
      tags: "Nông sản",
      ngay_dang: "2019-01-08",
      noi_dung_tom_tat: `Cà phê là mặt hàng nông sản chủ lực, mang về ngoại tệ lớn cho tỉnh,
      nhưng lượng cà phê chế biến sâu vẫn còn khiêm tốn. Với những lợi thế sẵn
      có thì việc thúc đẩy công nghiệp chế biến sẽ nâng cao giá trị, khẳng định
      vị thế cho mặt hàng này`
    }
  ];
  res.render('baiviet/bai-viet-chi-tiet',
    {
      Page: "BaiVietChiTiet",
      mainBV: BaiViet,
      BVLQ: BaiVietLienQuan,
    });
});

module.exports = router;