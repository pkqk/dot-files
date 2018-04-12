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

