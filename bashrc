for f in $(find ${DOT}/bashrc.d -name '*.sh' -o -name '*.bash' | sort)
do
  source "${f}"
done

alias pd="pushd"
alias dp="popd"
alias ymdhms="date +%Y%m%d%H%M%S"
alias vimwipe="find . -name '*.sw[op]' -delete"
