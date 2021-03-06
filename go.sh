#!/bin/bash

flask_container="flask_app"
flask_image="flask-app"

user_defined_network="success-network"
flask_network="flask_net"

docker network rm ${user_defined_network}
sleep 3
docker network create ${user_defined_network}
sleep 3
cd database
bash connect_mysql_app.sh
cd ..
sleep 10

cd QA
docker build -t ${flask_image} .
sleep 10

docker container stop ${flask_container}
docker container rm ${flask_container}
sleep 7

cd ..
#当docker run flask之后，需要等待15秒的时间
docker run --network ${user_defined_network} \
            --network-alias ${flask_network} \
            --name ${flask_container} \
            -dp 5000:5000 ${flask_image}

