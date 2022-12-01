alias sb='hx ~/.config/zsh/subias/temp.sh'

function domd() {
  pandoc -f docx -t markdown $1
};

function doast() {
  pandoc -s -t json $1
}