#!/bin/sh
container_id=$(docker create busybox ping google.com)
docker start "$container_id"
docker stop "$container_id"
#since stop gives around 10 seconds and ping doesn't respond to SIGTERM, several pings will display
docker logs "$container_id"