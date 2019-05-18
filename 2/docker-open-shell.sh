#!/bin/sh
container_id=$(docker create redis)
docker start "$container_id"
docker exec -it "$container_id" sh