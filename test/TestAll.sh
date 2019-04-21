#!/bin/bash
TEST_RESULT=0

./Assert.sh || TEST_RESULT=1
./Hash.sh || TEST_RESULT=1

exit ${TEST_RESULT}
