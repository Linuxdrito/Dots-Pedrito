source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search # Flecha Arriba
bindkey '^[[B' down-line-or-beginning-search # Flecha Abajo

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'


HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt CORRECT
setopt INC_APPEND_HISTORY

export PATH="$HOME/.local/bin:$HOME/.cabal/bin:$PATH"

alias nirii='dbus-run-session niri'
alias matrix='unimatrix -s 97'
alias fast='fastfetch'
alias mp3='z Mus && yt-dlp -f "ba" -x --audio-format mp3 --audio-quality 0 --embed-metadata --embed-thumbnail '
alias nvm='nvim'
alias hyprlandd='dbus-run-session hyprland'
alias sicobi="cd ~/Descargas/Programacionjava2A/SICOBI/src/ && nvm RegistroUsuarios.java"
alias xi="sudo xbps-install -S"
alias fastt="fastfetch --logo ~/Descargas/lain-gift.gif --logo-type kitty" 

PROMPT_EOL_MARK=""
EDITOR=nano

export PATH=$PATH:/home/pedrito/.spicetify
export PATH=$PATH:/usr/lib/jvm/openjdk17/bin
export COLORTERM=truecolor
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
