<<<<<<< HEAD
var express = require('express');
var router = express.Router();
let userController = require("../controller/userController")


router.get('/detalle', userController.detalle);

router.get('/home', userController.home);

router.get('/registracion', userController.registracion);

router.get("/login", userController.login)

router.get('/miperfil', userController.miperfil);




module.exports = router;
=======
let express = require('express');
let router = express.Router();
let userController = require("../controller/userController")



router.get('/miPerfil', userController.miPerfil);

router.get('/registracion', userController.registracion);

router.get('/detalleUsuario', userController.detalleUsuario);

router.get('/login', userController.login);

router.get('/home', userController.home);







module.exports = router;



>>>>>>> master
