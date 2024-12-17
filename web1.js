var mysql = require("mysql")
var conn=mysql.createConnection({
    host:"localhost",
    user:"cek",
    password:"hastha@123",
    database:"elephant_py2"
});
conn.connect((error)=>{
    if(error)  throw error;
});

module.exports = conn;