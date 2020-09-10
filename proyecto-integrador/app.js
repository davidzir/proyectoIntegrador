var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


// traemos las rutas

let agregarPostRouter = require("./routes/agregarPost")
let detallePostRouter = require("./routes/detallepost")


let usuarioRouter = require('./routes/usuario')
let homeRouter = require("./routes/home")



var app = express();

// para que funcionen las views
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');app.use(logger('dev'));


app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));



// Rutas

app.use('/agregarpost', agregarPostRouter);
app.use('/detallepost', detallePostRouter);


app.use("/home", homeRouter)
app.use("/resultadobusqueda", homeRouter)

app.use("/login", usuarioRouter)
app.use("/miPerfil", usuarioRouter)
app.use("/registracion", usuarioRouter)
app.use('/detalleusuario', usuarioRouter);







module.exports = app;
