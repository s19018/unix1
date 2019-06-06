#!/bin/bash

function cont() {
    echo -n 'continue?(y/n)'
    read yesno
    if [ $yesno = 'n' ]; then
        echo 'end...'
        exit
    fi
    echo 'continue...'
}
cd $HOME/repo/unix1/
git status
while :
do

    echo '1) git add -i'
    echo '2) git commit'
    echo '3) git push'
    echo '*) exit'
    echo -n 'select?(1/2/3/*) :'
    read select
    case "$select" in

        1)
            git add -i
            git status
            ;;
        2)
            echo -n 'comment:'
            read commemt
            git commit -m "$comment"
            git log --online
            ;;
        3)
            git push
            ;;
        *)
            echo 'end...'
            exit 0
            ;;
    esac
done

git add -i
git status
cont
echo -n 'comment: '
read comment
git commit -m "$comment"
git log --oneline
cont
git push
