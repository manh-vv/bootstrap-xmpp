#!/usr/bin/env bash

source logs.sh

sname=$1

if [[ -z $sname ]]; then
  echo "Example:"
  info "./up.sh ejabberd"
  info "./up.sh mongooseim"
  sname=mongooseim
fi

FILE=.running.log

if [[ -f $FILE ]]; then
  docker ps
  error "$FILE exist. The service is running."
fi

# create running.log
echo "$sname" > $FILE

CMD="docker-compose -f ./docker-compose-$sname.yml up"
echo "execute command:"
info "$CMD"

$CMD

# clean
sh down.sh