const { log } = require('console');
const express = require('express');
const http = require('http');
const { default: mongoose } = require('mongoose');
const mogoose = require('mongoose');
const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);


var io = require('socket.io')(server);
app.use(express.json());

const DB = "mongodb+srv://abdohmd922:test123@cluster0.jyrwdql.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

io.on('connection', (Socket) => {
    console.log('connected!');

});


mongoose.connect(DB).then(() => {
    console.log('connection is succeseful');
}).catch();

server.listen(port, "0.0.0.0", () => {
    console.log('\Server started and running .... on Port :' + port);
})