#!/bin/bash
function put {
        EVAL_STR="${1}=${2}"
        eval ${EVAL_STR}
}
function get {
        EVAL_STR="echo \$\{${1}\}"
        eval echo '${'${1}'}'
}
put "this_is_key" "value"
put "natsume" "souseki"
echo ${this_is_key}
get "this_is_key"
get "natsume"
