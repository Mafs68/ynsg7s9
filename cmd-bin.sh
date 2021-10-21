# cat /tmp/testscript.sh
#!/bin/bash

runtime="1000 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
    echo "Time Now: `date +%H:%M:%S`"
    rodin=$(openssl rand -hex 20)
    echo $rodin
    sleep 5
    rod=$(openssl rand -base64 15)
    echo $rod
    sleep 20
done
