const db = require('../db/models');
const bcrypt = require('bcryptjs');
//  operadores
 const op = db.Sequelize.Op;
 

    let userController = {


        registracion: function (req, res) {

            res.render("registracion");
        },

        storeUser: function(req, res) {
    
            let nombre = req.body.nombre;
            let apellido = req.body.apellido;
            let username = req.body.username;
            let password = bcrypt.hashSync(req.body.password, 10);
            let mail = req.body.mail;
            let edad = req.body.edad;
            let pregunta = req.body.pregunta;
            let respuesta = req.body.respuesta;
    
            let user = {
                nombre: nombre,
                apellido: apellido,
                username: username,
                password: password,
                mail: mail,
                edad: edad,
                pregunta: pregunta,
                respuesta: respuesta
            }
    
            db.User.create(user)
            .then(function() {
                res.redirect("/user/registracion");
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


    }



module.exports = userController;
