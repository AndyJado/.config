alias rua='vi ~/.config/zsh/subias/rust.sh'
alias ha='cd ~/Taste/playgrun/examples/ && jj '

# CARGO:
alias la='cargo run --example'
alias cabi='cargo run --bin'
alias cadow='cargo install --path=.'
# RUST_DEV=======================================================
alias gp='git pull upstream master'
alias pi='./x.py '
alias ti='./x.py test tests/ui/ --pass check'
alias ta='./x.py test tests/ui/ --incremental --pass check --keep-stage 1'
alias sti='mainframer ./x.py test tests/ui/ --incremental --pass check --keep-stage 1'
alias ki='rm -rf src/tools/cargo && git reset --hard'

function pti() {
	./x.py test $1 --pass check --keep-stage 1;
}

function puremo() {
	git push --force-with-lease origin HEAD:$1
}
