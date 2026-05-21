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


alias matrix='cybervis -m matrix -c red'
alias fast='fastfetch'
alias mp3='z Mus && yt-dlp -f "ba" -x --audio-format mp3 --audio-quality 0 --embed-metadata --embed-thumbnail '
alias nvm='nvim'
alias sicobi="cd ~/Descargas/Programacionjava2A/SICOBI/src/ && nvm RegistroUsuarios.java"
alias xi="doas xbps-install --repository=hostdir/binpkgs -f"
alias fastt="fastfetch --logo ~/Descargas/lain-gift.gif --logo-type sixel" 
alias fasttt="fastfetch --logo ~/Descargas/lain.jpg --logo-type kitty --logo-width 30 --logo-height 20" 
alias mangoo="dbus-run-session mango"
alias mangor="dbus-run-session mango -c /home/pedrito/.config/mango/configrojo.conf"
alias lavat="lavat -c blue -s 10"
alias netbeans="/opt/netbeans-25/bin/netbeans"
alias xbps-ram=' rm -f ~/void-packages/masterdir-x86_64 && mkdir -p /tmp/xbps-masterdir && cd ~/void-packages && ./xbps-src binary-bootstrap && mv ~/void-packages/masterdir-x86_64 /tmp/xbps-masterdir/ && ln -s /tmp/xbps-masterdir/masterdir-x86_64 ~/void-packages/masterdir-x86_64'
alias glitch="cybervis -m glitch"
alias neural="cybervis -m neural -c red"
alias plasma="cybervis -m plasma -c red"
alias cycells="cybervis -m cells -c red"

PROMPT_EOL_MARK=""
EDITOR=nano

export JAVA_HOME=/usr/lib/jvm/openjdk21
export PATH="$HOME/.local/bin:$HOME/.cabal/bin:$JAVA_HOME/bin:$HOME/.spicetify:$PATH"
export COLORTERM=truecolor
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
