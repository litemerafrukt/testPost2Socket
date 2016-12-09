#!/usr/bin/env bash
curl -H "Content-Type: application/json" -X POST -d '{"message":"Test some strings, there should be 1 + err + 4"}' http://localhost:1337/broadcast
curl -H "Content-Type: application/json" -X POST -d '{"message":"Loke"}' http://localhost:1337/broadcast
curl -H "Content-Type: application/json" -X POST -d '{"mess":"This should error!"}' http://localhost:1337/broadcast
curl -H "Content-Type: application/json" -X POST -d '{"message":"Freja"}' http://localhost:1337/broadcast
curl -H "Content-Type: application/json" -X POST -d '{"message":"Oden"}' http://localhost:1337/broadcast
curl -H "Content-Type: application/json" -X POST -d '{"message":"Frej"}' http://localhost:1337/broadcast
curl -H "Content-Type: application/json" -X POST -d '{"message":"Balder"}' http://localhost:1337/broadcast
