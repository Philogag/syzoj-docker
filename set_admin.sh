#!/bin/bash

read -p "User: " SETUSER

echo UPDATE \`syzoj\`.\`user\` SET \`is_admin\` = 1 WHERE \`username\` = \'$SETUSER\'\; > tmp.sql

docker exec -i syzoj-docker_mysql_1 sh -c 'exec mysql -uroot -p123456' < tmp.sql
rm tmp.sql

docker-compose stop && docker-compose up -d

