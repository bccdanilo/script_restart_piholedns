#!/bin/bash
saida_pihole_status=`pihole status | head -1`
trigger = "listening"
echo "saida do pihole :"
echo ${saida_pihole_status}  #19 - 26 mais ou menos
echo "--------------------"
echo "palavra chave"
echo ${trigger}


#if [[ $trigger ==  ${saida_pihole_status:19:26} ]]
#then 
#    pihole restartdns
#fi

# */1 * * * * root /home/script/piholescript.sh 
