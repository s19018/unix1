#!/bin/bash

usage() {

    local script_name=$(basename $0)
    cat << END
使い方: 062703.sh DIRPATH
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi
if [ -d "$1" ]; then
    find $1 -type f 2> /dev/null | echo "file=> ($(wc -l))"
    find $1 -type d 2> /dev/null | echo "directory=> ($(wc -l))"
else
    echo "$1": 'ディレクトリではありません'
fi
