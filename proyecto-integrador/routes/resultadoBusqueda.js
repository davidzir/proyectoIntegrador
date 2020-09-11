let express = require('express');
let router = express.Router();
let resultadoBusquedaController = require('../controller/resultadoBusquedaController')


router.get('/resultado', resultadoBusquedaController.busqueda);


  
module.exports = router


