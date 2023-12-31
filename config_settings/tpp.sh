#!/bin/bash
sudo echo 1 > /sys/kernel/mm/numa/demotion_enabled
sudo echo 3 > /proc/sys/kernel/numa_balancing