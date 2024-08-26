# Common aliases
#alias ll='ls -lah'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# Use `exa` as a replacement for `ls` (optional)
if [[ -x "$(command -v exa)" ]]; then
  alias ls='exa --color=auto'
  alias ll='exa -l --color=auto --icons'
  alias la='exa -la --color=auto --icons'
fi

alias leo='ssh pi@192.168.1.163'
