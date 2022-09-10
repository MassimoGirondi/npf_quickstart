#!/bin/bash
TESTNAME=forwarder

# Set some common things for all your tests
source common.sh

set -x
~/npf/npf-compare.py \
        "local" \
        ${NPF_OPTS} \
        --no-build \
        $@
# THis above line will pass all arguments, so you can e.g. add more --variables

set +x
