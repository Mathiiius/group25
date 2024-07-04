
import mysql from 'mysql2/promise';

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "silguagaitan_esmeralda",
    connectionLimit: 5
});

export default pool;
