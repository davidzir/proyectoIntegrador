var express = require('express');
var router = express.Router();
let postController = require("../controller/postController")

router.get('/agregar', postController.agregar);
router.get('/detalle', postController.detalle);





module.exports = router;
