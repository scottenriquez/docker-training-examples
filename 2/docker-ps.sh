#!/bin/sh
docker run busybox ping google.com &
sleep 5 &
docker ps