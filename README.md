My dotfiles
-----------

prezto version:

- follow prezto instructions: `https://github.com/sorin-ionescu/prezto`
- remove `.zshrc`

clone this repo in your home dir and then link this babies

```
ln -s dotfiles/vim/vimrc .vimrc
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/vim .vim
ln -s dotfiles/ctags .ctags
```

vim setup

```
vim +PlugInstall
```

go tags support

```
go get -u github.com/jstemmer/gotags
```

fzf

```
git clone https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

=======
cool fonts
```
https://github.com/hbin/top-programming-fonts
