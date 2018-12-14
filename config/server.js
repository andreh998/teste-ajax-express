module.exports = function(){

    var express = require('express');
    var bodyParser = require('body-parser');

    var app = express();

    app.use(bodyParser.json());
    app.use(bodyParser.urlencoded({extended: true}));  

    app.set('view engine', 'ejs');
    app.set('views', './app/views');

    app.use(express.static('assets'));

    var rotas = require('../app/routes/rotas');
    rotas(app);

    app.listen(8000, function(){

    });

};