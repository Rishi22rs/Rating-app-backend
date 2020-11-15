const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const isLoggedIn = require("./auth");
const {
  addImages,
  selectRandom,
  vote,
  category,
  leaderboard,
  profile,
  profilePosts,
  login,
  explore,
} = require("./controller");

const app = express();
const port = process.env.PORT || 8990;
app.use(cors());
app.use(bodyParser.json());

app.get("/", (req, res) => {
  res.send("Hello Raters!");
});
app.post("/login", login);
app.post("/addImages", addImages);
app.post("/random", isLoggedIn, selectRandom);
app.post("/vote", isLoggedIn, vote);
app.get("/category", isLoggedIn, category);
app.post("/leaderboard", isLoggedIn, leaderboard);
app.get("/profile", isLoggedIn, profile);
app.post("/profilePosts", isLoggedIn, profilePosts);
app.get("/explore", isLoggedIn, explore);

app.listen(port, () => {
  console.log(`Rating-backend listening at http://localhost:${port}`);
});
