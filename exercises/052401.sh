git diff remotes/origin/master
read -p "ok? (y/n):"
case "$yn" in
    [yY]* ) echo "pushします。"
            git push ;;
    * ) echo "終了します。"
esac
