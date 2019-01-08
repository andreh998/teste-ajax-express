
var homeModel = require('../models/homeModel')();

module.exports.index = function(req, res){
    res.render('homeView');
};

module.exports.buscar = function(req, res){
    
    var dados = req.body;
    //console.log(dados.tipoGrafico);
    //console.log(dados.tamanhoGrafico);    
    
    homeModel.buscar(dados, function(erro, resultado){
        /*
        console.log(resultado);

        for(var i in resultado){
            console.log(resultado[i].nome);            
        };
        */

        if(dados.tipoGrafico == 'barras'){
            return res.render('barChart', {dados:resultado});
        } else if(dados.tipoGrafico == 'linhas'){
            return res.render('lineChart', {dados:resultado});
        };

    });    

    

};