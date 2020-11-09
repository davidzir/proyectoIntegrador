let express = require('express');
let router = express.Router();
let userController = require("../controller/userController")



router.get('/miPerfil', userController.miPerfil);

router.get('/registracion', userController.registracion);
router.post('/registracion', userController.storeUser);

router.get('/detalleUsuario', userController.detalleUsuario);

router.get('/login', userController.login);
router.post('/login', userController.processLogin);

router.get("/logout", userController.logout)

router.get('/home', userController.home);

router.get('/edit', userController.registracion);
router.post('/editar', userController.storeUser);

router.get("/:id", userController.detail);










module.exports = router;



