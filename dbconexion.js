const { Pool } = require('pg');
//Conexion a postgresql
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'examusuarios',
  password: '12345',
  port: 5433,
});

module.exports = pool;