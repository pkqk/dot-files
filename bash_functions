#!/usr/bin/bash
function dot {
  if [ -L ~/.bashrc ]; then
    echo "$HOME/$(dirname $(readlink ~/.bashrc))"
  else
    echo "$HOME/.dot"
  fi
}

function cddot {
  cd `dot`
}

function serve {
  port=$1
  if [ -z "$port" ]; then
    port=3000
  fi
  ruby -rwebrick -e "w = WEBrick::HTTPServer.new(:Port => ${port}, :DocumentRoot => '.'); %w(TERM INT).each {|s| trap(s) {w.shutdown}};w.start"
}

DOCKER_REPO_PREFIX=jess
aws(){
  docker run -it --rm \
    -v "${HOME}/.aws:/root/.aws" \
    --log-driver none \
    --name aws \
    ${DOCKER_REPO_PREFIX}/awscli "$@"
}
