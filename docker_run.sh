#!/bin/bash

docker run -d -p 8888:8888 -m 4g --cpu-shares=2 -v $(pwd)/jup:/root/jup sparkanaconda sh -c "pyspark"
