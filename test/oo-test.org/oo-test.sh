#!/bin/bash
TEST_RESULT=0
source include.sh

shrimp install shrimp-oo https://github.com/a9210/shrimp-oo develop
cp ../../*.sh ./packages/shrimp-util

#bash -x ./Hash.sh  || TEST_RESULT=1
./Hash.sh  || TEST_RESULT=1


exit ${TEST_RESULT}
