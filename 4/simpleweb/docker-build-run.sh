#!/bin/sh
docker build -t scottenriquez/simpleweb .
docker run -p 3000:8080 scottenriquez/simpleweb