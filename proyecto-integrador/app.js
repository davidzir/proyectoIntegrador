var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


// traemos las rutas

// let indexRouter = require('./routes/index');
let agregarPostRouter = require("./routes/agregarPost")
let detallePostRouter = require("./routes/detallepost")
// let headerlogueadoRouter = require("./routes/headerlogueado")
// let headerdeslogueadoRouter = require("./routes/headerDeslogueado")
// let footerRouter = require("./routes/footer")

// let resultadobusquedaRouter = require ("./routes/resultadobusqueda")
// let loginRouter = require("./routes/login")
// let miperfilRouter = require("./routes/miperfil")
// let registracionRouter = require("./routes/registracion")
// let detalleusuarioRouter = require("./routes/detalleUsuario")



// estas son las q van + un postRouter
let usuarioRouter = require('./routes/usuario')
let homeRouter = require("./routes/home")




var app = express();
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));



// Rutas

// app.use('/', indexRouter); ????
app.use('/agregarpost', agregarPostRouter);
app.use('/detallepost', detallePostRouter);
// app.use("/headerlogueado", headerlogueadoRouter)
// app.use("/headerdeslogueado", headerdeslogueadoRouter)
// app.use("/footer", footerRouter)
app.use("/home", homeRouter)
app.use("/resultadobusqueda", homeRouter)

app.use("/login", usuarioRouter)
app.use("/perfil", usuarioRouter)
app.use("/registracion", usuarioRouter)
app.use('/detalleusuario', usuarioRouter);


// no toy seguro si esta bien esto




module.exports = app;
