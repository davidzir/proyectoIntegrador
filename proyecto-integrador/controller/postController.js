const db = require("../db/models")
// const post = db.post;

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
    agregarPost: function (req, res) {

        if (req.session.usuarioLog == undefined) {
            res.redirect("login");
        }

        res.render("agregarPost")

    },

    storePost: function (req, res) {

        if (req.session.usuarioLog == undefined) {
            res.redirect("login");
        }
        let usuario_id = req.session.usuarioLog.id;
        let url = req.body.url;
        let texto_de_post = req.body.texto_de_post;
        let fecha_creacion = req.body.fecha_creacion

        let posts = {
            usuario_id: usuario_id,
            url: url,
            texto_de_post: texto_de_post,
            fecha_creacion: fecha_creacion
        }
        console.log(posts);
        db.posts.create(posts)
            .then(function () {
                res.redirect("home");
            })

    },
    guardar: function (req, res) {

        db.post.create(
            {
            usuario_id: req.session.usuarioLog.id,
            url_perfil: req.body.url_perfil,
            texto_post: req.body.texto_post,
            // fecha_creacion: req.body.fecha_creacion
        });

        res.redirect("/post/home")

    }




}
module.exports = postController;