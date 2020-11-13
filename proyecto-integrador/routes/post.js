var express = require('express');
var router = express.Router();
let postController = require("../controller/postController")


router.get('/agregar', postController.agregar);
router.post('/agregar', postController.guardar)

router.get('/detalle', postController.detalle);

router.get('/home', postController.home);

// router.get('/agregar', postController.storePost)
// router.post("/agregarpost", postController.guardar)




module.exports = router;