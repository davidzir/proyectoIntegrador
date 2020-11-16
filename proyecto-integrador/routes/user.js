let express = require('express');
let router = express.Router();
let userController = require("../controller/userController")


//Punto 2
router.get('/registracion', userController.registracion);
router.post('/registracion', userController.storeUser);

// Punto 3
router.get('/login', userController.login);
router.post('/login', userController.processLogin);

router.get("/logout", userController.logout)

router.get('/miPerfil', userController.miPerfil);


// Punto 4
router.get("/:id", userController.detail);

// Punto 5
router.get('/edit/:id', userController.edit);
router.post('/edit', userController.editar);










module.exports = router;



