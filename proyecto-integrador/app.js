var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

let indexRouter = require('./routes/index');
let PostsRouter = require("./routes/post")
let userRouter = require("./routes/User")
let resultadobusquedaRouter = require ("./routes/resultadobusqueda")


var app = express();
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/posts', PostsRouter );
app.use('/user', userRouter);

app.use("/resultadobusqueda", resultadobusquedaRouter)
module.exports = app;
