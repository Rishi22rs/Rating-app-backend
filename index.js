const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const isLoggedIn = require("./auth");
var upload = require("express-fileupload");
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
  addComment,
  getComments,
  userDetails,
  getUserDetails,
} = require("./controller");

const port = process.env.PORT || 6969;
const app = express();

app.use(upload());
app.use(cors());
app.use(bodyParser.json());
app.use(express.static(__dirname));

app.get("/", (req, res) => {
  res.send("Hello Raters!");
});
app.post("/login", isLoggedIn, login);
app.post("/addImages", isLoggedIn, addImages);
app.post("/random", selectRandom);
app.post("/vote", isLoggedIn, vote);
app.post("/view", isLoggedIn, view);
app.get("/category", category);
app.post("/leaderboard", leaderboard);
app.get("/profile", isLoggedIn, profile);
app.post("/profilePosts", isLoggedIn, profilePosts);
app.get("/explore", explore);
app.post("/addComment", isLoggedIn, addComment);
app.post("/getComments", getComments);
app.post("/userDetails", isLoggedIn, userDetails);
app.post("/getUserDetails", getUserDetails);

app.listen(port, () => {
  console.log(`Rating-backend listening at http://localhost:${port}`);
});
