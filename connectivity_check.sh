#!/bin/bash

HOST="localhost"
PORT=8080
LOG="connectivity.log"

echo "---- $(date) ----" >> $LOG

ping -c 1 $HOST &>/dev/null || echo "❌ Host unreachable" >> $LOG
ss -tuln | grep -q ":$PORT" || echo "❌ Port $PORT not listening" >> $LOG
curl -s $HOST:$PORT &>/dev/null || echo "❌ HTTP service unreachable" >> $LOG

echo "Check complete" >> $LOG

