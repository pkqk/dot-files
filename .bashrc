for f in $(find ${DOT}/bashrc.d -name '*.sh' -o -name '*.bash' | sort)
do
  source "${f}"
done
