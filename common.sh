#!/bin/bash

# Variables:
# NPF_RUNS: number of runs
# TESTNAME: folder name to hold the results
# GRAPH_TIME: generate or not time graphs. enabled for NPF_RUNS=1 by default
# SHOW_ALL: show all output.
# CLUSTER: where to run experiments


cd $(realpath $(dirname $0))
mkdir -p npf

NPF_RUNS=${NPF_RUNS:-1}



GRAPH_TIME=${GRAPH_TIME:-$(expr "$NPF_RUNS" == "1" )}
if ! [[ $@ =~ "graph-time" ]]; then
        if [[ $GRAPH_TIME  != 1 ]]; then
                TIME_GRAPH_OPTS="--no-graph-time"
        fi
fi

if ! [[ $@ =~ "show" ]]; then
        if [[ $SHOW_ALL  == 1 ]]; then
                SHOW_ALL="--show-all --show-cmd --variables TIMEOUT=3"
        fi
fi

CLUSTER=${CLUSTER:---cluster "dut=nslrack19" "tg=nslrack18"}

OUTPUT_OPTS="""--result-path npf/results/${TESTNAME}/ \
        --graph-filename npf/graphs/${TESTNAME}/ \
        ${TIME_GRAPH_OPTS}"""
RUN_OPTS="--npf simple_fastclick.npf --config n_runs=${NPF_RUNS}"
NPF_OPTS="${RUN_OPTS} ${CLUSTER} ${OUTPUT_OPTS} ${SHOW_ALL}"
