#!/usr/bin/bash
function dotloc {
  if [ -L ~/.bashrc ]; then
    echo "$HOME/$(dirname $(readlink ~/.bashrc))"
  else
    echo "$HOME/.dot"
  fi
}

function cddot {
  cd `dotloc`
}

function serve {
  port=$1
  if [ -z "$port" ]; then
    port=3000
  fi
  ruby -rwebrick -e "w = WEBrick::HTTPServer.new(:Port => ${port}, :DocumentRoot => '.'); %w(TERM INT).each {|s| trap(s) {w.shutdown}};w.start"
}

fixsound() {
  ps ax | grep '[c]oreaudiod' | awk '{print $1}' | sudo xargs kill
}

function pcd { cd ${PWD%/$1/*}/$1; }
