var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function(req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  novedades = novedades.splice(0, 5);//seleccionamos los primeros 5 elementos del array
  novedades = novedades.map(novedad =>{
    if (novedad.img_id){
      const imagen = cloudinary.url(novedad.img_id,{
        width: 460,
        crop: 'fill'
      });
      return{
        ...novedad,
        imagen
      }
    }else{
      return{
        ...novedad,
        imagen: '/img/novedades01.jpg'
      }
    }
});
    res.render('index', {
      novedades
    });
});

router.post('/', async (req, res, next) =>{

var nombre = req.body.nombre;
var apellido = req.body.apellido;
var email = req.body.email;
var mensaje = req.body.mensaje;
var name = req.body.check;

console.log(req.body);


var obj = {
  to: 'julianignacio.piccoli@gmail.com',
  subject: 'contacto desde la web',
  html: nombre + ' ' + apellido + ' se contacto a travez de la web y quiere mas info a este correo: ' + email + ' su mensaje fue ' + mensaje
}

var transporter = nodemailer.createTransport({
  host: process.env.SMTP_HOST,
  port: process.env.SMTP_PORT,
  auth: {
    user: process.env.SMTP_USER,
    pass: process.env.SMTP_PASS
  }
})

var info = await transporter.sendMail(obj);

res.render('index', {
  message: 'mensaje enviado correctamente',
})

});



module.exports = router;
