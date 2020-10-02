var mysql = require("mysql");

var db = mysql.createConnection({
  host: "192.168.0.105",
  user: "root",
  database: "rating",
  password: "",
});

db.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");
});

module.exports = db;
