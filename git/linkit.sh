#! usr/bin/bash

APP_ROOT=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))
FILE_PATH=~/.gitconfig

ln -sf $APP_ROOT/config $FILE_PATH

