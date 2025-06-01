###########
# Aliases #
###########

alias v="$EDITOR"
alias d="nr dev"
alias gs="git status"
alias gf="git diff"
alias gff="gf HEAD"
alias ga="git add"
alias gm="git commit -m"
alias gl="git log"
alias gc="git checkout"
alias tb="nc termbin.com 9999"
alias vpn="nvim -c 'set ft=jsonc' $HOMEBREW_PREFIX/etc/sing-box/config.json \
  && sudo brew services restart sing-box"
alias htop="btop"
alias top="btop"

#########
# Debug #
#########

# Measure loading time
# function timefish
#   set -l shell $argv[1]
#   if test -z "$shell"
#     set shell $SHELL
#   end
#   for i in (seq 1 10)
#     /usr/bin/time $shell -i -c exit
#   end
# end
