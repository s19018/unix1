inport=$1
curl http://zip.cgis.biz/csv/zip.php?zn=$inport 2> /dev/null | nkf -wLu
