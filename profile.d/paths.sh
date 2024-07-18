paths=(
  ~/bin
  ~/go/bin
  ~/go/bin/darwin_arm64
  /opt/homebrew/bin
  /opt/homebrew/opt/mysql-client@5.7/bin
  /opt/homebrew/opt/node@20/bin
  /opt/homebrew/opt/libpq/bin
)

export PATH="$(printf "%s:" "${paths[@]}")${PATH}"
unset paths
