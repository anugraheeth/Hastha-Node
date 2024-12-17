var mysql = require("mysql")
var con=mysql.createConnection({
    host:"localhost",
    user:"cek",
    password:"hastha@123",
    database:"elephant_cek"
});
con.connect((error)=>{
    if(error)  throw error;
});

module.exports = con;