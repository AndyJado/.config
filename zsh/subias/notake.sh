alias notay="hx ~/.config/zsh/subias/notake.sh"
alias chi="z chitto && jj"
alias duh="bash /Users/andyjado/Documents/mshell/date-pend.sh >>"
alias ma="bash /Users/andyjado/Documents/mshell/boma.sh"

function flirt() {
  z flirto && touch links/$1.md && pbpaste > links/$1.md && cd -
}
