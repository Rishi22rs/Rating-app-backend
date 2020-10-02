const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
//const { addImages, selectRandom, vote } = require("./controller");

const app = express();
const port = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(cors());

app.get("/", (req, res) => {
  res.send("Hello Raters!");
});
// app.post("/addImages", addImages);
// app.get("/random", selectRandom);
// app.post("/vote", vote);

app.listen(port, () => {
  console.log(`Rating-backend listening at http://localhost:${port}`);
});
