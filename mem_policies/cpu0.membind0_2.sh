#!/bin/bash

# PINNING="numactl -N 0 -m 0,2 --"
PINNING="numactl -C 0-31 -m 0,2 --"