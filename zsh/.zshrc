# Enable git support
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b) '
setopt PROMPT_SUBST

# Customize the prompt
PROMPT='%F{cyan}%n@%m %F{green}%~ %F{magenta}${vcs_info_msg_0_}%F{yellow}:3 %f'

# Define aliases
alias ls="eza -la --icons=always --color=auto"
alias reload="source ~/.zshrc"

# Add stuff to path
export PATH="$HOME/.local/bin:$PATH"

# Add ~/.local/lib/python to Python's module path
export PYTHONPATH="$HOME/.local/lib/python${PYTHONPATH:+:$PYTHONPATH}"
