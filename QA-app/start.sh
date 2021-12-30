#!/bin/bash
user_defined_network="success-network"
mysql_network="mysql_net"
db_rootpass="123456"
db_name="QA"

mysql -u root -h ${mysql_network} -P 3306 -p${db_rootpass} -e "
CREATE DATABASE ${db_name};
SHOW DATABASES;
"
sleep 3
flask db init
sleep 2
flask db migrate
sleep 4
flask db upgrade
sleep 4

python3 app.py