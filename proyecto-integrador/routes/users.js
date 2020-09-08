var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('agregarPost');
});
router.get('/detalles', function(req, res, next) {
  res.render('detallePost');
});
router.get('/detalles', function(req, res, next) {
  res.render('detallePost');
});

module.exports = router;
