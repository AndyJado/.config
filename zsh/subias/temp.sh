alias sb='hx ~/.config/zsh/subias/temp.sh'

function domd() {
  pandoc -f docx -t markdown $1
};

function doast() {
  pandoc -s -t json $1
}

function hxit() {
  hx $(find $1 -type f)
}

# replace curl with xx in file la
# $ awk '{sub(/curl/,"xx")}1' la
