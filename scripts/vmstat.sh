#!/bin/bash

TARGET=$1

while :
do
    cat /proc/vmstat | grep numa_pages_migrated >> ${TARGET}/numa_pages_migrated.txt
    cat /proc/vmstat | grep pgmigrate_su >> ${TARGET}/pgmig_suc.txt
    cat /proc/vmstat | grep pgmigrate_fail >> ${TARGET}/pgmig_fail.txt
    cat /proc/vmstat | grep thp_migration_success >> ${TARGET}/thp_pgmig_suc.txt
    cat /proc/vmstat | grep thp_migration_fail >> ${TARGET}/thp_pgmig_fail.txt
    cat /proc/vmstat | grep thp_migration_split >> ${TARGET}/thp_pgmig_split.txt

    sleep 1
done
