 const bcrypt = require('bcryptjs');
 let db = require('../db/models/index');
 

    let userController = {
        register: function (req, res) {
            if (req.session.usuarioLogueado != undefined) {
                res.redirect("/user");
            }

            res.render("registracion");
        }
          },
storeUser: function(req, res) {
    if (req.session.usuarioLogueado != undefined) {
        res.redirect("/user");
    }

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

    db.User.create(user)
        .then(function () {
            res.redirect("/user");
        })
},
   
module.exports = userController;
