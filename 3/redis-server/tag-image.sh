#!/bin/sh
docker build -t scottenriquez/redis-server:latest .
docker run scottenriquez/redis-server