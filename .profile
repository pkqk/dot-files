#!/bin/bash
if [ -e ~/.bashrc ]
then
  for f in $(find ~/.profile.d -name '*.sh' -o -name '*.bash' | sort)
  do
    source "${f}"
  done

  source ~/.bashrc
fi
