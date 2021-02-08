#!/bin/bash

TARGET=app-01a
TIME=259200000
TEST=1

rm -rf result-a1.txt

while [ $TIME -gt 0 ]

do

echo "Test $TEST" >> result-a1.txt
date >> result-a1.txt
curl -i http://$TARGET >> result-a1.txt
TEST=$(( $TEST + 1))
TIME=$(( $TIME - 1))

sleep 1

done

exit 0
