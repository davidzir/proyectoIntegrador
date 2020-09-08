var express = require('express');
var router = express.Router();

router.get('/agregarPost', function(req, res, next) {
    res.render('agregarPost');
  });

module.exports = router;
