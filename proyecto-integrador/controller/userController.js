const db = require('../db/models');
const bcrypt = require('bcryptjs');
//  operadores
 const op = db.Sequelize.Op;
// let usuarioLog 
 

    let userController = {


        registracion: function (req, res) {
            // Le pedimos a la session que traiga el usuario logueado, si ya existe un usuario logueado te redirije a tu perfil
            if (req.session.usuarioLog != undefined) {
                return res.redirect("/user/miPerfil");
            }
            // sino te renderiza la vista de registracion
            res.render("registracion");
        },

        
        storeUser: function(req, res) {

            // creamos las variables para el usuario, traidas de los name del EJS

            let nombre = req.body.nombre;
            let apellido = req.body.apellido;
            let username = req.body.username;
            let password = bcrypt.hashSync(req.body.password, 10);
            let mail = req.body.mail;
            let edad = req.body.edad;
            let pregunta = req.body.pregunta;
            let respuesta = req.body.respuesta;
            
            // Creamos la variable usuario
    
            let user = {
                //rojo: nombre de propiedades; blanco: variables de arriba
                nombre: nombre,
                apellido: apellido,
                username: username,
                password: password,
                mail: mail,
                edad: edad,
                pregunta: pregunta,
                respuesta: respuesta 
            }
    
            db.User.findOne(
                {
                    where:
                       {mail:  req.body.mail}
                    
                })

                .then(function(mailBuscado){
                    if(mailBuscado != null){
                        res.send("Este mail ya esta registrado!")
                    }
                    else {
                        db.User.create(user)
                        //una vez creado el usuario, usamos un then xq es una promesa y te redirije al login 
                        .then(function() {
                            res.redirect("/user/login");
                        })
                        .catch(function(error){
                        console.log(error)
                        })
                    }
                })
                

            // db.User.findOne({
            //     where: {mail: req.body.mail}
            // })
            // .then(function(req, res) {
            //     if(req.body.mail =! null){
            //         res.send("Este mail ya existe!")

            //     }
            // })
            // {
            //     if(req.body.mail == true){
            //         res.send("Este mail ya esta registrado!")

            //     }
            // }
        },


            

        miPerfil: function(req, res) {
            // if (req.session.usuarioLog != undefined) {
            //     res.redirect("/user/miPerfil");
            // }

            db.post.findAll({
                where: {usuario_id : req.session.usuarioLog.id},
                
            })
            .then(function(postPerfil){
          
                res.render("miPerfil",{postPerfil : postPerfil})
                })
            
        },


            



        login: function(req, res) {
            if (req.session.usuarioLog != undefined) {
              return res.redirect("/user/miPerfil");
        }
            res.render("login"); 
        },

        processLogin: function (req, res) {
            // console.log(req.body);

            let usuario = req.body.mail
           
            // Caso 1: El mail no esta en la base de datos y yo voy a tener que decirle al usuario: NO EXISTE
            // Caso 2: El mail si existe pero la contraseña esta mal. Le tengo que decir al usuario: Usuario invalido
            // Caso 3: Bienvenido!

            // Casos que no voy a hacer: Dejaste los campos vacios. El mail no es un mail directamente.


            // findAll retorna SIEMPRE un array. Si no matchean los datos findAll traer un array vacío pero SIEMPRE trae un array
            // findOne en cambio tiene dos opciones. O trae el dato, o trae null.
            db.User.findOne(
                {
                    where: [
                        { 
                            // usamos variable d arriba de todo para poner que busque o uno o el otro
                            [op.or]: [
                                {username:  usuario},    
                                {mail: usuario}
                            ]

                        },

                    ]
                })
                .then(function (usuario) {
                    if (usuario == null) {
                        // redirect que vaya a login pero ademas a la ruta del redirct agregarle un query (/users/login?error=usuario)
                        // en el controler que me muestra el formulariorecupero el error (req.query.error) si el error es usuario renderizo el login y le mando el mensaje que yo quiera mostrar
                        //en la vista tomo e error que mande desde el controler y lo muestro como sea
                        res.send("El usuario no existe")
                    } else if (bcrypt.compareSync(req.body.password, usuario.password) == false) {
                        res.send("Mala contraseña")
                    } else {
                        //guardo info en sesion y se puede usar para cualquoer control.Guardo en sesion datos de usuario que se acaba de loguear.
                        req.session.usuarioLog = usuario;

                        if (req.body.remember != undefined) {
                            res.cookie("idDelUsuarioLogueado", usuario, { maxAge: 1000 * 3600 });
                        }

                        res.redirect("/post/home");
                        // Todo bien!
                    }
                    // res.send(usuario)
                })
                .catch(function(error){
                    console.log(error)
                })


        },

        logout: function(req, res) {
            res.clearCookie("idDelUsuarioLogueado")
          //  req.session.usuarioLog = undefined;
            req.session.destroy();
    
      return      res.redirect("/post/home")
        },
    
        


        edit: function(req, res) {


            let nombre = req.body.nombre;
            let apellido = req.body.apellido;
            let username = req.body.username;
            // let password = bcrypt.hashSync(req.body.password, 10);
            let mail = req.body.mail;
            let edad = req.body.edad;
            let pregunta = req.body.pregunta;
            let respuesta = req.body.respuesta;

            
    
            let user = {
                nombre: nombre,
                apellido: apellido,
                username: username,
                // password: password,
                mail: mail,
                edad: edad,
                pregunta: pregunta,
                respuesta: respuesta
                
            }

            db.User.findAll(user)
            .then(function() {
                res.render("edit");
            })
    


        },

        editar: function(req, res) {
            //return res.send(req.body);

            let nombre = req.body.nombre;
            let apellido = req.body.apellido;
            let username = req.body.username;
            let password = bcrypt.hashSync(req.body.password, 10);
            let mail = req.body.mail;
            // let edad = req.body.edad;
            // let pregunta = req.body.pregunta;
            // let respuesta = req.body.respuesta;

            //recordar punto 4.3
    
            let user = {
                nombre: nombre,
                apellido: apellido,
                username: username,
                password: password,
                mail: mail,  
            }

            // console.log(req.body);
            // console.log("00000000000000000000000000000000000000000");
            // console.log(user);
            
            db.User.update(user,{
                where: [{
                    id: req.body.id
                }]
            })

            .then(function() {
                // console.log("en el then");
                // res.refresh("/user/miPerfil");
                res.clearCookie("idDelUsuarioLogueado")
          //  req.session.usuarioLog = undefined;
            req.session.destroy();
    
      return      res.redirect("/user/login")
            })


        },
        
        detail: function(req, res) {

        let idUser = req.params.id

        db.User.findByPk(idUser)

        .then(function(usuario) {

            res.render("detalleUsuario", {usuario: usuario});
            
        })

        
    }


    
    
    
    
    }


   // }



module.exports = userController;
