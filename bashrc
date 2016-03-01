if [ -L ~/.bashrc ]; then
  DOT="$HOME/$(dirname $(readlink ~/.bashrc))"
else
  DOT="$HOME/.dot"
fi
source $DOT/bash_paths
source $DOT/bash_functions
source $DOT/bash_completion
if [ -f "$DOT/bash_secret" ]
then
  source $DOT/bash_secret
fi

export GREP_OPTIONS="--color=auto"
export HISTCONTROL="ignoredups"
shopt -s histappend


if ls --version 2&>/dev/null
then
  alias ls="ls -F --color=auto"
else
  alias ls="ls -GF"
fi

alias pd="pushd"
alias dp="popd"

export EDITOR=vim

shopt -s extglob
shopt -s histappend

alias cdwork="cd -P ~/work"

# Git aliases
alias g="git"
alias gg="git g"
alias gs="git status -s"
alias gci="git commit -v"
alias gb="git branch"
alias gco="git checkout"
alias gm="git merge"
alias ga="git add"
alias gd="git diff"
alias gdc="git diff --cached"
alias gp="git push"
alias gf="git fetch"
alias gfm="git pull"
alias gfr="git pull --rebase"
alias gff="git pull --ff-only"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gx="gitx"

alias vimwipe="find . -name '*.sw[op]' -delete"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWSTASHSTATE=1

if which rbenv > /dev/null
then
  eval "$(rbenv init -)"
fi

cyan="\[\e[0;36m\]"
green="\[\e[0;32m\]"
red="\[\e[0;31m\]"
fgcolor="\[\e[0m\]"
export PS1="${cyan}\h${fgcolor}:${green}\W${red}\$(__git_ps1 '(%s)')${fgcolor}\\$ "
unset cyan green red fgcolor

# if using docker-osx
if which docker-osx > /dev/null
then
  eval `docker-osx env`
fi
if [ -d ~/.docker/machine/machines/default ]
then
  export DOCKER_HOST=tcp://$(docker-machine ip default):2376
  export DOCKER_CERT_PATH=~/.docker/machine/machines/default
  export DOCKER_TLS_VERIFY=1
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

if [ -t /opt/boxen/env.sh ]
then
  source /opt/boxen/env.sh
fi

if [ -d /usr/local/etc/bash_completion.d ]
then
  for i in /usr/local/etc/bash_completion.d/*
  do
    source $i
  done
fi
