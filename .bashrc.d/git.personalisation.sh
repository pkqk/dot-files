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

__git_complete g __git_main
__git_complete gci _git_commit
__git_complete gb _git_branch
__git_complete gco _git_checkout
__git_complete gm _git_merge
__git_complete ga _git_add
__git_complete gd _git_diff
__git_complete gdc _git_diff
__git_complete gp _git_push
__git_complete gf _git_fetch
__git_complete gfm _git_pull
__git_complete gfr _git_pull
__git_complete gff _git_pull
__git_complete gr _git_rebase
__git_complete grc _git_rebase

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM=auto
export GIT_PS1_STATESEPARATOR=''
