#!/bin/sh

target="${XDG_CONFIG_HOME:-$HOME/.config}/tmux/plugins/tpm"

git clone https://github.com/tmux-plugins/tpm $target 
