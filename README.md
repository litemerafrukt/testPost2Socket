# testPost2Socket

A little express-server that takes a post request and broadcast by socket.

Open localhost:1337 in a browser to get client. Use curl, or something, to make a json post request to localhost:1337/broadcast to all open browsers.

json structure:
{ "message" : "Some message" }
