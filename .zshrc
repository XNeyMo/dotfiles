#
#   ███████╗███████╗██╗  ██╗██████╗  ██████╗
#   ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#     ███╔╝ ███████╗███████║██████╔╝██║     
#    ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#   ███████╗███████║██║  ██║██║  ██║╚██████╗
#   ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
#       Author - XNeyMo
#       GitHub - https://github.com/xneymo/dotfiles
# 

#  ╔═╗╔═╗╦═╗╔═╗╔═╗╔╗╔╔═╗╦    ╔═╗╔═╗╔╗╔╔═╗╦╔═╗╦ ╦╦═╗╔═╗╔╦╗╦╔═╗╔╗╔
#  ╠═╝║╣ ╠╦╝╚═╗║ ║║║║╠═╣║    ║  ║ ║║║║╠╣ ║║ ╦║ ║╠╦╝╠═╣ ║ ║║ ║║║║
#  ╩  ╚═╝╩╚═╚═╝╚═╝╝╚╝╩ ╩╩═╝  ╚═╝╚═╝╝╚╝╚  ╩╚═╝╚═╝╩╚═╩ ╩ ╩ ╩╚═╝╝╚╝
export VISUAL="${EDITOR}"
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

#  ╔═╗╔═╗╔╦╗╦ ╦  ╔═╗╔═╗╔╗╔╔═╗╦╔═╗╦ ╦╦═╗╔═╗╔╦╗╦╔═╗╔╗╔
#  ╠═╝╠═╣ ║ ╠═╣  ║  ║ ║║║║╠╣ ║║ ╦║ ║╠╦╝╠═╣ ║ ║║ ║║║║
#  ╩  ╩ ╩ ╩ ╩ ╩  ╚═╝╚═╝╝╚╝╚  ╩╚═╝╚═╝╩╚═╩ ╩ ╩ ╩╚═╝╝╚╝
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

#  ╦╔╗╔╦╔╦╗╦╔═╗╦  ╦╔═╗╦╔╗╔╔═╗  ╔═╗╦ ╦╔╦╗╔═╗╔═╗╔═╗╔╦╗╔═╗╦  ╔═╗╔╦╗╔═╗
#  ║║║║║ ║ ║╠═╣║  ║╔═╝║║║║║ ╦  ╠═╣║ ║ ║ ║ ║║  ║ ║║║║╠═╝║  ║╣  ║ ║╣ 
#  ╩╝╚╝╩ ╩ ╩╩ ╩╩═╝╩╚═╝╩╝╚╝╚═╝  ╩ ╩╚═╝ ╩ ╚═╝╚═╝╚═╝╩ ╩╩  ╩═╝╚═╝ ╩ ╚═╝
autoload -Uz compinit add-zsh-hook vcs_info
compinit -C -d ~/.config/zsh/zcompdump
precmd () { vcs_info }
_comp_options+=(globdots)

#  ╔═╗╔╦╗╦ ╦╦  ╔═╗╔═╗  ╔═╗╔═╗╦═╗  ╔═╗╦ ╦╔╦╗╔═╗╔═╗╔═╗╔╦╗╔═╗╦  ╔═╗╔╦╗╔═╗
#  ╚═╗ ║ ╚╦╝║  ║╣ ╚═╗  ╠╣ ║ ║╠╦╝  ╠═╣║ ║ ║ ║ ║║  ║ ║║║║╠═╝║  ║╣  ║ ║╣ 
#  ╚═╝ ╩  ╩ ╩═╝╚═╝╚═╝  ╚  ╚═╝╩╚═  ╩ ╩╚═╝ ╩ ╚═╝╚═╝╚═╝╩ ╩╩  ╩═╝╚═╝ ╩ ╚═╝
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma=48;5;197;1'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:warnings' format "%B%F{red}No matches for:%f %F{magenta}%d%b"
zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'

#  ╦  ╦╦╔═╗╦ ╦╔═╗╦    ╔═╗╦ ╦╔╦╗╔═╗╔═╗╔═╗╔╦╗╔═╗╦  ╔═╗╔╦╗╔═╗
#  ╚╗╔╝║╚═╗║ ║╠═╣║    ╠═╣║ ║ ║ ║ ║║  ║ ║║║║╠═╝║  ║╣  ║ ║╣ 
#   ╚╝ ╩╚═╝╚═╝╩ ╩╩═╝  ╩ ╩╚═╝ ╩ ╚═╝╚═╝╚═╝╩ ╩╩  ╩═╝╚═╝ ╩ ╚═╝
dots_expand_or_complete() {
  echo -n "\e[31m…\e[0m" && zle expand-or-complete && zle redisplay
}

zle -N dots_expand_or_complete
bindkey "^I" dots_expand_or_complete

