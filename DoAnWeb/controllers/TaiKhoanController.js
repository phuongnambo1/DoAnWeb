var express = require('express');
var router = express.Router();

var taikhoanRepository = require('../repositories/TaiKhoanRepository');
/*------------------ DANG NHAP --------------------------*/
router.get('/dangnhap', function (req, res, next) {
    res.render('taikhoan/login', { layout: undefined });
});

router.get('/dangnhapnguoidung', (req, res) => {
    var user = {
        userName: req.body.username,
        passWord: req.body.password
    };
    console.log(user.username + "-" + user.password);
    taikhoanRepository.login(user).then(rows => {
        if (rows.length > 0) {
            req.session.isLogged = true;
            req.session.curUser = rows[0];
            console.log("dang nhap thanh cong");
            var url = req.header('Referer');
            if (url = "http://localhost:8000/taikhoan/dangnhap")
                res.redirect("/");
            else
                res.redirect('/home');
        } else {
            console.log("dang nhap that bai");
            var vm = {
                showError: true,
                errorMsg: 'Login failed'
            };
            res.render('taikhoan/login', { layout: undefined });
        }
    });
});

/*------------------ DANG KY--------------------------*/
router.post('/dangky', (req, res) => {
    var mes;
    taikhoanRepository.checkAccountExist(req.body.username).then(value => {
        if (value[0].total == 0) {
            var user = {
                chuc_vu: 1,
                username: req.body.ten_dang_nhap,
                password: req.body.mat_khau,
                ten_nguoi_dung: req.body.ten_nguoi_dung,
                bi_danh: '',
                ngay_sinh: req.body.ngay_sinh,
                so_dien_thoai: req.body.so_dien_thoai,
                email: req.body.email,
                dia_chi: req.body.dia_chi,
                tinh_trang: 1
            };
            console.log(user);
            mes = 'Đăng ký tài khoản thành công !!';
            taikhoanRepository.add(user).then(value => {
                res.render('taikhoan/login', { layout: undefined });
            });
        }
        else {
            mes = 'Đăng ký tài khoản thất bại !! Tên người dùng đã tồn tại';
            res.render('taikhoan/login', { layout: undefined });
        }
    })
});

/*------------------ DOI MAT KHAU --------------------------*/
router.get('/doimatkhau', (req, res) => {
    res.render('taikhoan/doimatkhau', { layout: undefined });
});

router.put('/doimatkhau', function (req, res) {
    req.checkBody('matkhau','Mật khẩu không được để trống').notEmpty();
    req.checkBody('matkhau1', 'Mật khẩu mới không được để trống').notEmpty();
    req.checkBody('matkhau1', 'Mật khẩu không được nhỏ hơn 6 kí tự').isLength({ min: 6 });
    req.checkBody('matkhau2', 'Mật khẩu không trùng.').equals(req.body.matkhau1);
    var errors = req.validationErrors();

    var user = {
        // TODO: add session
        username: req.session.curUser.username,
        password: req.body.matkhau
    };
    taikhoanRepository.login(user).then(rows => {
        if (rows.length > 0) {
            taikhoanRepository.changePassword(user).then(row => {
                res.render('/', 
                {
                    message: "Đổi mật khẩu thành công !!"
                })
            })
        }
        if(errors) {
            res.render('taikhoan/doimatkhau', 
            { 
                errors: errors,
                layout: undefined });
        }
    });
});

router.get('/quenmatkhau', (req, res) => {
    res.render('taikhoan/quenmatkhau', { layout: undefined });
});

router.put('/quenmatkhau', function (req, res) {
    var user = {
        // TODO: add session
        // username: req.session.curUser.username,
    };

});

module.exports = router;