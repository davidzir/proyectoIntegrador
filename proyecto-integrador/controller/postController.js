const db = require("../db/models")
// const post = db.post;

let postController = {
    agregar: function (req,res) {
        res.render("agregarPost")
    },

    guardar: function (req, res) {

        db.Post.create({
            // usuario_id: req.body.usuario_id,
            url_perfil: req.body.url_perfil,
            texto_post: req.body.texto_post,
            fecha_creacion: req.body.fecha_creacion
        });

        res.redirect('/post/home')

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