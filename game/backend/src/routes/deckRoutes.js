const express = require('express');
const router = express.Router();
const pool = require('../db');

router.get('/', async (req, res) => {
  console.log('GET /api/deck');
  try {
    const query = `
      SELECT c.card_id AS id, c.image, c.card_name, d.description AS card_dialogue, 
             c.left_resource AS resource_left, c.right_resource AS resource_right, 
             c.left_next_card AS next_card_left, c.right_next_card AS next_card_right, 
             c.item_id 
      FROM card c 
      JOIN dialogue d ON c.dialogue_id = d.dialogue_id
      WHERE c.deck_id = $1
    `;
    const { rows } = await pool.query(query, [1]);  // Deck com ID 1, pode ser dinâmico
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Erro ao buscar cartas do deck' });
  }
});

module.exports = router;
