const db = require("./db");

exports.addImages = (req, res) => {
  if (req.files === null) {
    res.status(400).json({ err: "No file uploaded." });
  }
  console.log(req);
  const salt = Date.now();
  if (req.files) {
    const file = req.files.fileData;
    file.mv(`${__dirname}/${salt + file.name}`, (err) => {
      if (err) {
        console.log(err);
        return res.status(500).json(err);
      }
      console.log(file);
    });

    let sql = `INSERT INTO images (url,category,description) VALUES(?,?,?)`;
    let c = 0;
    db.query(
      sql,
      [
        `http://ratepics.netlify.app/${salt + file.name}`,
        req.body.category,
        req.body.description,
      ],
      (err, result) => {
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
      }
    );
  }
};

exports.login = (req, res) => {
  let sql = `SELECT user_id,name,email FROM user WHERE email='${req.auth.email}'`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Login error", err });
    console.log(result.length);
    if (result.length < 1) {
      console.log("into it");
      let sql1 = `INSERT INTO user (name,email) VALUES(?,?)`;
      db.query(sql1, [req.auth.name, req.auth.email], (errr, resultt) => {
        if (errr) return res.json({ error: "Signup error", errr });
        res.json({ ...resultt, newUser: "true" });
      });
      //return res.json({ msg: "Login first time" });
    } else {
      res.json({ ...result, newUser: "false" });
    }
    //res.json(result);
    //   const token = jwt.sign(
    //     {
    //       email: result[0].email,
    //       user_id: result[0].user_id,
    //     },
    //     "rating"
    //   );
    //   result[0]["token"] = token;
    //   res.json(result[0]);
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

exports.view = (req, res) => {
  let sql = `UPDATE images SET views = views+1 WHERE image_id=${req.body.image_id1};UPDATE images SET views = views+1 WHERE image_id=${req.body.image_id2};`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 2.5", Error: err });
    res.json(result);
  });
};

exports.category = (req, res) => {
  let sql = `SELECT  category, count(category) FROM images GROUP BY category HAVING COUNT(category)>20`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 3", Error: err });
    res.json(result);
  });
};

// exports.category = (req, res) => {
//   let sql = `SELECT category,url, ROW_NUMBER() OVER (Partition By category) FROM images LIMIT 1`;
//   db.query(sql, (err, result) => {
//     if (err) return res.json({ error: "Error everywhere 3", Error: err });
//     res.json(result);
//   });
// };

exports.leaderboard = (req, res) => {
  let sql = `SELECT *
  FROM images ORDER BY votes DESC LIMIT 20 OFFSET ${req.body.offset}`;
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
    if (err) return res.json({ error: "Error everywhere 6", Error: err });
    res.json(result);
  });
};

exports.explore = (req, res) => {
  let sql = `SELECT image_id,user.user_id,url,votes,description,date,category,name FROM images INNER JOIN user ON user.user_id=images.user_id ORDER BY RAND()`;
  db.query(sql, (err, result) => {
    if (err) return res.json({ error: "Error everywhere 7", Error: err });
    res.json(result);
  });
};

exports.addComment = (req, res) => {
  let sql = `INSERT INTO comments(image_id,user_id,comment) VALUES(?,?,?)`;
  db.query(
    sql,
    [req.body.image_id, req.body.user_id, req.body.comment],
    (err, result) => {
      if (err) return res.json({ error: "Error everywhere 8", Error: err });
      res.json(result);
    }
  );
};
exports.getComments = (req, res) => {
  let sql = `SELECT * FROM comments INNER JOIN user ON comments.user_id=user.user_id WHERE image_id=?`;
  db.query(sql, [req.body.image_id], (err, result) => {
    if (err) return res.json({ error: "Error everywhere 9", Error: err });
    res.json(result);
  });
};
