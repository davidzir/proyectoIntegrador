let express = require('express');
let router = express.Router();
let usuarioController = require("../controller/usuarioController")

// router.get('/miPerfil', usuarioController);

// no hay que renderizar aca, eso va en controller, pero tenemos q linkear la ruta a usuarioController.js


router.get('/miPerfil', usuarioController.miPerfil);

router.get('/registracion', usuarioController.registracion);

router.get('/', usuarioController.detalleUsuario);


router.get('/login', usuarioController.login);





module.exports = router