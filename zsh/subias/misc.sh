alias sumi='hx ~/.config/zsh/subias/misc.sh'

function 2ascii() {
	echo hex: $(echo "16i $1 P" | dc);
	echo deci: $(echo "10i $1 P" | dc);
}

# search zsh histroy using rg
function hs() {
	fc -l 1 | rg -F $1
}

# *.$1 in $PWD 2 gif
function 2gif() {
	for i in $(fd -e $1)
	do
		var=${i%.*}
		# echo $var
	ffmpeg -i $var.$1 -vf 'scale=-1:1000' -r 15 $var.gif
	done
}

# 2master my-commit-msg
function 2master() {
	current=$(git branch --show-current)
	git stash
	git checkout main
	git stash pop
	git commit -am "$1"
	git push
	git checkout $current
	git rebase main
}
