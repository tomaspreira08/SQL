const express = require('express');
const sqlite3 = require('sqlite3').verbose();

const app = express();
const port = 8065;

// Conectar ao banco de dados SQLite
const db = new sqlite3.Database('escola.db');

// Rota para servir a página HTML
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

// Rota para buscar todos os alunos
app.get('/alunos', (req, res) => {
  db.all('SELECT * FROM Alunos', (err, rows) => {
    if (err) {
      res.status(500).send({ error: err.message });
      return;
    }
    res.send(rows);
  });
});

// Iniciar o servidor
app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
