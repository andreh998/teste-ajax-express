
var database = require('../../config/database');

module.exports = function(){
    
    this.buscar = function(dados, retorno){

        var con = database();

        return con.query('SELECT p.id, p.nome, SUM(v.qtd_venda) as venda '+ 
                            'FROM vendas v, produtos p ' +  
                            'WHERE v.id_produto = p.id ' +
                            'GROUP BY id_produto', retorno);

    };    

    return this;

};