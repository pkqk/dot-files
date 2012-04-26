DOT="$HOME/$(dirname $(readlink ~/.bashrc))"
source $DOT/bash_paths
source $DOT/bash_functions
source $DOT/bash_completion

export GREP_OPTIONS="--color=auto"
export HISTCONTROL="ignoreboth"

alias ls="ls -GF"

alias pd="pushd"
alias dp="popd"

alias p3="python3.0"

if [ -x "`which mate_wait`" ]
then
  export EDITOR=mate_wait
elif [ -x "`which mate`" ]
then
  export EDITOR="mate -w"
else
  export EDITOR=vim
fi
export LESSEDIT='mate -l %lm %f'

shopt -s extglob
shopt -s histappend

alias ql="2> /dev/null qlmanage -p"

alias m='[ -f $(basename $(pwd)).tmproj ] && open $(basename $(pwd)).tmproj || mate .'
alias sc="script/console"
alias aspec="autospec"
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
alias gp="git push"
alias gf="git fetch"
alias gfm="git pull"
alias gfr="git pull --rebase"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gx="gitx"

if `which rbenv`
then
eval "$(rbenv init -)"
fi

cyan="\[\e[0;36m\]"
green="\[\e[0;32m\]"
red="\[\e[0;31m\]"
fgcolor="\[\e[0m\]"
export PS1="${cyan}\h${fgcolor}:${green}\W${red}\$(__git_ps1 '(%s)')${fgcolor}\\$ "
unset cyan green red fgcolor

