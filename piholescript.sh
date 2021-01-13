#!/bin/bash
saida_pihole_status=`pihole status | head -1`
trigger = "listening"


if [[ "$trigger" ==  "${saida_pihole_status:21}" ]]
then 
    pihole restartdns
fi

# */1 * * * * root /home/script/piholescript.sh (terminal crontab -e) 
