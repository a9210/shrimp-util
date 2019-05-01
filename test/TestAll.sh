#!/bin/bash
source include.sh

TEST_RESULT=0

./test/Assert.sh || TEST_RESULT=1
./test/Hash.sh || TEST_RESULT=1

cp -pr ./test/oo-test.org ./test/oo-test
(cd ./test/oo-test;./oo-test.sh) || TEST_RESULT=1
#@call ./test/oo-test/oo-test.sh || TEST_RESULT=1
rm -rf ./test/oo-test


exit ${TEST_RESULT}
