#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names



# Install wget with IRI support
brew install wget --with-iri

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
# brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
# brew install homebrew/dupes/screen

# autojump hopping around folders
brew install autojump

# mtr - ping & traceroute. best.
brew install mtr

    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install git git-lfs
brew install imagemagick --with-webp
brew install node nvm # This installs `npm` too using the recommended installation method
brew install yarn
brew install ffmpeg --with-libvpx

brew install ncdu # find where your diskspace went
# console stuff
brew install zsh
brew install zsh-autosuggestions 
    cat "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
brew install \ 
    ack \ # search files
    jq \ # json path query for jsons
    fzf \ # fuzzy search
    exa \ # fancy ls
    diff-so-fancy \ # fancy diff for git
    rmtrash # rm that deletes to trash
# dev stuff
brew install python3
brew install go
brew install swiftformat swiftlint

# Remove outdated versions from the cellar
brew cleanup
