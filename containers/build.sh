#!/bin/bash

CONTAINER=$([ $# -lt 1 ] && echo angular-cli || echo $1)
DIR=$([ $# -lt 2 ] && echo web-client || echo $2)

docker build -f $DIR/Dockerfile -t $CONTAINER ../

