export BASH_SILENCE_DEPRECATION_WARNING=1

export EDITOR=${EDITOR:-vim}

export GREP_OPTIONS="--color=auto"

export HISTCONTROL="ignoredups:erasedups"
export HISTSIZE=10000
shopt -s histappend

shopt -s extglob

if ls --version 2&>/dev/null
then
  alias ls="ls -F --color=auto"
else
  alias ls="ls -GF"
fi
