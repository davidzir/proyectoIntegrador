const db = require("../db/models")
const post = db.post;

let postController = {
    agregar: function (req,res) {
        res.render("agregarPost")
    },
    detalle: function (req,res) {
        res.render("detallePost")
        
    }
    




}
module.exports = postController;