// Using the 'require' function to load the 'mysql' module of Node.js
const mysql = require('mysql')
//Create a new connection pool
const db = mysql.createPool({
  //The address of the database server
  host: '127.0.0.1',
  //Username
  user: 'root',
  //password
  password: '123456',
  //Connected database
  database: 'crowdfunding_db',
  //Allow multiple SQL statements to be executed in one connection
  multipleStatements: true,
})
//Use the 'exports' property of the 'module' object of Node.js to export the 'db' object. This means that other files can be imported into this module by 'require' to obtain the 'db' object and use it to interact with the MySQL database.
module.exports = db
