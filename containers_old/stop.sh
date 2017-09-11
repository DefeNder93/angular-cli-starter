CONTAINER=angular-cli

docker stop $(docker ps -q --filter ancestor=$CONTAINER)
