#!/bin/sh
container_id=$(docker create busybox ping google.com)
docker start "$container_id"
docker kill "$container_id"
#since kill ends the process, only one ping will display
docker logs "$container_id"