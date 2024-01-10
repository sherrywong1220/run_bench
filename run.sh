#!/bin/bash

<<<<<<< Updated upstream
# BENCHMARKS="XSBench Graph500 PageRank Silo BTree"
BENCHMARKS="XSBench PageRank Silo BTree"
MEM_POLICYS="cpu1.membind1_2 cpu1.membind0_1 cpu1.membind0_1_2 cpu1.interleave0_1_2"

# sudo dmesg -c

# VER="autonuma"
# VER="tiering-0.8"
# VER="tpp"
VER="memtis"
LOCAL_DRAM_SIZE="65G"
#LOCAL_DRAM_SIZE="100G"
#LOCAL_DRAM_SIZE="120G"
=======
#BENCHMARKS="XSBench Silo PageRank BTree"
BENCHMARKS="XSBench"
#BENCHMARKS="Silo"
#BENCHMARKS="PageRank"
# MEM_POLICYS="cpu1.membind1_2 cpu1.membind0_1 cpu1.membind0_1_2 cpu1.interleave0_1_2"
MEM_POLICYS="cpu1.membind1_2"

# sudo dmesg -c

#VER="autonuma"
VER="tiering-0.8"
#VER="tpp"
# VER="memtis"
LOCAL_DRAM_SIZE="65G"
#LOCAL_DRAM_SIZE="100G"
#LOCAL_DRAM_SIZE="120G"
#LOCAL_DRAM_SIZE="192G"
>>>>>>> Stashed changes

CURRENT_TIME=$(date "+%Y.%m.%d-%H.%M.%S")

for BENCH in ${BENCHMARKS};
do
    for MP in ${MEM_POLICYS};
    do
	./scripts/run_bench.sh -B ${BENCH} -M ${MP} -V ${VER} -LM ${LOCAL_DRAM_SIZE} >> ./log/${VER}_${CURRENT_TIME}.log
    sleep 15
    done
done
