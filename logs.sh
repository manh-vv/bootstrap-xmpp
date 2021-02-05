#!/usr/bin/env bash

#
# https://gist.github.com/jonsuh/3c89c004888dfc7352be
# ----------------------------------
# Colors
# ----------------------------------
NO_COLOR='\033[0m'
B_GREEN='\033[1;32m'
B_RED='\033[1;31m'

function info() {
  printf "${B_GREEN}${@:1}${NO_COLOR}\n"
}

function error() {
  printf "${B_RED}${@:1}${NO_COLOR}\n"
  exit 1
}
