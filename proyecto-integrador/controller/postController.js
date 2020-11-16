const db = require("../db/models")
//  const post = db.post;

let postController = {
    agregar: function (req,res) {

        if (req.session.usuarioLog == undefined) {
            res.redirect("login");
        }

        let usuarioLog = req.session.usuarioLog.id;
        let url_perfil = req.body.url_perfil;
        let texto_post = req.body.texto_post;
        let createdAt = req.body.createdAt;

        let post = {
            usuario_id: usuarioLog,
            url_perfil: url_perfil,
            texto_post: texto_post,
            createdAt: createdAt
        }

        db.post.findAll(post)

        .then(function(post){
            res.render("agregarPost",{post: post})

        })



    },



 
    guardar: function (req, res) {

        if (req.session.usuarioLog == undefined) {
            res.redirect("/user/login");
        }
        
        let usuarioLog = req.session.usuarioLog.id;
        let url_perfil = req.body.url_perfil;
        let texto_post = req.body.texto_post;
        let createdAt = req.body.createdAt;

        let post = {
            usuario_id: usuarioLog,
            url_perfil: url_perfil,
            texto_post: texto_post,
            createdAt: createdAt
        }

        console.log(post);


        db.post.create(post)
        .then(function(){

            res.redirect('/post/home')

        })



    },





    detalle: function (req,res) {

        let id = req.params.id;

        db.post.findByPk(id)
            .then(function(post){

            res.render("detallePost", {post:post})

        })

        // res.render('detallePost')

        
    },

    home: function(req, res) {

        // db.post.findAll({ order: [ ['createdAt',  'DESC'] ] },
        // {include:[
        //     {association : "usuarioDelPost"},
        // ]})

        db.post.findAll(
            {
                order:[["createdAt", "DESC"]],
                
                include:[
                    {association : "usuarioDelPost"},
                ]
        
            })


        .then(function(post){

             console.log(post);

            res.render("home", {post:post})

        })
    },

    borrar: function(req, res) {
        let usuario_id = req.session.usuarioLog.id
        let id_post = req.params.id;


        db.post.findByPk(id_post)

        .then(function(post){
        if (usuario_id != undefined && usuario_id == post.usuario_id) {
           
            
            db.post.destroy({
                where: {
                    id: id_post
                }
            })
    
            .then(function(){
    
                res.redirect("/user/miPerfil")
            })  
       
        } else {
            res.redirect("/user/home")
        }})
    },

    


    editar: function(req, res) {
        
        db.post.findByPk(req.params.id)
        .then(function(postAEditar) {
            res.render('editarPost', {postAEditar: postAEditar})
        })
    },

    editarPost: function(req,res){
        let id_post = req.params.id;
        let usuario_id = req.session.usuarioLog.id;
        let usuario_post = req.body.usuario_id;
        let url_perfil = req.body.url_perfil;
        let texto_post = req.body.texto_post

        let post = {
            usuario_id: usuario_id,
            usuario_post: usuario_post,
            url_perfil : url_perfil,
            texto_post: texto_post
        }

        // console.log('000000000000000000000');


        db.post.findByPk(id_post)
        .then(function(postAEditar){
            console.log(postAEditar);

            if (usuario_id != null && usuario_id == postAEditar.usuario_id) {
           
                db.post.update(
                    {
                     texto_post : post.texto_post,
                     url_perfil : post.url_perfil 
                    },
                {
                    where: {
                        id : id_post
                    }
                }
                )
        
                .then(function(){
        
                    res.redirect("/post/detalle/" + id_post)
                })  
           
            } else {
                res.redirect("/post/home")
            } 
        })
      
    }







}
module.exports = postController;