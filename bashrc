source $DOT/bash_completion

for f in $(find ${DOT}/bashrc.d -name '*.sh' -o -name '*.bash' | sort)
do
  source "${f}"
done

alias pd="pushd"
alias dp="popd"
alias ymdhms="date +%Y%m%d%H%M%S"
alias vimwipe="find . -name '*.sw[op]' -delete"

if [ -d /usr/local/etc/bash_completion.d ]
then
  for i in /usr/local/etc/bash_completion.d/*
  do
    source $i
  done
fi
