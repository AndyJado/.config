alias notay="hx ~/.config/zsh/subias/notake.sh"
alias chi="z chitto && jj"

# FLIRTO: flr link pasted
function flr() {
  z flirto

  # if has dir $1
  if [ -d "$1" ]
  then
    echo $1
  else
    mkdir -p $1
    echo "mkdir $1"
  fi

  pbpaste >> $1/$2.md 
  echo "\n" >> $1/$2.md
}
