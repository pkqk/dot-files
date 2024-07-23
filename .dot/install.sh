function dotcfg {
   git --git-dir=$HOME/.dot.git/ --work-tree=$HOME $@
}
dotcfg config status.showUntrackedFiles no
dotcfg checkout
dotcfg submodule update --init
