const mysql = require("mysql2/promise")
const pool = mysql.createPool({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "chiquito",
    database: "chiquitobd"
})
module.exports = Object.freeze({
    pool: pool
})
