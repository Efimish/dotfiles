#!/usr/bin/env bash

# Dock

# Reset orientation and size
defaults delete com.apple.dock "orientation"
defaults delete com.apple.dock "tilesize"

# Auto hide
defaults write com.apple.dock "autohide" -bool "true"
# Disable recents
defaults write com.apple.dock "show-recents" -bool "false"

killall Dock

# Finder

# Show all extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
# Show Path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"
# Default to list view
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"
# Default search to current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

killall Finder


# Mouse

# Disable mouse acceleration
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"
# Reset mouse speed
defaults delete NSGlobalDomain com.apple.mouse.scaling

# Spaces

# Keep the Spaces arrangement
defaults write com.apple.dock "mru-spaces" -bool "false"
killall Dock

# TextEdit

# Disable rich text, use .txt
defaults write com.apple.TextEdit "RichText" -bool "false"
killall TextEdit
