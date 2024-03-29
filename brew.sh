#!/bin/sh
#
# Installs dependencies needed using Homebrew.


# Check for Homebrew
if test ! $(which brew)
then
  echo "  Please install Homebrew before running this script."
  echo "  Homebrew can be installed following instructions from https://brew.sh/"
  exit
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

DEV_FORMULAS_AND_CASKS=(
### Formulas
awscli
docker
gitkraken
node
webstorm
yarn
# datagrip
google-chrome
pandoc
tree
gawk
python3
R
black
postman

### Casks
1password
alfred
dashlane
go2shell
iterm2
slack
zoom
vlc

### Others Ovrsea
postgres (pour pg_restore)
dbeaver-community
pycharm-ce
gnumeric (pour ssconvert xlsx to csv)
)


FORMULAS=(
R
boost
csvkit
datamash
diff-pdf
gawk
git
inetutils
java
libgit2
llvm
npm
pandoc
postgres
python3
tree
vim
wget
yarn
zsh
)

CASKS=(
1password
Rstudio
alfred
brave-browser
go2shell
intellij-idea-ce
iterm2
java
mactex
skype
torbrowser
visual-studio-code
vlc
xquartz
zoom
zotero
)


brew install ${DEV_FORMULAS_AND_CASKS[@]}

# brew install ${FORMULAS[@]}

# brew cask install --appdir="/Applications" ${CASKS[@]}

brew cleanup

# brew cask cleanup


