let express = require('express');
let router = express.Router();

router.get('/', function(req, res, next) {
    res.render('home');
  });


router.get('/', function(req, res, next) {
    res.render('resultadoBusqueda');
  });

  
module.exports = router