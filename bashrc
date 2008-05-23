alias ls="ls -GF"
alias rbfn="egrep '^[ \t]*(private|public|protected|def|class|module)'"
alias isvn="egrep -v '\.svn'"

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

#source /etc/bash_completion
source ~/.bash_functions
#source ~/.bash_completion

alias op="open *.tmproj"

# Git aliases
alias g="git"
alias gst="git status"
alias gci="git commit"
alias gb="git branch"
alias gco="git checkout"
alias gm="git merge"
alias ga="git add"
alias gd="git diff"
alias gsr="git svn rebase"
alias gspush="git svn dcommit"
alias gs="git stash"

source ~/.bash_completion

# command prompt
__git_ps1 ()
{
	local b="$(git symbolic-ref HEAD 2>/dev/null)"
	if [ -n "$b" ]; then
		if [ -n "$1" ]; then
			printf "$1" "${b##refs/heads/}"
		else
			printf "(%s)" "${b##refs/heads/}"
		fi
	fi
}
yellow="\[\033[00;33m\]"
green="\[\033[00;32m\]"
red="\[\033[00;31m\]"
fgcolor="\[\033[00m\]"
export PS1="${yellow}\h${fgcolor}:${green}\W${red}\$(__git_ps1)${fgcolor}\$ "
unset yellow green red fgcolor
