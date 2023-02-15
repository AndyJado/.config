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
function getty() {
	wget --user=$1 --password=$2 -r -np -nH --cut-dirs=1 --reject "index.html*" $3
}

# transfer cheat.txt
transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n  transfer <file|directory>\n  ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}
