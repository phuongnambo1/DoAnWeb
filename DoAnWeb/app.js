var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var hbs = require('express-handlebars');
var home = require('./routes/Home');
var hbs_Sec = require('express-handlebars-sections');
var app = express();
var session = require('express-session');
var expressValidator = require('express-validator');

var BaiVietChiTiet = require('./routes/BaiVietChiTiet');
var taiKhoanController = require('./controllers/TaiKhoanController');
var docGiaController = require('./controllers/DocGiaController');
var phongVienController = require('./controllers/DocGiaController');

// view engine setup
app.engine('hbs', hbs({
  extname: 'hbs',
  defaultLayout: 'layout',
  helpers: {
    section: hbs_Sec(),
    xif: function (v1, v2, options) {
      if (v1 === v2) {
        return options.fn(this);
      }
      return options.inverse(this);
    }
  },
  layoutsDir: __dirname + '/views/templates/layouts/',
  partialsDir: path.join(__dirname, '/views/templates/partials',
  )
}));
app.use('/bai-viet-chi-tiet', express.static(__dirname + '/public'));
app.use('/taikhoan', express.static(__dirname + '/public'));
app.use('/docgia', express.static(__dirname + '/public'));
app.use('/phongvien', express.static(__dirname + '/public'));
// app.set('/bai-viet-chi-tiet/bai-viet/','/public/');
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
  res.redirect('/home');
});
app.use('/home', home);
app.use('/bai-viet-chi-tiet', BaiVietChiTiet);
app.use('/taikhoan', taiKhoanController);
app.use('/docgia', docGiaController);
app.use('/phongvien', phongVienController);

// session
app.use(session({
  secret: 'keyboard cat',
  resave: false,
  saveUninitialized: true,

}))

// Express Validator
app.use(expressValidator({
  errorFormatter: function (param, msg, value) {
    var namespace = param.split('.')
      , root = namespace.shift()
      , formParam = root;

    while (namespace.length) {
      formParam += '[' + namespace.shift() + ']';
    }
    return {
      param: formParam,
      msg: msg,
      value: value
    };
  }
}));

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function (err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function (err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});


module.exports = app;
