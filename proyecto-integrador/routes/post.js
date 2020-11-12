var express = require('express');
var router = express.Router();
let postController = require("../controller/postController")


router.get('/agregar', postController.agregar);
// router.get('/agregar', postController.guardar)
//punto 7.1

router.get('/detalle', postController.detalle);

router.get('/home', postController.home);
// router.get('/agregar', postController.agregarPost);
// router.get('/agregar', postController.storePost)
router.post("/agregarpost", postController.guardar)




module.exports = router;