var mysql = require("mysql");

// var db = mysql.createConnection({
//   host: "localhost",
//   port: 3306,
//   user: "id15022642_ratepics",
//   database: "id15022642_rate",
//   password: "CnlKKN{zh71^wn%h",
// });

// var db = mysql.createConnection({
//   host: "localhost",
//   port: 3306,
//   user: "root",
//   database: "Geny-Website",
//   password: "teamGeny123RandomPassword",
// });

var db = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  database: "rating",
  password: "",
});

db.connect(function (err) {
  if (err) throw err;
  console.log("Connected!");
});

module.exports = db;
