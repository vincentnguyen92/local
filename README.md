# Your Local

## Getting Started

Using LEMP instead LAMP as usual

### Installing
Using docker composer version 3
```
docker-compose up -d --build
```

## Built With

* [Docker](https://store.docker.com/search?offering=community&type=edition) - Docker
* [PHP](https://hub.docker.com/_/php/) - PHP
* [NGINX](https://hub.docker.com/_/nginx/) - NGINX
* [MYSQL](https://hub.docker.com/_/mysql/) - MYSQL

## Authors

* **Vincent Nguyen** - *No one* - [Vincent Nguyen](https://github.com/vincentnguyen92)

## License

This project is licensed under the MIT License

## Create Virual Host

* Clone a nginx config file in vhost directory **site1.conf** and edit ***server_name*** and ***root***

* **Using mysql instead localhost at config your project file.**

## Run Composer
`docker-compose exec php composer install -d directory_in_src`

