var express = require('express');
var router = express.Router();
let userController = require("../controller/userController")


router.get('/detalle', userController.detalle);

router.get('/home', userController.home);

router.get('/registracion', userController.registracion);

router.get("/login", userController.login)

router.get('/miperfil', userController.miperfil);




module.exports = router;