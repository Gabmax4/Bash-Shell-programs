# ! /bin/bash 
#Progrma para ejemplificar como capturar la informacion del usuario utilizando el comendo read
#Autor: Gabriel Maxemin

option=0
backupName=""

echo "Programa de utilizadedes Postgrase"
read -p "Ingresar una opcion" option
read -p "Ingresar el nombre del archivo del backup" backupName
echo "Option: $option , backupName: $backupName"
