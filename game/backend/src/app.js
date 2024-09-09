const express = require('express');
const cors = require('cors');  // Pacote de CORS
require('dotenv').config();
const pool = require('./db');
const app = express();
const port = process.env.PORT || 3000;

app.use(cors());  // Permitir requisições de origem cruzada
app.use(express.json());  // Permitir JSON no body das requisições

// Rotas
const deckRoutes = require('./routes/deckRoutes');
const itemRoutes = require('./routes/itemRoutes');
const endRoutes = require('./routes/endRoutes');

app.use('/api/deck', deckRoutes);
app.use('/api/items', itemRoutes);
app.use('/api/end', endRoutes);

// Inicializa o servidor
app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
