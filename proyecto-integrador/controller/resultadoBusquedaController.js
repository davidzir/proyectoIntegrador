const db = require('../db/models');
// const bcrypt = require('bcryptjs');
//  operadores
 const op = db.Sequelize.Op;

let resultadoBusquedaController = {



    busqueda: function(req, res) {

        let queBuscoElUsuario = req.query.buscador;

    db.User.findAll(
        {
            where: [
                //buscar op OR
                {[op.or]: [
                    {username: { [op.like]: "" + queBuscoElUsuario + "%"}},    
                    {mail: { [op.like]: "%" + queBuscoElUsuario + "%"}}
                ]}

              //  { username: { [op.like]: "%" + queBuscoElUsuario + "%"} }
                //{apellido: {[op.like]: "%" + queBuscoElUsuario + "%"} },
          //, { mail: { [op.like]: "%" + queBuscoElUsuario + "%"} }
          ,]
            ,
            // order: ["release_date"],
            //limit: 2
        }
    )
    .then(function(usuarios) {
        res.render("resultadoBusqueda", {usuarios: usuarios});
        //1usuarios: usar la funcion de la vista 
        
    })
    },

    busquedax: function(req, res) {
        let queBuscoElUsuariox = req.query.buscadorx;

        // db.post.findAll({ limit: 20, order: [ ['createdAt',  'DESC'] ] })

        db.post.findAll(
            {
                where: [
                    //{[op.or]:
                    {texto_post: { [op.like]: "#" + queBuscoElUsuariox + "%"}}    
                    //}
                ],
                include:[
                    {association : "usuarioDelPost"},
                    //quien lo posteo
                ]
            }
        )
        .then(function(post) {
            res.render("resultadox", {post: post});
            //compartis la varibale para usar en vista
        })
    }
}
                        
    

    
    


module.exports = resultadoBusquedaController;

