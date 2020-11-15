let express = require('express');
let router = express.Router();
let resultadoBusquedaController = require('../controller/resultadoBusquedaController')


router.get('/', resultadoBusquedaController.busqueda);

router.get('/x', resultadoBusquedaController.busquedax);


  
module.exports = router