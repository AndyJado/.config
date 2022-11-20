#! usr/bin/bash
# remember export PAGER='most'

APP_ROOT=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))
FILE_PATH=~/.mostrc

ln -sf $APP_ROOT/config $FILE_PATH

