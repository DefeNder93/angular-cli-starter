#!/bin/bash

CONTAINER=$([ $# -lt 1 ] && echo angular-cli || echo $1)
PORT=$([ $# -lt 2 ] && echo 4000 || echo $2)

docker run -d -p $PORT:4200 $CONTAINER
