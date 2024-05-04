#!/bin/sh

begins_with() { case $1 in "$2"*) true;; *) false;; esac; }

if ! begins_with "$2" "git@github.com:otter-ai/"; then
  echo "Please only push this repo to Otter's GitHub ❤️"
  exit 1
fi

# TODO: Pipe jq output to `curl -H "Content-Type: application/json" -X POST --data-binary @- https://something`
# jq --arg email $(git config user.email) --arg files '{push_files}' --arg cmd '{0}' '{"files": $files | split(" "), "cmd": $cmd | split(" "), "type": "push", "actor": $email}'