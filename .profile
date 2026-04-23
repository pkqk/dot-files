#!/bin/bash
for f in $(find ~/.profile.d -name '*.sh' -o -name '*.bash' | sort)
do
  source "${f}"
done

if [ -e ~/.bashrc ]
then
  source ~/.bashrc
fi
