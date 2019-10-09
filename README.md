# The Localhost
## Getting Started
* Start a local environment fastest as you can imagination with... :whale: **DOCKER** :whale:
* Using with Nginx instead Apache as usual

### Installing
Using with docker-compose version 3
```
docker-compose up -d --build
mv .env-example .env
```
And your localhost was be ready...:star:  

**Notice:** Remember edit your hosts file  
**Example:** 127.0.0.1 site1.local

## How To Create A New Site
* Clone a nginx config file in vhost directory **site1.conf** and edit ***server_name*** and ***root***

## Database service default configuration
|   Service  |            IP           |    Port   |
|----------- |:-------------------:|---------:|
| Mysql     | **172.28.0.10** |   3306   |
| Postgres | **172.28.0.11** |   5432   |
| Mongo    | **172.28.0.12** |  27017  |

## Command Useful
* Access Container `docker-compose exec -it local_php bash`
* Install Composer `docker-compose exec local_php composer install -d /var/www/html/{directory_app}`

## Authors
* **Vincent Nguyen** - *No one* - [Vincent Nguyen](https://github.com/vincentnguyen92)

## Built With
* [Docker](https://store.docker.com/search?offering=community&type=edition) - Docker
* [PHP](https://hub.docker.com/_/php/) - PHP
* [NGINX](https://hub.docker.com/_/nginx/) - NGINX
* [MYSQL](https://hub.docker.com/_/mysql/) - MYSQL

## License
This project is licensed under the MIT License