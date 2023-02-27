alias sumi='hx ~/.config/zsh/subias/misc.sh'

function 2ascii() {
	echo hex: $(echo "16i $1 P" | dc);
	echo deci: $(echo "10i $1 P" | dc);
}

function 2gif() {
	for i in $(fd -e $1)
	do
		var=${i%.*}
		# echo $var
	ffmpeg -i $var.$1 -vf 'scale=-1:1000' -r 15 $var.gif
	done
}