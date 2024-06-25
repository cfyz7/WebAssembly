const connect = require('connect');
const serveStatic = require('serve-static');

connect().use(serveStatic(__dirname + '/')).listen(9000, function() {
  console.log('localhost:9000');
});