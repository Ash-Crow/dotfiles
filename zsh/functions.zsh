# Create a directory and cd into it.
mcd() { mkdir -p "$1" && cd "$1"; }

# Colorize the output of man.
export GROFF_NO_SGR=1
man() {
  env LESS_TERMCAP_mb=$'\E[01;31m'   \
  LESS_TERMCAP_md=$'\E[01;38;5;74m'  \
  LESS_TERMCAP_me=$'\E[0m'           \
  LESS_TERMCAP_se=$'\E[0m'           \
  LESS_TERMCAP_so=$'\E[30;43m'       \
  LESS_TERMCAP_ue=$'\E[0m'           \
  LESS_TERMCAP_us=$'\E[04;38;5;146m' \
  man "$@"
}
