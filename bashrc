source ~/.dot-files.git/bash_paths
alias ls="ls -GF"
alias rbfn="egrep '^[ \t]*(private|public|protected|def|class|module)'"

alias pd="pushd"
alias dp="popd"

export R=~/Reevoo
export RV=$R/reevoo
export RW=$R/revieworld
export RM=$R/reevoomark
export RM3=$R/reevoomark3
alias cdr="cd $R"
alias cdrv="cd $RV"
alias cdrw="cd $RW"
alias cdrm="cd $RM"
alias cdm3="cd $RM3"

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
alias sd="script/dbconsole"
alias sr="script/runner"
alias sd4="script/dbconsole reporting4 -p"
alias sc4="script/console reporting4"
alias tt="touch tmp/restart.txt"
function log {
  tail -f log/${1-development.log}*
}

# Git aliases
alias g="git"
alias gs="git status"
alias gci="git commit -v"
alias gb="git branch"
alias gco="git checkout"
alias gcom="git checkout master"
alias gcop="git checkout production"
alias gm="git merge --no-ff"
alias ga="git add"
alias gd="git diff"
alias gp="git push"
alias gf="git fetch"
alias gfm="git pull"
alias gfr="git pull --rebase"
alias gx="gitx --all"

source ~/.bash_completion

yellow="\[\e[0;33m\]"
green="\[\e[0;32m\]"
red="\[\e[0;31m\]"
fgcolor="\[\e[0m\]"
export PS1="${green}\W${red}\$(__git_ps1 '(%s)')${fgcolor}\\$ "
unset yellow green red fgcolor
