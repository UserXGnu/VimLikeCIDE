#!/bin/bash 

mkdir -p ~/.config/nvim/ 
cd bundle
git clone https://github.com/VundleVim/Vundle.vim.git 
cd ..
cp -rf * ~/.config/nvim/ 
cd ../ 
rm -rf VimLikeCIDE/

