var express = require('express'),
    phongvienRepository = require('../repositories/PhongVienRepository');

var router = express.Router();
/* -------------- method GET ------------ */
// router.get('/dapheduyet', (req, res) => {
//     phongVienId = req.session.curUser.id;
//     phongvienRepository.getBaiVietPheDuyet(phongVienId).then(rows => {
//         if (rows.length > 0) {
//             vm = {
//                 error: false,
//                 title: "Bài viết đã được phê duyệt",
//                 DSBaiviet: rows
//             }
//         }
//         else{
//             vm = {
//                 title: "Bài viết đã được phê duyệt",
//                 error: true,
//                 mess: "Không có bài viết nào được phê duyệt",
//             }
//         }
//     });
//     res.render('phongvien/baivietdaduocpheduyet', { layout: undefined });
// });

// router.get('/chuaduocpheduyet', (req, res) => {
//     phongVienId = req.session.curUser.id;
//     phongvienRepository.getBaiVietChuaPheDuyet(phongVienId).then(rows => {
//         if (rows.length > 0) {
//             vm = {
//                 error: false,
//                 title: "Bài viết đã chưa được phê duyệt",
//                 DSBaiviet: rows
//             }
//         }
//         else{
//             vm = {
//                 title: "Bài viết đã chưa được phê duyệt",
//                 error: true,
//                 mess: "Không có bài viết nào chưa được phê duyệt",
//             }
//         }
//     });
//     res.render('phongvien/baivietchuaduocpheduyet', { layout: undefined });
// });

// router.get('/daxuatban', (req, res) => {
//     phongVienId = req.session.curUser.id;
//     phongvienRepository.getBaiVietXuatBan(phongVienId).then(rows => {
//         if (rows.length > 0) {
//             vm = {
//                 error: false,
//                 title: "Bài viết đã được xuất bản",
//                 DSBaiviet: rows
//             }
//         }
//         else{
//             vm = {
//                 title: "Bài viết đã được xuất bản",
//                 error: true,
//                 mess: "Không có bài viết nào được xuất bản",
//             }
//         }
//     });
//     res.render('phongvien/baivietdaxuatban', { layout: undefined });
// });

// router.get('/bituchoi', (req, res) => {
//     phongVienId = req.session.curUser.id;
//     phongvienRepository.getBaiVietTuChoi(phongVienId).then(rows => {
//         if (rows.length > 0) {
//             vm = {
//                 error: false,
//                 title: "Bài viết bị từ chối",
//                 DSBaiviet: rows
//             }
//         }
//         else{
//             vm = {
//                 title: "Bài viết bị từ chối",
//                 error: true,
//                 mess: "Không có bài viết nào bị từ chối",
//             }
//         }
//     });
//     res.render('phongvien/baivietbituchoi', { layout: undefined });
// });

router.get('/thongtinchitiet', function (req, res, next) {
    //lấy id từ seasion= req.seasion.CurUser.Id;
    //Lấy tất cả bài viết theo Id đó.
    //đổ thông tin vào bải bài viết.
    // <td class="column100 column1" data-column="column1">titleBV</td>
    //                         <td class="column100 column2" data-column="column2">tags</td>
    //                         <td class="column100 column3" data-column="column3">author</td>
    //                         <td class="column100 column4" data-column="column4">date</td>
    //                         <td class="column100 column5" data-column="column5">
    //                             <a> Edit </a>
    //                             |
    //                             <a> Details </a>
    //                             |
    //                             <a onclick="onRowClickDelete('{{id}}')"> Delete </a>
    //                         </td>
    var baiViet = [{
        id: '1',
        titleBV: 'Test title1',
        tags: 'Nông sản',
        author: 'Khánh',
        date: '12/06/2019'
    },{
        id: '2',
        titleBV: 'Test title2',
        tags: 'Nông sản2',
        author: 'Khánh',
        date: '12/06/20192'
    },{
        id: '3',
        titleBV: 'Test title3',
        tags: 'Nông sản3',
        author: 'Khánh',
        date: '12/06/2019'
    }];
    res.render('phongvien/capnhatthongtinphongvien',
        {
            layout: 'subLayout',
            displayDetail: 'true',
            BaiViet: baiViet
        });
});
/* -------------- method PUT ------------ */

/* Cap Nhat Thong Tin Doc Gia */
// router.put('/thongtinchitiet/:id', function (req, res) {
//     // var docGiaId = req.params.id;
//     if (req.body.ten_nguoi_dung.length != 0 || req.body.email != 0 || req.body.bi_danh != 0 || req.body.sdt != 0 || req.body.address != 0) {
//         var user = {
//             // id = req.params.id,
//             ten_nguoi_dung: req.body.ten_nguoi_dung,
//             email: req.body.email,
//             bi_danh: req.body.bi_danh,
//             so_dien_thoai: req.body.sdt,
//             dia_chi: req.body.address
//         };
//         phongvienRepository.updateThongTin(user).then(data => {
//             if (data.length > 0) {
//                 vm = {
//                     error: false
//                 }
//             }
//             else {
//                 vm = {
//                     error: true,
//                     errMes: "Cập nhật thông tin phóng viên không thành công !!"
//                 }
//             }
//             res.render('phongvien/capnhatthongtindocgia', 
//             { 
//                 // phongvien: user,
//                 // error: vm,
//                 layout: undefined })
//         });
//     }
// });


module.exports = router;