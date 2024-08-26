# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your custom zsh configuration
export ZSH_CUSTOM=~/.config/zsh

# Source environment variables
source $ZSH_CUSTOM/environment.zsh

# Source aliases
source $ZSH_CUSTOM/aliases.zsh

# Source custom functions
source $ZSH_CUSTOM/functions.zsh

# Load plugins
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.fzf/shell/completion.zsh
source ~/.fzf/shell/key-bindings.zsh

# Load theme (example with powerlevel10k)
source $ZSH_CUSTOM/plugins/powerlevel10k/powerlevel10k.zsh-theme

# General settings
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'



# Enable completions
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Enable syntax highlighting for completions
autoload -Uz compinit && compinit
fpath+=~/.config/zsh/plugins/zsh-completions/src

# History settings
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#General Zsh settings
setopt autocd             # Change to a directory just by typing its name
setopt pushdminus         # Toggle between the current and previous directories using `-`
setopt no_beep            # Disable beeping sound
setopt extended_glob      # Enable extended globbing
setopt interactive_comments # Enable comments in interactive shells

# Prompt settings (if not using a theme like powerlevel10k)
#PROMPT='%F{202}i%f%F{208}k%f%F{214}e%f%F{220}@%F{221}sh%f%F{220}in%f%F{214}o%f%F{208}n:%f%F{202}%1~/%f %F{214}%#%f '
#PROMPT='%F{33}i%f%F{39}k%f%F{38}e%f%F{44}@%f%F{50}sh%f%F{43}in%f%F{44}on%f%F{214}:%1~/%f %F{202}%#%f '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey -v
