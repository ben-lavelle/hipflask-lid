#!/bin/bash

# This file starts from a server with docker,
# docker-compose, etc. and user permissions set up.
# we also lready have made dir /srv/docker

# Import the docker compose file
curl \
    -o /srv/docker/docker-compose.yml \
    https://raw.githubusercontent.com/ben-lavelle/hipflask-lid/master/docker-compose.yml

# ## Step here omitted to deal with system restarts
# See https://github.com/mikegcoleman/todo/blob/master/lightsail-compose.sh

# Start up the application with docker-compose
docker-compose -f /srv/docker/docker-compose.yml up -d
