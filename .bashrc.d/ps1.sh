case "${TERM}" in
  xterm*)
    cyan=$(tput setaf 6)
    red=$(tput setaf 1)
    magenta=$(tput setaf 5)
    fgcolor=$(tput sgr0)
    export PS1="\[${cyan}\]\W\[${red}\]"'$(__git_ps1 "(%s)")'"\[${magenta}\]\$ \[${fgcolor}\]"
    unset cyan red magenta fgcolor
  ;;
esac

function eot_check() {
  local row column
  local red=$(tput setaf 1)
  local fgcolor=$(tput sgr0)
  IFS=';' read -d R -p "$(tput u7)" -r -s row column
  if [[ "$column" -ne 1 ]]
  then
    echo "${red}␄${fgcolor}"
  fi
}

PROMPT_COMMAND="${PROMPT_COMMAND};eot_check"
