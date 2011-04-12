export HISTCONTROL=ignoredups
shopt -s histappend
export PROMPT_COMMAND='history -a'
source ~/.dot-files.git/bash_paths
alias ls="ls -GF"
alias rbfn="egrep '^[ \t]*(private|public|protected|def|class|module)'"

alias pd="pushd"
alias dp="popd"

export RR=~/Reevoo
export RRV=$RR/reevoo
export RRW=$RR/revieworld
export RRM=$RR/reevoomark3
export RRF=$RR/review-filler
alias cdr="cd $RR"
alias cdrv="cd $RRV"
alias cdrw="cd $RRW"
alias cdrm="cd $RRM"
alias cdrf="cd $RRF"

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

alias m='[ -f $(basename $(pwd)).tmproj ] && open $(basename $(pwd)).tmproj || mate .'
alias sc="script/console"
alias sd="script/dbconsole"
alias sr="script/runner"
alias tt="touch tmp/restart.txt"
function log {
  tail -f log/${1-development.log}*
}

# Git aliases
alias g="git"
alias gs="git status -s"
alias gci="git commit -v"
alias gb="git branch"
alias gco="git checkout"
alias gcom="git checkout master"
alias gcop="git checkout production"
alias gm="git merge --no-ff"
alias ga="git add"
alias gd="git diff"
alias gdc="git diff --cached"
alias gp="git push"
alias gf="git fetch"
alias gfm="git pull"
alias gfr="git pull --rebase"
alias gx="gitx --all"

alias ab_on="touch enable_ab_test_feature"
alias ab_off="rm enable_ab_test_feature"

source ~/.bash_completion

yellow='\[\e[0;33m\]'
green='\[\e[0;32m\]'
red='\[\e[0;31m\]'
fgcolor='\[\e[0m\]'
export PS1="${green}\W${yellow}\$(__git_ps1 '(%s)')${fgcolor}\$ "
unset yellow green red fgcolor

export RUBYOPT="-rubygems"
export AUTOTAGGER_GIT_REMOTE_NAME="reevoo"
