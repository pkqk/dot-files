#!/bin/bash
for f in $(find ~/.bashrc.d -name '*.sh' -o -name '*.bash' | sort)
do
  source "${f}"
done
