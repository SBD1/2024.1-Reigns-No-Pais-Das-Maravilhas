const express = require('express');
require('dotenv').config();
const pool = require('./db');
const app = express();
const port = process.env.PORT || 3000;

app.use(express.json());

// Rotas
const deckRoutes = require('./routes/deckRoutes');
const itemRoutes = require('./routes/itemRoutes');

app.use('/api/deck', deckRoutes);
app.use('/api/items', itemRoutes);

// Inicializa o servidor
app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});