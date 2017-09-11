#!/bin/bash

CONTAINER=$([ $# -lt 1 ] && echo angular-cli || echo $1)

docker stop $(docker ps -q --filter ancestor=$CONTAINER)
