FROM ubuntu:14.04

RUN apt-get update; apt-get install -y apt-transport-https curl; curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get update; apt-get install -y --force-yes nodejs git ssh-client
RUN npm install -g @angular/cli

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN npm install
RUN ng build --prod
COPY server.js ./dist/server.js
CMD cd dist && node server.js
#CMD ng serve --prod --host 0.0.0.0

EXPOSE 4200
