#!/bin/bash
TESTNAME=simple

# Set some common things for all your tests
source common.sh

        # "local+log_cores" \
        # "local+some_cores" \
set -x
~/npf/npf-compare.py \
        "local" \
        ${NPF_OPTS} \
        --variables "NCORES={1,4,6}" \
        --no-build \
        --tags noviolinplots time_avg \
        $@
# THis above line will pass all arguments, so you can e.g. add more --variables

set +x
