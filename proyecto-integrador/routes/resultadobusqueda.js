let express = require('express');
let router = express.Router();
let resultadoBusquedaController = require('../controller/resultadoBusquedaController')


router.get('/', resultadoBusquedaController.busqueda);


  
module.exports = router