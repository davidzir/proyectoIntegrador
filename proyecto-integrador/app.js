var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

let indexRouter = require('./routes/index');
let agregarPostRouter = require("./routes/agregarPost")
let detallePostRouter = require("./routes/detallepost")
let detalleusuarioRouter = require("./routes/detalleUsuario")
let headerlogueadoRouter = require("./routes/headerlogueado")
let headerdeslogueadoRouter = require("./routes/headerDeslogueado")
let footerRouter = require("./routes/footer")
let homeRouter = require("./routes/home")
let loginRouter = require("./routes/login")
let miperfilRouter = require("./routes/miperfil")
let registracionRouter = require("./routes/registracion")
let resultadobusquedaRouter = require ("./routes/resultadobusqueda")


var app = express();
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/agregarpost', agregarPostRouter );
app.use('/detallepost', detallePostRouter );
app.use('/detalleusuario', detalleusuarioRouter);
app.use("/headerlogueado",headerlogueadoRouter)
app.use("/headerdeslogueado",headerdeslogueadoRouter)
app.use("/footer", footerRouter)
app.use("/home", homeRouter)
app.use("/login", loginRouter)
app.use("/perfil", miperfilRouter)
app.use("/registracion",registracionRouter)
app.use("/resultadobusqueda", resultadobusquedaRouter)
module.exports = app;
