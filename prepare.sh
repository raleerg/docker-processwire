#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Please run script as root"
  exit
fi

HTTP_DIRECTORY="html"
REPOSITORY="https://github.com/processwire/processwire.git"
CLONE_REPO_COMMAND="git clone ${REPOSITORY} ${HTTP_DIRECTORY}"

if [ $(find ${HTTP_DIRECTORY} -maxdepth 0 -type d -empty 2>/dev/null) ]; then
    echo "Cloning repository ..."
    eval ${CLONE_REPO_COMMAND}
else
    echo "Repository is already cloned!"
fi

echo "Change permissions ..."
eval "chmod -R 777 ${HTTP_DIRECTORY}"

echo "Project is ready."
echo "Run 'docker-compose up' or 'docker-compose up -d'"


