#Adrian Menendez
#!/bin/bash

if [ $EUID != 0 ]
then
	echo "Has d'executar com root"
exit 1
fi

clear 

most_serv() {
	clear
	echo "Escull un servei: "
	read servicio
}

ctl_serv() {
	
	
	service $servicio stop
	service $servicio status
	
}
	
while [ true ]
do
	most_serv 
	echo -n "Possa el numero 1 "
	read x
	ctl_serv

done
zenity --question --text "Vols continuar?"
read resposta
if[resposta = 'y']

exit 10
