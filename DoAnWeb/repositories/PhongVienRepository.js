var data = require('../connection/ConnectDatabase');
var express = require('express');
var router = express.Router();

exports.getPhongVienById = phongvienId => {
    var sql = `select * from nguoi_dung where id = ${phongvienId} and chuc_vu_id = 2`;
    return data.load(sql);
}

exports.getBaiVietPheDuyet = phongvienId => {
    var sql = `select * from bai_dang where nguoi_dung_id = ${phongvienId} and tinh_trang = 'Được duyệt'`;
    return data.load(sql);
}

exports.getBaiVietChuaPheDuyet = phongvienId => {
    var sql = `select * from bai_dang where nguoi_dung_id = ${phongvienId} and tinh_trang = 'Chưa phê duyệt'`;
    return data.load(sql);
}

exports.getBaiVietXuatBan = phongvienId => {
    var sql = `select * from bai_dang where nguoi_dung_id = ${phongvienId} and tinh_trang = 'Xuât bản'`;
    return data.load(sql);
}

exports.getBaiVietTuChoi = phongvienId => {
    var sql = `select * from bai_dang where nguoi_dung_id = ${phongvienId} and tinh_trang = 'Từ chối'`;
    return data.load(sql);
}

exports.updateThongTin = user => {
    var sql = `update nguoi_dung set ten_nguoi_dung = '${user.ten_nguoi_dung}', email = '${user.email}', bi_danh = '${user.bi_danh}', so_dien_thoai = '${user.so_dien_thoai}', dia_chi ='${user.dia_chi}'  where id = '${user.id}'`;
    return data.load(sql);
}
