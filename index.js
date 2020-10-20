const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const {
  addImages,
  selectRandom,
  vote,
  category,
  leaderboard,
  profile,
} = require("./controller");

const app = express();
const port = process.env.PORT || 6969;
app.use(cors());
app.use(bodyParser.json());

app.get("/", (req, res) => {
  res.send("Hello Raters!");
});
app.post("/addImages", addImages);
app.post("/random", selectRandom);
app.post("/vote", vote);
app.get("/category", category);
app.post("/leaderboard", leaderboard);
app.get("/profile", profile);

app.listen(port, () => {
  console.log(`Rating-backend listening at http://localhost:${port}`);
});
