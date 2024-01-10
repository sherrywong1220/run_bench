#!/bin/bash

TARGET=$1

rm -f ${TARGET}/numa_pages_migrated.txt
rm -f ${TARGET}/pgmig_suc.txt
rm -f ${TARGET}/pgmig_fail.txt
rm -f ${TARGET}/thp_pgmig_suc.txt
rm -f ${TARGET}/thp_pgmig_fail.txt
rm -f ${TARGET}/thp_pgmig_split.txt
rm -f ${TARGET}/pgpromote_success.txt
rm -f ${TARGET}/pgdemote_kswapd.txt
rm -f ${TARGET}/pgdemote_direct.txt

while :
do
    cat /proc/vmstat | grep numa_pages_migrated >> ${TARGET}/numa_pages_migrated.txt
    cat /proc/vmstat | grep pgmigrate_su >> ${TARGET}/pgmig_suc.txt
    cat /proc/vmstat | grep pgmigrate_fail >> ${TARGET}/pgmig_fail.txt
    cat /proc/vmstat | grep thp_migration_success >> ${TARGET}/thp_pgmig_suc.txt
    cat /proc/vmstat | grep thp_migration_fail >> ${TARGET}/thp_pgmig_fail.txt
    cat /proc/vmstat | grep thp_migration_split >> ${TARGET}/thp_pgmig_split.txt
    cat /proc/vmstat | grep pgpromote_success >> ${TARGET}/pgpromote_success.txt
    cat /proc/vmstat | grep pgdemote_kswapd >> ${TARGET}/pgdemote_kswapd.txt
    cat /proc/vmstat | grep pgdemote_direct >> ${TARGET}/pgdemote_direct.txt

    sleep 1
done
