const express = require('express');
const router = express.Router();
const pool = require('../db');

// Rota GET para pegar todos os itens com status TRUE
router.get('/', async (req, res) => {
  console.log('GET /api/items');
  try {
    const query = `
      SELECT i.item_id AS id, i.name, i.icon, i.status
      FROM item i 
      WHERE i.status = TRUE
    `;
    const { rows } = await pool.query(query);
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Erro ao buscar itens' });
  }
});

// Rota PUT para atualizar o status de um item pelo id
router.put('/:id', async (req, res) => {
  console.log('PUT /api/items/:id');
  const itemId = req.params.id;
  const { status } = req.body;  // Recebe o status atualizado pelo body

  try {
    const query = `
      UPDATE item 
      SET status = $1 
      WHERE item_id = $2
    `;
    await pool.query(query, [status, itemId]);
    res.status(200).json({ message: 'Status do item atualizado com sucesso' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Erro ao atualizar status do item' });
  }
});

module.exports = router;
