alias sb='hx ~/.config/zsh/subias/temp.sh'

function domd() {
  pandoc -f docx -t markdown $1
};

function pan() {
  pandoc -s -t $1 $2
}

function hxit() {
  hx $(find $1 -type f)
}

# replace curl with xx in file la
# $ awk '{sub(/curl/,"xx")}1' la
