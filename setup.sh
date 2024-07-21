git submodule update --init
path=$(pwd)
pushd ~ > /dev/null

files=(
  bashrc
  digrc
  gitconfig
  gitignore
  inputrc
  profile
  screenrc
  vim
  vimrc
)

for i in "${files[@]}"
do
  echo "linking ~/${path##$HOME/}/${i} to ~/.$i"
  ln -shf "${path##$HOME/}/${i}" ~/.$i
done
popd > /dev/null
