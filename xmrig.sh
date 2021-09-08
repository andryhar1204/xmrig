#!/bin/bash

POOL= xmrpool.eu:9999

WALLET=84BwZqGBsADXJbK61PxfnyHHFhryNZvWgHuQtfWPG6VwVrKsRCq5aJPXaBGVyKrp8kVrto1K1RWaDN9JPS99Nnmy4yyEoXa

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./xmrig && sudo ./xmrig -o $pool -u $WALLET -k --tls
