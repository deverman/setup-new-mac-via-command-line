# Setup a New Mac via the Command Line

## About

I wanted to do a fresh install on my new Apple Powerbook M1 so I created this script. You should fork and customize this script for your own needs.

This script can install apps via [Homebrew](https://brew.sh) and also the [Mac App Store](https://github.com/mas-cli/mas).

There is a [corresponding article on the manual setup steps for many of the apps](https://www.deverman.org/automating-a-new-macintosh-setup/) included in the command line install.

## Finding other apps

When using Homebrew you can use the following command to get a list of "Apps" that you can install:

`brew casks`

When using the [MAS-cli](https://github.com/mas-cli/mas) you can use this command:

`mas list`

### Based Off of the following:

The following repos and articles are is what I referenced:
- [YANMSS (Yet Another New Mac Setup Script)](https://github.com/mikeprivette/yanmss) - (This is the repository I forked)
- [MacOS setup](https://github.com/vol24pl/MacOS-setup)
- [How to Install Mac Apps in Terminal Using Homebrew](https://www.makeuseof.com/tag/install-mac-software-terminal-homebrew/)
