#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Set the list of directories that Zsh searches for programs.
path=(
  $HOME/bin
  $HOME/bin/homebrew/bin
  /usr/local/{bin,sbin}
  /usr/local/git/bin
  # Airport Utilities
  /System/Library/PrivateFrameworks/Apple80211.framework/Resources
  # Xcode Symbolicator
  /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/DTDeviceKit.framework/Versions/A/Resources
  /opt/homebrew-cask/Caskroom/postgres/latest/Postgres.app/Contents/MacOS/bin
  /usr/local/opt/ruby/bin  
  $path
)

HIST_STAMPS="mm/dd/yyyy"

export DEVELOPER_DIR="/Applications/XCode.app/Contents/Developer"
export VIM_APP_DIR="$HOME/bin/homebrew/Cellar/macvim/7.4-73_1/"
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

# -------------------------------------------------------------------
# git aliases
# -------------------------------------------------------------------
alias glgs='git log --graph --stat --max-count=5'
alias go='git checkout '
alias gst='git status'
alias gb='git branch'
alias gup='git pull --rebase'

# -------------------------------------------------------------------
# Custom aliases
# -------------------------------------------------------------------
alias l='ls -al'
alias pd='pushd'
alias mf='mdfind -onlyin'
alias history='history -i'
alias -s xcodeproj=/Applications/Xcode.app

# Kermit and pico 
alias kermit-ivy="kermit -m none -l /dev/tty.usbserial-AE01HVBF -b 115200 -c"
alias kermit-bean="kermit -m none -l /dev/tty.usbserial-AH01K2TJ -b 115200 -c"
alias kermit-zuzu="kermit -m none -l /dev/tty.usbserial-A901KNLY -b 115200 -c"
alias kermit-babs="kermit -m none -l /dev/tty.usbserial-A601DMCT -b 115200 -c"

alias pico-ivy="/opt/local/bin/picocom -b 115200 /dev/tty.usbserial-AE01HVBF"
alias pico-bean="/opt/local/bin/picocom -b 115200 /dev/tty.usbserial-AH01K2TJ"
alias pico-zuzu="/opt/local/bin/picocom -b 115200 /dev/tty.usbserial-A901KNLY"
alias pico-babs="/opt/local/bin/picocom -b 115200 /dev/tty.usbserial-A601DMCT"

alias ac='open -a /Applications/AppCode.app/'

#function kerm() { kermit -m none -l "$@" -b 115200 -c;}
function kermi() { kermit -l "$@" -b 115200 -C "SET CARRIER-WATCH OFF, connect"; }

function symbolicate_crash {
    DEVELOPER_DIR=$(xcode-select -print-path)  /Applications/Xcode.app/Contents/SharedFrameworks/DTDeviceKitBase.framework/Versions/A/Resources/symbolicatecrash -o $1-symbolicated $1 $2;
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


