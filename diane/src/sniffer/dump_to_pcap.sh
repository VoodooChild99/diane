#!/bin/sh
exec sshpass -p $1 ssh $4@$2 'echo '$1' | sudo -S tcpdump -i '$5' -s0 -w - not port 22' > $3 2>/dev/null
