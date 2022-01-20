git submodule update --init
path=$(pwd)
pushd ~ > /dev/null
for i in bashrc inputrc screenrc vim vimrc gemrc gitconfig gitignore profile digrc
do
  echo "linking ~/${path##$HOME/}/${i} to ~/.$i"
  ln -shf "${path##$HOME/}/${i}" ~/.$i
done
popd > /dev/null
