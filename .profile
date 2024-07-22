if [ -e ~/.bashrc -a -L ~/.bashrc ]
then
  export DOT="$HOME/$(dirname $(readlink ~/.bashrc))"

  for f in $(find ${DOT}/profile.d -name '*.sh' -o -name '*.bash' | sort)
  do
    source "${f}"
  done

  source ~/.bashrc
fi
