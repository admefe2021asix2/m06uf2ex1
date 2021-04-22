#Adrian Menendez
#!/bin/bash

if [ $EUID != 0 ]
then
	echo "Has d'executar com root"
exit 1
fi
clear

function p_fitxer {
echo -n "Donam un nom d'un fitxer del directori /etc/default: "
read fitxer

ruta="/etc/default/"
ruta=${ruta}${fitxer}

if [ -f $ruta ]
then
sudo cat $ruta | grep '^[^#]'
exit 0
else
echo "Error: El  no existeix"
exit 1
fi

}

clear
