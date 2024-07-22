alias pd="pushd"
alias dp="popd"
alias ymdhms="date +%Y%m%d%H%M%S"
alias vimwipe="find . -name '*.sw[op]' -delete"

if ls --version 2&>/dev/null
then
  alias ls="ls -F --color=auto"
else
  alias ls="ls -GF"
fi
