const db = require("./db");
var jwt = require("jsonwebtoken");

exports.addImages = (req, res) => {
  let sql = `INSERT INTO images (url,category) VALUES(?,?)`;
  let c = 0;
  db.query(sql, [req.body.url, req.body.category], (err, result) => {
    if (err)
      return res.json({ error: "Error in adding the image", Error: err });
    let count = `SELECT COUNT(url)
    FROM images;`;
    db.query(count, (err, result) => {
      if (err) return res.json({ error: "Some error" });
      let s = JSON.stringify(result);
      let j = JSON.parse(s);
      c = j[0]["COUNT(url)"];
      res.json({ count: c });
    });
  });
};

exports.login = (req, res) => {
  let sql = `SELECT user_id,name,email FROM user WHERE email=? AND pass=?`;
  db.query(sql, [req.body.email, req.body.pass], (err, result) => {
    if (err) return res.json({ error: "Login error" });
    if (result.length < 1) {
      return res.json({ err: "Login failed" });
    }
    const token = jwt.sign(
      {
        email: result[0].email,
        user_id: result[0].user_id,
      },
      "rating"
    );
    result[0]["token"] = token;
    res.json(result[0]);
  });
};

exports.selectRandom = (req, res) => {
  let sql = `SELECT * FROM images INNER JOIN user ON images.user_id=user.user_id WHERE category='${req.body.category}'
  ORDER BY RAND()
  LIMIT 2 
  `;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere", Error: err });
    // let sql1 = `SELECT * FROM images WHERE votes<=${result[0].votes} AND uid!=${result[0].uid}
    //   ORDER BY RAND()
    //   LIMIT 1
    //   `;
    // db.query(sql1, (err1, result1) => {
    //   if (err) return res.json({ error: "Error everywhere 1", Error: err1 });
    //   res.json(result.concat(result1));
    // });
    res.json(result);
  });
};

exports.vote = (req, res) => {
  let sql = `UPDATE images
  SET votes = votes+1
  WHERE image_id=${req.body.image_id}`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 2", Error: err });
    res.json(result);
  });
};

exports.category = (req, res) => {
  let sql = `SELECT url,category, count(category)
  FROM images
  WHERE category is not null
  GROUP BY category`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 3", Error: err });
    let s = JSON.stringify(result);
    let r = [];
    let j = JSON.parse(s);
    c = j[1]["count(category)"];
    console.log(j);
    // c.map(x=>)
    r = j.filter((x) => x["count(category)"] > 20);
    res.json(r);
  });
};

exports.leaderboard = (req, res) => {
  let sql = `SELECT *
  FROM images ORDER BY votes DESC LIMIT 5 OFFSET ${req.body.offset}`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 4", Error: err });
    res.json(result);
  });
};

exports.profile = (req, res) => {
  let sql = `SELECT * FROM user INNER JOIN images ON user.user_id=images.user_id`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 5", Error: err });
    res.json(result);
  });
};

exports.profilePosts = (req, res) => {
  let sql = `SELECT * FROM images WHERE user_id=${req.body.user_id}`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 5", Error: err });
    res.json(result);
  });
};

exports.explore = (req, res) => {
  let sql = `SELECT image_id,user.user_id,url,votes,description,date,category,name FROM images INNER JOIN user ON user.user_id=images.user_id ORDER BY RAND()`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 6", Error: err });
    res.json(result);
  });
};
