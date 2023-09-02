
const mysql = require('mysql2');


const pool = mysql.createPool({
  host: 'Localhost',
  user: 'root',
  password: '',
  database: 'gridxchange',
  waitForConnections: true,
  connectionLimit: 10, // Adjust as needed
  queueLimit: 0
});


pool.getConnection((err, connection) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to the database.');


  connection.release();
});
