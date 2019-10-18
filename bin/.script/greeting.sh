#!/bin/bash

greeting ()
{
    echo "======================================";
    echo "======== What do you want??? =========";
    echo "======================================";
    echo "Press a number for your desire";

    for KEY in "${!ACTIONS[@]}"; do
        echo ${ACTIONS[$KEY]}; 
    done
    unset KEY;
}
