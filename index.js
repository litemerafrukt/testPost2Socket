/* eslint-env node */

const app = require('express')();
const http = require('http').Server(app);
const io = require('socket.io')(http);
const bodyParser = require('body-parser');

app.use(bodyParser.json());

app.get('/', (request, response) => {
    response.sendFile(__dirname + '/index.html');
});

app.post('/broadcast', (request, response) => {
    console.log('broadcast message: ' + request.body);
    io.emit('message', request.body);
    response.send('ok');
});

io.on('connection', (socket) => {
    console.log('incomming connection');
    io.emit('message', {"message":"someone connected to server"});

    socket.on('disconnect', function() {
      console.log('someone disconnected');
   });
});

http.listen(1337, function(){
    console.log('listening on *:1337');
});
