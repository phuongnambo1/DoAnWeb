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
    res.render('Admin/admin',
        {
            layout: 'subLayout',
            displayDetail: 'false',
            displayDashboard: 'true',
            tagAdmin: 'BaiViet',
            BaiViet: baiVietDaPheDuyet,
            TableName: 'Tag bài viết'
        });
});

module.exports = router;