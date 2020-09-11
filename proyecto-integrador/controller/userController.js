let userController = {
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