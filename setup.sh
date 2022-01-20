git submodule update --init
path=`pwd`
pushd ~
for i in bashrc inputrc screenrc vim vimrc gemrc gitconfig gitignore profile digrc
do
  ln -shf "${path##$HOME/}/${i}" ~/.$i
done
popd
