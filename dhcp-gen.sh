#!/bin/bash

###############################################################

#						Zmienne edytowalne					#

###############################################################

subnet='192.168.0.0' #podsieć (np. 192.168.0.0)- w podsieć ostatnim oktetem zawsze jest 0
netmask='255.255.255.0' #maska podseici (np. 255.255.255.0)
range1='192.168.0.2' #początek zasięgu przyznawanych adresów IP (np. 192.168.0.2)
range2='192.168.0.10' #koniec zasięgu przyznawanych adresów IP (np. 192.168.0.10)
route='192.168.0.1' #adres bramy (np. 192.168.0.1)
defLease='144000' #domyslny czas trwania leasu (np. 14400)
maxLease='16000' #maksymalny czas trwania leasu (np. 16000)

##############################################################

firstLine='subnet '$subnet' netmask '$netmask' {'

echo -e "\n$firstLine" >> dhcpd.conf 
echo -e "	range $range1 $range2;" >> dhcpd.conf 
echo -e "	option routers $route;" >> dhcpd.conf 
echo -e "	default-lease-time $defLease;" >> dhcpd.conf 
echo -e "	max-lease-time $maxLease;" >> dhcpd.conf 
echo -e "}" >> dhcpd.conf 

#loop
#for (( i=$a ; i <= $b ; i++ ))
#do
	#commands
#done