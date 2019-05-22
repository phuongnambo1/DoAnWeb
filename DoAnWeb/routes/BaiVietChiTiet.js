var express = require('express');
var router = express.Router();

router.get('/:id', function(req, res, next) {
    console.log("vao dc rzzz");
    res.render('baiviet/bai-viet-chi-tiet', {BaiViet: req.params.id});
});
  
module.exports = router;