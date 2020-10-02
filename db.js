var mysql = require("mysql");

var db = mysql.createConnection({
  host: "	localhost",
  user: "id15022642_ratepics",
  database: "id15022642_rate",
  password: "J9X_w^>E%<g=yhiT",
});

db.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");
});

module.exports = db;
