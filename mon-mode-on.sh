#!/bin/bash
clear
echo -e 'RUN AS ROOT'
echo -e ''
echo -e ''
if [ -f /usr/bin/toilet ]; then
        toilet -f smblock -F gay MONITOR MODE ENABALE
        echo -e '<-----------------Coded by PSYCHO72----------------->'
else
	sudo apt-get install toilet -y 
	toilet -f smblock -F gay RUN PROGRAM AGAIN
	exit 0
fi
echo -e ""
sudo iwconfig
echo -e ""
echo -n "Enter Wireless Interface : "
read interface
sudo ifconfig $interface down
sudo airmon-ng check kill
sudo iwconfig $interface mode monitor
sudo ifconfig $interface up
echo -e ""
sudo iwconfig
sudo service network-manager restart

exit 0