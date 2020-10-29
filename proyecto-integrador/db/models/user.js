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

            nombre: {

                type: DataTypes.STRING

            },

            apelllido: {

                type: DataTypes.STRING

            },

            edad: {

                type: DataTypes.INTEGER

            },

            dni: {

                type: DataTypes.INTEGER

            },

            mail: {

                type: DataTypes.STRING

            },


        }
    
    //le digo como se llama la tabla de sql.
    //timestamps:Si no tengo en sql el createdAt y updatedAT en las columnas, 
    //tenes tenes q poner false, IMPORTANTE.De lo contrario de tenerlas 
    //poner true
        let config = {
            tableName: "usuarios",
            timestamps: false
        }
    //post seria el alias, el archivo de modelo.
        let usuarios = sequelize.define("user", cols, config);
    
        return usuarios;
    }