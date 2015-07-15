My dotfiles
-----------

clone this repo in your home dir and then:

```
ln -s dotfiles/bashrc .bashrc
ln -s dotfiles/bashrc .bash_profile
ln -f -s dotfiles/vim/vimrc .nvimrc
ln -f -s dotfiles/vim .nvim
ln -f -s dotfiles/gitconfig .gitconfig
ln -f -s dotfiles/tmux.conf .tmux.conf
ln -f -s dotfiles/ctags .ctags
```

nvim setup

```
nvim +PlugInstall
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