#  ╔═╗╔═╗╔╦╗╔╦╗╔═╗╔╗╔╔╦╗  ╦ ╦╦╔═╗╔╦╗╔═╗╦═╗╦ ╦
#  ║  ║ ║║║║║║║╠═╣║║║ ║║  ╠═╣║╚═╗ ║ ║ ║╠╦╝╚╦╝
#  ╚═╝╚═╝╩ ╩╩ ╩╩ ╩╝╚╝═╩╝  ╩ ╩╩╚═╝ ╩ ╚═╝╩╚═ ╩ 
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/zhistory

#  ╔═╗╔═╗╦ ╦  ╔═╗╔╦╗╦  ╦╔═╗╔╗╔╔═╗╔═╗╔╦╗  ╔═╗╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
#  ╔═╝╚═╗╠═╣  ╠═╣ ║║╚╗╔╝╠═╣║║║║  ║╣  ║║  ║ ║╠═╝ ║ ║║ ║║║║╚═╗
#  ╚═╝╚═╝╩ ╩  ╩ ╩═╩╝ ╚╝ ╩ ╩╝╚╝╚═╝╚═╝═╩╝  ╚═╝╩   ╩ ╩╚═╝╝╚╝╚═╝
setopt AUTOCD PROMPT_SUBST MENU_COMPLETE LIST_PACKED AUTO_LIST HIST_IGNORE_DUPS HIST_FIND_NO_DUPS COMPLETE_IN_WORD

#  ╔╦╗╦╦═╗╔═╗╔═╗╔╦╗╔═╗╦═╗╦ ╦  ╦╔═╗╔═╗╔╗╔
#   ║║║╠╦╝║╣ ║   ║ ║ ║╠╦╝╚╦╝  ║║  ║ ║║║║
#  ═╩╝╩╩╚═╚═╝╚═╝ ╩ ╚═╝╩╚═ ╩   ╩╚═╝╚═╝╝╚╝
function dir_icon {
    [[ "$PWD" == "$HOME" ]] && echo "%B%F{black}%f%b" || echo "%B%F{cyan}%f%b"  
}

#  ╔═╗╔═╗╔╦╗╔╦╗╔═╗╔╗╔╔╦╗  ╦  ╦╔╗╔╔═╗
#  ║  ║ ║║║║║║║╠═╣║║║ ║║  ║  ║║║║║╣ 
#  ╚═╝╚═╝╩ ╩╩ ╩╩ ╩╝╚╝═╩╝  ╩═╝╩╝╚╝╚═╝
PS1='%B%F{blue}%f%b  %B%F{magenta}%n%f%b $(dir_icon)  %B%F{red}%~%f%b${vcs_info_msg_0_} %(?.%B%F{green}.%F{red})%f%b '

#  ╔═╗╦  ╦ ╦╔═╗╦╔╗╔╔═╗
#  ╠═╝║  ║ ║║ ╦║║║║╚═╗
#  ╩  ╩═╝╚═╝╚═╝╩╝╚╝╚═╝
source ~/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

#  ╔═╗╔═╗╔╦╗╔╦╗╔═╗╔╗╔╔╦╗  ╔═╗╔═╗╔═╗╦═╗╔═╗╦ ╦
#  ║  ║ ║║║║║║║╠═╣║║║ ║║  ╚═╗║╣ ╠═╣╠╦╝║  ╠═╣
#  ╚═╝╚═╝╩ ╩╩ ╩╩ ╩╝╚╝═╩╝  ╚═╝╚═╝╩ ╩╩╚═╚═╝╩ ╩
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#  ╔╦╗╔═╗╦═╗╔╦╗╦╔╗╔╔═╗╦    ╔╦╗╦╔╦╗╦  ╔═╗
#   ║ ║╣ ╠╦╝║║║║║║║╠═╣║     ║ ║ ║ ║  ║╣ 
#   ╩ ╚═╝╩╚═╩ ╩╩╝╚╝╩ ╩╩═╝   ╩ ╩ ╩ ╩═╝╚═╝
function set_terminal_title() {
    print -Pn -- '\e]2;%n@%m %~\a'
    [[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

if [[ "$TERM" == (kitty*|alacritty*|termite*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
    add-zsh-hook -Uz precmd set_terminal_title
    add-zsh-hook -Uz preexec set_terminal_title
fi

#  ╔═╗╦  ╦╔═╗╔═╗
#  ╠═╣║  ║╠═╣╚═╗
#  ╩ ╩╩═╝╩╩ ╩╚═╝
alias mirrors="sudo reflector --verbose --latest 5 --country 'United States' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias maintenance="paru -Sc && sudo pacman -Scc"
alias purge="sudo pacman -Rns $(pacman -Qtdq) ; sudo fstrim -av"
alias update="paru -Syu --nocombinedupgrade"
alias vm-on="sudo systemctl start libvirtd.service"
alias vm-off="sudo systemctl stop libvirtd.service"
alias ls='lsd -a --group-directories-first'
alias ll='lsd -la --group-directories-first'
