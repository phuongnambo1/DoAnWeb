var express = require('express'),
    docgiaRepository = require('../repositories/DocGiaRepository');

var router = express.Router();

var docgiaRepository = require('../repositories/DocGiaRepository');

router.get('/thongtinchitiet/:id', function (req, res, next) {
    var docGiaId = req.params.id;
    docgiaRepository.getDocGiaById(docGiaId).then(data => {
        if (data.length > 0) {
            user = {
                ten_nguoi_dung: data[0].ten_nguoi_dung,
                ngay_sinh: data[0].ngay_sinh,
                so_dien_thoai: data[0].so_dien_thoai,
                email: data[0].email,
                dia_chi: data[0].dia_chi
            }
        }
    });
    res.render('docgia/capnhatthongtindocgia',
        {
            // docgia: user,
            layout: undefined,
        });
});

/* Cap Nhat Thong Tin Doc Gia */
router.put('/thongtinchitiet/:id', function (req, res) {
    // var docGiaId = req.params.id;
    if (req.body.ten_nguoi_dung.length != 0 || req.body.email != 0 || req.body.sdt != 0 || req.body.address != 0) {
        var user = {
            // id = req.params.id,
            ten_nguoi_dung: req.body.ten_nguoi_dung,
            email: req.body.email,
            so_dien_thoai: req.body.sdt,
            dia_chi: req.body.address
        };
        docgiaRepository.updateThongTin(user).then(data => {
            if (data.length > 0) {
                vm = {
                    error: false
                }
            }
            else {
                vm = {
                    error: true,
                    errMes: "Cập nhật thông tin độc giả không thành công !!"
                }
            }
            res.render('docgia/capnhatthongtindocgia', 
            { 
                // docgia: user,
                // error: vm,
                layout: undefined })
        });
    }
});


module.exports = router;