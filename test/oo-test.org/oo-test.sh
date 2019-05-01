#!/bin/bash
TEST_RESULT=0
source include.sh

shrimp install shrimp-oo https://github.com/a9210/shrimp-oo develop
cp ../../*.sh ./packages/shrimp-util
echo "test1"
bash -x ./Hash.sh  || TEST_RESULT=1
echo "test2"

exit ${TEST_RESULT}
