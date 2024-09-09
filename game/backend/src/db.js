require('dotenv').config();
const { Pool } = require('pg');

// Criação da pool de conexões
const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
});

console.log('host:', process.env.DB_HOST);
console.log('user:', process.env.DB_USER);
console.log('password:', process.env.DB_PASSWORD);
console.log('database:', process.env.DB_NAME);
console.log('port:', process.env.DB_PORT);

// Verificando a conexão
pool.connect((err, client, release) => {
    console.log('Senha do banco de dados:', process.env.DB_PASSWORD);
    console.log('Senha do banco de dados:', process.env.DB_HOST);


  if (err) {
    return console.error('Erro ao conectar ao banco de dados:', err.stack);
  }
  console.log('Conectado ao banco de dados com sucesso');
  release(); // liberar a conexão
});

module.exports = pool;
