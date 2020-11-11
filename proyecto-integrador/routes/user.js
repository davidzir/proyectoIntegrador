let express = require('express');
let router = express.Router();
let userController = require("../controller/userController")



router.get('/miPerfil', userController.miPerfil);

router.get('/registracion', userController.registracion);
router.post('/registracion', userController.storeUser);


router.get('/login', userController.login);
router.post('/login', userController.processLogin);

router.get("/logout", userController.logout)



router.get('/edit/:id', userController.edit);
router.post('/edit', userController.editar);

router.get("/:id", userController.detail);










module.exports = router;



