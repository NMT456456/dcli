source /usr/share/cachyos-zsh-config/cachyos-config.zsh
export SHELL=$(which zsh)

vi() {
    if [ $# -eq 0 ]; then
        nvim .
        return
    fi
    case "$1" in
        dcli)
            cd ~/.config/dcli/ && nvim .
            ;;
        null)
            nvim .
            ;;
        *)
            nvim "$@"
            ;;
    esac
}

alias ls="eza -1 --icons=always"
alias ll="eza -1 --icons=always -l -a"
alias lst="eza --icons=always -T"
alias llt="eza --icons=always -T -l -a"
alias cd="z"
alias cl="clear"
alias lg="lazygit"
alias spf="superfile"
alias cf='cd "$(zoxide query -l | fzf --style=full)"'
alias ffv='selected=$(fzf --style=full --preview="bat --color=always {}") && [ -n "$selected" ] && nvim "$selected"'
alias bootwin="~/.config/dcli/scripts/bootwin.sh"

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward


# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init zsh)"
