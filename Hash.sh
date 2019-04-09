#!/bin/bash
function put {
    EVAL_STR="${1}=\"${2}\""
    eval ${EVAL_STR}
}
function get {
    EVAL_STR="echo \$\{${1}\}"
    eval echo '${'${1}'}'
}
