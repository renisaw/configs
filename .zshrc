# P10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]];
	then
		source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Ini nyomot dari bash
alias ll='ls -alF'
alias la='ls -A'
alias grep='grep --color=auto'
# logo-ls is coool
# https://github.com/Yash-Handa/logo-ls
alias lls='logo-ls'

# Buat nunjukin IP public
alias ippublik='dig +short myip.opendns.com @resolver1.opendns.com'

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Cek koneksi
alias p='ping -c 20 google.com'

# Bikin direktori terus langsung masuk ke situ
mcd () {
	mkdir -p "$1"
	cd "$1"
}

# Buat mastiin VPN udah konek
# dg cara lihat IP publik-ku dari negara mana
ip2c () {
	curl http://ip2c.org/{$1} && echo
}
alias negara='ip2c `ippublik`'

# Buat nyimpen history aja
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=1000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

export PATH=/home/renisaaa/.local/bin:/home/renisaaa/.gem/ruby/2.7.0/bin:$PATH
