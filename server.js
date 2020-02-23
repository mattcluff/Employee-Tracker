const inquirerGo = require("./inquirerStart");
const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    user: "root",
  
    password: "Dfib2989436097",
    database: "employeeTrackerDB"
  });
  
  connection.connect(function(err) {
      if (err) throw err;
      grabEmployees();
    });