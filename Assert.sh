#!/bin/bash
NUM_OF_OK=0
NUM_OF_NG=0

function assert {
        if [ "${1}" == "${2}" ]
        then
                echo -e "\033[42mASSERT OK:[${1}]\033[m"
                NUM_OF_OK=$(expr ${NUM_OF_OK} + 1)
                return 0
        else
                echo -e "\033[41mASSERT NG:[${1}][${2}]\033[m"
                NUM_OF_NG=$(expr ${NUM_OF_NG} + 1)
                return 1
        fi
}
function summary() {
    local NUM_OF_CASE=$(expr ${NUM_OF_NG} + ${NUM_OF_OK})
    if [ ${NUM_OF_NG} != 0 ]
    then
        echo -e -n "\033[41m"
    else
        echo -e -n "\033[42m"
    fi

    echo -e "NG:${NUM_OF_NG} OK:${NUM_OF_OK} TOTAL:${NUM_OF_CASE}\033[m"

    if [ ${NUM_OF_NG} -gt 127 ]
    then
        return 127
    else
        return ${NUM_OF_NG}
    fi
}
