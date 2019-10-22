#!/bin/bash
clean_all ()
{
    echo "<--- Cleanning site config";
    > server/sites-avaiable.conf
    echo "Clean success... --->";

    echo "<--- Cleanning source sites";
    rm -rf www/*
    echo "Clean success... --->";

    echo "<--- Start reload webserver container";
    docker restart webserver
    echo "Updated webserver success --->";
}