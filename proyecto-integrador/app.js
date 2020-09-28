var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


// traemos las rutas


let postRouter = require('./routes/post')
let userRouter = require('./routes/user')
let resultadoBusquedaRouter = require("./routes/resultadoBusqueda")




var app = express();

// para que funcionen las views
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');app.use(logger('dev'));


app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));



// Rutas



app.use('/post', postRouter);
app.use('/user', userRouter);
app.use("/resultadoBusqueda", resultadoBusquedaRouter)







module.exports = app;
