git submodule update --init
path=`pwd`
pushd ~
for i in bashrc inputrc screenrc vim vimrc gitconfig gitignore profile
do
  ln -sf "${path##$HOME/}/${i}" ~/.$i
done
popd
