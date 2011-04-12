#!/usr/bin/bash
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

function ship_that_mother {
  autotag staging; git push $(g config master.deploy || echo lon3) master $1 && cap staging deploy:migrations
}

function cdc {
 cd ~/Reevoo/$1
}
complete -o default -W "$(cd ~/Reevoo && \ls)" cdc

alias sql='mysql -uroot'
function _sql_complete(){
 COMPREPLY=(`echo show databases | sql | grep -v -E "Database|mysql|information_schema" | grep -E "^$2"`)
}
complete -o default -F _sql_complete sql
