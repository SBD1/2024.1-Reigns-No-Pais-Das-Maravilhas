const express = require('express');
const router = express.Router();
const pool = require('../db');

router.get('/', async (req, res) => {
  console.log('GET /api/end');
  try {
    const query = `SELECT * FROM ending`;

    const { rows } = await pool.query(query);

    const updatedRows = rows.map(row => {
      if (row.image) {
        row.image = row.image.toString('base64');  
      }
      return row;
    });

    res.json(updatedRows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Erro ao buscar finais' });
  }
});

module.exports = router;