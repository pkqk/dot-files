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

function svnrev {
  svn info | grep Revision | sed -e 's/Revision: //'
}

function svnrlog {
  rev=$(svnrev)
  num=$1
  if [ -z "$num" ]; then
    num=10
  fi
  svn log -v -rHEAD:$(( rev - num))
}

function svnsti {
  svn st --ignore-externals $@ | grep -v ^X
}

function serve {
  port=$1
  if [ -z "$port" ]; then
    port=3000
  fi
  ruby -rwebrick -e "w = WEBrick::HTTPServer.new(:Port => ${port}, :DocumentRoot => '.'); %w(TERM INT).each {|s| trap(s) {w.shutdown}};w.start"
}

function grepmate {
  grep -rin shifter $* | awk -F':' '{printf("mate -w -n -l %s %s\n",$2,$1)}' | bash -
}
