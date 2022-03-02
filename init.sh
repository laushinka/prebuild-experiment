#!/bin/bash -e

echo "Fire it up"

sudo curl -o /usr/local/bin/docker-compose -fsSL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-$(uname -m) \
&& sudo chmod +x /usr/local/bin/docker-compose && sudo mkdir -p /usr/local/lib/docker/cli-plugins \
&& sudo ln -s /usr/local/bin/docker-compose /usr/local/lib/docker/cli-plugins/docker-compose

echo "done"

docker compose pull
docker compose up --wait
docker compose down
docker compose ls

echo "I got here again, again more, and again"