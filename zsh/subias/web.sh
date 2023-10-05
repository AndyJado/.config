alias webias="hx ~/.config/zsh/subias/web.sh"
#===========================================================
alias wqdy="wget -np -c -r -e robots=off"
alias proxy='export all_proxy=socks5://127.0.0.1:7890'
alias unproxy='unset all_proxy'

# cheat rsync
function cheat() {
	curl -s cheat.sh/$1 | mdcat -p
}

function killp() {
	kill $(lsof -t -i :$1)
}

# getty objects computer https://ftp.lstc.com/objects/ls-dyna/
# getty user computer https://ftp.lstc.com/user/ls-tasc/LargeExamples/
function getty() {
	wget --user=$1 --password=$2 -r -np -nH --cut-dirs=1 --reject "index.html*" $3
}

