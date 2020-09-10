# Ini nyomot dari bash
alias ll='ls -alF'
alias la='ls -A'
alias grep='grep --color=auto'

# Buat nunjukin IP public
alias ippublik='dig +short myip.opendns.com @resolver1.opendns.com'

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

