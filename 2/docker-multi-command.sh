#!/bin/sh
container_id=$(docker create redis)
docker start "$container_id"
docker exec -it "$container_id" redis-cli

#once the CLI starts, these commands can be used to interact with Redis
#set testValue 5
#get testValue