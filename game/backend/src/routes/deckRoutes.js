const express = require('express');
const router = express.Router();
const pool = require('../db');

// Rota para retornar todas as cartas do banco com join em scene, dialogue e resource
router.get('/', async (req, res) => {
  console.log('GET /api/deck');
  try {
    const query = `
      SELECT 
        c.card_id AS id, 
        c.card_id, 
        c.left_next_card AS next_card_left, 
        c.right_next_card AS next_card_right, 
        c.item_id, 
        s.image AS scene_image, 
        s.name AS scene_name, 
        d.description AS card_dialogue, 
        d.answer_left, 
        d.answer_right,
        r.queen AS resource_queen, 
        r.popularity AS resource_popularity, 
        r.health AS resource_health, 
        r.size AS resource_size
      FROM 
        card c
      LEFT JOIN 
        scene s ON c.scene_id = s.scene_id
      LEFT JOIN 
        dialogue d ON c.dialogue_id = d.dialogue_id
      LEFT JOIN 
        resource r ON c.left_resource = r.resource_id OR c.right_resource = r.resource_id;
    `;
    
    const { rows } = await pool.query(query);

    // Converter o campo de imagem de bytea para base64, se houver
    const updatedRows = rows.map(row => {
      if (row.scene_image) {
        row.scene_image = row.scene_image.toString('base64');  // Converte bytea para base64
      }
      return row;
    });

    res.json(updatedRows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Erro ao buscar cartas' });
  }
});

module.exports = router;
