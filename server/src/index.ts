import express from 'express';
import sqlite3 from 'sqlite3';

const app = express();
app.use(express.json());

const db = new sqlite3.Database('database.db');

// Get polku tankkausasemien tiedoille
app.get("/api/gas_stations", (request, response) => {
  const query = 'SELECT * FROM gas_stations';

  db.all(query, [], (error, data) => {
    if (error) {
      response.status(500).json({ error: error.message });
      return;
    }
    response.json(data);
  });
});

const PORT = 3001;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}/`);
});

