#!/bin/bash
#### default setting

sudo echo 1 > /sys/kernel/mm/numa/demotion_enabled

## enable numa balancing for promotion
sudo echo 2 > /proc/sys/kernel/numa_balancing
sudo echo 30 > /proc/sys/kernel/numa_balancing_rate_limit_mbps

## enable early wakeup
sudo echo 1 > /proc/sys/kernel/numa_balancing_wake_up_kswapd_early

## enable decreasing hot threshold if the pages just demoted are hot
sudo echo 1 > /proc/sys/kernel/numa_balancing_scan_demoted
sudo echo 16 > /proc/sys/kernel/numa_balancing_demoted_threshold