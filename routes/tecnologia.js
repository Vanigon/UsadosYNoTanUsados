var express = require('express');
var router = express.Router();
var Sequelize = require("sequelize");
var db = require("../config/db");
var app = express();

                    /*db.authenticate()
                            .then(() => {
                                console.log('Conectado a la base de datos')
                            })
                            .catch(err => {
                                console.log('No se conectó a la base')
                            })*/
var traeArticulos = db.define ('articulos',{
            id:{
                type:Sequelize.NUMBER,
                allowNull:false,
                primaryKey:true,
                autoIncrement: true
            },
            nombre:{
                type:Sequelize.STRING
            },
            descripcion:{
                type:Sequelize.STRING
            },
            precio:{
                type:Sequelize.DECIMAL
            },
            imagen:{
                type:Sequelize.STRING
            },
            categoria:{
                type:Sequelize.STRING
            },
        })

router.get ("/", async (req, res) => { 
        var consultaArticulos = await traeArticulos.findAll({
            attributes: ["id", "nombre", "descripcion", "precio", "imagen"],
            where: {categoria: "tecnologia"},
        })
        res.render ("tecnologia.hbs", {title:"Tecnologia", articulos:consultaArticulos})
})

router.get('/:id', async (req,res) => {

    console.log(req.params.id)
    
    var idArt = req.params.id

    var consultaArticulos = await traeArticulos.findAll()

    var articulo = consultaArticulos.find( consultaArticulos => consultaArticulos.id == idArt )

    //console.log(articulo)
    res.render('articulo.hbs',{title:articulo.nombre, articulos:articulo})

})


module.exports = router;