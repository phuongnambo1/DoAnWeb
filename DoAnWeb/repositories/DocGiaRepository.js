var data = require('../connection/ConnectDatabase');
var express = require('express');
var router = express.Router();

exports.getDocGiaById = docGiaId => {
    var sql = `select * from nguoi_dung where id = ${docGiaId}`;
    return data.load(sql);
}

exports.updateThongTin = user => {
    var sql = `update nguoi_dung set ten_nguoi_dung = '${user.ten_nguoi_dung}', email = '${user.email}', so_dien_thoai = '${user.so_dien_thoai}', dia_chi ='${user.dia_chi}'  where id = '${user.id}'`;
	return data.load(sql);
}
