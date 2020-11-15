var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var app = express();

// traemos las rutas


let postRouter = require('./routes/post')
let userRouter = require('./routes/user')
let resultadoBusquedaRouter = require("./routes/resultadoBusqueda")


var session = require("express-session")
app.use(session({ secret: "mensaje secreto" }))
// requeris las cookies
var db = require("./db/models/index")

//reslocals comparte info con todas las vistas
app.use(function (req, res, next) {

    res.locals = {
        usuarioLog: req.session.usuarioLog
    }

    next();
})


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
app.use("/resultado", resultadoBusquedaRouter)
app.use(function (req, res, next) {

    // hay una cookie, el usuario dijo que quiere que lo recuerden priemr parametro
    // pero, como cerro el navegador quedo deslogueado
    if (req.cookies.idDelUsuarioLogueado != undefined && req.session.usuarioLog == undefined) {

        // pedimos un usuario que matchee la primary key segun lo que hay en la cookie
        // ya si estoy este if estoy seguro que hay algo en la cookie 

        db.usuarios.findByPk(req.cookies.idDelUsuarioLogueado)
            .then(function (usuarios) {
                // logueo al usuario, pongo en session todos los datos del usuario logueado 
                req.session.usuarioLog = usuarios;
                // refresheo la pagina para acatar posibles errores en la cookie
                res.redirect(req.originalUrl);
                next();
            })
    } else {
        next();
    }
});



module.exports = app;
