const express = require('express');
const redis = require('redis');
const process = require('process');

const app = express();
const client = redis.createClient({
	host: 'redis-server',
	port: 6379
});
client.set('visits', 0);

app.get('/', (request, response) => {
  client.get('visits', (err, visits) => {
    response.send('Number of visits is ' + visits);
    client.set('visits', parseInt(visits) + 1);
  });
});

app.get('/error', (request, response) => {
	process.exit(0);
});

app.listen(8081, () => {
  console.log('Listening on port 8081');
});
