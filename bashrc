if [ -L ~/.bashrc ]; then
  DOT="$HOME/$(dirname $(readlink ~/.bashrc))"
else
  DOT="$HOME/.dot"
fi
source $DOT/bash_paths
source $DOT/bash_functions
source $DOT/bash_completion

export GREP_OPTIONS="--color=auto"
export HISTCONTROL="ignoreboth"

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

alias sc="script/console"
alias r="rake"

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
alias gr="git rebase"
alias grc="git rebase --continue"
alias gx="gitx"

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

