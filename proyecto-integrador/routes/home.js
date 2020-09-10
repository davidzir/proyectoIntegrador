let express = require('express');
let router = express.Router();
let homeController = require('../controller/homeController')

router.get('/', homeController.home);


router.get('/', homeController.resultadoBusqueda);

  
module.exports = router