#! /bin/bash

user="$1"

if grep -Ei "^$user" /etc/passwd >/dev/null ; then
	echo "$user exists in /etc/passwd"
else
	echo "$user not exist"
fi



count=0
menu() {

while [ "$count" == 0 ] ;
do

echo "1 - Network"
echo "2 - Disk"
echo "3 - User"
echo "4 - Exit"


read x

case $x in

1)
	ifconfig
	sleep 5
	clear
;;

2)
	df -h
	sleep 5
	clear
;;

3)
	echo "$USER"
	sleep 3
	clear
;;
 
4)
	count=1
;;

*)
	echo "Error, try agin"
	sleep 2
	clear

esac
done

}
menu
