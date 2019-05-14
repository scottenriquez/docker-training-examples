container_id=$(docker create hello-world)
docker start -a "$container_id"