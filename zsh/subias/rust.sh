alias ha='cd ~/Taste/playgrun/examples/ && jj '
alias la='cargo run --example'
alias cabi='cargo run --bin'
# RUST_DEV=======================================================
alias gp='git pull upstream master'
alias pi='./x.py '
alias ti='cd ~/Zf/rust && ./x.py test src/test/ui/ --pass check'
alias ta='./x.py test src/test/ui/ --pass check --keep-stage 1'
alias ki='rm -rf src/tools/cargo && git reset --hard'

function pti() {
	./x.py test $1 --pass check --keep-stage 1;
}

function puremo() {
	git push --force-with-lease origin HEAD:$1
}
