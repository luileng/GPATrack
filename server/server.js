const express = require("express");
const pool = require("./db");

const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
    res.send("express server");
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
})