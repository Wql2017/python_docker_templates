#!/bin/bash

container_name="mysql-app-latest"
db_username="root"
db_rootpass="123456"
mysql_network="mysql_net"
user_defined_network="success-network"

docker container stop ${container_name}
docker container rm ${container_name}
sleep 7
docker run --name ${container_name} \
            -e MYSQL_ROOT_PASSWORD=${db_rootpass} \
            --network ${user_defined_network} \
            --network-alias ${mysql_network} \
            -p 49156:3306 \
            -d mysql:5.7
            
sleep 10
mysql -u root -h "127.0.0.1" -P 49156 -p${db_rootpass} -e "
show databases;
"