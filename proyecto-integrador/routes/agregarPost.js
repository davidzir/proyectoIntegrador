var express = require('express');
var router = express.Router();
let agregarPostController = require("../controller/agregarPostController")

router.get('/', agregarPostController.agregar);

module.exports = router;
