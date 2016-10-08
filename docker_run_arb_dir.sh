#!/bin/bash

docker build -t sparkanaconda .
docker run -d -p 8888:8888 -m 4g --cpu-shares=2 -v $1:/root/jup sparkanaconda sh -c "pyspark"
