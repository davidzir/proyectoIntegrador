let express = require('express');
let router = express.Router();

// let usuarioController = require("../controller/usuarioController")

// router.get('/miPerfil', usuarioController);

// no hay que renderizar aca, eso va en controller, pero tenemos q linkear la ruta a usuarioController.js


router.get('/', function(req, res, next) {
    res.render('miPerfil');
  });

router.get('/', function(req, res, next) {
    res.render('registracion');
  });

router.get('/', function(req, res, next) {
    res.render('detalleUsuario');
  });


router.get('/', function(req, res, next) {
    res.render('login');
  });





module.exports = router