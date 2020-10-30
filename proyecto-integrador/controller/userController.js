const db = require('../db/models');
const bcrypt = require('bcryptjs');
//  operadores
 const op = db.Sequelize.Op;
 

    let userController = {


        registracion: function (req, res) {

            res.render("registracion");
        },

        storeUser: function(req, res) {
    
            let name = req.body.name;
            let password = bcrypt.hashSync(req.body.password, 10);
            let email = req.body.email;
    
            let user = {
                name: name,
                password: password,
                email: email
            }
    
            db.user.create(user)
            .then(function() {
                res.redirect("/registracion");
            })

        },

        miPerfil: function(req, res) {

            res.render("miPerfil");
        },


        detalleUsuario: function(req, res) {

            res.render("detalleUsuario")
        },


        login: function(req, res) {

            res.render("login")
        },


        home: function(req, res) {

            res.render("home")
        },




<<<<<<< HEAD
    //let nombre = req.body.nombre;
    let contraseña = bcrypt.hashSync(req.body.contraseña, 10);
    //let edad = req.body.edad;
    //let dni = req.body.dni;
    //let mail = req.body.mail;

    //let user = {
      //  nombre: nombre,
       // apellido: apellido,
      //  edad: edad,
       // dni: dni,
       // mail: mail,
    //}
=======
    }
>>>>>>> master



module.exports = userController;
