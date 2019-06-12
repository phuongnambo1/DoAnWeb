var express = require('express'),
    phongvienRepository = require('../repositories/PhongVienRepository');

var router = express.Router();
/* -------------- method GET ------------ */
router.get('/dapheduyet', (req, res) => {
    phongVienId = req.session.curUser.id;
    phongvienRepository.getBaiVietPheDuyet(phongVienId).then(rows => {
        if (rows.length > 0) {
            vm = {
                error: false,
                title: "Bài viết đã được phê duyệt",
                DSBaiviet: rows
            }
        }
        else{
            vm = {
                title: "Bài viết đã được phê duyệt",
                error: true,
                mess: "Không có bài viết nào được phê duyệt",
            }
        }
    });
    res.render('phongvien/baivietdaduocpheduyet', { layout: undefined });
});

router.get('/chuaduocpheduyet', (req, res) => {
    phongVienId = req.session.curUser.id;
    phongvienRepository.getBaiVietChuaPheDuyet(phongVienId).then(rows => {
        if (rows.length > 0) {
            vm = {
                error: false,
                title: "Bài viết đã chưa được phê duyệt",
                DSBaiviet: rows
            }
        }
        else{
            vm = {
                title: "Bài viết đã chưa được phê duyệt",
                error: true,
                mess: "Không có bài viết nào chưa được phê duyệt",
            }
        }
    });
    res.render('phongvien/baivietchuaduocpheduyet', { layout: undefined });
});

router.get('/daxuatban', (req, res) => {
    phongVienId = req.session.curUser.id;
    phongvienRepository.getBaiVietXuatBan(phongVienId).then(rows => {
        if (rows.length > 0) {
            vm = {
                error: false,
                title: "Bài viết đã được xuất bản",
                DSBaiviet: rows
            }
        }
        else{
            vm = {
                title: "Bài viết đã được xuất bản",
                error: true,
                mess: "Không có bài viết nào được xuất bản",
            }
        }
    });
    res.render('phongvien/baivietdaxuatban', { layout: undefined });
});

router.get('/bituchoi', (req, res) => {
    phongVienId = req.session.curUser.id;
    phongvienRepository.getBaiVietTuChoi(phongVienId).then(rows => {
        if (rows.length > 0) {
            vm = {
                error: false,
                title: "Bài viết bị từ chối",
                DSBaiviet: rows
            }
        }
        else{
            vm = {
                title: "Bài viết bị từ chối",
                error: true,
                mess: "Không có bài viết nào bị từ chối",
            }
        }
    });
    res.render('phongvien/baivietbituchoi', { layout: undefined });
});

router.get('/thongtinchitiet/:id', function (req, res, next) {
    var phongVienId = req.params.id;
    phongvienRepository.getPhongVienById(phongVienId).then(data => {
        if (data.length > 0) {
            user = {
                ten_nguoi_dung: data[0].ten_nguoi_dung,
                ngay_sinh: data[0].ngay_sinh,
                bi_danh: data[0].bi_danh,
                so_dien_thoai: data[0].so_dien_thoai,
                email: data[0].email,
                dia_chi: data[0].dia_chi
            }
        }
    });
    res.render('phongvien/capnhatthongtindocgia',
        {
            // phongvien: user,
            layout: undefined,
        });
});
/* -------------- method PUT ------------ */

/* Cap Nhat Thong Tin Doc Gia */
router.put('/thongtinchitiet/:id', function (req, res) {
    // var docGiaId = req.params.id;
    if (req.body.ten_nguoi_dung.length != 0 || req.body.email != 0 || req.body.bi_danh != 0 || req.body.sdt != 0 || req.body.address != 0) {
        var user = {
            // id = req.params.id,
            ten_nguoi_dung: req.body.ten_nguoi_dung,
            email: req.body.email,
            bi_danh: req.body.bi_danh,
            so_dien_thoai: req.body.sdt,
            dia_chi: req.body.address
        };
        phongvienRepository.updateThongTin(user).then(data => {
            if (data.length > 0) {
                vm = {
                    error: false
                }
            }
            else {
                vm = {
                    error: true,
                    errMes: "Cập nhật thông tin phóng viên không thành công !!"
                }
            }
            res.render('phongvien/capnhatthongtindocgia', 
            { 
                // phongvien: user,
                // error: vm,
                layout: undefined })
        });
    }
});


module.exports = router;