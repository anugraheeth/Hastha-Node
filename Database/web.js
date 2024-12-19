var mysql = require("mysql");

var con = mysql.createConnection({
    host: "sql3.freemysqlhosting.net",
    user: "sql3753054",      // Your database username
    password: "Lm831VfT8Q",  // Your database password
    database: "sql3753054"   // Your database name
});

con.connect((error) => {
    if (error) {
        console.error("Database connection failed:", error);
        return;
    }
    console.log("Connected to the MySQL database!");
});

module.exports = con;
