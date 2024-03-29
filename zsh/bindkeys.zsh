# To see the combo you want to use, just do:
# cat > /dev/null
# and type it

# Enable Emacs key bindings
bindkey -e

# Autoload some shit
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Search in history with up and down arrows
bindkey '\eOA' up-line-or-beginning-search
bindkey '\e[A' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search

# Quickly go to beginning and end of history
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history

# Navigate back and forward in words and lines
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "[A" beginning-of-line
bindkey "[B" end-of-line

# fn + backspace should work as the delete key
bindkey "^[[3~" delete-char

# Kill the whole line with CTRL + U
bindkey "^U" kill-whole-line
