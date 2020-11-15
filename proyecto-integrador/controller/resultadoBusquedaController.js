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
                    {username: { [op.like]: "%" + queBuscoElUsuario + "%"}},    
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
    })
    },

    busquedax: function(req, res) {
        let queBuscoElUsuariox = "#" + req.body.buscadorx;

        db.post.findAll(
            {
                where: [
                    //buscar op OR
                    {texto_post: { [op.like]: "%" + queBuscoElUsuariox + "%"}}    
                ]
            }
        )
        .then(function(post) {
            res.render("resultadox", {post: post});
        })
    }
}
                        
    

    
    


module.exports = resultadoBusquedaController;

