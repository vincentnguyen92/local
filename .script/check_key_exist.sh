#!/bin/bash

check_key_exist () {
    local __result=false;
    local your_choice="$1";

    echo "I am here"; exit;

    for KEY in "${!ACTIONS[@]}"; do
        local value=${ACTIONS[$KEY]};

        if [ $1 -eq $value ] then
            echo "has value"
        fi
        exit;
        echo $1;
        echo ${ACTIONS[$KEY]};

        if [ $1 -eq ${ACTIONS[$KEY]} ]
        then
            __result=true
            break
        fi
    done
    unset KEY;

    echo $__result;
    exit;

    echo $__result;
}
