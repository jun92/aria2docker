#!/bin/sh
aria2c --enable-rpc \
    --rpc-listen-all=false \
    --rpc-listen-port $RPC_LISTEN_PORT \
    --max-concurrent-downloads=2 \
    --max-connection-per-server=10 \
    --rpc-max-request-size=1024M \
    --seed-time=0.01 \
    --min-split-size=10M \
    --follow-torrent=mem \
    --split=10 \
    --rpc-secret=$RPC_SECRET \
    --max-overall-upload-limit=1 
