var express = require('express');
var router = express.Router();
const nodemailer = require("nodemailer");


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contacto', { title: 'Contacto' });
});
router.post("/", function(req, res){ 
  
  console.log(req.body.nombre)
  console.log(req.body.apellido)
  console.log(req.body.email)
  console.log(req.body.texto)

  let nombreForm, apellidoForm, emailForm, textoForm
  nombreForm = req.body.nombreForm
  apellidoForm = req.body.apellido
  emailForm = req.body.email
  textoForm = req.body.texto
 

  function validacion () {
    if (nombreForm == "" || apellidoForm =="" || emailForm =="" ||textoForm == ""){
      let validacionoff ="Faltan datos por completar"
      res.render ("contacto.hbs",{
        validacionoff,
        nombreForm,
        apellidoForm,
        emailForm,
        textoForm
      })
    }else{

      async function main() {
        
        // create reusable transporter object using the default SMTP transport
        let transporter = nodemailer.createTransport({
          host: "smtp.gmail.com",
          port: 465,
          secure: true,
          auth: {
            user: "vanigon0104@gmail.com",
            pass: "nijvlxfhlxkijevb",
          },
          tls: {
            rejectUnauthorized: false
          }
        });
      
        // send mail with defined transport object
        let info = await transporter.sendMail({
          from: `${nombreForm} ${apellidoForm} <${emailForm}>`, // sender address
          to: "vanigon0104@gmail.com", // list of receivers
          subject: "Nuevo Contacto", // Subject line
          
          html: `Nombre: ${nombreForm} ${apellidoForm} <br> Email: ${emailForm} <br> Consulta: ${textoForm}`
        });
      }
      //res.send ("correo enviado")
     
      //res.send = alert("Gracias! Tu mensaje fue enviado, te respoderemos enseguida!!!")

      res.render("index.hbs", {title:"Usados y No Tan Usados..."})

      main().catch(console.error);
    }
  }
    validacion()
})

module.exports = router;