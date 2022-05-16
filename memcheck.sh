#!/bin/sh

LOST_BYTES=$(valgrind ./philo 2>&1 | grep "definitely lost" | tee | awk '{print $4}')
echo "lost bytes: " $LOST_BYTES
if [ "$LOST_BYTES" == "0" ]; then
    exit 0
else
    exit 1
fi
