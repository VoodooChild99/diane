#!/bin/sh
exec sshpass -p $1 ssh $5@$2 'tcpdump -e -i '$6' -l not port 22 and src host' $3 'and dst host '$4 `shift 6; echo "${@}"` > /tmp/sniff_data 2>/dev/null
