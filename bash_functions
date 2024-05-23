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

fixsound() {
  ps ax | grep '[c]oreaudiod' | awk '{print $1}' | sudo xargs kill
}

function pcd { cd ${PWD%/$1/*}/$1; }
