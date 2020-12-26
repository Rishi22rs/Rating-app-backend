var mysql = require("mysql");

var db = mysql.createConnection({
  host: "db4free.net",
  port: 3306,
  user: "ratingpics",
  database: "rating",
  password: "ratingapp",
});

// var db = mysql.createConnection({
//   host: "localhost",
//   port: 3306,
//   user: "root",
//   database: "rating",
//   password: "",
//   multipleStatements: true,
// });

db.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");
});

module.exports = db;
