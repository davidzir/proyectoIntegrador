const db = require('../db/models');
const bcrypt = require('bcryptjs');
//  operadores
 const op = db.Sequelize.Op;

let resultadoBusquedaController = {



    busqueda: function(req, res) {

        let queBuscoElUsuario = req.query.buscador;

    db.user.findAll(
        {
            where: [
                { nombre: { [op.like]: "%" + queBuscoElUsuario + "%"} },
                {apelllido: {[op.like]: "%" + queBuscoElUsuario + "%"} },
                { mail: { [op.like]: "%" + queBuscoElUsuario + "%"} },
            ],
            // order: ["release_date"],
            //limit: 2
        }
    )
    .then(function(usuarios) {
        res.render("resultadoBusqueda", {usuarios: usuarios});
    })
    },

    search: function(req, res) {
        

    }
    




}
module.exports = resultadoBusquedaController;

