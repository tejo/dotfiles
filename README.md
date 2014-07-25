My dotfiles
-----------


clone this repo in your home dir and then link this babies

```
ln -s dotfiles/vim/vimrc .vimrc
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/vim .vim
ln -s dotfiles/ctags .ctags
mkdir dotfiles/vim/_backup
mkdir dotfiles/vim/_temp
```

vim setup

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

go tags support

```
go get -u github.com/jstemmer/gotags
```

