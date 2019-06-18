var express = require('express');
var data = require('../connection/ConnectDatabase');
var router = express.Router();

function getcmtByBaiDang(bai_dang_id){
    var query = `select * from comment where bai_dang_id = ` + bai_dang_id;
    data.load(query);
}

module.exports.getcmtByBaiDang = getcmtByBaiDang;