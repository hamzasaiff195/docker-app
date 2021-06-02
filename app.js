const express = require('express');

const app = express();

app.get('/dockerTest', (req, res) => {
  res.status(200).send('Request Received');
});

const PORT = 8080;
const HOST = '0.0.0.0';

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
