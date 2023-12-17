#!/bin/bash

BENCHMARKS="XSBench Graph500 PageRank silo btree"
MEM_POLICYS="cpu1.mem0_1_2 cpu1.mem1_2 cpu1.mem0_1"

sudo dmesg -c


for BENCH in ${BENCHMARKS};
do
    for MP in ${MEM_POLICYS};
    do
	./run_bench.sh -B ${BENCH} -M ${MP} -V autonuma
    done
done
