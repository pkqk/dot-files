source ~/.dot-files.git/bash_paths
alias ls="ls -GF"
alias rbfn="egrep '^[ \t]*(private|public|protected|def|class|module)'"
alias isvn="egrep -v '\.svn'"

alias pd="pushd"
alias dp="popd"

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
#source ~/.bash_completion

alias m='[ -f $(basename $(pwd)).tmproj ] && open $(basename $(pwd)).tmproj || mate .'
alias sc="script/console"
alias aspec="autospec"

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

yellow="\[\e[0;33m\]"
green="\[\e[0;32m\]"
red="\[\e[0;31m\]"
fgcolor="\[\e[0m\]"
export PS1="${yellow}\h${fgcolor}:${green}\W${red}\$(__git_ps1 '(%s)')${fgcolor}\\$ "
unset yellow green red fgcolor
