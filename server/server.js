const express = require("express");
const pool = require("./config/db");

const studentRoutes = require('./routes/studentRoutes');

const app = express();
const PORT = 3000;

app.use(express.json());
app.use('/students', studentRoutes);

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
})