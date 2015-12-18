#!/bin/bash

CMD="docker run \
       --rm \
       --name java \
       --net "host" \
       --user 1000:1000 \
       --volume $(pwd):/pwd \
       --volume $HOME:/home/developer \
       kurron/docker-java-runtime:latest"

#echo $CMD
eval $CMD $*
