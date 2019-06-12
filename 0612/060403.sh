#!/bin/bash

usage() {

    local script_name=$(basename $0)
    cat << END
Usage: 060403.sh DIRPATH...
DIRPATHで指定したディレクトリ下の実行可能ファイルの一覧表示
FILEPATH - 実行可能ファイルの一覧表示を行うディレクトリパスを指定

END
}


if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

for file in "$@"
do
    if [ -f "$file" ]; then
        du "$file"
    else

        echo "${file}: 通常のファイルではありません"
    fi
done
