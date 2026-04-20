# -----------------------------
# PATH
# -----------------------------
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# -----------------------------
# Oh-My-Zsh
# -----------------------------
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    archlinux
)

source $ZSH/oh-my-zsh.sh

# -----------------------------
# Fastfetch (system info at startup)
# -----------------------------
#pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -
fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# -----------------------------
# Aliases
# -----------------------------
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias i="yay -S"
alias r="yay -Rns"
alias u="yay -Syu"
alias s="yay -Ss"
alias q="yay -Q"

alias gc="git clone"
# -----------------------------
# FZF (fuzzy finder keybindings)
# -----------------------------
if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi

# -----------------------------
# History
# -----------------------------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
echo ">>> reached plugins <<<"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/ayrik/.lmstudio/bin"
# End of LM Studio CLI section

