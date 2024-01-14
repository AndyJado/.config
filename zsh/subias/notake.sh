alias chi="z chitto && jj"

# FLIRTO: flr link pasted
function flr() {
  dir=$1
  ttl=$2
  m=$3
  z flirto
  # if has dir $dir
  if [ -d "$dir" ]
  then
    echo $dir
  else
    mkdir -p $dir
    echo "mkdir $dir"
  fi

  pbpaste >> $dir/$ttl.md 
  echo "\n" >> $dir/$ttl.md
  git add .
  git commit -m $m
}
