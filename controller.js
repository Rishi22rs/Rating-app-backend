const db = require("./db");

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

exports.selectRandom = (req, res) => {
  let sql = `SELECT * FROM images
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
  WHERE uid=${req.body.uid}`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 2", Error: err });
    res.json(result);
  });
};
