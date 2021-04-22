#Adrian Menendez
#!/bin/bash

REGEX='\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.|$)){4}\b'


if [ $EUID != 0 ]
then
	echo "Has d'executar com root"
exit 1
fi

echo -n "Donam una adreça IP: "
read ADDRESS

if [[ $ADDRESS =~ $REGEX ]]
then    
    nmap -sS $ADDRESS
else
    echo "Adreça incorrecta"
    exit 10
fi
exit 0
