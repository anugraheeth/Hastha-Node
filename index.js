const { dirname } = require("path");
var con = require("./Database/web");
var conn = require("./Database/web1");
var express = require("express");
var app = express();
var bodypar = require("body-parser");
const { error } = require("console");
const path = require("path");
const session = require("express-session");
app.use(bodypar.json());
app.use(bodypar.urlencoded({ extended: true }));
app.use(
  session({
    secret: "your_secret_key",
    resave: false,
    saveUninitialized: true,
  })
);
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));
const { request } = require("./Requests/request");
request(app, con, conn);
app.listen(8700,()=>{
    console.log("Server started at 8700")
});
