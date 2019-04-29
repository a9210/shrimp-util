#!/bin/bash
TEST_RESULT=0

./test/Assert.sh || TEST_RESULT=1
./test/Hash.sh || TEST_RESULT=1

exit ${TEST_RESULT}
