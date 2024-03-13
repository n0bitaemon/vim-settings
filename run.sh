#! /bin/bash
cp vimrc ~/.vimrc

git clone https://github.com/joshdick/onedark.vim.git

mkdir ~/.vim
cp -r onedark.vim/autoload ~/.vim/autoload

mkdir ~/.vim/colors
cp onedark.vim/colors/onedark.vim ~/.vim/colors/onedark.vim

mkdir -p ~/.vim/pack/*/opt
cp -r onedark.vim ~/.vim/pack/*/opt/onedark.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
