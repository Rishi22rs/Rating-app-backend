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
  view,
} = require("./controller");

const app = express();
const port = process.env.PORT || 6969;
app.use(cors());
app.use(bodyParser.json());

app.get("/", (req, res) => {
  res.send("Hello Raters!");
});
app.post("/login", isLoggedIn, login);
app.post("/addImages", addImages);
app.post("/random", selectRandom);
app.post("/vote", isLoggedIn, vote);
app.post("/view", isLoggedIn, view);
app.get("/category", category);
app.post("/leaderboard", leaderboard);
app.get("/profile", isLoggedIn, profile);
app.post("/profilePosts", isLoggedIn, profilePosts);
app.get("/explore", explore);

app.listen(port, () => {
  console.log(`Rating-backend listening at http://localhost:${port}`);
});
