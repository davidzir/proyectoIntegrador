// const bcrypt = require('bcryptjs');
// const db = require('../db/models');
// const users = db.User;

// const op = db.Sequelize.Op;

let userController = {
    
    miPerfil: function(req, res) {

        res.render("miPerfil")

    },

    registracion: function(req, res) {
        
        res.render("registracion")

    },

    detalleUsuario: function(req, res) {
        
        res.render("detalleUsuario")

    },

    login: function(req, res) {
        
        res.render("login")

       //encontrar el email
       //Chequear que la contraseña coincida.
    //    users.findOne({
    //        where: [{ email : req.body.email }]
    //    })
    //     .then( function(user){
    //         //El email no está en la base de datos
    //         if(user == null){
    //             return res.send("Email incorrecto");
    //         } else if (bcrypt.compareSync(req.body.password, user.password) == false ){
    //             //EL email existe pero la contraseña está mal
    //             return res.send("Contraseña equivocada")
    //         } else if (bcrypt.compareSync(req.body.password, user.password)){
    //             //Coinciden las contraseñas
    //             req.session.user = user
    //             return res.redirect('/');
    //         }

    //     })
    //     .catch( e => console.log(e))

    },




    home: function(req, res) {
        
        res.render("home")

    },
}
module.exports = userController;
