#!/bin/bash
source ./Assert.sh
source ./Hash.sh

echo "======== $0 ========"

put "vocal" "Geddy Lee"
put "bass" "Geddy Lee"
put "guiter" "Alex Lifeson"
put "drums" "Neil Peart"

RESULT=$(get "vocal")
assert "${RESULT}" "Geddy Lee"
RESULT=$(get "bass")
assert "${RESULT}" "Geddy Lee"

summary
exit $?