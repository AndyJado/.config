<<<<<<< Updated upstream
alias rua='vi ~/.config/zsh/subias/rust.sh'
alias ha='cd ~/Taste/playgrun/examples/ && jj '
=======
alias rua='hx ~/.config/zsh/subias/rust.sh'
>>>>>>> Stashed changes

# CARGO:
alias la='cargo run --example'
alias cabi='cargo run --bin'
alias dow='cargo install --path=.'
# RUST_DEV=======================================================
alias gp='git pull upstream master'
alias pi='./x.py '
alias spi='mainframer ./x.py '
alias ti='./x.py test tests/ui/ --pass check'
<<<<<<< Updated upstream
alias ta='./x.py test tests/ui/ --incremental --pass check --keep-stage 1'
alias sti='mainframer ./x.py test tests/ui/ --incremental --pass check --keep-stage 1 --bless'
# alias ki='rm -rf src/tools/cargo && git reset --hard'
=======
alias ta='./x.py test tests/ui/ --incremental --pass check --keep-stage 1 --bless'
alias sti="mainframer ./x.py test tests/ui/ --incremental --pass check --keep-stage 1 | rg '^[+|-]\s'"
alias spa="mainframer ./x.py test tests/ui/ --incremental --pass check --bless"
>>>>>>> Stashed changes

function ki() {
	git status -s | awk '{print $2}' | xargs rm -rf
	git reset --hard
}

function spti() {
	mainframer ./x.py test $1 --incremental --pass check --keep-stage 1 2>&1 >/dev/null | rg '^[+|-]\s';
}

# push to remote <branch name>
function puremo() {
	git push --force-with-lease origin HEAD:$1
}

# debugging dkbb at dir dkb
function dkb() {
	git restore source.k
	cargo build
	hx source.k
}
