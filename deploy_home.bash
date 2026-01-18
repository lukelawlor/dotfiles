#!/usr/bin/env bash
# deploy_home.bash: copy dotfiles from this repo to your home directory
mkdir -p $HOME/.config $HOME/bin $HOME/img
cp -ir .config/* $HOME/.config
cp -ir img/* $HOME/img
# Prefer copying executables as root with ./deploy_root.bash
#cp -i bin/* $HOME/bin
