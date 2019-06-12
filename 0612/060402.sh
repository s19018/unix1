#!/bin/bash

usage() {
    local script_neme=$(basename $0)

    cat << END
usage: 060402.sh FILEPATH
FILEPATHで指定したファイルの容量を表示
FILEPATH - 容量を求めるファイルパスを指定、複数選択可

END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1 #終了ステータス１で終了
fi

for file in "$@"
do
    if [ -f "$file" ]; then
        du "$file"
    else

        echo "${file}: 通常のファイルではありません"
    fi
done
