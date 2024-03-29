
# Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Security shortcuts
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Read files
alias h='head -5'
alias t='tail -n5'
alias c='column -t'
# alias wl='wc -l'

# Monitoring
alias dirsize="du -h -d 1"
alias watch='watch '
alias w1='watch -n1 '
alias w5='watch -n5 '
alias sl='screen -list'
sr() { screen -r "$@" }
alias sc='screen'
alias tree='tree -C --dirsfirst'
alias myip='curl http://ipecho.net/plain'

# Git
alias glag='git log --all --graph'
alias gmg='gcmsg'
alias gcsmg='gcmsg'
alias glop='git -P log --pretty=oneline -10'
alias gplo='git -P log --pretty=oneline -10'
alias gpbl='git -P branch --list'
alias grop='git rebase origin/prod'
alias gropl='gco prod; ggl; gco -; git rebase prod'
alias grlp='gropl'
alias glast='git branch --sort=-committerdate'
alias gla='glast'
alias glah='glast | head -n 20'
alias ghla='glah'
alias gfh='git log --all --full-history --oneline'
alias gname='git show --name-only'
alias gn='gname'
alias gdiffname='git diff --name-status'
alias gdn='gdiffname'
alias grom='git rebase origin/main'
alias gfom='git fetch origin main'

# LaTeX
alias lbo='pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex ; open main.pdf'
alias lb='pdflatex main.tex ; bibtex main.aux ; pdflatex main.tex ; pdflatex main.tex'
# Obsolete
# alias lbo='latex main.tex ; bibtex main.aux ; latex main.tex ; pdflatex main.tex ; pdflatex main.tex ; open main.pdf'
# alias lb='latex main.tex ; bibtex main.aux ; latex main.tex ; pdflatex main.tex ; pdflatex main.tex'

# Rapid movements
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias doc='cd ~/Documents'
alias p2='python2'
alias p3='python3'
alias python='python3'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias ring="tput bel"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps aux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Webstorm
alias ws='/usr/local/bin/webstorm'

# Edit aliases
alias moda='vim ~/.dotfiles/custom/alias.zsh'
alias modf='vim ~/.dotfiles/custom/functions.zsh'

