#!/bin/sh
docker build -t scottenriquez/simpleweb .
docker run -it scottenriquez/simpleweb sh