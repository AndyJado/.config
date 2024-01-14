alias subi='hx ~/.config/zsh/subias/'

# function gub() {
#   $1 https://github.com/AndyJado/$2
# }
giha="https://github.com/AndyJado/"

function ocr() {
  ocrmypdf -l chi_sim+eng $1 $1
}

function domd() {
  pandoc -f docx -t markdown $1
};

function pan() {
  pandoc -s -t $1 $2
}

# buffer 写入这些文件，都看
function hxit() {
  hx $(find $1 -type f)
}
