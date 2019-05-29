 sudo find /var -type f | while read file ; do sudo du $file ; done | sort -nr | grep '^0'
