#!/bin/bash
function @import {
    local PACKAGE_NAME=${1}
    local TARGET_SH=${2}
    RESULT=`cat package.txt | grep "^${PACKAGE_NAME}" | awk '{print $2;}'`
    echo "./packages/${RESULT}/${TARGET_SH}"
    return 0
}
function @call {
    local packageRootDir=""
    local tmpDir=""
    local isNeedAppend=false

    for dirToken in $(echo ${1} | sed "s/\// /g")
    do
        tmpDir="${tmpDir}${dirToken}/"
        if ${isNeedAppend}
        then
            isNeedAppend=false
            packageRootDir="${packageRootDir}${tmpDir}"
            tmpDir=""
        fi
        if [ ${dirToken} = "packages" ]
        then
            isNeedAppend=true
        fi
    done

    tmpDir=$(echo ${tmpDir} | sed "s/\/$//")
    shift
    {
        cd ${packageRootDir}
        ./${tmpDir} $@
    }
}
