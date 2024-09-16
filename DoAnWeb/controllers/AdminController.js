var express = require('express');

var router = express.Router();

router.get('/danhmuc',function (req, res, next) {
    var danhmuc = [{
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 1
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 3
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 4
    }];
    res.render('Admin/admin',
        {
            layout: 'subLayout',
            displayDetail: 'false',
            displayDashboard: 'true',
            tagAdmin: 'DanhMuc',
            Catalogy: danhmuc,
            TableName: 'Danh mục bài viết'
        });
});
router.post('/danhmuc',function (req, res, next) {
    console.log(req.body);
    var danhmuc = [{
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 1
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 2
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 3
    }];
    if(req.body.isDelete === "true"){
        // xoa khong ho tro cho html 5 nen goi post luon
        console.log("dele3te");
        //load lai data roi render lai
        res.render('Admin/admin',
            {
                layout: 'subLayout',
                displayDetail: 'false',
                displayDashboard: 'true',
                tagAdmin: 'DanhMuc',
                Catalogy: danhmuc,
                TableName: 'Danh mục bài viết'
            });
    } else
    {
        // them thi su ly cho nay
        var dt = new Date();
        var date = dt.getDate()+ "/" + dt.getMonth()+ "/" + dt.getFullYear();
        var newDanhmuc= {
            Name: req.body.Name,
            Status: req.body.Status,
            Type: req.body.Type,
            Date: date,
            Id: 5
        };
        // luu cai new danh muc xuong database
    
        //load lai cai danh muc
       danhmuc.push(newDanhmuc);
        res.render('Admin/admin',
            {
                layout: 'subLayout',
                displayDetail: 'false',
                displayDashboard: 'true',
                tagAdmin: 'DanhMuc',
                Catalogy: danhmuc,
                TableName: 'Danh mục bài viết'
            });
    }
});


//tag
router.get('/tag',function (req, res, next) {
    var tags = [{
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 1
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 2
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 3
    }];
    res.render('Admin/admin',
        {
            layout: 'subLayout',
            displayDetail: 'false',
            displayDashboard: 'true',
            tagAdmin: 'Tag',
            Tags: tags,
            TableName: 'Tag bài viết'
        });
});
router.post('/tag',function (req, res, next) {
    console.log(req.body);
    var tags = [{
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 1
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 2
    },
    {
        Name: '123',
        Status: 'áv',
        Type: 'ád',
        Date: 'ád',
        Id: 3
    }];
    if(req.body.isDelete === "true"){
        // xoa khong ho tro cho html 5 nen goi post luon
        console.log("dele3te");
        //load lai data roi render lai
        res.render('Admin/admin',
            {
                layout: 'subLayout',
            displayDetail: 'false',
            displayDashboard: 'true',
            tagAdmin: 'Tag',
            Tags: tags,
            TableName: 'Tag bài viết'
            });
    } else
    {
        // them thi su ly cho nay
        var dt = new Date();
        var date = dt.getDate()+ "/" + dt.getMonth()+ "/" + dt.getFullYear();
        var tag= {
            Name: req.body.Name,
            Status: req.body.Status,
            Type: req.body.Type,
            Date: date,
            Id: 5
        };
        // luu cai new danh muc xuong database
    
        //load lai cai danh muc
       tags.push(tag);
        res.render('Admin/admin',
            {
                layout: 'subLayout',
            displayDetail: 'false',
            displayDashboard: 'true',
            tagAdmin: 'Tag',
            Tags: tags,
            TableName: 'Tag bài viết'
            });
    }
});

//bai viet 
router.get('/baiviet',function (req, res, next) {
    var baiVietDaPheDuyet = [{
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
    var baiVietChuaPheDuyet = [{
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
    var baiVietLoaiBo = [{
        id: '1',
        titleBV: 'Testáe1',
        tags: 'Nông sản',
        author: 'Kha',
        date: '12/06/2019'
    },{
        id: '2',
        titleBV: 'Tetitle2',
        tags: 'Nôngsản2',
        author: 'Khá',
        date: '12/060192'
    },{
        id: '3',
        titleBV: 'Teitle3',
        tags: 'Nông sản3',
        author: 'Khánh',
        date: '12/06/019'
    }];
    res.render('Admin/admin',
        {
            layout: 'subLayout',
            displayDetail: 'false',
            displayDashboard: 'true',
            tagAdmin: 'BaiViet',
            BaiVietDaDuyet: baiVietDaPheDuyet,
            BaiVietLoaiBo: baiVietLoaiBo,
            BaiVietChuaDuyet: baiVietChuaPheDuyet,
            TableName: 'Tag bài viết'
        });
});
router.post('/baiviet',function (req, res, next) {
    console.log(req.body);

    if(req.body.action === "remove"){ //remove mot bai viet trong bai da duyet va chuyen qua bài viết đã loại bỏ
        //xử lý ở đây, chủ yếu đổi trạng thái nó lại thành đã loại bỏ
    } else if (req.body.action === "approve") {
        //xử lý ở đây, chủ yếu đổi trạng thái nó lại thành đã phê duyệt để chuyển nó lên bảng 1
    } else if(req.body.action === "recover"){
        //xử lý ở đây, chủ yếu đổi trạng thái nó lại thành đã phê duyệt để chuyển nó lên bảng 1
    }
    res.redirect('http://localhost:8000/admin/baiviet');
});

router.get('/nguoidung',function (req, res, next) {
    var user = [{
        Name: 'Khánh',
        Sex: 'Nam',
        Date:'320125',
        Role: 'user',
        Id: 1
    }, {
        Name: 'Khánh1',
        Sex: 'Nam',
        Date:'320125',
        Role: 'user',
        Id: 2
    }
    , {
        Name: 'Khánh2',
        Sex: 'Nam',
        Date:'320125',
        Role: 'user',
        Id: 3
    }
    , {
        Name: 'Khánh3',
        Sex: 'Nam',
        Date:'320125',
        Role: 'user',
        Id: 4
    }];
    res.render('Admin/admin',
    {
        layout: 'subLayout',
        displayDetail: 'false',
        displayDashboard: 'true',
        tagAdmin: 'Users',
        Users: user,
        TableName: 'Quản lý người dùng'
    });
});
router.post('/nguoidung',function (req, res, next) {
    console.log(req.body);
    if(req.body.action === "lock"){ 
        //khóa account
    } else if (req.body.action === "delete") {
        //xóa
    } 
    res.redirect('http://localhost:8000/admin/nguoidung');
});

module.exports = router;