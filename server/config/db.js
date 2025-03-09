const { Pool } = require("pg");

const pool = new Pool({
    connectionString: "postgresql://neondb_owner:npg_kY59QafJgRjN@ep-quiet-brook-a82faj3t-pooler.eastus2.azure.neon.tech/GPATrack?sslmode=require",
    ssl: { rejectUnauthorized: false }
});

pool.connect()
    .then(() => console.log("Connected to PostgreSQL"))
    .catch(err => console.error("Connection error", err));

module.exports = pool;