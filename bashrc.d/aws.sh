if [[ -s $(which aws_completer) ]]; then
  complete -C $(which aws_completer) aws
fi
