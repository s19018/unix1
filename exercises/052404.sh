sed 1d ../personal_infomation.csv | cut -d, -f 7 | sort -nr |  uniq -c | sort -nr
