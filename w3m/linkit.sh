APP_ROOT=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

for i in $APP_ROOT/src/*
do
  echo $(basename $i)
  ln -s $i ~/.w3m/$(basename $i)
done
