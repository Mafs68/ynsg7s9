#!/bin/bash

while :
do
    echo "Time Now: `date +%H:%M:%S`"
    rodin=$(openssl rand -hex 20)
    echo $rodin
    sleep 5
    rod=$(openssl rand -base64 15)
    echo $rod
    sleep 20
done
