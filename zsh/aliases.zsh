alias reload!='. ~/.zshrc'

# Replace vi with vim
alias vi="vim"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Print file sizes in human readable format
alias fs="du -skh * | sort -nr"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# OS X specific aliases
if [[ $OSTYPE == darwin* ]]
then
  # Copies public SSH key to system clipboard
  alias pubkey="more ~/.ssh/id_dsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

  alias flush="sudo killall -HUP mDNSResponder "

  # Show/hide hidden files in Finder
  alias show="defaults write com.apple.finder AppleShowAllFiles YES; killall -HUP Finder"
  alias hide="defaults write com.apple.finder AppleShowAllFiles NO; killall -HUP Finder"

  # Hide/show all desktop icons (useful when presenting)
  alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
  alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

  # Stuff I never really use but cannot delete either because of http://xkcd.com/530/
  alias stfu="osascript -e 'set volume output muted true'"
  alias pumpitup="osascript -e 'set volume 7'"
  alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

  alias ff="sudo killall -KILL appleeventsd"
fi
