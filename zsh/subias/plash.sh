alias shh='hx ~/.config/zsh/subias/plash.sh'

# all text from a docx
function wdit() {
  unzip -p $1 word/document.xml | sed -e 's/<[^>]\{1,\}>//g; s/[^[:print:]]\{1,\}//g'
}
