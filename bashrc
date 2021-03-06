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

export HISTCONTROL="ignoredups:erasedups"
export HISTSIZE=10000
shopt -s histappend

if ls --version 2&>/dev/null
then
  alias ls="ls -F --color=auto"
else
  alias ls="ls -GF"
fi

alias pd="pushd"
alias dp="popd"

export EDITOR=${EDITOR:-vim}

shopt -s extglob

alias ymdhms="date +%Y%m%d%H%M%S"

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
alias gpf="git push --force-with-lease"
alias gf="git fetch"
alias gfm="git pull"
alias gfr="git pull --rebase"
alias gff="git pull --ff-only && git cleanup"
alias gaff="git pull --autostash --ff-only && git cleanup"
alias gr="git rebase"
alias grc="git rebase --continue"

alias vimwipe="find . -name '*.sw[op]' -delete"

source $DOT/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM=auto
export GIT_PS1_STATESEPARATOR=''

if which rbenv > /dev/null
then
  eval "$(rbenv init -)"
fi

cyan='\[\e[0;36m\]'
green='\[\e[0;32m\]'
red='\[\e[0;31m\]'
magenta='\[\e[0;35m\]'
fgcolor='\[\e[0m\]'
export PS1=${cyan}'\h'${fgcolor}':'${green}'\W'${red}'$(__git_ps1 "(%s)")'${magenta}'\$ '${fgcolor}
unset cyan green red magenta fgcolor

alias dc=docker-compose
alias dr="docker-compose run --rm"
alias dlog="docker-compose logs --tail=10 -f"

if [ -d /usr/local/etc/bash_completion.d ]
then
  for i in /usr/local/etc/bash_completion.d/*
  do
    source $i
  done
fi

if [ -f "$DOT/bash_local" ]
then
  source $DOT/bash_local
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
