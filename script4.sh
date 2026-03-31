#!/bin/bash
# Script 4: Log File Analyzer
LOGFILE="/var/log/dpkg.log"
KEYWORD="error"
COUNT=0
if [ ! -f "$LOGFILE" ]; then
    echo "Log file not found."
    exit 1
fi
while IFS= read -r LINE; do
    if echo "$LINE" | grep -i "$KEYWORD" > /dev/null; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
