#/usr/bin/bash

sudo apt-get install vim
sudo apt-get install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.config/nvim
curl https://raw.githubusercontent.com/camilo-cf/nvim/main/init.vim> ~/.config/nvim/init.vim
pip3 install pynvim neovim jedi
mkdir ~/.config/nvim/colors
curl https://raw.githubusercontent.com/freeo/vim-kalisi/master/colors/kalisi.vim> ~/.config/nvim/colors/kalisi.vim
