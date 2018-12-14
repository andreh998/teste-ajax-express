
var mysql = require('mysql');

var con = function(){
    return mysql.createConnection({
        host:'localhost',
        user:'andre',
        password:'',
        database:'teste'
    });
};

module.exports = con;