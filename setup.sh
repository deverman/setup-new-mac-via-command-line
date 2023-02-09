#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

# Setup Finder Commands
# Show Library Folder in Finder
chflags nohidden ~/Library

# Show Hidden Files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Show Path Bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status Bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Check for Homebrew, and then install it
if test ! "$(which brew)"; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Homebrew installed successfully"
else
    echo "Homebrew already installed!"
fi

# Install XCode Command Line Tools
echo 'Checking to see if XCode Command Line Tools are installed...'
brew config

# Updating Homebrew.
echo "Updating Homebrew..."
brew update

# Upgrade any already-installed formulae.
echo "Upgrading Homebrew..."
brew upgrade

# Update the Terminal
# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Need to logout now to start the new SHELL..."
logout

# Install Git
echo "Installing Git..."
brew install git

# Install Python
echo "Installing Python..."
brew install python

# Install Sonos Command Line
echo "Installing Sonos Commandline..."
pip install -U soco-cli

# Install tea package manager
# TODO fix below line not working
# sh <(curl https://tea.xyz)


# Install other useful binaries.

# Install Speedtest
echo "Installing Speedtest..."
brew install speedtest_cli

# Install 1Password
# this is commented out because I don't want to upgrade to 1Password 7
# echo "Installing 1Password..."
# brew install 1password

# Install Anki
echo "Installing Anki..."
brew install anki

# Install arq 
echo "Installing Arq..."
brew install arq

# Install bartender
echo "Installing Bartender..."
brew install bartender

# Install BBEdit
echo "Installing BBEdit..."
brew install bbedit

# Install deno
echo "Installing Deno..."
brew install deno

# Install lighthouse
echo "Installing lighthouse..."
brew install lighthouse

# Install bitcoin-core
echo "Installing Bitcoin-core"
brew install bitcoin-core

# Install Brave Browser
echo "Installing Brave Browser..."
brew install brave-browser

# Install cardhop
echo "Installing Cardhop..."
brew install cardhop

# Install fantastical
echo "Installing Fantastical..."
brew install fantastical

# Install chronosync
echo "Installing ChronoSync"
brew install chronosync

# Install hazel
echo "Installing Hazel..."
brew install hazel

# Install Miro
echo "Installing Miro..."
brew install miro

# Install NordVPN
echo "Installing NordVPN..."
brew install nordvpn


# Install OmniDiskSweeper
echo "Installing OmniDiskSweeper..."
brew install omnidisksweeper

# Install Omnifocus
echo "Installing Omnifocus..."
brew install omnifocus
# Above install failed for me 

# Install Resilio-sync
echo "Installing Resilio-sync..."
brew install resilio-sync

# Install slack
echo "Installing Slack..."
brew install slack

# Install Signal
echo "Installing Signal..."
brew install signal

# Install Discord
echo "Installing Discord..."
brew install discord

# Install Telegram
echo "Installing Telegram..."
brew install telegram

# Install Timing
echo "Installing Timing..."
brew install timing

# Install Transmission
echo "Installing Transmission..."
brew install transmission

# Install Transmit
echo "Installing Transmit..."
brew install transmit

# Install Handbrake
echo "Installing Handbrake..."
brew install handbrake

# Install Spark Email
echo "Installing Spark..."
brew install readdle-spark

# Install Freedom
echo "Installing Freedom..."
brew install freedom

# Install Readwise ibooks app
echo "Installing Readwise ibooks app..."
brew install readwise-ibooks

# Install VLC app
echo "Installing VLC..."
brew install vlc

# Install Netnewswire
echo "Installing netnewswire..."
brew install netnewswire

# Install VS Code
echo "Installing VS Code..."
brew install visual-studio-code

# Install Dash
echo "Installing Dash..."
brew install --cask dash

## Install OBS
echo "Install OBS..."
brew install --cask obs

## Install Clay
echo "Install Clay..."
brew install --cask clay

## Install Github Commandline...
echo "Install Github Command line..."
brew install gh


# Install Mac App Store Command line...
echo "Installing Mac App Store Command line..."
brew install mas


# Install Apps from the Mac App store 
appStoreApps=(
	1333542190  # 1Password 7               (7.9.6)
	1225570693  # Ulysses                   (29.2)
	1153157709  # Speedtest                 (1.25)
	720669838   # iThoughtsX                (9.2)
	1277179284  # FSNotes                   (6.1.2)
	497799835   # Xcode                     (14.2)
	1289119450  # URL Linker                (1.1)
	403504866   # PCalc                     (4.10.5)
	# 1176895641  # Spark                     (2.11.27)
	1640236961  # Save to Reader            (0.15.10)
	1303222628  # Paprika Recipe Manager 3  (3.7.2)
	1376878040  # BlueWallet                (6.2.18)
	1659363738  # TapTab                    (1.3)
	899247664   # TestFlight                (3.2.3)
	409201541   # Pages                     (12.2.1)
	1055511498  # Day One                   (2023.1)
	639968404   # Parcel                    (7.6.6)
	1480068668  # Messenger                 (169.0)
	408981434   # iMovie                    (10.3.5)
	409203825   # Numbers                   (12.2.1)
	1381004916  # Discovery                 (2.1.0)
	1544743900  # Hush                      (1.0.10)
	409183694   # Keynote                   (12.2.1)

)

# Install AppStore apps
# WARNING: This tool can only reinstall apps that are already tied to you account. If you're downloading something for the first time do it through AppStore
mas install ${appStoreApps[@]}

# Accept XCode license 
sudo xcodebuild -license accept



# Remove outdated versions from the cellar.
echo "Running brew cleanup..."
brew cleanup
echo "You're done!"

# Additional to consider 
# default-folder-x
# karabiner-elements
# keyboard-maestro
# slack-cli
# whatsapp


# Items that need to be manually installed:
# - WordCounter
# - Readwise
# - Insta360 Link Controller
# - Exodus https://www.exodus.com/m1/
# - Ledger Live

