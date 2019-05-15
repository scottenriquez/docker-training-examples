#!/bin/sh
container_id=$(docker create busybox echo test logging)
docker start "$container_id"
docker logs "$container_id"