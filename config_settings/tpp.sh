#!/bin/bash
sudo echo 1 > /sys/kernel/mm/numa/demotion_enabled
sudo echo 3 > /proc/sys/kernel/numa_balancing
sudo echo 200 > /proc/sys/vm/demote_scale_factor