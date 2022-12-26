#!/bin/bash

GITLAB_HOME=/srv/gitlab
sudo mkdir $GITLAB_HOME
sudo docker run --detach --rm \
  --hostname gitlab.example.com \
  --name vuln-gitlab \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  --shm-size 256m \
  --network="host" \
  gitlab/gitlab-ce:15.3.0-ce.0
