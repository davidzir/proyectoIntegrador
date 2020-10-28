let express = require('express');
let router = express.Router();
let userController = require("../controller/userController")



router.get('/miPerfil', userController.miPerfil);

router.get('/registracion', userController.registracion);
router.post('/registracion', userController.registracion);

router.get('/detalleUsuario', userController.detalleUsuario);

router.get('/login', userController.login);
router.post('/login', userController.login);

router.get('/home', userController.home);







module.exports = router;



