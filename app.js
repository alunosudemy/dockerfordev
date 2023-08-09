const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Bem-vindo ao meu aplicativo Node.js dentro de um Docker container!\n');
});

const PORT = process.env.PORT || 8080;

server.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});

