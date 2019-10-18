#!/bin/bash

add_configuration_nginx()
{
	echo -en "\n\n" >> server/sites-avaiable.conf;
	echo -en "# Add $1 configuration nginx\n" >> server/sites-avaiable.conf;
	echo -en "include /var/www/html/$1/$1.conf;" >> server/sites-avaiable.conf;
}