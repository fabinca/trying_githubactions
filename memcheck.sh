#!/bin/sh

LOST_BYTES=$(valgrind ./philo 2>&1 | grep "in use at exit" | awk '{print $6}')
echo "lost bytes:  $LOST_BYTES"
if [ "$LOST_BYTES" == "0" ]; then
    exit 0
else
    exit 35
fi
