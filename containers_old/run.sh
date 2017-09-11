CONTAINER=angular-cli
PORT=4000

docker run -d -p 127.0.0.1:$PORT:4200  $CONTAINER
