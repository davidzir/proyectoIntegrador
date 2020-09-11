let userController = {
<<<<<<< HEAD
    detalle: function (req,res) {
        res.render("detalleUsuario")
    },
    miperfil: function (req,res) {
        res.render("miPerfil")
        
    },
    home: function (req,res) {
        res.render("home")
        
    },
    registracion: function (req,res) {
        res.render("registracion")

    },
    login: function (req,res) {
        res.render("login")
        
    }
    




}
module.exports = userController;
=======
    
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

    },

    home: function(req, res) {
        
        res.render("home")

    },
    

}



module.exports = userController;


>>>>>>> master
