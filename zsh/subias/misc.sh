alias sumi='hx ~/.config/zsh/subias/misc.sh'

# live watch
function pdf() {
	typst-live main.typ
}

# search zsh histroy using rg
function hs() {
	fc -ln 1 | rg -F $1
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

# temp
function 2png() {
	for i in $(fd -e $1)
	do
		var=${i%.*}
		# echo $var
	magick $var.$1 $var.png
	done
}

# 2master my-commit-msg
function 2master() {
	current=$(git branch --show-current)
	git stash -S
	git commit -am "reset later"
	git checkout main
	git stash pop
	git commit -am "$1"
	git push
	git checkout $current
	git rebase main
}
