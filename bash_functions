#!/usr/bin/bash

function cddot {
  cd $DOT
}

function pcd { cd ${PWD%/$1/*}/$1; }
