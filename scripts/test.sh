#!/bin/sh

echo "The script you are running has:"
echo "basename: [$(basename "$0")]"
echo "dirname : [$(dirname "$0")]"
echo "pwd     : [$(pwd)]"

config=${XDG_CONFIG_HOME:-$HOME/.config}
SOURCE=${BASH_SOURCE[0]}

echo $SOURCE
echo "config = $config"

arr=(
    ".zshrc"
    ".config/tmux/"
    ".config/alacritty/"
    ".config/nvim/"
    ".config/lazygit/"
    ".config/yabai/"
    ".config/skhd/"
)

for item in ${arr[*]}
do
    echo $item
done
