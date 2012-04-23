source ~/.dot-files.git/bash_paths
alias ls="ls -GF"
alias rbfn="egrep '^[ \t]*(private|public|protected|def|class|module)'"
alias isvn="egrep -v '\.svn'"

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

#source /etc/bash_completion
source ~/.bash_functions

alias ql="2> /dev/null qlmanage -p"

alias m='[ -f $(basename $(pwd)).tmproj ] && open $(basename $(pwd)).tmproj || mate .'
alias sc="script/console"
alias aspec="autospec"
alias r="rake"

# Git aliases
alias g="git"
alias gs="git status"
alias gci="git commit -v"
alias gb="git branch"
alias gco="git checkout"
alias gm="git merge"
alias ga="git add"
alias gd="git diff"
alias gp="git push"
alias gf="git fetch"
alias gfm="git pull"
alias gx="gitx"

source ~/.bash_completion

cyan="\[\e[0;36m\]"
green="\[\e[0;32m\]"
red="\[\e[0;31m\]"
fgcolor="\[\e[0m\]"
export PS1="${cyan}\h${fgcolor}:${green}\W${red}\$(__git_ps1 '(%s)')${fgcolor}\\$ "
unset cyan green red fgcolor

