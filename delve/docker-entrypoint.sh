#!/bin/bash

appname='myapp'

# Find App process
echo "Looking for $appname process..."
pid=$(ps | grep $appname | awk {'print $1'})
while [[ -z $pid ]]; do
    echo $(ps)
    pid=$(ps | grep $appname | awk {'print $1'})
    echo "Process not found. Trying again in 1 second..."
    sleep 1
done

./bin/dlv attach $pid -l 0.0.0.0:2345 --headless=true --log=true