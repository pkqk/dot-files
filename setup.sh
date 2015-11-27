git submodule update --init
path=`pwd`
pushd ~
for i in bashrc bundle inputrc screenrc vim vimrc gemrc gitconfig gitignore profile
do
  ln -sf "${path##$HOME/}/${i}" ~/.$i
done
popd
