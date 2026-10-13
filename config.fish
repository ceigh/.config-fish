########
# Path #
########

/opt/homebrew/bin/brew shellenv | source

fish_add_path -gmP ~/.bun/bin/
fish_add_path -gmP ~/.config/.bin/
fish_add_path -gmP ~/.asdf/shims/
fish_add_path -gmP ~/.cargo/bin/

#############
# Variables #
#############

set fish_greeting ""
set -g fish_prompt_pwd_dir_length 1
set -g fish_prompt_pwd_full_dirs 2

set -gx GPG_TTY (tty)
set -gx HOMEBREW_NO_ENV_HINTS 1
set -gx HOMEBREW_NO_ASK 1
set -gx EDITOR nvim
set -gx LAUNCH_EDITOR launch-editor-nvim
set -gx NODE_OPTIONS --openssl-legacy-provider
set -gx SKIP_SIMPLE_GIT_HOOKS 1
set -gx HUSKY 0
set -gx DO_NOT_TRACK 1
set -gx PRISMA_HIDE_UPDATE_MESSAGE true
set -gx BROWSERSLIST_IGNORE_OLD_DATA 1
set -gx DOTENV_QUIET true

###########
# Aliases #
###########

alias v="$EDITOR"
alias d="ni run dev"
alias gs="git status"
alias gf="git diff"
alias gff="gf HEAD"
alias ga="git add"
alias gm="git commit -m"
alias gl="git log"
alias gc="git checkout"
alias gp="git remote prune origin"
alias htop="btop"
alias top="btop"
alias yarn="yarn --ignore-scripts"
alias c="claude"

#######
# SSH #
#######

if test "$TERM_PROGRAM" = "ghostty"
  set -x TERM xterm-256color
end

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
