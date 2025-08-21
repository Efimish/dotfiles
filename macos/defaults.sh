#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

###############################################################################
# Mouse                                                                       #
###############################################################################

# Disable mouse acceleration
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"

# Set mouse speed to 1
defaults write NSGlobalDomain com.apple.mouse.scaling -float "1"

###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver "askForPassword" -int "1"
defaults write com.apple.screensaver "askForPasswordDelay" -int "0"

###############################################################################
# Finder                                                                      #
###############################################################################

# Set ~ as the default location for new Finder windows
defaults write com.apple.finder "NewWindowTarget" -string "PfHm"

# Finder: show all filename extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Finder: hide status bar
defaults write com.apple.finder "ShowStatusBar" -bool "false"

# Finder: show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

# When performing a search, search the current folder by default
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices "DSDontWriteNetworkStores" -bool "true"
defaults write com.apple.desktopservices "DSDontWriteUSBStores" -bool "true"

# Use list view in all Finder windows by default
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

# Show the ~/Library folder
chflags nohidden ~/Library

###############################################################################
# Dock, Dashboard                                                             #
###############################################################################

# Set the icon size of Dock items to 64 pixels
defaults write com.apple.dock "tilesize" -int "64"

# Automatically hide and show the Dock
defaults write com.apple.dock "autohide" -bool "true"

# Don’t show recent applications in Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock "mru-spaces" -bool "false"

###############################################################################
# TextEdit                                                                    #
###############################################################################

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit "RichText" -bool "false"

# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit "PlainTextEncoding" -int "4"
defaults write com.apple.TextEdit "PlainTextEncodingForWrite" -int "4"

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Finder" "Dock" "SystemUIServer"; do
	killall "${app}" &> /dev/null
done

echo "Settings applied. Note that some of these changes require a logout/restart to take effect."
