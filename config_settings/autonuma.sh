#!/bin/bash
echo 1 | sudo tee /proc/sys/kernel/numa_balancing
echo 0 | sudo tee /sys/kernel/mm/numa/demotion_enabled