container_id=$(docker create hello-world)
docker start -a "$container_id"
docker start -a "$container_id"