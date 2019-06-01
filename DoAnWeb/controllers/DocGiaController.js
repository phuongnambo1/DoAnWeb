var express = require('express');
var router = express.Router();

var docgiaRepository = require('../repositories/DocGiaRepository');

router.get('/:id', function (req, res, next) {
    var docGiaId = req.params.id;
    var user;
    docgiaRepository.getDocGiaById(docGiaId).then(data => {
        {
            user = data;
        }
    });
    res.render('docgia/capnhatthongtindocgia', user, { layout: undefined });
});

/* Cap Nhat Thong Tin Doc Gia */
router.put('/:id', function (req, res) {
    // var docGiaId = req.params.id;
    var user = {
        // id = req.params.id,
        ten_nguoi_dung: req.body.ten_nguoi_dung,
        email: req.body.email,
        so_dien_thoai: req.body.sdt,
        dia_chi: req.body.address
    };
    docgiaRepository.updateThongTin(user).then(data => {
        res.render('docgia/capnhatthongtindocgia', user, { layout: undefined })
    });
});


module.exports = router;