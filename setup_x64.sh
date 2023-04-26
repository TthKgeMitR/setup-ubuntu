#!/bin/bash

PWD="pass"

echo $PWD | sudo -S apt install -y terminator
echo $PWD | sudo -S apt install -y openssh-server
echo $PWD | sudo -S apt install -y neovim
echo $PWD | sudo -S apt install -y open-vm-tools-desktop

LANG=C xdg-user-dirs-gtk-update

wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
bash Miniforge3-Linux-x86_64.sh

mkdir -p ~/.congig/nvim
echo "set number" >> ~/.congig/nvim/init.vim
echo "set smartindent" >> ~/.congig/nvim/init.vim
echo "" >> ~/.congig/nvim/init.vim
echo "set expandtab" >> ~/.congig/nvim/init.vim
echo "set shiftwidth=4" >> ~/.congig/nvim/init.vim
echo "set softtabstop=4" >> ~/.congig/nvim/init.vim
echo "set tabstop=4" >> ~/.congig/nvim/init.vim
echo "" >> ~/.congig/nvim/init.vim
echo "set imdisable" >> ~/.congig/nvim/init.vim
echo "" >> ~/.congig/nvim/init.vim
echo "syntax enable" >> ~/.congig/nvim/init.vim

echo "" >> ~/.bashrc
echo "alias nv='nvim'" >> ~/.bashrc

echo "" >> ~/.bashrc
echo "export PROMPT_COMMAND='history -a; history -c; history -r; $PROMPT_COMMAND'" >> ~/.bashrc
echo "shopt -u histappend" >> ~/.bashrc

source ~/.bashrc