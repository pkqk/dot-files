# dot files

These are my dot files

## installation

1. `git clone --bare https://github.com/pkqk/dot-files $HOME/.dot.git`
2. `.dot/install.sh`
    * This will checkout the dot files using `$HOME` as the worktree
    * it may conflict with existing files

3. Put extra config in a file in  `~/.profile.d` or `~/.bashrc.d`
    * `~/.profile.d` is executed on login, useful for adding to `$PATH`
    * `~/.bashrc.d` is executed on every shell invocation, useful for setting up functions and more complex bash features
4. Restart your shell, it will be how I like it
5. Use `dotcfg` as the git command for tracking dot files

## based on

The git worktree trick described in the [atlassian tutorials][worktree]

[worktree]: https://www.atlassian.com/git/tutorials/dotfiles
