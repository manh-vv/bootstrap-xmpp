#!/usr/bin/env bash

source logs.sh

FILE=.running.log

if [[ ! -f $FILE ]]; then
  error "$FILE does not exist."
fi

f=$(cat .running.log)

docker-compose -f docker-compose-$f.yml down

rm .running.log
