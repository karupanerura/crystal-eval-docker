#!/bin/bash
cd $(dirname $0)
script=$1
echo $script > $PWD/tmp/main.cr
docker run -v $PWD/tmp:/tmp crystal-eval-image
