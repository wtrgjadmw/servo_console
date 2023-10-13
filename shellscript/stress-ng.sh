#!/bin/bash
function workload () {
    ectool chargecontrol idle
    stress-ng -c 1 -t $1
    echo "workload"
}
echo "start"
 workload 3 1> ./test_out.log 2> ./test_err.log
echo "end"