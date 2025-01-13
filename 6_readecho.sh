# ! /bin/bash 
#Progrma para ejemplificar como capturar la informacion del usuario utilizando el comendo read y $REPLY
#Autor: Gabriel Maxemin

option=0
backupName=""

echo "Programa de utilizadedes Postgrase"
echo -n "Ingresar una opcion"
read 
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup"
read
backupName=$REPLY
echo "Option: $option , backupName: $backupName"
