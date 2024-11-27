# dotfiles

```sh
# Install nice things to have
apt install htop

# Install TMUX
apt install tmux

# Move the tmux config file
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# Move the vimrc file
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Move the YCM extra config file
ln -s ~/dotfiles/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

# Clone the Vundle repository.
# See: https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install the Vundle Plugins.
vim +PluginInstall +qall

# Install YCM
apt install build-essential cmake vim-nox python3-dev
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

Note: May get an error when installing the plugins. But it will work.
