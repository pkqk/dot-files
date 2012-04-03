source ~/.dot-files.git/bash_paths
#export PATH=~/bin:$PATH:/opt/local/bin:/usr/local/mysql/bin:/Applications/Shoes.app/Contents/MacOS

#export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}\007"'
#export DISPLAY=":0.0" # For X11 remoting
export GREP_OPTIONS="--color=auto"
export HISTCONTROL="ignoreboth"
export MANPATH=$MANPATH:/opt/local/man:/usr/local/man
#export LSCOLORS=gxfxcxdxbxegedabagacad
export LC_CTYPE=en_AU.UTF-8

if [ -e ~/.bashrc ]
then
  source ~/.bashrc
fi
