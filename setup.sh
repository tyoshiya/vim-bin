#!/bin/bash

#カレント内のドットファイルの中でsetupignore_filesに記載のないもののシンボリックリンクを貼る
for f in *.vim
do
    echo $f
    if [ ! -e $HOME/.vim/bin/$f ]; then
        ln -s $HOME/src/vim-bin/$f $HOME/.vim/bin/$f
        echo "$HOME/src/vim-bin/$f linked!"
    else
        echo "$HOME/.vim/bin/$f: file exists!"
    fi
done
