#!/usr/bin/env bash

# symlink everything in "$DOTFILES/zsh.d" BEXCEPT "zshrc" to "$XDG_CONFIG/zsh"

SYSTEM_GIT_IGNORE="$HOME/.gitignore"
DOTFILE_REPO_GIT_IGNORE="$HOME/.dotfiles/.gitignore"

# @NOTE: can reuse below for XDG_CONFIG-x-dotfiles future symlinks 
# xdg setup   
NEW_DIR_NAME="zsh"
XDG_CONFIG_HOME="$HOME/.config"
NEW_XDG_CONFIG_DIR="$XDG_CONFIG_HOME/$NEW_DIR_NAME" 
mkdir -p "$NEW_XDG_CONFIG_DIR" 2>/dev/null # ignore if already exists

# make symlinks

# uncomment to test before creating 
#find $HOME/.dotfiles/zsh.d/ -mindepth 1 | egrep -v "zsh.d\/zshrc$" | xargs -I "{}" echo ln -s {} "$NEW_XDG_CONFIG_DIR" 2>/dev/null


# create symlinks for "custom" zsh stuff
find $HOME/.dotfiles/zsh.d/ -mindepth 1 -type d | egrep -v "zsh.d\/zshrc$" | xargs -I "{}"  ln -s {} "$NEW_XDG_CONFIG_DIR" 2>/dev/null
