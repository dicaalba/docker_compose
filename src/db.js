const mongoose = require('mongoose');

mongoose.connect('mongodb://mongo:27017/contenedores')
.then(db => console.log('Conexión estable', db.connection.host))
.catch(err => console.log('Error al conectar', err));