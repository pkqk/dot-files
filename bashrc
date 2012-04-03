DOT_ROOT="$HOME/$(dirname $(readlink ~/.bashrc))"
source $DOT_ROOT/bash_paths
source $DOT_ROOT/bash_functions
source $DOT_ROOT/bash_completion

export GREP_OPTIONS="--color=auto"
export HISTCONTROL="ignoreboth"
export MANPATH=$MANPATH:/opt/local/man:/usr/local/man
export LC_CTYPE=en_GB.UTF-8

alias ls="ls -GF"

alias p3="python3.0"

if [ -x "`which subl`" ]
then
  export EDITOR="subl -n -w"
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
alias tt="touch tmp/restart.txt"

# Git aliases
alias g="git"
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
alias gx="gitx"
alias gg="git g"


yellow="\[\e[0;33m\]"
green="\[\e[0;32m\]"
red="\[\e[0;31m\]"
fgcolor="\[\e[0m\]"
cyan="\[\e[0;36m\]"
export PS1="${cyan}\W${yellow}\$(__git_ps1 '%%%s')${fgcolor}\\$ "
unset cyan yellow green red fgcolor

[ -f $DOT_ROOT/bash_local ] && source $DOT_ROOT/bash_local

# rbenv stuff
eval "$(rbenv init -)"
