#! /bin/bash

#this script use for fast SSH login on Bandit wargame by OverTheWire

if [ "$1" == "" ]
then
echo "syntax: ./bandit.sh + level"

else
 IP_ADDRESS=""
 DOMAIN="bandit.labs.overthewire.org" #set global variable
 get_ip() {
  IP_ADDRESS=$(nslookup $DOMAIN | awk '/^Address: / { print $2 }' | tail -n1)
  } #Define the function

 get_ip #call get_ip function
 
 ssh -p 2220 -l bandit$1 $IP_ADDRESS
	
fi
