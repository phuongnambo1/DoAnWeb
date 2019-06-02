var express = require('express');
var router = express.Router();

var taikhoanRepository = require('../repositories/TaiKhoanRepository');
/*------------------ DANG NHAP --------------------------*/
router.get('/dangnhap', function (req, res, next) {
    res.render('taikhoan/login', { layout: undefined });
});

router.get('/dangnhapnguoidung', (req, res) => {
    var user = {
        username: req.body.usernamelogin,
        password: req.body.passwordlogin
    };
    console.log(user.username + "-" + user.password);
    taikhoanRepository.login(user).then(rows => {
        if (rows.length > 0) {
            // req.session.isLogged = true;
            // req.session.curUser = rows[0];
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
                username: req.body.username,
                password: req.body.password,
                ten_nguoi_dung: req.body.ten_nguoi_dung,
                bi_danh: '',
                ngay_sinh: req.body.dob,
                so_dien_thoai: req.body.sdt,
                email: req.body.email,
                dia_chi: req.body.address,
                tinh_trang: 1
            };
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
    var user = {
        // TODO: add session
        // username: req.session.curUser.username,
        // password: sha256(req.body.oldpw).toString(),
        // newpassword: sha256(req.body.newpw).toString()
    };
    taikhoanRepository.login(user).then(rows => {
        if (rows.length > 0) {
            taikhoanRepository.changePassword(user).then(row => {
                res.render('/')
            })
        }
        else {
            /* Show message err */
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