#!/bin/bash

PROCESS="sleep"
LOGFILE="./process_watchdog.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

if ! pgrep -x "$PROCESS" > /dev/null; then
  echo "$DATE | $PROCESS process is DOWN. Restarting..." >> $LOGFILE
  sleep 1000 &
  echo "$DATE | $PROCESS restarted successfully." >> $LOGFILE
else
  echo "$DATE | $PROCESS is running normally." >> $LOGFILE
fi

