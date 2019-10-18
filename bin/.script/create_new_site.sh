#!/bin/bash

add_configuration_nginx()
{
    echo "<--- Start add to nginx configuration";
    echo -en "# Config-$1\n" >> server/sites-avaiable.conf;
    echo -en "include /var/www/html/$1/$1.conf;" >> server/sites-avaiable.conf;
    echo "Added to nginx configuration --->";
}

clone_example_source ()
{
    echo "<--- Start clone from source";
    cp -avr bin/.script/example.local/ www/$1/;
    echo "Clone success --->";
}

replace_string ()
{
    echo "<--- Changing example.conf to $1.conf";
    mv www/$1/example.local.conf www/$1/$1.conf;
    echo "Changed to $1.conf --->";
    
    echo "<--- Find and replace example.local string to $1";
    sed -i "s/example.local/$1/g" www/$1/$1.conf;
    sed -i "s/example.local/$1/g" www/$1/src/index.php;
    echo "Replaced to $1 --->";
}

create_new_site () 
{
    echo "<--- Enter you domain or subdomain --->";
    read DOMAIN;

    add_configuration_nginx "$DOMAIN";
    clone_example_source "$DOMAIN";
    replace_string "$DOMAIN";

    echo "<--- Start reload webserver container";
    docker restart webserver
    echo "Updated webserver success --->";
    read;
}