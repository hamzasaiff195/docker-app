const express = require('express');

const app = express();

app.get('/dockerTest', (req, res) => {
  res.status(200).send('Request Received');
});

const PORT = 8000;
const HOST = '127.0.0.1';

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
