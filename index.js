const express = require("express");

const PORT = 8080;
const HOST = "0.0.0.0";

const app = express();

app.use("/", (req, res) => {
  res.send("Hello, Docker!");
});

app.listen(PORT, HOST, () => {
  console.log(`the express server is listening on http://${HOST}:${PORT}`);
});
