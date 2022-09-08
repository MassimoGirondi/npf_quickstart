#!/bin/bash
TESTNAME=simple

# Set some common things for all your tests
source common.sh

set -x
~/npf/npf-compare.py \
        "local+some_cores" \
        ${NPF_OPTS} \
        --no-build \
        --tags noviolinplots time_avg \
        $@
# THis above line will pass all arguments, so you can e.g. add more --variables

set +x
