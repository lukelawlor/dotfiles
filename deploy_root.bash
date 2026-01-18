#!/usr/bin/env bash
# deploy_root.bash: copy dotfiles from this repo to your system using
# root privileges
cp -i etc/* /etc
cp -i bin/* /usr/local/bin
