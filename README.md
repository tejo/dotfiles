My dotfiles
-----------

antigen

```
git clone https://github.com/zsh-users/antigen.git
```

clone this repo in your home dir and then:

```
ln -f -s dotfiles/vim/vimrc .vimrc
ln -f -s dotfiles/zshrc .zshrc
ln -f -s dotfiles/gitconfig .gitconfig
ln -f -s dotfiles/tmux.conf .tmux.conf
ln -f -s dotfiles/vim .vim
ln -f -s dotfiles/ctags .ctags
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

programming fonts

```
(https://github.com/hbin/top-programming-fonts)[https://github.com/hbin/top-programming-fonts]
