#!/bin/bash

TARGET=$1

while :
do
    cat /proc/vmstat | grep pgmigrate_su >> ${TARGET}/pgmig.txt
    sleep 1
done
