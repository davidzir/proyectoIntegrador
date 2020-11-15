const { Sequelize } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
    //columnas en bases de datos
    //de cada una de las columnas un objeto literal
    //ponemos el type en cada una seguido de un Integer como numero.
    //Double(numeros con coma), Integer, string y Data.
        let cols = {
            id: {
                type: DataTypes.INTEGER,
                autoIncrement: true,
                primaryKey: true
                //Id autoincremental y primary Key(solo en id)
    
            },

            usuario_id: {

                type: DataTypes.INTEGER

            },

            url_perfil: {

                type: DataTypes.INTEGER

            },

            texto_post: {

                type: DataTypes.STRING

            },

            createdAt: {

                type: DataTypes.DATE,
                defaultValue: Sequelize.NOW()

            },


        }
    
    //le digo como se llama la tabla de sql.
    //timestamps:Si no tengo en sql el createdAt y updatedAT en las columnas, 
    //tenes tenes q poner false, IMPORTANTE.
    //De lo contrario de tenerlas poner true
        let config = {
            tableName: "post",
            timestamps: false
        }
    //post seria el alias, el archivo de modelo.
        let post = sequelize.define("post", cols, config);

        post.associate = function(models){
           post.belongsTo(models.User,{
            as: "usuarioDelPost",
            foreignKey: "usuario_id"
        })
        }


    
        return post;
    }