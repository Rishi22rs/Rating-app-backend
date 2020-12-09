//const jwt = require("jsonwebtoken");
const { OAuth2Client } = require("google-auth-library");

const client = new OAuth2Client(
  "736304931891-s9bh54hflv1r8upcrd0hokk79p80s5us.apps.googleusercontent.com"
);

module.exports = (req, res, next) => {
  // try {
  //   const token = req.headers.authorization.split(" ")[1];
  //   const decoded = jwt.verify(token, "rating");
  //   req.auth = decoded;
  //   next();
  // } catch (err) {
  //   return res.status(401).json({
  //     message: "Auth failed",
  //   });
  // }

  client
    .verifyIdToken({
      idToken: req.headers.authorization.split(" ")[1],
      audience:
        "736304931891-s9bh54hflv1r8upcrd0hokk79p80s5us.apps.googleusercontent.com",
    })
    .then((res) => {
      //console.log(res.payload);
      if (res.payload.email_verified) {
        req.auth = res.payload;
        next();
      }
    })
    .catch((err) => {
      return res.status(401).json({
        message: "Auth failed",
      });
    });
};
