const db = require("../db/models")
const post = db.post;

let postController = {
    agregar: function (req,res) {
        res.render("agregarPost")
    },

    detalle: function (req,res) {
        res.render("detallePost")
        
    },

    home: function(req, res) {

        db.post.findAll(
            {
                order: ["fecha_creacion"]
            }
        ).then(function(post){

            console.log(post);

            res.render("home", {post:post})

        })



    },
    




}
module.exports = postController;