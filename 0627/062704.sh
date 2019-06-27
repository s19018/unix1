sudo find ~ -type f | while read file ; do sudo du $file ; done 2> /dev/null | sort -nr | head -n 5
