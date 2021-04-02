var Sequelize = require('sequelize')


var db = new Sequelize('articulos', 'root', '', {
    host: 'localhost', 
    dialect: 'mysql',
    define: {
        timestamps: false,
    }
})

module.exports = db

