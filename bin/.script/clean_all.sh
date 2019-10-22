#!/bin/bash
clean_all ()
{
    echo "Cleanning site config";
    > server/sites-avaiable.conf
    echo "Clean success...";

    echo "Cleanning source sites";
    rm -rf www/*
    echo "Clean success...";
}