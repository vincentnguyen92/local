#!/bin/bash

add_configuration_nginx()
{
    echo -en "\n\n" >> server/sites-avaiable.conf;
    echo -en "# Add $1 configuration nginx\n" >> server/sites-avaiable.conf;
    echo -en "include /var/www/html/$1/$1.conf;" >> server/sites-avaiable.conf;

    echo "Defined in nginx success...";
}

clone_example_source ()
{
    cp -avr www/example.local/ www/$1/;

    echo "Clone success";
}

find_and_replace ()
{
    find www/ -name '*.php' -exec
}

create_new_site () 
{
    echo "Enter you domain or subdomain";
    read DOMAIN;
    
    add_configuration_nginx "$DOMAIN";
    clone_example_source "$DOMAIN";
}