# Zim
source ~/.ziminit

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# FZF
## when installed using apt
#source /usr/share/doc/fzf/examples/key-bindings.zsh
#source /usr/share/doc/fzf/examples/completion.zsh
## when installed using git
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git --exclude /mnt"
export FZF_CTRL_T_COMMAND="fd --type=f --type=l --hidden --strip-cwd-prefix --exclude .git --exclude /mnt"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git --exclude /mnt"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"
## fzf default for tmux
export FZF_TMUX_OPTS=" -p90%,70% "

## fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -n 200'"

## fzf git
## https://github.com/junegunn/fzf-git.sh
source ~/scripts/fzf-git/fzf-git.sh

# Open buffer line in editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Aliases
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# Other settings
set KEYTIMEOUT 3

# ------------------------------
# Post-configuration run
# ------------------------------

# Auto launch tmux
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  # Attach to or create a session
  # tmux attach-session || tmux new-session

  tmux
fi
