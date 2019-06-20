let PORT = 3333
let HOST = '127.0.0.1';

const dgram = require('dgram');
let server = dgram.createSocket('udp4');

server.on('listening', ()=>{
    let address = server.address();
    console.log('UDP Server Listening on '+address.address+':'+address.port);
})