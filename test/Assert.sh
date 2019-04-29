#!/bin/bash
source ./Assert.sh

echo "======== $0 ========"
NUM_OF_OK=0
NUM_OF_NG=0


RESULT=`echo mori`
assert ${RESULT} "mori"
RESULT="${RESULT} ougai"
assert "${RESULT}" "mori ougai"
assert "${RESULT}" "natsume souseki"

summary
assert "${NUM_OF_OK}" "2"
assert "${NUM_OF_NG}" "1"

NUM_OF_NG=$(expr ${NUM_OF_NG} - 1)
summary
exit $?