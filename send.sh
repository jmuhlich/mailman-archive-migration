#!/bin/sh

# formail helper script to introduce a delay between outgoing messages

echo sending message $FILENO
sleep 2
sendmail $1
