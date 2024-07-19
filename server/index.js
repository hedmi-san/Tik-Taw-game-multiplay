//const { Socket } = require("dgram");
const express = require("express");
const http = require('http');
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT | 3000;
const io = require("socket.io")(server);

const DB = "mongodb+srv://abdohmd922:test123@cluster0.jyrwdql.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";
mongoose.connect(DB).then(() => {
    console.log("connection succesful")
})
io.on('connection', (socket) => {
    console.log("connected");
    socket.on("CreateRoom", ({ nickname }) => {
        console.log(nickname)
    })
})

var server = http.createServer(app);
app.use(express.json());
server.listen(port, "0.0.0.0", () => {
    console.log("server started at port :" + port);
});
// const express = require("express");
// const http = require('http');
// const mongoose = require("mongoose");
// const socketIo = require("socket.io");

// const app = express();
// const port = process.env.PORT || 3000;
// const server = http.createServer(app);
// const io = socketIo(server);

// const DB = "mongodb+srv://abdohmd922:test123@cluster0.jyrwdql.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

// mongoose.connect(DB, { useNewUrlParser: true, useUnifiedTopology: true })
//     .then(() => {
//         console.log("Database connection successful");
//     })
//     .catch((err) => {
//         console.error("Database connection error:", err);
//     });

// io.on('connection', (socket) => {
//     console.log("New client connected");

//     socket.on("CreateRoom", ({ nickname }) => {
//         console.log("Nickname received:", nickname);
//         // Handle room creation and database storage here
//     });

//     socket.on('disconnect', () => {
//         console.log("Client disconnected");
//     });
// });

// app.use(express.json());

// server.listen(port, "0.0.0.0", () => {
//     console.log("Server started at port:", port);
// });
