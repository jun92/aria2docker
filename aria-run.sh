#!/bin/sh
echo $CONCURRENT_COUNT
echo $RPC_SECRET
aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port=8210 --max-concurrent-downloads=$CONCURRENT_COUNT --max-connection-per-server=10 --rpc-max-request-size=1024M --seed-time=0.01 --min-split-size=10M --follow-torrent=mem --split=10 --rpc-secret=$RPC_SECRET --max-overall-upload-limit=1 

