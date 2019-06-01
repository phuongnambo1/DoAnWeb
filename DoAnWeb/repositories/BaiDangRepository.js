var data = require('../connection/ConnectDatabase');
var express = require('express');
var router = express.Router();

exports.createBaiDang = baiDang => {
    var sql =
        `insert into bai_dang(chuyen_muc_id, nguoi_dung_id, tieu_de, ngay_dang, hinh_anh,t ag, noi_dung_tom_tat,luot_xem,tinh_trang)
         values('${baiDang.chuyen_muc_id}','${baiDang.nguoi_dung_id}','${baiDang.tieu_de}','${baiDang.ngay_dang}',
         'null','${baiDang.tag}','${baiDang.noi_dung_tom_tat}','${baiDang.luot_xem}','${baiDang.tinh_trang}')`;
    return data.save(sql);
}

exports.getBaiDangById = baiDangId => {
    var sql = `select * from bai_dang where bai_dang_id = ${baiDangId}`;
    return data.load(sql);
}

module.exports = router;